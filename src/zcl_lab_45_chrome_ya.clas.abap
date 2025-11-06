CLASS zcl_lab_45_chrome_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_close_window FOR EVENT close_window OF zif_lab_05_browser_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_chrome_ya IMPLEMENTATION.
  METHOD on_close_window.
    me->log = 'Window closed'.
  ENDMETHOD.

ENDCLASS.
