%jdbc(hive)
select accountid, actualbalance, ledgerbalance, transactiontimestamp as lasttransactiontimestamp, lasttransactionid,transactiontype, transactionamount as amount, transactioncurrency as currency
from transactional_log.transaction_log where  accountid = '${account}' order by lasttransactiontimestamp des