select * from MYDB.DBT_NGUPTA.JSON  as json inner join MYDB.DBT_NGUPTA.XML  as xml 
on json.Customer_ID = xml."Customer_ID"