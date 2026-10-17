@EndUserText.label : 'Spare Part Usage Details'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zpart_usage {

  key client            : abap.clnt not null;
  key usage_id          : abap.char(10) not null;
  order_id              : abap.char(10);
  part_id               : abap.char(10);
  quantity_used         : abap.int4;
  usage_date            : abap.dats;
  unit_price            : abap.dec(15,2);
  total_cost            : abap.dec(15,2);
  remarks               : abap.char(255);
  created_by            : abp_creation_user;
  created_at            : abp_creation_tstmpl;
  last_changed_by       : abp_locinst_lastchange_user;
  last_changed_at       : abp_locinst_lastchange_tstmpl;
  local_last_changed_at : abp_lastchange_tstmpl;
  stock_deducted        : abap_boolean;

}