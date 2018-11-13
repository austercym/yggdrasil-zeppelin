%jdbc(hive)
select accountid, actualbalance, ledgerbalance, transactiontimestamp as lasttransactiontimestamp, lasttransactionid,transactiontype, transactionamount as amount, transactioncurrency as currency
from transactional_log.transaction_log where accountid like '%${account}%' order by lasttransactiontimestamp desc limit 1