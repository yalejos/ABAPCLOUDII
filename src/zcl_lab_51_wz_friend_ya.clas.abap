CLASS zcl_lab_51_wz_friend_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_helper.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_51_wz_friend_ya IMPLEMENTATION.
  METHOD get_helper.
    data(lo_components) = new zcl_lab_50_work_zone_ya(  ).
    lo_components->lo_helper->get_work_zone(  ).
  ENDMETHOD.

ENDCLASS.
