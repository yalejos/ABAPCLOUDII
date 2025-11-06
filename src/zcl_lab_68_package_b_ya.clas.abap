CLASS zcl_lab_68_package_b_ya DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel_ya
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS: transport_oneway REDEFINITION,
             day_one REDEFINITION,
             day_two REDEFINITION,
             day_three REDEFINITION,
             transport_return REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_68_package_b_ya IMPLEMENTATION.

  METHOD transport_oneway.
    out->write( 'Boleto para Santo Domingo - Primera Clase ' ).
 ENDMETHOD.

  METHOD day_one.
    out->write( 'FIsla Saona' ).
  ENDMETHOD.

  METHOD day_three.
     out->write( 'Tour por la ciudad' ).
  ENDMETHOD.

  METHOD day_two.
     out->write( 'Punta Cane' ).
  ENDMETHOD.

  METHOD transport_return.
     out->write( 'Boleto para Colombia en Primera Clase' ).
  ENDMETHOD.



ENDCLASS.
