*"* use this source file for your ABAP unit test classes
class ltcl_test_inj definition final for testing
  duration short
  risk level harmless.

  PUBLIC SECTION.
    INTERFACES if_abap_db_writer PARTIALLY IMPLEMENTED.

PRIVATE SECTION.
    METHODS:
      get_travel_test FOR TESTING RAISING cx_static_check.

    DATA mo_cut TYPE REF TO zcl_lab_61_travel_ya. "CUT Class Under test

    CLASS-METHODS: class_setup,
                   class_teardown.
    METHODS: setup,
      teardowm.

  ENDCLASS.


class ltcl_test_inj implementation.

  METHOD get_travel_test.

    me->mo_cut->get_travel( iMPORTING es_flights = data(ls_flights)  ).
    IF cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = |{ ls_flights-carrier_id }-{ ls_flights-connection_id }|
        exp                  = 'UA-0012'
    ) EQ abap_true.
      cl_abap_unit_assert=>fail( 'Get travel test failed' ).
    ENDIF.
  ENDMETHOD.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  METHOD setup.
    me->mo_cut =  NEW zcl_lab_61_travel_ya(  ).

    TEST-INJECTION select_data.
      lv_carrier_id = 'UA'.
      ls_flights-carrier_id = lv_carrier_id.
      ls_flights-connection_id = '0012'.
      ls_flights-price = 6000.
    END-TEST-INJECTION.
  ENDMETHOD.

  method teardowm.
   clear  me->mo_cut.
  endmethod.

  method if_abap_close_resource~close.

  endmethod.


  method if_abap_writer~write.

  endmethod.

endclass.
