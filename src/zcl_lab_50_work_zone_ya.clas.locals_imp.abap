*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


CLASS lcl_helper IMPLEMENTATION.

  METHOD get_work_zone.
    me->set_work_zone(  ).
    rv_work_zone = ms_work_zone.
  ENDMETHOD.

  METHOD set_work_zone.
    ms_work_zone = VALUE ty_work_zone(
                  launchpad = ' Accounts'
                  dashboard = 'Accounts Payable'
                  spaces = 'Finances' ).
  ENDMETHOD.

ENDCLASS.
