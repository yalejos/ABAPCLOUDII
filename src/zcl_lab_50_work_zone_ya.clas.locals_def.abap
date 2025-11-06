*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section

TYPES: BEGIN OF TY_WORK_ZONE,
        LAUNCHPAD type string,
        DASHBOARD type string,
        SPACES type string,
      END OF ty_work_zone.

 CLASS LCL_HELPER DEFINITION.

 PUBLIC SECTION.
   DATA ms_work_zone TYPE ty_work_zone.
   METHODS get_work_zone RETURNING VALUE(rv_work_zone) TYPE ty_work_zone.
   METHODS set_work_zone.
 ENDCLASS.
