FUNCTION zmf_test_0001.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(IV_MATNR) TYPE  MATNR
*"  EXCEPTIONS
*"      ERROR
*"----------------------------------------------------------------------

  DATA: lv_maktx TYPE maktx.

  SELECT SINGLE maktx
    FROM makt
    INTO lv_maktx
    WHERE spras EQ sy-langu
      AND matnr EQ iv_matnr.

ENDFUNCTION.