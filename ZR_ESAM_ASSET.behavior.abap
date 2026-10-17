managed implementation in class ZBP_R_ESAM_ASSET unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_ESAM_ASSET alias ZrEsamAsset
persistent table ZESAM_ASSET
extensible
draft table ZESAM_ASSET_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   AssetID;

  field ( readonly )
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   LocalLastChangedAt;

  field ( readonly : update )
   AssetID;


  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZESAM_ASSET corresponding extensible
  {
    AssetID = ASSET_ID;
    AssetName = ASSET_NAME;
    AssetCategory = ASSET_CATEGORY;
    SerialNumber = SERIAL_NUMBER;
    Location = LOCATION;
    Manufacturer = MANUFACTURER;
    PurchaseDate = PURCHASE_DATE;
    WarrantyEndDate = WARRANTY_END_DATE;
    AssetStatus = ASSET_STATUS;
    Criticality = CRITICALITY;
    Description = DESCRIPTION;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

}