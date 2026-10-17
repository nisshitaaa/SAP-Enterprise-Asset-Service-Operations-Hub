@EndUserText.label : 'Draft Database Table for ZTECHNICIAN_D'
@AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table ztechnician_d {

  key mandt          : mandt not null;
  key technicianid   : abap.char(10) not null;
  technicianname     : abap.char(80);
  email              : abap.char(100);
  phonenumber        : abap.char(20);
  specialization     : abap.char(40);
  availability       : abap.char(20);
  employmentstatus   : abap.char(20);
  createdby          : abp_creation_user;
  createdat          : abp_creation_tstmpl;
  lastchangedby      : abp_locinst_lastchange_user;
  lastchangedat      : abp_locinst_lastchange_tstmpl;
  locallastchangedat : abp_lastchange_tstmpl;
  "%admin"           : include sych_bdl_draft_admin_inc;

}