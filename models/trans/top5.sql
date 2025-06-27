SELECT *
from  MYDB.DBT_NGUPTA.JOIN
qualify rank() over(partition by 1 order by "Transaction_Amount" desc)<6
