CLASS zcl_lab_62_context_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.
    DATA: mv_counter type i.
    METHODS constructor.
    CLASS-METHODS  get_instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_lab_62_context_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA mo_instance tYPE REF TO zcl_lab_62_context_ya.
ENDCLASS.



CLASS zcl_lab_62_context_ya IMPLEMENTATION.
  METHOD get_instance.

    IF mo_instance IS NOT BOUND.
      mo_instance = NEW #(  ).
    ENDIF.

    ro_instance = mo_instance.

  ENDMETHOD.

  METHOD constructor.
    me->mv_counter += 1.
  enDMETHOD.

ENDCLASS.
