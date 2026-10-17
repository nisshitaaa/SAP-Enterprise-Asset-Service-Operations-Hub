@EndUserText.label : 'Draft Database Table for ZSERVICE_ORDER_D'
@AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zservice_order_d {

  key mandt          : mandt not null;
  key orderid        : abap.char(10) not null;
  requestid          : abap.char(10);
  assetid            : abap.char(10);
  technicianid       : abap.char(10);
  orderdescription   : abap.char(255);
  orderpriority      : abap.char(10);
  orderstatus        : abap.char(20);
  plannedstartdate   : abap.dats;
  plannedenddate     : abap.dats;
  actualstartdate    : abap.dats;
  actualenddate      : abap.dats;
  estimatedcost      : abap.dec(15,2);
  actualcost         : abap.dec(15,2);
  createdby          : abp_creation_user;
  createdat          : abp_creation_tstmpl;
  lastchangedby      : abp_locinst_lastchange_user;
  lastchangedat      : abp_locinst_lastchange_tstmpl;
  locallastchangedat : abp_lastchange_tstmpl;
  "%admin"           : include sych_bdl_draft_admin_inc;

}