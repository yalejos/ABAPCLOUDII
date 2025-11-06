CLASS zcl_lab_75_controller_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_model IMPORTING io_model TYPE REF TO zcl_lab_73_model_ya,
      get_model  RETURNING VALUE(ro_model) TYPE REF TO zcl_lab_73_model_ya,
      set_view IMPORTING io_view TYPE REF TO zcl_lab_74_view_ya,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_lab_74_view_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: model type reF TO zcl_lab_73_model_ya,
          view tYPE REF TO zcl_lab_74_view_ya.
ENDCLASS.



CLASS zcl_lab_75_controller_ya IMPLEMENTATION.
  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
     me->view = io_view.
  ENDMETHOD.

ENDCLASS.
