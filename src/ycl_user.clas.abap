CLASS ycl_user DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
    DATA :
      username  TYPE uname,
      name TYPE string.
    METHODS :
    constructor IMPORTING i_username type uname.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_user IMPLEMENTATION.
 METHOD constructor.
  username = i_username.

    SELECT SINGLE FROM v_username FIELDS name_text
    WHERE bname = @i_username
    INTO @name.


  ENDMETHOD.
ENDCLASS.
