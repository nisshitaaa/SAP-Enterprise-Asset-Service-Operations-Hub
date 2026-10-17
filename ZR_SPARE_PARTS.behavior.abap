managed implementation in class ZBP_R_SPARE_PARTS unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_SPARE_PARTS alias ZrSpareParts
persistent table ZSPARE_PARTS
extensible
draft table ZSPARE_PARTS_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   PartID;

  field ( readonly )
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   LocalLastChangedAt;

  field ( readonly : update )
   PartID;


  create;
  update;
  delete;


  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZSPARE_PARTS corresponding extensible
  {
    PartID = PART_ID;
    PartName = PART_NAME;
    PartCategory = PART_CATEGORY;
    Manufacturer = MANUFACTURER;
    StockQuantity = STOCK_QUANTITY;
    ReorderLevel = REORDER_LEVEL;
    UnitOfMeasure = UNIT_OF_MEASURE;
    UnitPrice = UNIT_PRICE;
    CurrencyCode = CURRENCY_CODE;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

}