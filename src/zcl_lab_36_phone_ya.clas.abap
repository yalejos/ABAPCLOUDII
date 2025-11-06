CLASS zcl_lab_36_phone_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_ya,
             get_screen retURNING VALUE(ro_screen)  type ref to zcl_lab_37_screen_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
    DATA go_screen tYPE REF TO zcl_lab_37_screen_ya.
ENDCLASS.



CLASS zcl_lab_36_phone_ya IMPLEMENTATION.
  METHOD constructor.
    me->go_screen =  io_screen.
  ENDMETHOD.

  METHOD get_screen.
    ro_screen = me->go_screen.
  ENDMETHOD.

ENDCLASS.
