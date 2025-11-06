CLASS zcl_lab_58_date_analyzer_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: analyze_date IMPORTING oi_previous TYPE REF TO cx_root OPTIONAL
                          RAISING   zcx_lab_56_no_date_ya,
      analyze_format IMPORTING oi_previous TYPE REF TO cx_root OPTIONAL
                     RAISING   zcx_lab_57_format_unknown_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer_ya IMPLEMENTATION.
  METHOD analyze_date.
    RAISE EXCEPTION TYPE zcx_lab_56_no_date_ya
      EXPORTING
        textid   =  zcx_lab_56_no_date_ya=>no_date
        previous = oi_previous
*        msgv1    =
*        msgv2    =
*        msgv3    =
*        msgv4    =
    .
  ENDMETHOD.

  METHOD analyze_format.
    RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_ya
      EXPORTING
        textid   = zcx_lab_57_format_unknown_ya=>format_unknown
        previous = oi_previous
*       msgv1    =
*       msgv2    =
*       msgv3    =
*       msgv4    =
      .
  ENDMETHOD.

ENDCLASS.
