
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Part Usage'
@ObjectModel.sapObjectNodeType.name: 'ZPART_USAGE'
@AccessControl.authorizationCheck: #MANDATORY

define root view entity ZC_PART_USAGE
  provider contract transactional_query
  as projection on ZR_PART_USAGE

  association [1..1] to ZR_PART_USAGE as _BaseEntity
    on $projection.UsageId = _BaseEntity.UsageId

{

  key UsageId,
    OrderId,
    OrderDescription,
    PartId,
    PartName,
    QuantityUsed,
      
      UsageDate,
      UnitPrice,
      TotalCost,
      Remarks,
      @Semantics.user.createdBy: true CreatedBy,
      @Semantics.systemDateTime.createdAt: true CreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true LastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true LocalLastChangedAt,
      _ServiceOrder,
      _SparePart,
      _BaseEntity
}
