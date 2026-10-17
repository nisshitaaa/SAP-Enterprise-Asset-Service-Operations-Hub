
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Service Request'
@ObjectModel.sapObjectNodeType.name: 'ZSERVICE_REQ'
@AccessControl.authorizationCheck: #MANDATORY

define root view entity ZC_SERVICE_REQ
  provider contract transactional_query
  as projection on ZR_SERVICE_REQ

  association [1..1] to ZR_SERVICE_REQ as _BaseEntity
    on $projection.RequestId = _BaseEntity.RequestId

{
  key RequestId,
      AssetId,
      _Asset.AssetName as AssetName,
      ReportedBy,
      RequestDate,
      IssueCategory,
      Priority,
      IssueDescription,
      RequestStatus,
      RequestedDate,

      @Semantics.user.createdBy: true
      CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      CreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      LastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      LocalLastChangedAt,

      _Asset,
      _BaseEntity
}
