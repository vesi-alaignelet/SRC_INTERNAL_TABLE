*&---------------------------------------------------------------------*
*& Report yrinternal_table
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT yrinternal_table.

TYPES : ty_users TYPE STANDARD TABLE OF REF TO ycl_user WITH DEFAULT KEY.
DATA : go_user          TYPE REF TO ycl_user,
       gto_user         LIKE TABLE OF go_user,
       gv_concat_string TYPE string,
       gt_split         TYPE TABLE OF string,
       gv_firstname     TYPE string,
       gv_lastname      TYPE string.
*
"go_user = NEW ycl_user( i_username =  'KSI').
APPEND NEW ycl_user( i_username =  'KSI') TO gto_user.

"go_user = NEW ycl_user( i_username =  'WBENSABE').
APPEND NEW ycl_user( i_username =  'ALAIGNEL') TO gto_user.

gto_user = VALUE #( ( NEW ycl_user( i_username =  'WBENSABE') )
                    ( NEW ycl_user( i_username =  'NMELLITI') ) ).

DATA(gto_user1) = VALUE ty_users( ( NEW ycl_user( i_username =  'KSI') )
                                  ( NEW ycl_user( i_username =  'ALAIGNEL') ) ).

IF gto_user[] IS NOT INITIAL.
  "FREE go_user.

*  LOOP AT gto_user INTO go_user.
*    WRITE : /,'Name',go_user->name.
*
*    CONCATENATE 'username=' go_user->username 'name=' go_user->name INTO gv_concat_string SEPARATED BY space.
*    WRITE : /, 'concat1', gv_concat_string.
*    CLEAR gv_concat_string.
*    gv_concat_string = 'username=' && go_user->username && ' ' && 'name=' && go_user->name.
*    WRITE : /,'concat2' , gv_concat_string.
*    gv_concat_string = |username= { go_user->username } name= { go_user->name }|.
*    WRITE : /,'concat3' , gv_concat_string.
*
*    SPLIT go_user->name AT space INTO gv_firstname gv_lastname.
*    IF go_user->name CS 'ne'.
*      WRITE : /, go_user->name ,  ' contains ne'.
*    ENDIF.
*
*
*  ENDLOOP.

  SELECT * FROM v_username INTO TABLE @DATA(lt_user).
  cl_demo_output=>display( lt_user ).

ENDIF.
