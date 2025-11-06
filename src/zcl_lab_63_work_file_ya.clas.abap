CLASS zcl_lab_63_work_file_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
     iNTERFACES zif_lab_06_file_ya.
     ALIASES get_file_type FOR zif_lab_06_file_ya~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_63_work_file_ya IMPLEMENTATION.
  METHOD get_file_type.
    rv_file_type = 'Work file'.
  ENDMETHOD.

ENDCLASS.
