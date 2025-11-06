CLASS zcl_lab_27_factory_ya DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: merchandise_output ABSTRACT RETURNING VALUE(rv_merchendise) TYPE string,
      production_line  ABSTRACT RETURNING VALUE(rv_production) TYPE string,
      input_products   ABSTRACT RETURNING VALUE(rv_input) TYPE string.


PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_27_factory_ya IMPLEMENTATION.


ENDCLASS.
