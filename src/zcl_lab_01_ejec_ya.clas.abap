CLASS zcl_lab_01_ejec_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    inTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_ya IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(go_model) = new zcl_lab_73_model_ya( 'SQ' ).
    DATA(go_view) = new zcl_lab_74_view_ya(  ).
    DATA(go_controller) = new zcl_lab_75_controller_ya(  ).

    go_controller->set_model( go_model  ).
    go_controller->set_view( go_view ).


    go_controller->get_view(  )->display_flights( EXPORTING it_flights = go_controller->get_model(  )->get_flights(  ) io_out = out  ).




*    DATA(go_blog) = NEW zcl_lab_69_blog_ya(  ).
*    DATA(go_administrator) = NEW zcl_lab_71_administrator_ya(  ).
*    DATA(go_users) = NEW zcl_lab_72_users_ya(  ).
*
*    SET HANDLER go_administrator->on_public_title FOR go_blog.
*    SET HANDLER go_users->on_public_title FOR go_blog.
*
*
*    go_blog->set_title( 'SAP announce that they started to work on VS Code extensión for ABAP' ).
*    out->write( | New title for Administrator: { go_administrator->title  } |  ).
*    out->write( | New title for Users: { go_users->title  } |  ).

*
*    DATA(lo_package_a) = NEW zcl_lab_67_package_a_ya(  ).
*    DATA(lo_package_b) = NEW zcl_lab_68_package_b_ya(  ).
*
*    out->write( '--- Ejecutando Paquete A ---' ).
*    lo_package_a->travel( out ).
*    out->write( '--- Ejecutando Paquete B---' ).
*    lo_package_b->travel( out ).


*    DATA: go_file_type TYPE REF TO zif_lab_06_file_ya,
*          go_factory   TYPE REF TO zcl_lab_65_factory_ya.
*
*    go_factory = NEW #( ).
*    go_file_type = go_factory->create_file( 'Work' ).
*    out->write( go_file_type->get_file_type(  ) ).
*    go_file_type = go_factory->create_file( 'Supply' ).
*    out->write( go_file_type->get_file_type(  ) ).
*

*    DATA: lo_context1 TYPE REF TO zcl_lab_62_context_ya,
*          lo_context2 TYPE REF TO zcl_lab_62_context_ya.
*
*    lo_context1 = zcl_lab_62_context_ya=>get_instance(  ).
*    lo_context2 = zcl_lab_62_context_ya=>get_instance(  ).
*
*    out->write( lo_context1->mv_counter ).
*    out->write( lo_context1->mv_counter ).
**
*    DATA(lo_date_analizer) = NEW zcl_lab_58_date_analyzer_ya(  ).
*
*    TRY.
*        TRY.
*            lo_date_analizer->analyze_date(  ).
*
*          CATCH zcx_lab_56_no_date_ya INTO DATA(lx_no_date).
*            out->write( |Exception 1: { lx_no_date->get_text( ) } |  ).
*
*            lo_date_analizer->analyze_format( oi_previous = lx_no_date ).
*        ENDTRY.
*
*      CATCH zcx_lab_57_format_unknown_ya INTO DATA(lx_format_unknown).
*        out->write( |Exception 2: { lx_format_unknown->get_text(  ) } Previous: { lx_format_unknown->previous->get_text( ) }|  ).
*
*    ENDTRY.


*
*    DATA(LO_bank) = NEW zcl_lab_54_bank_ya(  ).
*    TRY.
*        lo_bank->transfer( iv_iban = 'ES95 4329 8765 4321' ).
*      CATCH zcx_lab_52_operations_ya.
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_ya INTO DATA(lx_iban).
*        out->write( lx_iban->get_text(  ) ).
*        IF  lx_iban->is_resumable EQ abap_true.
*          out->write( 'Excepcion resumable' ).
*          RESUME.
*        ENDIF.
*    ENDTRY.
*    out->write( 'Finish' ).

*    DATA: lv_num1   TYPE i VALUE 50,
*          lv_num2   TYPE i,
*          lv_result TYPE i,
*          lx_auth   TYPE REF TO zcx_lab_52_operations_ya.
*
*    TRY.
*        TRY.
*            lv_result = lv_num1 + lv_num2.
*            lv_result = lv_num1 / lv_num2.
*            lv_result = lv_num1 - lv_num2.
*
*          CATCH zcx_lab_52_operations_ya INTO lx_auth.
*            out->write( lx_auth->get_text(  ) ).
*
*          CATCH cx_a4c_bc_exception.
*
*          CLEANUP INTO DATA(lx_cleanup).
*            out->write( |Cleanup 1 - Exception: { lx_cleanup->get_text(  ) }| ).
*
*
*        ENDTRY.
*
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zero).
*
*        out->write( lx_zero->get_text(  ) ).
*        lv_num2 = 10.
*        RETRY.
*      CLEANUP INTO lx_cleanup.
*        out->write( |Cleanup 2 - Exception: { lx_cleanup->get_text(  ) }| ).
*
*
*    ENDTRY.
*
*    out->write( |Result: { lv_result } | ).

*
*    DATA(lo_operations) = NEW zcl_lab_53_check_user_ya(  ).
*    DATA lx_message TYPE REF TO zcx_lab_52_operations_ya.
*
*    TRY.
*        lo_operations->check_user( sy-uname ).
*
*      CATCH zcx_lab_52_operations_ya INTO lx_message.
*        out->write( lx_message->get_text(  ) ).
*    ENDTRY.

*    data(lo_work_zone) = new zcl_lab_50_work_zone_ya(  ).
*    out->write( lo_work_zone->get_work_zone(  ) ).

