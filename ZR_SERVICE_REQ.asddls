
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSERVICE_REQ'
@EndUserText.label: 'Service Request'

define root view entity ZR_SERVICE_REQ
  as select from zservice_req

  association [0..1] to ZR_ESAM_ASSET as _Asset
    on $projection.AssetId = _Asset.AssetID
{
  key request_id as RequestId,
      asset_id as AssetId,
      reported_by as ReportedBy,
      request_date as RequestDate,
      issue_category as IssueCategory,
      priority as Priority,
      issue_description as IssueDescription,
      request_status as RequestStatus,
      requested_date as RequestedDate,

      @Semantics.user.createdBy: true
      created_by as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at as CreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      last_changed_by as LastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _Asset
}
