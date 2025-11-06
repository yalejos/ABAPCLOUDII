CLASS zcl_lab_69_blog_ya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_title IMPORTING iv_title TYPE string,
             get_title RETURNING VALUE(rv_title) TYPE string.
    EVENTS public_title EXPORTING VALUE(ev_new_title) TYPE string.
PROTECTED SECTION.
  PRIVATE SECTION.
    dATA: title type string.
ENDCLASS.



CLASS zcl_lab_69_blog_ya IMPLEMENTATION.

  METHOD get_title.
    rv_title = me->title.
  ENDMETHOD.

  METHOD set_title.
    me->title = iv_title.
    RAISE EVENT public_title EXPORTING ev_new_title = iv_title.
  ENDMETHOD.

ENDCLASS.