*    DATA(go_finance_dep) = NEW zcl_lab_48_administrat_dep_ya( '4003' ).
*    DATA(go_control_dep) = NEW zcl_lab_48_administrat_dep_ya( '5008' ).
*    DATA(go_production_dep) = NEW zcl_lab_48_administrat_dep_ya( '2005' ).
*    DATA(go_employee) = NEW zcl_lab_49_employee_ya(  ).
*
*    SET HANDLER  go_employee->on_payroll_paid FOR ALL INSTANCES.
**    SET HANDLER  go_employee->on_payroll_paid FOR go_finance_dep.
**    SET HANDLER  go_employee->on_payroll_paid FOR go_control_dep.
**    SET HANDLER  go_employee->on_payroll_paid FOR go_production_dep.
*
*    go_finance_dep->notify_employee(  ).
*    out->write( go_employee->log ).
*    go_control_dep->notify_employee(  ).
*    out->write( go_employee->log ).
*    go_production_dep->notify_employee(  ).
*    out->write( go_employee->log ).



*    SET HANDLER zcl_lab_47_customer_service_ya=>on_new_call.
*
*    zcl_lab_46_mobile_operator_ya=>assign_call( '+58414567984' ).
*
*    out->write( |Phone number: { zcl_lab_47_customer_service_ya=>phone_number  } | ).


*    DATA(lo_chrome) =  NEW zcl_lab_45_chrome_ya(  ).
*    DATA(lo_operating) = new zcl_lab_44_operating_system_ya(  ).
*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operating aCTIVATION abap_false.
*
*    lo_operating->mouse_movement(   ).
*
*    out->write( lo_chrome->log ).

*    DATA(lo_screen) = NEW zcl_lab_42_screen_ya( 'Super Retina XDR' ).
*    DATA(lo_navigation) =  NEW zcl_lab_43_navigation_ya(  ).
*
*    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.
*
*    lo_screen->element_selected( exporting iv_pos_horizontal = 20 iv_pos_vertical = 10   ).
*
*    out->write( lo_navigation->log ).




*    DATA: go_object TYPE REF TO object.
*    DATA lv_headquarters TYPE string.
*
*    go_object = NEW zcl_lab_41_organization_ya(  ).
*
*    DATA(lv_method_name) = 'SET_HEADQUARTERS'.
*
*    lv_headquarters = 'California'.
*    CALL METHOD go_object->(lv_method_name) EXPORTING iv_headquarters = lv_headquarters.
*
*    CLEAR lv_headquarters.
*    lv_method_name = 'GET_HEADQUARTERS'.
*    CALL METHOD go_object->(lv_method_name) RECEIVING rv_headquarters = lv_headquarters.
*    out->write( lv_headquarters ).
*




*    DATA: go_budget TYPE REF TO zcl_lab_39_budget_ya.
*
*    go_budget = NEW zcl_lab_40_actual_budget_ya( ).
*
*    out->write( go_budget->get_budget( )  ).



* DATA: lo_prod_price1 tyPE REF TO zcl_lab_38_prod_price_ya,
*       lo_prod_price2 tyPE REF TO zcl_lab_38_prod_price_ya.
*
*       lo_prod_price1 =  new #(  ).
*
*       lo_prod_price2 =  lo_prod_price1.
*
*       lo_prod_price2->price = 2000.
*
*       out->write( lo_prod_price1->price ).

*   data(lo_screen) = new zcl_lab_37_screen_ya(  ).
*   lo_screen->set_screen_type( 'Super Retna XDR' ).
*   data(lo_phone) = new zcl_lab_36_phone_ya( lo_screen ).
*
*   out->write( lo_phone->get_screen(  )->get_screen_type(  ) ).

*    DATA(lo_college) = NEW zcl_lab_35_college_ya(  ).
*    DATA(lo_student) = NEW zcl_lab_34_student_ya(  ).
*
*    lo_student->set_name( 'Yenifer Alejos' ).
*    lo_college->enroll_student( lo_student ).
*
*   out->write( lo_college->go_student->get_name(  ) ).



*    DATA: gt_employee   TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_ya,
*          go_internal   TYPE REF TO zcl_lab_32_internal_empl_ya,
*          go_expatriate TYPE REF TO zcl_lab_33_expatriate_empl_ya,
*          go_employee   TYPE REF TO zif_lab_04_employee_ya.
*
*    go_internal =  NEW #(   ).
*    go_expatriate = NEW #(  ).
*    APPEND go_internal TO gt_employee.
*    APPEND go_expatriate TO gt_employee.
*
*
*    LOOP AT gt_employee INTO go_employee.
*      out->write( go_employee->get_employees_count(  ) ).
*    ENDLOOP.
*
**
*    DATA: gt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_ya,
*          go_org_germany  TYPE REF TO zcl_lab_30_org_germany_ya,
*          go_org_france   TYPE REF TO zcl_lab_31_org_france_ya,
*          go_organization TYPE REF TO zcl_lab_29_organization_ya.
*
*    go_org_germany =  NEW #(   ).
*    go_org_france = NEW #(  ).
*    APPEND go_org_germany TO gt_organization.
*    APPEND go_org_france TO gt_organization.
*
*
*    LOOP AT gt_organization INTO go_organization.
*      out->write( go_organization->get_location(  ) ).
*    ENDLOOP.


*    DATA(lo_factory) = NEW zcl_lab_28_logistics_ya(  ).
*    out->write( lo_factory->input_products( ) ).
*    out->write( lo_factory->merchandise_output(  ) ).
*    out->write( lo_factory->production_line(  ) ).
*

*    DATA(lo_flights) = NEW zcl_lab_26_flights_ya(  ).
*
*    out->write( lo_flights->get_customer( '000004' ) ) .
*    out->write( lo_flights->get_airports( 'HAM' ) ) .

  ENDMETHOD.

ENDCLASS.
