CLASS zcl_lab_50_work_zone_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend_ya.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_work_zone,
             launchpad TYPE string,
             dashboard TYPE string,
             spaces    TYPE string,
           END OF ty_work_zone.
    METHODS get_work_zone RETURNING VALUE(rs_work_zone) TYPE ty_work_zone.


  PROTECTED SECTION.
  PRIVATE SECTION.


    DATA: work_zone TYPE ty_work_zone,
          lo_helper TYPE REF TO lcl_helper.
    METHODS: set_work_zone.


ENDCLASS.



CLASS zcl_lab_50_work_zone_ya IMPLEMENTATION.

  METHOD set_work_zone.
    lo_helper = NEW #( ).
    me->work_zone =  lo_helper->get_work_zone(  ).
  ENDMETHOD.

  METHOD get_work_zone.
    me->set_work_zone(  ).
    rs_work_zone = me->work_zone.
  ENDMETHOD.

ENDCLASS.
