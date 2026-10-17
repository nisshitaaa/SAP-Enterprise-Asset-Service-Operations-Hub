
projection implementation in class ZBP_C_PART_USAGE unique;
strict ( 2 );
extensible;
use draft;
use side effects;

define behavior for ZC_PART_USAGE alias ZcPartUsage
  extensible
  use etag
{
  use create;
  use update;
  use delete;
  use action consumeSparePart;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;
  use action Prepare;

  use association _ServiceOrder;
  use association _SparePart;
}