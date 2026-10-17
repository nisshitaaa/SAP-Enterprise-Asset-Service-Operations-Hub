@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZESAM_ASSET'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ESAM_ASSET
  as select from ZESAM_ASSET
{
  key asset_id as AssetID,
  asset_name as AssetName,
  asset_category as AssetCategory,
  serial_number as SerialNumber,
  location as Location,
  manufacturer as Manufacturer,
  purchase_date as PurchaseDate,
  warranty_end_date as WarrantyEndDate,
  asset_status as AssetStatus,
  criticality as Criticality,
  description as Description,
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
