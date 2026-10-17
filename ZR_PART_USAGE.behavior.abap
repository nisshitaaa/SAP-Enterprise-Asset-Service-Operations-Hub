
managed with additional save with full data implementation in class ZBP_R_PART_USAGE unique;
strict ( 2 );
with draft;
extensible;

define behavior for ZR_PART_USAGE alias ZrPartUsage
persistent table ZPART_USAGE
extensible
draft table ZPART_USAGE_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master ( global )
{
  field ( mandatory : create )
    UsageID;

  field ( readonly )
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt;


  field ( readonly : update )
    UsageID;

  create;
  update;
  delete;

  action consumeSparePart;

  validation validateQuantity on save
  {
    create;
    update;
  }

  association _ServiceOrder;
  association _SparePart;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZPART_USAGE corresponding extensible
  {
    UsageID = USAGE_ID;
    OrderID = ORDER_ID;
    PartID = PART_ID;
    QuantityUsed = QUANTITY_USED;
    UsageDate = USAGE_DATE;
    UnitPrice = UNIT_PRICE;
    TotalCost = TOTAL_COST;
    Remarks = REMARKS;
    StockDeducted = STOCK_DEDUCTED;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }
}