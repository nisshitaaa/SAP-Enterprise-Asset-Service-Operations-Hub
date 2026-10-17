
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSERVICE_ORDER'
@EndUserText.label: 'Service Order'

define root view entity ZR_SERVICE_ORDER
  as select from zservice_order

  association [0..1] to ZR_SERVICE_REQ as _ServiceRequest
    on $projection.RequestId = _ServiceRequest.RequestId

  association [0..1] to ZR_ESAM_ASSET as _Asset
    on $projection.AssetId = _Asset.AssetID

  association [0..1] to ZR_TECHNICIAN as _Technician
    on $projection.TechnicianId = _Technician.TechnicianID

{
  key order_id as OrderId,
      request_id as RequestId,
      asset_id as AssetId,
      technician_id as TechnicianId,
      order_description as OrderDescription,
      order_priority as OrderPriority,
      order_status as OrderStatus,
      planned_start_date as PlannedStartDate,
      planned_end_date as PlannedEndDate,
      actual_start_date as ActualStartDate,
      actual_end_date as ActualEndDate,
      estimated_cost as EstimatedCost,
      actual_cost as ActualCost,

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

      _ServiceRequest,
      _Asset,
      _Technician
}
