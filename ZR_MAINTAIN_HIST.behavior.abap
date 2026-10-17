managed implementation in class ZBP_R_MAINTAIN_HIST unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_MAINTAIN_HIST alias ZrMaintainHist
persistent table ZMAINTAIN_HIST
extensible
draft table ZMAINTAIN_HIST_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   HistoryID;

  field ( readonly )
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   LocalLastChangedAt;

  field ( readonly : update )
   HistoryID;


  create;
  update;
  delete;
  association _Asset;
association _ServiceOrder;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZMAINTAIN_HIST corresponding extensible
  {
    HistoryID = HISTORY_ID;
    AssetID = ASSET_ID;
    OrderID = ORDER_ID;
    MaintenanceType = MAINTENANCE_TYPE;
    MaintenanceDate = MAINTENANCE_DATE;
    PerformedBy = PERFORMED_BY;
    WorkDescription = WORK_DESCRIPTION;
    MaintenanceCost = MAINTENANCE_COST;
    NextDueDate = NEXT_DUE_DATE;
    Remarks = REMARKS;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

}