CLASS zcl_lab_44_operating_system_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_ya .

    METHODS MOUSE_MOVEMENT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_operating_system_ya IMPLEMENTATION.
  METHOD mouse_movement.
    RAISE EVENT zif_lab_05_browser_ya~close_window.
  ENDMETHOD.

ENDCLASS.
