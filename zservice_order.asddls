@EndUserText.label : 'Asset Service Order'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zservice_order {

  key client            : abap.clnt not null;
  key order_id          : abap.char(10) not null;
  request_id            : abap.char(10);
  asset_id              : abap.char(10);
  technician_id         : abap.char(10);
  order_description     : abap.char(255);
  order_priority        : abap.char(10);
  order_status          : abap.char(20);
  planned_start_date    : abap.dats;
  planned_end_date      : abap.dats;
  actual_start_date     : abap.dats;
  actual_end_date       : abap.dats;
  estimated_cost        : abap.dec(15,2);
  actual_cost           : abap.dec(15,2);
  created_by            : abp_creation_user;
  created_at            : abp_creation_tstmpl;
  last_changed_by       : abp_locinst_lastchange_user;
  last_changed_at       : abp_locinst_lastchange_tstmpl;
  local_last_changed_at : abp_lastchange_tstmpl;

}