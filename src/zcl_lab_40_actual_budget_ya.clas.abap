CLASS zcl_lab_40_actual_budget_ya DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_39_budget_ya
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget_ya IMPLEMENTATION.
  METHOD get_budget.
    rv_budget = '3500'.
  ENDMETHOD.

ENDCLASS.
