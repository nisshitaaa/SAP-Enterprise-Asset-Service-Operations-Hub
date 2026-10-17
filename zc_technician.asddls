@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZTECHNICIAN'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TECHNICIAN
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_TECHNICIAN
  association [1..1] to ZR_TECHNICIAN as _BaseEntity on $projection.TECHNICIANID = _BaseEntity.TECHNICIANID
{
  key TechnicianID,
  TechnicianName,
  Email,
  PhoneNumber,
  Specialization,
  Availability,
  EmploymentStatus,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
