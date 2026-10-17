@EndUserText.label : 'Draft Database Table for ZPART_USAGE_D'
@AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zpart_usage_d {

  key mandt          : mandt not null;
  key usageid        : abap.char(10) not null;
  orderdescription   : abap.char(255);
  partname           : abap.char(80);
  orderid            : abap.char(10);
  partid             : abap.char(10);
  quantityused       : abap.int4;
  usagedate          : abap.dats;
  unitprice          : abap.dec(15,2);
  totalcost          : abap.dec(15,2);
  remarks            : abap.char(255);
  createdby          : abp_creation_user;
  createdat          : abp_creation_tstmpl;
  lastchangedby      : abp_locinst_lastchange_user;
  lastchangedat      : abp_locinst_lastchange_tstmpl;
  locallastchangedat : abp_lastchange_tstmpl;
  "%admin"           : include sych_bdl_draft_admin_inc;
  stockdeducted      : abap_boolean;

}