CLASS zcl_lab_30_org_germany_ya DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_ya
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_ya IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Germany'.
  ENDMETHOD.

ENDCLASS.
