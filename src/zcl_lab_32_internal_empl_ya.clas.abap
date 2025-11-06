CLASS zcl_lab_32_internal_empl_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_ya .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_ya IMPLEMENTATION.


  METHOD zif_lab_04_employee_ya~get_employees_count.
    rv_employee_count = '3000'.
  ENDMETHOD.
ENDCLASS.
