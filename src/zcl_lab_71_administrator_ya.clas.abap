CLASS zcl_lab_71_administrator_ya DEFINITION inHERITING FROM zcl_lab_70_observer_ya
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA title type string.
    METHODS: on_public_title REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_71_administrator_ya IMPLEMENTATION.

  METHOD on_public_title.
    me->title = ev_new_title.
  ENDMETHOD.

ENDCLASS.
