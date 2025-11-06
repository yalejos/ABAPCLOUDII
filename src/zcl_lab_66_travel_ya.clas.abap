CLASS zcl_lab_66_travel_ya DEFINITION abSTRACT
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

     METHODS  travel FINAL IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.

    METHODS: transport_oneway ABSTRACT IMPORTING out TYPE REF TO if_oo_adt_classrun_out,
      day_one ABSTRACT  IMPORTING out TYPE REF TO if_oo_adt_classrun_out,
      day_two ABSTRACT  IMPORTING out TYPE REF TO if_oo_adt_classrun_out,
      day_three ABSTRACT  IMPORTING out TYPE REF TO if_oo_adt_classrun_out,
      transport_return ABSTRACT  IMPORTING out TYPE REF TO if_oo_adt_classrun_out.



PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel_ya IMPLEMENTATION.
  METHOD travel.



    me->transport_oneway( out ).
    me->day_one( out ).
    me->day_two( out ).
    me->day_three( out ).
    me->transport_return( out ).

    out->write( |--- Paquete de Viaje Finalizado ---| ).
    out->write( cl_abap_char_utilities=>newline ).

  ENDMETHOD.



ENDCLASS.
