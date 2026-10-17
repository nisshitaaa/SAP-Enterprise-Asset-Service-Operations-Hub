
CLASS lsc_zr_part_usage DEFINITION
  INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.
    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_zr_part_usage IMPLEMENTATION.
  METHOD save_modified.
  ENDMETHOD.
ENDCLASS.


CLASS lhc_zr_part_usage DEFINITION
  INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.
    METHODS:
      get_global_authorizations
        FOR GLOBAL AUTHORIZATION
        IMPORTING REQUEST requested_authorizations
        FOR ZrPartUsage
        RESULT result,

      validateQuantity
        FOR VALIDATE ON SAVE
        IMPORTING keys
        FOR ZrPartUsage~validateQuantity,

      consumeSparePart
        FOR MODIFY
        IMPORTING keys
        FOR ACTION ZrPartUsage~consumeSparePart.

ENDCLASS.


CLASS lhc_zr_part_usage IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.


  METHOD validateQuantity.

    READ ENTITIES OF ZR_PART_USAGE IN LOCAL MODE
      ENTITY ZrPartUsage
      FIELDS ( QuantityUsed )
      WITH CORRESPONDING #( keys )
      RESULT DATA(lt_usage).

    LOOP AT lt_usage INTO DATA(ls_usage).
      IF ls_usage-QuantityUsed <= 0.
        APPEND VALUE #( %tky = ls_usage-%tky )
          TO failed-ZrPartUsage.

        APPEND VALUE #(
          %tky = ls_usage-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text = 'Quantity used must be greater than zero.'
          )
          %element-QuantityUsed = if_abap_behv=>mk-on
        ) TO reported-ZrPartUsage.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.


  METHOD consumeSparePart.

    READ ENTITIES OF ZR_PART_USAGE IN LOCAL MODE
      ENTITY ZrPartUsage
      FIELDS ( PartId QuantityUsed UnitPrice StockDeducted )
      WITH CORRESPONDING #( keys )
      RESULT DATA(lt_usage).

    LOOP AT lt_usage INTO DATA(ls_usage).

      IF ls_usage-StockDeducted = abap_true.
        APPEND VALUE #( %tky = ls_usage-%tky )
          TO failed-ZrPartUsage.
        APPEND VALUE #(
          %tky = ls_usage-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text = 'This usage has already been consumed.'
          )
        ) TO reported-ZrPartUsage.
        CONTINUE.
      ENDIF.

      IF ls_usage-QuantityUsed <= 0.
        APPEND VALUE #( %tky = ls_usage-%tky )
          TO failed-ZrPartUsage.
        CONTINUE.
      ENDIF.

      READ ENTITIES OF ZR_SPARE_PARTS
        ENTITY ZrSpareParts
        FIELDS ( StockQuantity )
        WITH VALUE #(
          ( PartID = ls_usage-PartId
            %is_draft = if_abap_behv=>mk-off )
        )
        RESULT DATA(lt_parts)
        FAILED DATA(lt_read_failed)
        REPORTED DATA(lt_read_reported).

      IF lt_read_failed IS NOT INITIAL OR lt_parts IS INITIAL.
        APPEND VALUE #( %tky = ls_usage-%tky )
          TO failed-ZrPartUsage.
        APPEND VALUE #(
          %tky = ls_usage-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text = 'Spare part could not be read.'
          )
        ) TO reported-ZrPartUsage.
        CONTINUE.
      ENDIF.

      DATA(ls_part) = lt_parts[ 1 ].

      IF ls_part-StockQuantity < ls_usage-QuantityUsed.
        APPEND VALUE #( %tky = ls_usage-%tky )
          TO failed-ZrPartUsage.
        APPEND VALUE #(
          %tky = ls_usage-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text = 'Insufficient spare-part stock.'
          )
        ) TO reported-ZrPartUsage.
        CONTINUE.
      ENDIF.

      MODIFY ENTITIES OF ZR_SPARE_PARTS
        ENTITY ZrSpareParts
        UPDATE FIELDS ( StockQuantity )
        WITH VALUE #(
          ( PartID = ls_usage-PartId
            StockQuantity =
              ls_part-StockQuantity - ls_usage-QuantityUsed
            %is_draft = if_abap_behv=>mk-off )
        )
        FAILED DATA(lt_stock_failed)
        REPORTED DATA(lt_stock_reported).

      IF lt_stock_failed IS NOT INITIAL.
        APPEND VALUE #( %tky = ls_usage-%tky )
          TO failed-ZrPartUsage.
        APPEND VALUE #(
          %tky = ls_usage-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text = 'Spare-part stock update failed.'
          )
        ) TO reported-ZrPartUsage.
        CONTINUE.
      ENDIF.

      MODIFY ENTITIES OF ZR_PART_USAGE IN LOCAL MODE
        ENTITY ZrPartUsage
        UPDATE FIELDS ( QuantityUsed TotalCost StockDeducted )
        WITH VALUE #(
          ( %tky = ls_usage-%tky
            QuantityUsed = ls_usage-QuantityUsed + 1
            TotalCost =
              ( ls_usage-QuantityUsed + 1 ) * ls_usage-UnitPrice
            StockDeducted = abap_true )
        )
        FAILED DATA(lt_usage_failed)
        REPORTED DATA(lt_usage_reported).

      IF lt_usage_failed IS NOT INITIAL.
        APPEND LINES OF lt_usage_failed-ZrPartUsage
          TO failed-ZrPartUsage.
      ENDIF.

      APPEND LINES OF lt_usage_reported-ZrPartUsage
        TO reported-ZrPartUsage.

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
