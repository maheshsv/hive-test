
INSERT INTO TABLE DEALER_HIERARCHY_CORE
  PARTITION (DEALER_CODE)
  SELECT
    dh.FILE_NAME,
    dh.GEN_ID,
    dh.DMS_SYSTEM,
    dh.DMS_VERSION,
    custom_utc_timestamp(format_mr_timestamp(dh.TRANSMIT_TS)) AS TRANSMIT_TS,
    format_mr_timestamp(dh.ORIG_TRANSMIT_TS) AS ORIG_TRANSMIT_TS,
    dh.TRANSMIT_BY,
    dh.RECORD_STATUS,
    dh.DEALER_UPDT_IND,
    trim(dh.STORE_NUMBER) as STORE_NUMBER,
    trim(dh.PART_TYPE) as PART_TYPE,
    dh.STORE_NAME,
    dh.INVENTORY_STORE_NUMBER,
    trim(dh.CAT_EMRG_DEALER_CODE) as CAT_EMRG_DEALER_CODE,
    trim(dh.CAT_STOCK_DEALER_CODE) as CAT_STOCK_DEALER_CODE,
    trim(dh.STOCK_REPLEN_STORE_NUMBER) as STOCK_REPLEN_STORE_NUMBER,
    dh.STOCK_REPLEN_LEAD_TIME,
    dh.LST_UPDT_TS,
    dh.ORIG_LST_UPDT_TS,
    dh.LST_UPDT_BY_ID,
    dh.file_ins_ts,
    dh.ORIG_file_ins_TS,
    dh.EXP_STOCK_PLAN_LEAD_TIME,
    trim(dh.DEALER_CODE) as DEALER_CODE
  FROM
    dealer_hierarchy_temp_data dh
;