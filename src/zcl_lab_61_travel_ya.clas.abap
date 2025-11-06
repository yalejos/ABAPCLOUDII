CLASS zcl_lab_61_travel_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_travel  EXPORTING es_flights TYPE /dmo/flight.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel_ya IMPLEMENTATION.

  METHOD get_travel.
    DATA: lv_carrier_id TYPE /dmo/carrier_id,
          ls_flights     tYPE /dmo/flight.

    lv_carrier_id = 'SQ'.

    SELECT SINGLE *
        FROM /dmo/flight
        WHERE carrier_id EQ @lv_carrier_id
        INTO @es_flights.

    TEST-SEAM select_data.
         SELECT SINGLE *
        FROM /dmo/flight
        WHERE carrier_id EQ @lv_carrier_id
        INTO @ls_flights.
    END-TEST-SEAM.

    if lv_carrier_id eq 'UA'.
      es_flights = CORRESPONDING #( ls_flights ).
    endif.

  ENDMETHOD.

ENDCLASS.
