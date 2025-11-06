CLASS zcl_lab_54_bank_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS TRANSFER IMPORTING iv_iban TYPE string
                     RAISING zcx_lab_52_operations_ya
                     resumable(zcx_lab_55_auth_iban_ya).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank_ya IMPLEMENTATION.
  METHOD transfer.

    IF iv_iban EQ 'ES95 4329 8765 4321'.
      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban_ya
        EXPORTING
          textid = zcx_lab_55_auth_iban_ya=>card_novalid
          msgv1  = |{ iv_iban }|.

    ENDIF.

  ENDMETHOD.

ENDCLASS.
