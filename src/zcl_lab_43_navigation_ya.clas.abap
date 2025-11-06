CLASS zcl_lab_43_navigation_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_ya
                            IMPORTING ev_pos_horizontal ev_pos_vertical
                                      sender.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_ya IMPLEMENTATION.

  METHOD on_touch_screen.

    me->log = |Posicion horizontal: { ev_pos_horizontal } { cl_abap_char_utilities=>newline }|
             && |Posición Vertical: { ev_pos_vertical } { cl_abap_char_utilities=>newline }|
             && |Screen type: {  sender->screen_type }|.


  ENDMETHOD.

ENDCLASS.
