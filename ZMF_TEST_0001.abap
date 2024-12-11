FUNCTION zmf_test_0001.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(IV_MATNR) TYPE  MATNR
*"  EXCEPTIONS
*"      ERROR
*"----------------------------------------------------------------------

  DATA: lv_maktx TYPE maktx.

  SELECT SINGLE materialname
    FROM I_MaterialText
    INTO @lv_maktx
    WHERE language     EQ @sy-langu
      AND materialname EQ @iv_matnr.

ENDFUNCTION.