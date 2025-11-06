CLASS zcl_lab_47_customer_service_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA phone_number TYPE string.
    CLASS-METHODS on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_operator_ya
      IMPORTING ev_phone_number.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_service_ya IMPLEMENTATION.
  METHOD on_new_call.
    phone_number =  ev_phone_number.
  ENDMETHOD.

ENDCLASS.
