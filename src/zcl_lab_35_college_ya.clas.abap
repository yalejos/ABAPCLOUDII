CLASS zcl_lab_35_college_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA go_student TYPE REF TO zcl_lab_34_student_ya.
    METHODS enroll_student IMPORTING io_student TYPE REF TO zcl_lab_34_student_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_ya IMPLEMENTATION.
  METHOD enroll_student.
   me->go_student = io_student.
  ENDMETHOD.

ENDCLASS.
