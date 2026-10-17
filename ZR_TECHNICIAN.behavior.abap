managed implementation in class ZBP_R_TECHNICIAN unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_TECHNICIAN alias ZrTechnician
persistent table ZTECHNICIAN
extensible
draft table ZTECHNICIAN_D
etag master LastChangedAt
lock master total etag LocalLastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   TechnicianID;

  field ( readonly )
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   LocalLastChangedAt;

  field ( readonly : update )
   TechnicianID;


  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZTECHNICIAN corresponding extensible
  {
    TechnicianID = TECHNICIAN_ID;
    TechnicianName = TECHNICIAN_NAME;
    Email = EMAIL;
    PhoneNumber = PHONE_NUMBER;
    Specialization = SPECIALIZATION;
    Availability = AVAILABILITY;
    EmploymentStatus = EMPLOYMENT_STATUS;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LastChangedBy = LAST_CHANGED_BY;
    LastChangedAt = LAST_CHANGED_AT;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

}