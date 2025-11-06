*"* use this source file for your ABAP unit test classes
class ltcl_calculator_local_test definition final for testing
  duration short
  risk level harmless.

  private section.

    DATA mo_cut tYPE REF TO zcl_lab_59_calculator_ya. "CUT Class Under test
    METHODS: setup,
             teardowm,
            first_test for testing raising cx_static_check.
endclass.


class ltcl_calculator_local_test implementation.



  method setup.
    mo_cut = new zcl_lab_59_calculator_ya(  ).
  endmethod.

  METHOD first_test.
    "Given
    DATA: lv_num1_ut   TYPE i,
          lv_num2_ut   TYPE i,
          lv_result_ut TYPE i.

    lv_num1_ut = 5.
    lv_num2_ut = 7.

    "When
    mo_cut->sum_up(
      EXPORTING
        iv_num1   = lv_num1_ut
        iv_num2   = lv_num2_ut
      RECEIVING
        rv_result = lv_result_ut
    ).

    "Then
    IF cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_result_ut
        exp                  = 12
    ) EQ abap_true.

      cl_abap_unit_assert=>fail( 'Fail test' ).
    ENDIF..

  ENDMETHOD.

  method teardowm.
    clear mo_cut.
  endmethod.

endclass.
