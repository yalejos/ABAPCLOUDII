CLASS zcl_lab_49_employee_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_administrat_dep_ya
                            IMPORTING ev_id_employee.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_employee_ya IMPLEMENTATION.
  METHOD on_payroll_paid.
    me->log = |Employee: { ev_id_employee } |.
  ENDMETHOD.

ENDCLASS.
