@EndUserText.label : 'Enterprise Asset Master'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zesam_asset {

  key client            : abap.clnt not null;
  key asset_id          : abap.char(10) not null;
  asset_name            : abap.char(80);
  asset_category        : abap.char(30);
  serial_number         : abap.char(40);
  location              : abap.char(60);
  manufacturer          : abap.char(60);
  purchase_date         : abap.dats;
  warranty_end_date     : abap.dats;
  asset_status          : abap.char(20);
  criticality           : abap.char(10);
  description           : abap.char(255);
  created_by            : abp_creation_user;
  created_at            : abp_creation_tstmpl;
  last_changed_by       : abp_locinst_lastchange_user;
  last_changed_at       : abp_locinst_lastchange_tstmpl;
  local_last_changed_at : abp_lastchange_tstmpl;

}