CLASS zcl_lab_73_model_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_carrier_id  TYPE /dmo/carrier_id.
    METHODS get_flights retURNING VALUE(rt_flights) TYPE /dmo/t_flight.

PROTECTED SECTION.
  PRIVATE SECTION.
    DATA flights TYPE /dmo/t_flight.
  ENDCLASS.



CLASS zcl_lab_73_model_ya IMPLEMENTATION.

  METHOD constructor.

    SELECT * FROM /dmo/flight
    WHERE carrier_id = @iv_carrier_id
    INTO TABLE @me->flights.

  ENDMETHOD.

  METHOD get_flights.
        rt_flights = me->flights.
  ENDMETHOD.

ENDCLASS.
