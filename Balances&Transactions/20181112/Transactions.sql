%jdbc(hive)
select accountid, lasttransactionid, transactiontimestamp, transactiontype, transactionamount, transactioncurrency, actualbalance, ledgerbalance
from transactional_log.transaction_log where lasttransactionid like '%${transactionId}%'