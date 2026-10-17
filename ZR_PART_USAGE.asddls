
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPART_USAGE'
@EndUserText.label: 'Part Usage'

define root view entity ZR_PART_USAGE
  as select from zpart_usage

  association [0..1] to ZR_SERVICE_ORDER as _ServiceOrder
    on $projection.OrderId = _ServiceOrder.OrderId

  association [0..1] to ZR_SPARE_PARTS as _SparePart
    on $projection.PartId = _SparePart.PartID
{
  key usage_id as UsageId,
      order_id as OrderId,
      _ServiceOrder.OrderDescription as OrderDescription,
      _SparePart.PartName as PartName,
      part_id as PartId,
      quantity_used as QuantityUsed,
      usage_date as UsageDate,
      unit_price as UnitPrice,
      total_cost as TotalCost,
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

      stock_deducted as StockDeducted,

      _ServiceOrder,
      _SparePart
}
