CLASS zcl_lab_74_view_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS display_flights impoRTING it_flights type /dmo/t_flight
                                     io_out type reF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_74_view_ya IMPLEMENTATION.
  METHOD display_flights.
    io_out->write( it_flights ).
  ENDMETHOD.

ENDCLASS.
