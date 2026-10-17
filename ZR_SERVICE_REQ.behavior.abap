managed implementation in class ZBP_R_SERVICE_REQ unique;
strict ( 2 );
with draft;
with cross associations;
extensible;
define behavior for ZR_SERVICE_REQ alias ZrServiceReq
persistent table ZSERVICE_REQ
extensible
draft table ZSERVICE_REQ_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   RequestID;

  field ( readonly )
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   LocalLastChangedAt;

  field ( readonly : update )
   RequestID;


  create;
  update;
  delete;

  association _Asset;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZSERVICE_REQ corresponding extensible
  {
    RequestID = REQUEST_ID;
    AssetID = ASSET_ID;
    ReportedBy = REPORTED_BY;
    RequestDate = REQUEST_DATE;
    IssueCategory = ISSUE_CATEGORY;
    Priority = PRIORITY;
    IssueDescription = ISSUE_DESCRIPTION;
    RequestStatus = REQUEST_STATUS;
    RequestedDate = REQUESTED_DATE;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

}