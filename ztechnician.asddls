@EndUserText.label : 'Maintenance Technician Master'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table ztechnician {

  key client            : abap.clnt not null;
  key technician_id     : abap.char(10) not null;
  technician_name       : abap.char(80);
  email                 : abap.char(100);
  phone_number          : abap.char(20);
  specialization        : abap.char(40);
  availability          : abap.char(20);
  employment_status     : abap.char(20);
  created_by            : abp_creation_user;
  created_at            : abp_creation_tstmpl;
  last_changed_by       : abp_locinst_lastchange_user;
  last_changed_at       : abp_locinst_lastchange_tstmpl;
  local_last_changed_at : abp_lastchange_tstmpl;

}