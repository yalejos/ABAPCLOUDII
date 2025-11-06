CLASS zcl_lab_53_check_user_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS CHECK_USER IMPORTING iv_user TYPE syuname
                       RAISING zcx_lab_52_operations_ya.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user_ya IMPLEMENTATION.
  METHOD check_user.

    IF iv_user eq 'CB9980002781'.

        rAISE exCEPTION type zcx_lab_52_operations_ya
          EXPORTING
            textid   = zcx_lab_52_operations_ya=>no_access
*            previous =
            msgv1    = |{ iv_user }|
*            msgv2    =
*            msgv3    =
*            msgv4    =
        .
    ENDIF.
  ENDMETHOD.

ENDCLASS.
