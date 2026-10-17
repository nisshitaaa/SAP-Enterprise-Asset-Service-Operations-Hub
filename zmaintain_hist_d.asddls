@EndUserText.label : 'Draft Database Table for ZMAINTAIN_HIST_D'
@AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zmaintain_hist_d {

  key mandt          : mandt not null;
  key historyid      : abap.char(10) not null;
  assetid            : abap.char(10);
  orderid            : abap.char(10);
  maintenancetype    : abap.char(30);
  maintenancedate    : abap.dats;
  performedby        : abap.char(10);
  workdescription    : abap.char(255);
  maintenancecost    : abap.dec(15,2);
  nextduedate        : abap.dats;
  remarks            : abap.char(255);
  createdby          : abp_creation_user;
  createdat          : abp_creation_tstmpl;
  lastchangedby      : abp_locinst_lastchange_user;
  lastchangedat      : abp_locinst_lastchange_tstmpl;
  locallastchangedat : abp_lastchange_tstmpl;
  "%admin"           : include sych_bdl_draft_admin_inc;

}