@EndUserText.label : 'Asset Service Request'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zservice_req {

  key client            : abap.clnt not null;
  key request_id        : abap.char(10) not null;
  asset_id              : abap.char(10);
  reported_by           : abap.char(12);
  request_date          : abap.dats;
  issue_category        : abap.char(30);
  priority              : abap.char(10);
  issue_description     : abap.char(255);
  request_status        : abap.char(20);
  requested_date        : abap.dats;
  created_by            : abp_creation_user;
  created_at            : abp_creation_tstmpl;
  last_changed_by       : abp_locinst_lastchange_user;
  last_changed_at       : abp_locinst_lastchange_tstmpl;
  local_last_changed_at : abp_lastchange_tstmpl;

}