
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Maintenance History'
@ObjectModel.sapObjectNodeType.name: 'ZMAINTAIN_HIST'
@AccessControl.authorizationCheck: #MANDATORY

define root view entity ZC_MAINTAIN_HIST
  provider contract transactional_query
  as projection on ZR_MAINTAIN_HIST

  association [1..1] to ZR_MAINTAIN_HIST as _BaseEntity
    on $projection.HistoryId = _BaseEntity.HistoryId

{
  key HistoryId,
      AssetId,
      _Asset.AssetName as AssetName,
      OrderId,
      _ServiceOrder.OrderDescription as OrderDescription,
      MaintenanceType,
      MaintenanceDate,
      PerformedBy,
      WorkDescription,
      MaintenanceCost,
      NextDueDate,
      Remarks,

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
      _ServiceOrder,
      _BaseEntity
}
