CLASS zcl_lab_34_student_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_name imPORTING iv_name type string,
             get_name retURNING VALUE(rv_name) tYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA name TYPE string.
  ENDCLASS.



CLASS zcl_lab_34_student_ya IMPLEMENTATION.
  METHOD get_name.
    rv_name = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
