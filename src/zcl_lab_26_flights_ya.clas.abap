CLASS zcl_lab_26_flights_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_lab_01_flight_ya,
      zif_lab_02_customer_ya.
    ALIASES: get_conn_id FOR zif_lab_01_flight_ya~get_conn_id,
             set_conn_id FOR zif_lab_01_flight_ya~set_conn_id,
             get_customer FOR zif_lab_02_customer_ya~get_customer,
             get_airports FOR zif_lab_03_airports~get_airports.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_26_flights_ya IMPLEMENTATION.
  METHOD zif_lab_01_flight_ya~get_conn_id.
    rv_conn_id = zif_lab_01_flight_ya~conn_id.
  ENDMETHOD.

  METHOD zif_lab_01_flight_ya~set_conn_id.
     zif_lab_01_flight_ya~conn_id = iv_conn_id.
  ENDMETHOD.

  METHOD zif_lab_02_customer_ya~get_customer.

    SELECT SINGLE first_name, last_name
     FROM /dmo/customer
     WHERE customer_id EQ @iv_customer_id
     INTO CORRESPONDING FIELDS OF @rs_cust_address.

  ENDMETHOD.

  METHOD zif_lab_03_airports~get_airports.

    SELECT SINGLE *
     FROM /dmo/airport
     WHERE airport_id EQ @iv_airport_id
     INTO CORRESPONDING FIELDS OF @rs_airport.


  ENDMETHOD.

ENDCLASS.
