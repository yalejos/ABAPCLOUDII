CLASS zcl_lab_67_package_a_ya DEFINITION
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



CLASS zcl_lab_67_package_a_ya IMPLEMENTATION.

 METHOD transport_oneway.
    out->write( 'Boleto para Isla de Margarita en Aerolinea America - Clase Económica' ).
 ENDMETHOD.

  METHOD day_one.
    out->write( 'Full Day Playa El Agua' ).
  ENDMETHOD.

  METHOD day_three.
     out->write( 'Surfing Day Playa El Parguito' ).
  ENDMETHOD.

  METHOD day_two.
     out->write( 'Full Day Playa Punta de Arena' ).
  ENDMETHOD.

  METHOD transport_return.
     out->write( 'Boleto en Aerolinea Ocean - Clase Económica' ).
  ENDMETHOD.




ENDCLASS.
