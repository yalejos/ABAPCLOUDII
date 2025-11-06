CLASS zcl_lab_60_test_calc_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "! @testing zcl_lab_59_calculator_ya
    METHODS sum_up_test FOR TESTING. "UTM - unit Test Method
PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mo_cut tYPE REF TO zcl_lab_59_calculator_ya. "CUT Class Under test
    METHODS: setup,
             teardowm.
ENDCLASS.

CLASS zcl_lab_60_test_calc_ya IMPLEMENTATION.

  METHOD setup.
    mo_cut = new zcl_lab_59_calculator_ya(  ).
  ENDMETHOD.

  METHOD sum_up_test.
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
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_result_ut
        exp                  = 12
    ).
  ENDMETHOD.


  METHOD teardowm.
    clear mo_cut.
  ENDMETHOD.


ENDCLASS.
