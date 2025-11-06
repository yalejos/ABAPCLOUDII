CLASS zcl_lab_28_logistics_ya DEFINITION  INHERITING FROM zcl_lab_27_factory_ya
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: merchandise_output REDEFINITION,
      production_line REDEFINITION,
      input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics_ya IMPLEMENTATION.
  METHOD input_products.
   rv_input = 'input_products'.
  ENDMETHOD.

  METHOD merchandise_output.
    rv_merchendise = 'merchandise_output'.
  ENDMETHOD.

  METHOD production_line.
     rv_production = 'production_line'.
  ENDMETHOD.

ENDCLASS.
