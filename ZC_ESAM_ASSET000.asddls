@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZESAM_ASSET'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_ESAM_ASSET000
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ESAM_ASSET
  association [1..1] to ZR_ESAM_ASSET as _BaseEntity on $projection.ASSETID = _BaseEntity.ASSETID
{
  key AssetID,
  AssetName,
  AssetCategory,
  SerialNumber,
  Location,
  Manufacturer,
  PurchaseDate,
  WarrantyEndDate,
  AssetStatus,
  Criticality,
  Description,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
