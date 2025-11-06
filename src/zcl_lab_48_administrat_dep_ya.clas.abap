CLASS zcl_lab_48_administrat_dep_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
    EVENTS payroll_paid EXPORTING VALUE(ev_id_employee) TYPE string.
    METHODS: constructor IMPORTING iv_id_employee TYPE string,
             notify_employee.

PROTECTED SECTION.
  PRIVATE SECTION.
    DATA id_employee TYPE string.
  ENDCLASS.



CLASS zcl_lab_48_administrat_dep_ya IMPLEMENTATION.

  METHOD notify_employee.

    RAISE EVENT payroll_paid EXPORTING ev_id_employee =  me->id_employee.

  ENDMETHOD.

  METHOD constructor.
    me->id_employee = iv_id_employee.
  ENDMETHOD.

ENDCLASS.
