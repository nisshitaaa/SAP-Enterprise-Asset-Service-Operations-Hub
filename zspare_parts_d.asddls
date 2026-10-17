@EndUserText.label : 'Draft Database Table for ZSPARE_PARTS_D'
@AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zspare_parts_d {

  key mandt          : mandt not null;
  key partid         : abap.char(10) not null;
  partname           : abap.char(80);
  partcategory       : abap.char(30);
  manufacturer       : abap.char(60);
  stockquantity      : abap.int4;
  reorderlevel       : abap.int4;
  stockstatus        : abap.char(9);
  unitofmeasure      : abap.unit(3);
  unitprice          : abap.dec(15,2);
  currencycode       : abap.cuky;
  createdby          : abp_creation_user;
  createdat          : abp_creation_tstmpl;
  lastchangedby      : abp_locinst_lastchange_user;
  lastchangedat      : abp_locinst_lastchange_tstmpl;
  locallastchangedat : abp_lastchange_tstmpl;
  "%admin"           : include sych_bdl_draft_admin_inc;

}