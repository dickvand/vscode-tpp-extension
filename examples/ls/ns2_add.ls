/PROG NS2_ADD
/ATTR
COMMENT = "NS2_ADD";
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP = *,*,*,*,*;
/MN
 : R[AR[3]]=AR[1]+AR[2] ;
 : END ;
/END