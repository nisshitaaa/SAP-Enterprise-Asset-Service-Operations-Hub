projection implementation in class ZBP_C_MAINTAIN_HIST unique;
strict ( 2 );
extensible;
use draft;
use side effects;
define behavior for ZC_MAINTAIN_HIST alias ZcMaintainHist
extensible
use etag
{
  use create;
  use update;
  use delete;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;
  use action Prepare;


  use association _Asset;
  use association _ServiceOrder;


}