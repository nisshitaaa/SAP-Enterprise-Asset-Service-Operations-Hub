managed implementation in class ZBP_R_SERVICE_ORDER unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_SERVICE_ORDER alias ZrServiceOrder
persistent table ZSERVICE_ORDER
extensible
draft table ZSERVICE_ORDER_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   OrderID;

  field ( readonly )
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   LocalLastChangedAt;

  field ( readonly : update )
   OrderID;


  create;
  update;
  delete;

  association _ServiceRequest;
  association _Asset;
  association _Technician;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZSERVICE_ORDER corresponding extensible
  {
    OrderID = ORDER_ID;
    RequestID = REQUEST_ID;
    AssetID = ASSET_ID;
    TechnicianID = TECHNICIAN_ID;
    OrderDescription = ORDER_DESCRIPTION;
    OrderPriority = ORDER_PRIORITY;
    OrderStatus = ORDER_STATUS;
    PlannedStartDate = PLANNED_START_DATE;
    PlannedEndDate = PLANNED_END_DATE;
    ActualStartDate = ACTUAL_START_DATE;
    ActualEndDate = ACTUAL_END_DATE;
    EstimatedCost = ESTIMATED_COST;
    ActualCost = ACTUAL_COST;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

}