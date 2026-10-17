
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZMAINTAIN_HIST'
@EndUserText.label: 'Maintenance History'

define root view entity ZR_MAINTAIN_HIST
  as select from zmaintain_hist

  association [0..1] to ZR_ESAM_ASSET as _Asset
    on $projection.AssetId = _Asset.AssetID

  association [0..1] to ZR_SERVICE_ORDER as _ServiceOrder
    on $projection.OrderId = _ServiceOrder.OrderId

{
  key history_id as HistoryId,
      asset_id as AssetId,
      order_id as OrderId,
      maintenance_type as MaintenanceType,
      maintenance_date as MaintenanceDate,
      performed_by as PerformedBy,
      work_description as WorkDescription,
      maintenance_cost as MaintenanceCost,
      next_due_date as NextDueDate,
      remarks as Remarks,

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

      _Asset,
      _ServiceOrder
}
