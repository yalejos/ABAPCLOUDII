CLASS zcl_lab_65_factory_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS create_file IMPORTING iv_file_type        TYPE string
                        RETURNING VALUE(ro_file_type) TYPE REF TO zif_lab_06_file_ya.
PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_factory_ya IMPLEMENTATION.
  METHOD create_file.

    CASE iv_file_type.

      WHEN 'Work' .
        ro_file_type = NEW zcl_lab_63_work_file_ya(  ).

      WHEN 'Supply'.
        ro_file_type = NEW zcl_lab_64_supply_file_ya(  ).
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
