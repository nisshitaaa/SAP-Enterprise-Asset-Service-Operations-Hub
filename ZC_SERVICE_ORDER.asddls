
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Service Order'
@ObjectModel.sapObjectNodeType.name: 'ZSERVICE_ORDER'
@AccessControl.authorizationCheck: #MANDATORY

define root view entity ZC_SERVICE_ORDER
  provider contract transactional_query
  as projection on ZR_SERVICE_ORDER

  association [1..1] to ZR_SERVICE_ORDER as _BaseEntity
    on $projection.OrderId = _BaseEntity.OrderId

{
  key OrderId,
      RequestId,
      _ServiceRequest.IssueDescription as RequestDescription,
      AssetId,
      _Asset.AssetName as AssetName,
      TechnicianId,
      _Technician.TechnicianName as TechnicianName,
      OrderDescription,
      OrderPriority,
      OrderStatus,
      PlannedStartDate,
      PlannedEndDate,
      ActualStartDate,
      ActualEndDate,
      EstimatedCost,
      ActualCost,

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

      _ServiceRequest,
      _Asset,
      _Technician,
      _BaseEntity
}
