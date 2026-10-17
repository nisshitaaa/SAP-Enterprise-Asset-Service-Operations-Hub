
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSPARE_PARTS'
@EndUserText.label: 'Spare Parts Inventory'

define root view entity ZR_SPARE_PARTS
  as select from zspare_parts
{
  key part_id as PartID,
      part_name as PartName,
      part_category as PartCategory,
      manufacturer as Manufacturer,
      stock_quantity as StockQuantity,
      reorder_level as ReorderLevel,

      @Consumption.filter: {
        selectionType: #SINGLE,
        multipleSelections: false
      }
      case
        when stock_quantity < reorder_level then 'LOW STOCK'
        else 'OK'
      end as StockStatus,

      @Consumption.valueHelpDefinition: [{
        entity.name: 'I_UnitOfMeasureStdVH',
        entity.element: 'UnitOfMeasure',
        useForValidation: true
      }]
      unit_of_measure as UnitOfMeasure,

      unit_price as UnitPrice,

      @Consumption.valueHelpDefinition: [{
        entity.name: 'I_CurrencyStdVH',
        entity.element: 'Currency',
        useForValidation: true
      }]
      currency_code as CurrencyCode,

      @Semantics.user.createdBy: true
      created_by as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at as CreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      last_changed_by as LastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at as LocalLastChangedAt
}
