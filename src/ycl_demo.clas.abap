CLASS ycl_demo DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_demo IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
SELECT * FROM snwd_bpa INTO TABLE @DATA(lt_data).
    out->write(
        EXPORTING
            data = lt_data
            name = 'Output Title'
    ).

  ENDMETHOD.

ENDCLASS.
