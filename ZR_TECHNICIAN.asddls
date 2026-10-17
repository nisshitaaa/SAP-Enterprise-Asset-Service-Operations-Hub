@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTECHNICIAN'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TECHNICIAN
  as select from ZTECHNICIAN
{
  key technician_id as TechnicianID,
  technician_name as TechnicianName,
  email as Email,
  phone_number as PhoneNumber,
  specialization as Specialization,
  availability as Availability,
  employment_status as EmploymentStatus,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
