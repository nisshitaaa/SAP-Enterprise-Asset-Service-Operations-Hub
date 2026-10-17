@EndUserText.label : 'Draft Database Table for ZSERVICE_REQ_D'
@AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zservice_req_d {

  key mandt          : mandt not null;
  key requestid      : abap.char(10) not null;
  assetid            : abap.char(10);
  reportedby         : abap.char(12);
  requestdate        : abap.dats;
  issuecategory      : abap.char(30);
  priority           : abap.char(10);
  issuedescription   : abap.char(255);
  requeststatus      : abap.char(20);
  requesteddate      : abap.dats;
  createdby          : abp_creation_user;
  createdat          : abp_creation_tstmpl;
  lastchangedby      : abp_locinst_lastchange_user;
  lastchangedat      : abp_locinst_lastchange_tstmpl;
  locallastchangedat : abp_lastchange_tstmpl;
  "%admin"           : include sych_bdl_draft_admin_inc;

}