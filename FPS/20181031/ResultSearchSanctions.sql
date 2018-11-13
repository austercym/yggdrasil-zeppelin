%jdbc(hive)
select 
concat('%html <input id=select-',paymentId,' class="checkbox-sanctions" type="checkbox" onClick="itemSelected(', paymentId, ',this)">') as selectitem,
paymentId, 
sanctionsRequestId,
paymentsystem,
paymenttimestamp,
paymentscheme,
direction,
cdtdbtind,
intrbksttldt,
intrbksttlamt,
intrbksttlccy,
counterpartyacct,
counterpartyagt,
counterpartynm,
counterpartyadr,
customernm,
customeracct,
customeragt,
customeracctid,
sanctionsts,
sanctionsmatch,
sanctionsmatchlist,
paymentmessage,
concat('%html <div style="width:200px"> <button class="btn btn-success" onclick="passSanctions(',paymentId, ')">Pass</button> <button class="btn btn-danger" class="failSanctions" onclick="failSanctions(',paymentId,')">Fail</button </div>') as actions  
from sanctions.FpsSanctions
${sanctionsQuery}