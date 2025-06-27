SELECT
    s.value:"Transaction_ID"::int AS "Transaction_ID",
    s.value:"Customer_ID"::string AS "Customer_ID",
    s.value:"Transaction_Date"::string AS "Transaction_Date",
    s.value:"Transaction_Type"::int AS "Transaction_Type",
    s.value:"Transaction_Amount"::string AS "Transaction_Amount",
    s.value:"Transaction_Mode"::string AS "Transaction_Mode"
FROM MYDB.CS2_BLOB.CS_2_XML,
LATERAL FLATTEN(TO_ARRAY(MYDB.CS2_BLOB.CS_2_XML._DATA: "$")) s
