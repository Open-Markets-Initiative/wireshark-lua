-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Millennium NativeTradingGateway Ntgi 21.2 Protocol
local omi_lseg_millennium_nativetradinggateway_ntgi_v21_2 = Proto("Omi.Lseg.Millennium.NativeTradingGateway.Ntgi.v21.2", "Lseg Millennium NativeTradingGateway Ntgi 21.2")

-- Protocol table
local lseg_millennium_nativetradinggateway_ntgi_v21_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Millennium NativeTradingGateway Ntgi 21.2 Fields
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.account = ProtoField.new("Account", "lseg.millennium.nativetradinggateway.ntgi.v21.2.account", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.account_type = ProtoField.new("Account Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.accounttype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.algo = ProtoField.new("Algo", "lseg.millennium.nativetradinggateway.ntgi.v21.2.algo", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.anonymity = ProtoField.new("Anonymity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.anonymity", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.app_id = ProtoField.new("App Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.appid", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.app_status = ProtoField.new("App Status", "lseg.millennium.nativetradinggateway.ntgi.v21.2.appstatus", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.ask_price = ProtoField.new("Ask Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.askprice", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.ask_size = ProtoField.new("Ask Size", "lseg.millennium.nativetradinggateway.ntgi.v21.2.asksize", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.auto_cancel = ProtoField.new("Auto Cancel", "lseg.millennium.nativetradinggateway.ntgi.v21.2.autocancel", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.auto_rfq_exec_strategy = ProtoField.new("Auto Rfq Exec Strategy", "lseg.millennium.nativetradinggateway.ntgi.v21.2.autorfqexecstrategy", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.avg_px = ProtoField.new("Avg Px", "lseg.millennium.nativetradinggateway.ntgi.v21.2.avgpx", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_id = ProtoField.new("Bid Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.bidid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_price = ProtoField.new("Bid Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.bidprice", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_quantity = ProtoField.new("Bid Quantity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.bidquantity", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_size = ProtoField.new("Bid Size", "lseg.millennium.nativetradinggateway.ntgi.v21.2.bidsize", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "lseg.millennium.nativetradinggateway.ntgi.v21.2.cancelrejectreason", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.capacity = ProtoField.new("Capacity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.capacity", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.clearing_account = ProtoField.new("Clearing Account", "lseg.millennium.nativetradinggateway.ntgi.v21.2.clearingaccount", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.client_id = ProtoField.new("Client Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.clientid", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.client_id_qualifier = ProtoField.new("Client Id Qualifier", "lseg.millennium.nativetradinggateway.ntgi.v21.2.clientidqualifier", ftypes.UINT8, {[0]="None", [1]="Lei Or Firm", [2]="Algo"}, base.DEC, 0x03)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.client_order_id = ProtoField.new("Client Order Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.clientorderid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.contra_firm = ProtoField.new("Contra Firm", "lseg.millennium.nativetradinggateway.ntgi.v21.2.contrafirm", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.contra_order_book = ProtoField.new("Contra Order Book", "lseg.millennium.nativetradinggateway.ntgi.v21.2.contraorderbook", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.contra_trader = ProtoField.new("Contra Trader", "lseg.millennium.nativetradinggateway.ntgi.v21.2.contratrader", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.counterparty = ProtoField.new("Counterparty", "lseg.millennium.nativetradinggateway.ntgi.v21.2.counterparty", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.dea_flag = ProtoField.new("Dea Flag", "lseg.millennium.nativetradinggateway.ntgi.v21.2.deaflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.display_qty = ProtoField.new("Display Qty", "lseg.millennium.nativetradinggateway.ntgi.v21.2.displayqty", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.exec_type = ProtoField.new("Exec Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.exectype", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executed_price = ProtoField.new("Executed Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executedprice", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executed_qty = ProtoField.new("Executed Qty", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executedqty", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executed_quantity = ProtoField.new("Executed Quantity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executedquantity", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executing_trader = ProtoField.new("Executing Trader", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executingtrader", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executingtraderqualifier", ftypes.UINT8, {[0]="None", [1]="Lei Or Firm", [2]="Algo"}, base.DEC, 0x30)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_id = ProtoField.new("Execution Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executionid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_order_status = ProtoField.new("Execution Report Order Status", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executionreportorderstatus", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_pegged_exec_inst = ProtoField.new("Execution Report Pegged Exec Inst", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executionreportpeggedexecinst", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_ref_id = ProtoField.new("Execution Report Ref Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executionreportrefid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_type = ProtoField.new("Execution Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executiontype", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.expire_date_time = ProtoField.new("Expire Date Time", "lseg.millennium.nativetradinggateway.ntgi.v21.2.expiredatetime", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.expire_time = ProtoField.new("Expire Time", "lseg.millennium.nativetradinggateway.ntgi.v21.2.expiretime", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.expire_time_milliseconds = ProtoField.new("Expire Time Milliseconds", "lseg.millennium.nativetradinggateway.ntgi.v21.2.expiretimemilliseconds", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.fourth_reserved_8 = ProtoField.new("Fourth Reserved 8", "lseg.millennium.nativetradinggateway.ntgi.v21.2.fourthreserved8", ftypes.UINT64)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.group_id = ProtoField.new("Group Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.groupid", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.instrument_id = ProtoField.new("Instrument Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.instrumentid", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.investment_decision_maker = ProtoField.new("Investment Decision Maker", "lseg.millennium.nativetradinggateway.ntgi.v21.2.investmentdecisionmaker", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.investor_information_qualifier = ProtoField.new("Investor Information Qualifier", "lseg.millennium.nativetradinggateway.ntgi.v21.2.investorinformationqualifier", ftypes.UINT8, {[0]="None", [1]="Lei Or Firm", [2]="Algo"}, base.DEC, 0x0C)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.last_market = ProtoField.new("Last Market", "lseg.millennium.nativetradinggateway.ntgi.v21.2.lastmarket", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "lseg.millennium.nativetradinggateway.ntgi.v21.2.leavesqty", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.leaves_quantity = ProtoField.new("Leaves Quantity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.leavesquantity", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.limit_price = ProtoField.new("Limit Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.limitprice", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.liquidity_provision = ProtoField.new("Liquidity Provision", "lseg.millennium.nativetradinggateway.ntgi.v21.2.liquidityprovision", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_maker = ProtoField.new("Market Maker", "lseg.millennium.nativetradinggateway.ntgi.v21.2.marketmaker", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_maker_firm = ProtoField.new("Market Maker Firm", "lseg.millennium.nativetradinggateway.ntgi.v21.2.marketmakerfirm", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_maker_rank = ProtoField.new("Market Maker Rank", "lseg.millennium.nativetradinggateway.ntgi.v21.2.marketmakerrank", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_makers = ProtoField.new("Market Makers", "lseg.millennium.nativetradinggateway.ntgi.v21.2.marketmakers", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "lseg.millennium.nativetradinggateway.ntgi.v21.2.masscancelrejectreason", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.masscancelrequesttype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "lseg.millennium.nativetradinggateway.ntgi.v21.2.masscancelresponse", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message = ProtoField.new("Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.message", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_header = ProtoField.new("Message Header", "lseg.millennium.nativetradinggateway.ntgi.v21.2.messageheader", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_length = ProtoField.new("Message Length", "lseg.millennium.nativetradinggateway.ntgi.v21.2.messagelength", ftypes.INT16)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_type = ProtoField.new("Message Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.messagetype", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_version = ProtoField.new("Message Version", "lseg.millennium.nativetradinggateway.ntgi.v21.2.messageversion", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mi_fid_flags = ProtoField.new("Mi Fid Flags", "lseg.millennium.nativetradinggateway.ntgi.v21.2.mifidflags", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.minimumquantity", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "lseg.millennium.nativetradinggateway.ntgi.v21.2.nanoseconds", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_order_order_sub_type = ProtoField.new("New Order Order Sub Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.neworderordersubtype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_order_pegged_exec_inst = ProtoField.new("New Order Pegged Exec Inst", "lseg.millennium.nativetradinggateway.ntgi.v21.2.neworderpeggedexecinst", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_password = ProtoField.new("New Password", "lseg.millennium.nativetradinggateway.ntgi.v21.2.newpassword", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_quote_pegged_exec_inst = ProtoField.new("New Quote Pegged Exec Inst", "lseg.millennium.nativetradinggateway.ntgi.v21.2.newquotepeggedexecinst", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.num_of_competitors = ProtoField.new("Num Of Competitors", "lseg.millennium.nativetradinggateway.ntgi.v21.2.numofcompetitors", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offer_id = ProtoField.new("Offer Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.offerid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offer_price = ProtoField.new("Offer Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.offerprice", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offer_quantity = ProtoField.new("Offer Quantity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.offerquantity", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offset = ProtoField.new("Offset", "lseg.millennium.nativetradinggateway.ntgi.v21.2.offset", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_book = ProtoField.new("Order Book", "lseg.millennium.nativetradinggateway.ntgi.v21.2.orderbook", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_capacity = ProtoField.new("Order Capacity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordercapacity", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_id = ProtoField.new("Order Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.orderid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_mass_cancel_request_order_sub_type = ProtoField.new("Order Mass Cancel Request Order Sub Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordermasscancelrequestordersubtype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_qty = ProtoField.new("Order Qty", "lseg.millennium.nativetradinggateway.ntgi.v21.2.orderqty", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_quantity = ProtoField.new("Order Quantity", "lseg.millennium.nativetradinggateway.ntgi.v21.2.orderquantity", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_reject_code = ProtoField.new("Order Reject Code", "lseg.millennium.nativetradinggateway.ntgi.v21.2.orderrejectcode", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_type = ProtoField.new("Order Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordertype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.originalclientorderid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.owner_type = ProtoField.new("Owner Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ownertype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.packet = ProtoField.new("Packet", "lseg.millennium.nativetradinggateway.ntgi.v21.2.packet", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.partition_id = ProtoField.new("Partition Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.partitionid", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.party_role_qualifiers = ProtoField.new("Party Role Qualifiers", "lseg.millennium.nativetradinggateway.ntgi.v21.2.partyrolequalifiers", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.passive_only_order = ProtoField.new("Passive Only Order", "lseg.millennium.nativetradinggateway.ntgi.v21.2.passiveonlyorder", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.password = ProtoField.new("Password", "lseg.millennium.nativetradinggateway.ntgi.v21.2.password", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.password_expiry_day_count = ProtoField.new("Password Expiry Day Count", "lseg.millennium.nativetradinggateway.ntgi.v21.2.passwordexpirydaycount", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.price = ProtoField.new("Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.price", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.private_quote = ProtoField.new("Private Quote", "lseg.millennium.nativetradinggateway.ntgi.v21.2.privatequote", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.public_order_id = ProtoField.new("Public Order Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.publicorderid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_ack_status = ProtoField.new("Quote Ack Status", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoteackstatus", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quotemsgid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_req_id = ProtoField.new("Quote Req Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quotereqid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_request_type = ProtoField.new("Quote Request Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoterequesttype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_resp_type = ProtoField.new("Quote Resp Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoteresptype", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_status = ProtoField.new("Quote Status", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quotestatus", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reason = ProtoField.new("Reason", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reason", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reject_code = ProtoField.new("Reject Code", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rejectcode", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reject_reason = ProtoField.new("Reject Reason", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rejectreason", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rejected_message_type = ProtoField.new("Rejected Message Type", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rejectedmessagetype", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved1", ftypes.INT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_10 = ProtoField.new("Reserved 10", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved10", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_14 = ProtoField.new("Reserved 14", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved14", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_37 = ProtoField.new("Reserved 37", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved37", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved4", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved5", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_67 = ProtoField.new("Reserved 67", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved67", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_7 = ProtoField.new("Reserved 7", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved7", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.millennium.nativetradinggateway.ntgi.v21.2.reserved8", ftypes.UINT64)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.restatement_reason = ProtoField.new("Restatement Reason", "lseg.millennium.nativetradinggateway.ntgi.v21.2.restatementreason", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_disclose_side = ProtoField.new("Rfq Disclose Side", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqdiscloseside", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_execution_delay = ProtoField.new("Rfq Execution Delay", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqexecutiondelay", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_execution_report_order_status = ProtoField.new("Rfq Execution Report Order Status", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqexecutionreportorderstatus", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_id = ProtoField.new("Rfq Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_min_quotes = ProtoField.new("Rfq Min Quotes", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqminquotes", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "lseg.millennium.nativetradinggateway.ntgi.v21.2.secondreserved1", ftypes.INT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.millennium.nativetradinggateway.ntgi.v21.2.secondreserved8", ftypes.UINT64)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.seconds = ProtoField.new("Seconds", "lseg.millennium.nativetradinggateway.ntgi.v21.2.seconds", ftypes.UINT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.segment = ProtoField.new("Segment", "lseg.millennium.nativetradinggateway.ntgi.v21.2.segment", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.sequence_no = ProtoField.new("Sequence No", "lseg.millennium.nativetradinggateway.ntgi.v21.2.sequenceno", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.millennium.nativetradinggateway.ntgi.v21.2.sequencenumber", ftypes.INT32)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.side = ProtoField.new("Side", "lseg.millennium.nativetradinggateway.ntgi.v21.2.side", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.start_of_message = ProtoField.new("Start Of Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.startofmessage", ftypes.INT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.stop_price = ProtoField.new("Stop Price", "lseg.millennium.nativetradinggateway.ntgi.v21.2.stopprice", ftypes.DOUBLE)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "lseg.millennium.nativetradinggateway.ntgi.v21.2.thirdreserved8", ftypes.UINT64)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.tif = ProtoField.new("Tif", "lseg.millennium.nativetradinggateway.ntgi.v21.2.tif", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.trade_liquidity_indicator = ProtoField.new("Trade Liquidity Indicator", "lseg.millennium.nativetradinggateway.ntgi.v21.2.tradeliquidityindicator", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.trade_match_id = ProtoField.new("Trade Match Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.tradematchid", ftypes.UINT64)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.trader_id = ProtoField.new("Trader Id", "lseg.millennium.nativetradinggateway.ntgi.v21.2.traderid", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.transact_time = ProtoField.new("Transact Time", "lseg.millennium.nativetradinggateway.ntgi.v21.2.transacttime", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.type_of_trade = ProtoField.new("Type Of Trade", "lseg.millennium.nativetradinggateway.ntgi.v21.2.typeoftrade", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.user_name = ProtoField.new("User Name", "lseg.millennium.nativetradinggateway.ntgi.v21.2.username", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.waiver_flags = ProtoField.new("Waiver Flags", "lseg.millennium.nativetradinggateway.ntgi.v21.2.waiverflags", ftypes.UINT8)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.waiver_flags_post_trade_flags = ProtoField.new("Waiver Flags Post Trade Flags", "lseg.millennium.nativetradinggateway.ntgi.v21.2.waiverflagsposttradeflags", ftypes.UINT8)

-- Lseg Millennium NativeTradingGateway 21.2 Application Messages
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.business_reject_message = ProtoField.new("Business Reject Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.businessrejectmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_message = ProtoField.new("Execution Report Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.executionreportmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.heartbeatmessage", ftypes.BYTES)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.logon_message = ProtoField.new("Logon Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.logonmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.logon_reply_message = ProtoField.new("Logon Reply Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.logonreplymessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.logout_message = ProtoField.new("Logout Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.logoutmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_order_message = ProtoField.new("New Order Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.newordermessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_quote_message = ProtoField.new("New Quote Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.newquotemessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordercancelrejectmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordercancelreplacerequestmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordercancelrequestmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_mass_cancel_report_message = ProtoField.new("Order Mass Cancel Report Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordermasscancelreportmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_mass_cancel_request_message = ProtoField.new("Order Mass Cancel Request Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.ordermasscancelrequestmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_ack_message = ProtoField.new("Quote Ack Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoteackmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_request_message = ProtoField.new("Quote Request Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoterequestmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_request_reject_message = ProtoField.new("Quote Request Reject Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoterequestrejectmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_response_message = ProtoField.new("Quote Response Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quoteresponsemessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_status_report_message = ProtoField.new("Quote Status Report Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.quotestatusreportmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reject_message = ProtoField.new("Reject Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rejectmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_execution_report_message = ProtoField.new("Rfq Execution Report Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqexecutionreportmessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_quote_message = ProtoField.new("Rfq Quote Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.rfqquotemessage", ftypes.STRING)
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.system_status_message = ProtoField.new("System Status Message", "lseg.millennium.nativetradinggateway.ntgi.v21.2.systemstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Millennium NativeTradingGateway Ntgi 21.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Lseg Millennium NativeTradingGateway Ntgi 21.2 Show Options
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")


-- Handle changed preferences
function omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_application_messages then
    show.application_messages = omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_headers then
    show.headers = omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_headers
  end
  if show.structs ~= omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_structs then
    show.structs = omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Lseg Millennium NativeTradingGateway Ntgi 21.2 Fields
-----------------------------------------------------------------------

-- Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.account = {}

-- Size: Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.account.size = 10

-- Display: Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.account.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.account, range, value, display)

  return offset + length, value
end

-- Account Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type = {}

-- Size: Account Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.size = 1

-- Display: Account Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.display = function(value)
  if value == 1 then
    return "Account Type: Client (1)"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.account_type, range, value, display)

  return offset + length, value
end

-- Anonymity
lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity = {}

-- Size: Anonymity
lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.size = 1

-- Display: Anonymity
lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.display = function(value)
  if value == 0 then
    return "Anonymity: Anonymous (0)"
  end
  if value == 1 then
    return "Anonymity: Named (1)"
  end

  return "Anonymity: Unknown("..value..")"
end

-- Dissect: Anonymity
lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.anonymity, range, value, display)

  return offset + length, value
end

-- App Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id = {}

-- Size: App Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size = 1

-- Display: App Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.display = function(value)
  if value == 0 then
    return "App Id: System Suspended Unknown Instrument (0)"
  end
  if value == 1 then
    return "App Id: Partition 1 (1)"
  end
  if value == 2 then
    return "App Id: Partition 2 (2)"
  end
  if value == 3 then
    return "App Id: Partition 3 (3)"
  end
  if value == 4 then
    return "App Id: Partition 4 (4)"
  end

  return "App Id: Unknown("..value..")"
end

-- Dissect: App Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.app_id, range, value, display)

  return offset + length, value
end

-- App Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status = {}

-- Size: App Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.size = 1

-- Display: App Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.display = function(value)
  if value == 1 then
    return "App Status: Recovery Service Resumed (1)"
  end
  if value == 2 then
    return "App Status: Recovery Service Not Available (2)"
  end
  if value == 3 then
    return "App Status: Realtime Channel To Indicate Service Non Availability Of A Partition Due To Order Cache Outage (3)"
  end

  return "App Status: Unknown("..value..")"
end

-- Dissect: App Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.app_status, range, value, display)

  return offset + length, value
end

-- Ask Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price = {}

-- Size: Ask Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.size = 8

-- Display: Ask Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ask Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size = {}

-- Size: Ask Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.size = 4

-- Display: Ask Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auto Cancel
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel = {}

-- Size: Auto Cancel
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.size = 1

-- Display: Auto Cancel
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.display = function(value)
  if value == 0 then
    return "Auto Cancel: Do Not Cancel (0)"
  end
  if value == 1 then
    return "Auto Cancel: Conform To Users Configuration (1)"
  end

  return "Auto Cancel: Unknown("..value..")"
end

-- Dissect: Auto Cancel
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.auto_cancel, range, value, display)

  return offset + length, value
end

-- Auto Rfq Exec Strategy
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy = {}

-- Size: Auto Rfq Exec Strategy
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.size = 1

-- Display: Auto Rfq Exec Strategy
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.display = function(value)
  if value == 1 then
    return "Auto Rfq Exec Strategy: Sub Lis Auction (1)"
  end
  if value == 4 then
    return "Auto Rfq Exec Strategy: Lis Winner Takes All (4)"
  end

  return "Auto Rfq Exec Strategy: Unknown("..value..")"
end

-- Dissect: Auto Rfq Exec Strategy
lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.auto_rfq_exec_strategy, range, value, display)

  return offset + length, value
end

-- Avg Px
lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px = {}

-- Size: Avg Px
lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.size = 8

-- Display: Avg Px
lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.display = function(value)
  return "Avg Px: "..value
end

-- Translate: Avg Px
lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Avg Px
lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.avg_px, range, value, display)

  return offset + length, value
end

-- Bid Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id = {}

-- Size: Bid Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.size = 12

-- Display: Bid Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.display = function(value)
  return "Bid Id: "..value
end

-- Dissect: Bid Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_id, range, value, display)

  return offset + length, value
end

-- Bid Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price = {}

-- Size: Bid Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.size = 8

-- Display: Bid Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity = {}

-- Size: Bid Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.size = 4

-- Display: Bid Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.display = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Bid Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size = {}

-- Size: Bid Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.size = 4

-- Display: Bid Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.size = 4

-- Display: Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.display = function(value)
  return "Cancel Reject Reason: "..value
end

-- Dissect: Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity = {}

-- Size: Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size = 1

-- Display: Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.display = function(value)
  if value == 1 then
    return "Capacity: Matched Principal Mtch (1)"
  end
  if value == 2 then
    return "Capacity: Dealing On Own Account Deal (2)"
  end
  if value == 3 then
    return "Capacity: Any Other Trading Capacity Aotc (3)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account = {}

-- Size: Clearing Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size = 1

-- Display: Clearing Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.display = function(value)
  if value == 1 then
    return "Clearing Account: Client (1)"
  end
  if value == 3 then
    return "Clearing Account: House (3)"
  end

  return "Clearing Account: Unknown("..value..")"
end

-- Dissect: Clearing Account
lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Client Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id = {}

-- Size: Client Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.size = 4

-- Display: Client Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.display = function(value)
  if value == 0 then
    return "Client Id: None (0)"
  end
  if value == 1 then
    return "Client Id: Aggr (1)"
  end
  if value == 2 then
    return "Client Id: Pnal (2)"
  end

  return "Client Id: Unknown("..value..")"
end

-- Dissect: Client Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id = {}

-- Size: Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size = 20

-- Display: Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Contra Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm = {}

-- Size: Contra Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.size = 11

-- Display: Contra Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.display = function(value)
  return "Contra Firm: "..value
end

-- Dissect: Contra Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.contra_firm, range, value, display)

  return offset + length, value
end

-- Contra Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book = {}

-- Size: Contra Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.size = 1

-- Display: Contra Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.display = function(value)
  if value == 1 then
    return "Contra Order Book: Regular (1)"
  end

  return "Contra Order Book: Unknown("..value..")"
end

-- Dissect: Contra Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.contra_order_book, range, value, display)

  return offset + length, value
end

-- Contra Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader = {}

-- Size: Contra Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.size = 11

-- Display: Contra Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.display = function(value)
  return "Contra Trader: "..value
end

-- Dissect: Contra Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.contra_trader, range, value, display)

  return offset + length, value
end

-- Counterparty
lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty = {}

-- Size: Counterparty
lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.size = 11

-- Display: Counterparty
lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.display = function(value)
  return "Counterparty: "..value
end

-- Dissect: Counterparty
lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.counterparty, range, value, display)

  return offset + length, value
end

-- Display Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty = {}

-- Size: Display Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.size = 4

-- Display: Display Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type = {}

-- Size: Exec Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.size = 1

-- Display: Exec Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.display = function(value)
  if value == "0" then
    return "Exec Type: New (0)"
  end
  if value == "4" then
    return "Exec Type: Cancelled (4)"
  end
  if value == "5" then
    return "Exec Type: Replaced (5)"
  end
  if value == "8" then
    return "Exec Type: Rejected (8)"
  end
  if value == "C" then
    return "Exec Type: Expired (C)"
  end
  if value == "D" then
    return "Exec Type: Restated (D)"
  end
  if value == "F" then
    return "Exec Type: Trade (F)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end
  if value == "9" then
    return "Exec Type: Suspended (9)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Executed Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price = {}

-- Size: Executed Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.size = 8

-- Display: Executed Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.display = function(value)
  return "Executed Price: "..value
end

-- Translate: Executed Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executed_price, range, value, display)

  return offset + length, value
end

-- Executed Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty = {}

-- Size: Executed Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.size = 4

-- Display: Executed Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.display = function(value)
  return "Executed Qty: "..value
end

-- Dissect: Executed Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executed_qty, range, value, display)

  return offset + length, value
end

-- Executed Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity = {}

-- Size: Executed Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.size = 4

-- Display: Executed Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Executing Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader = {}

-- Size: Executing Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.size = 4

-- Display: Executing Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.display = function(value)
  if value == 3 then
    return "Executing Trader: Client (3)"
  end

  return "Executing Trader: Unknown("..value..")"
end

-- Dissect: Executing Trader
lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Execution Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id = {}

-- Size: Execution Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.size = 12

-- Display: Execution Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status = {}

-- Size: Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.size = 1

-- Display: Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.display = function(value)
  if value == 0 then
    return "Execution Report Order Status: New (0)"
  end
  if value == 1 then
    return "Execution Report Order Status: Partially Filled (1)"
  end
  if value == 2 then
    return "Execution Report Order Status: Filled (2)"
  end
  if value == 4 then
    return "Execution Report Order Status: Cancelled (4)"
  end
  if value == 6 then
    return "Execution Report Order Status: Expired (6)"
  end
  if value == 8 then
    return "Execution Report Order Status: Rejected (8)"
  end
  if value == 9 then
    return "Execution Report Order Status: Suspended (9)"
  end

  return "Execution Report Order Status: Unknown("..value..")"
end

-- Dissect: Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_order_status, range, value, display)

  return offset + length, value
end

-- Execution Report Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst = {}

-- Size: Execution Report Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.size = 1

-- Display: Execution Report Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.display = function(value)
  if value == 1 then
    return "Execution Report Pegged Exec Inst: Permissioned For Execution Against Midpriced Pegged Orders (1)"
  end
  if value == 2 then
    return "Execution Report Pegged Exec Inst: Not Permissioned For Execution Against Midpriced Pegged Orders (2)"
  end

  return "Execution Report Pegged Exec Inst: Unknown("..value..")"
end

-- Dissect: Execution Report Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_pegged_exec_inst, range, value, display)

  return offset + length, value
end

-- Execution Report Ref Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id = {}

-- Size: Execution Report Ref Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.size = 12

-- Display: Execution Report Ref Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.display = function(value)
  return "Execution Report Ref Id: "..value
end

-- Dissect: Execution Report Ref Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_ref_id, range, value, display)

  return offset + length, value
end

-- Execution Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type = {}

-- Size: Execution Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.size = 1

-- Display: Execution Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.display = function(value)
  if value == "4" then
    return "Execution Type: Cancelled (4)"
  end
  if value == "C" then
    return "Execution Type: Expired (C)"
  end
  if value == "D" then
    return "Execution Type: Restated (D)"
  end
  if value == "F" then
    return "Execution Type: Trade (F)"
  end
  if value == "H" then
    return "Execution Type: Trade Cancel (H)"
  end

  return "Execution Type: Unknown("..value..")"
end

-- Dissect: Execution Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_type, range, value, display)

  return offset + length, value
end

-- Expire Date Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time = {}

-- Size: Expire Date Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.size = 4

-- Display: Expire Date Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.display = function(value)
  -- Parse unix seconds timestamp
  return "Expire Date Time: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Expire Date Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.expire_date_time, range, value, display)

  return offset + length, value
end

-- Expire Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time = {}

-- Size: Expire Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.size = 4

-- Display: Expire Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.display = function(value)
  -- Parse unix seconds timestamp
  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Expire Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Expire Time Milliseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds = {}

-- Size: Expire Time Milliseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.size = 4

-- Display: Expire Time Milliseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.display = function(value)
  return "Expire Time Milliseconds: "..value
end

-- Dissect: Expire Time Milliseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.expire_time_milliseconds, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8 = {}

-- Size: Fourth Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.size = 8

-- Display: Fourth Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.display = function(value)
  return "Fourth Reserved 8: "..value
end

-- Dissect: Fourth Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.fourth_reserved_8, range, value, display)

  return offset + length, value
end

-- Group Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id = {}

-- Size: Group Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.size = 1

-- Display: Group Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.group_id, range, value, display)

  return offset + length, value
end

-- Instrument Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id = {}

-- Size: Instrument Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size = 4

-- Display: Instrument Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Investment Decision Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker = {}

-- Size: Investment Decision Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.size = 4

-- Display: Investment Decision Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.display = function(value)
  if value == 0 then
    return "Investment Decision Maker: None (0)"
  end

  return "Investment Decision Maker: Unknown("..value..")"
end

-- Dissect: Investment Decision Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Last Market
lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market = {}

-- Size: Last Market
lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.size = 1

-- Display: Last Market
lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.display = function(value)
  if value == 21 then
    return "Last Market: Xlon On Exchange Lse Rm (21)"
  end
  if value == 22 then
    return "Last Market: Xlom On Exchange Non Aim Mtf (22)"
  end
  if value == 23 then
    return "Last Market: Aimx On Exchange Aim Mtf (23)"
  end

  return "Last Market: Unknown("..value..")"
end

-- Dissect: Last Market
lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.last_market, range, value, display)

  return offset + length, value
end

-- Leaves Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty = {}

-- Size: Leaves Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.size = 4

-- Display: Leaves Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leaves Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity = {}

-- Size: Leaves Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.size = 4

-- Display: Leaves Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.display = function(value)
  return "Leaves Quantity: "..value
end

-- Dissect: Leaves Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.leaves_quantity, range, value, display)

  return offset + length, value
end

-- Limit Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price = {}

-- Size: Limit Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.size = 8

-- Display: Limit Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Limit Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Market Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker = {}

-- Size: Market Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.size = 11

-- Display: Market Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.display = function(value)
  return "Market Maker: "..value
end

-- Dissect: Market Maker
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_maker, range, value, display)

  return offset + length, value
end

-- Market Maker Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm = {}

-- Size: Market Maker Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.size = 11

-- Display: Market Maker Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.display = function(value)
  return "Market Maker Firm: "..value
end

-- Dissect: Market Maker Firm
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_maker_firm, range, value, display)

  return offset + length, value
end

-- Market Maker Rank
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank = {}

-- Size: Market Maker Rank
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.size = 1

-- Display: Market Maker Rank
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.display = function(value)
  return "Market Maker Rank: "..value
end

-- Dissect: Market Maker Rank
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_maker_rank, range, value, display)

  return offset + length, value
end

-- Market Makers
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers = {}

-- Size: Market Makers
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.size = 60

-- Display: Market Makers
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.display = function(value)
  return "Market Makers: "..value
end

-- Dissect: Market Makers
lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.market_makers, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.size = 4

-- Display: Mass Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.display = function(value)
  return "Mass Cancel Reject Reason: "..value
end

-- Dissect: Mass Cancel Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type = {}

-- Size: Mass Cancel Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.size = 1

-- Display: Mass Cancel Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.display = function(value)
  if value == 3 then
    return "Mass Cancel Request Type: All Firm Orders Of An Instrument (3)"
  end

  return "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response = {}

-- Size: Mass Cancel Response
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.size = 1

-- Display: Mass Cancel Response
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.display = function(value)
  if value == 0 then
    return "Mass Cancel Response: Rejected (0)"
  end
  if value == 7 then
    return "Mass Cancel Response: Accepted (7)"
  end

  return "Mass Cancel Response: Unknown("..value..")"
end

-- Dissect: Mass Cancel Response
lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mass_cancel_response, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length = {}

-- Size: Message Length
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.size = 2

-- Display: Message Length
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type = {}

-- Size: Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.size = 1

-- Display: Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.display = function(value)
  if value == "A" then
    return "Message Type: Logon Message (A)"
  end
  if value == "B" then
    return "Message Type: Logon Reply Message (B)"
  end
  if value == "5" then
    return "Message Type: Logout Message (5)"
  end
  if value == "0" then
    return "Message Type: Heartbeat Message (0)"
  end
  if value == "3" then
    return "Message Type: Reject Message (3)"
  end
  if value == "n" then
    return "Message Type: System Status Message (n)"
  end
  if value == "D" then
    return "Message Type: New Order Message (D)"
  end
  if value == "S" then
    return "Message Type: New Quote Message (S)"
  end
  if value == "G" then
    return "Message Type: Order Cancel Replace Request Message (G)"
  end
  if value == "F" then
    return "Message Type: Order Cancel Request Message (F)"
  end
  if value == "q" then
    return "Message Type: Order Mass Cancel Request Message (q)"
  end
  if value == "8" then
    return "Message Type: Execution Report Message (8)"
  end
  if value == "9" then
    return "Message Type: Order Cancel Reject Message (9)"
  end
  if value == "r" then
    return "Message Type: Order Mass Cancel Report Message (r)"
  end
  if value == "a" then
    return "Message Type: Quote Request Message (a)"
  end
  if value == "c" then
    return "Message Type: Quote Status Report Message (c)"
  end
  if value == "b" then
    return "Message Type: Quote Request Reject Message (b)"
  end
  if value == "d" then
    return "Message Type: Rfq Quote Message (d)"
  end
  if value == "e" then
    return "Message Type: Quote Ack Message (e)"
  end
  if value == "f" then
    return "Message Type: Quote Response Message (f)"
  end
  if value == "g" then
    return "Message Type: Rfq Execution Report Message (g)"
  end
  if value == "j" then
    return "Message Type: Business Reject Message (j)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Version
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version = {}

-- Size: Message Version
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.size = 1

-- Display: Message Version
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.display = function(value)
  return "Message Version: "..value
end

-- Dissect: Message Version
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_version, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity = {}

-- Size: Minimum Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.size = 4

-- Display: Minimum Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Nanoseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds = {}

-- Size: Nanoseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.size = 4

-- Display: Nanoseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type = {}

-- Size: New Order Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.size = 1

-- Display: New Order Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.display = function(value)
  if value == 0 then
    return "New Order Order Sub Type: Order (0)"
  end
  if value == 5 then
    return "New Order Order Sub Type: Pegged Order (5)"
  end
  if value == 51 then
    return "New Order Order Sub Type: Random Peak Size (51)"
  end
  if value == 55 then
    return "New Order Order Sub Type: Offset (55)"
  end

  return "New Order Order Sub Type: Unknown("..value..")"
end

-- Dissect: New Order Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_order_order_sub_type, range, value, display)

  return offset + length, value
end

-- New Order Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst = {}

-- Size: New Order Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.size = 1

-- Display: New Order Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.display = function(value)
  if value == 0 then
    return "New Order Pegged Exec Inst: Default (0)"
  end
  if value == 1 then
    return "New Order Pegged Exec Inst: Permitted To Execute Against Midpriced Pegged Orders (1)"
  end
  if value == 2 then
    return "New Order Pegged Exec Inst: Not Permitted To Execute Against Midpriced Pegged Orders (2)"
  end

  return "New Order Pegged Exec Inst: Unknown("..value..")"
end

-- Dissect: New Order Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_order_pegged_exec_inst, range, value, display)

  return offset + length, value
end

-- New Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password = {}

-- Size: New Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.size = 25

-- Display: New Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.display = function(value)
  return "New Password: "..value
end

-- Dissect: New Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_password, range, value, display)

  return offset + length, value
end

-- New Quote Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst = {}

-- Size: New Quote Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.size = 1

-- Display: New Quote Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.display = function(value)
  if value == 0 then
    return "New Quote Pegged Exec Inst: Default (0)"
  end
  if value == 1 then
    return "New Quote Pegged Exec Inst: Permitted To Execute Against Midpriced Pegged Orders (1)"
  end
  if value == 2 then
    return "New Quote Pegged Exec Inst: Not Permitted To Execute Against Midpriced Pegged Orders (2)"
  end

  return "New Quote Pegged Exec Inst: Unknown("..value..")"
end

-- Dissect: New Quote Pegged Exec Inst
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_quote_pegged_exec_inst, range, value, display)

  return offset + length, value
end

-- Num Of Competitors
lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors = {}

-- Size: Num Of Competitors
lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.size = 1

-- Display: Num Of Competitors
lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.display = function(value)
  return "Num Of Competitors: "..value
end

-- Dissect: Num Of Competitors
lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.num_of_competitors, range, value, display)

  return offset + length, value
end

-- Offer Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id = {}

-- Size: Offer Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.size = 12

-- Display: Offer Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.display = function(value)
  return "Offer Id: "..value
end

-- Dissect: Offer Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offer_id, range, value, display)

  return offset + length, value
end

-- Offer Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price = {}

-- Size: Offer Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.size = 8

-- Display: Offer Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity = {}

-- Size: Offer Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.size = 4

-- Display: Offer Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.display = function(value)
  return "Offer Quantity: "..value
end

-- Dissect: Offer Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offer_quantity, range, value, display)

  return offset + length, value
end

-- Offset
lseg_millennium_nativetradinggateway_ntgi_v21_2.offset = {}

-- Size: Offset
lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.size = 4

-- Display: Offset
lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.display = function(value)
  return "Offset: "..value
end

-- Dissect: Offset
lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.offset, range, value, display)

  return offset + length, value
end

-- Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book = {}

-- Size: Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size = 1

-- Display: Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.display = function(value)
  if value == 11 then
    return "Order Book: Rfq Trades (11)"
  end

  return "Order Book: Unknown("..value..")"
end

-- Dissect: Order Book
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity = {}

-- Size: Order Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.size = 1

-- Display: Order Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.display = function(value)
  if value == 1 then
    return "Order Capacity: Matched Principal Mtch (1)"
  end
  if value == 2 then
    return "Order Capacity: Dealing On Own Account Deal (2)"
  end
  if value == 3 then
    return "Order Capacity: Any Other Trading Capacity Aotc (3)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id = {}

-- Size: Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size = 12

-- Display: Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Mass Cancel Request Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type = {}

-- Size: Order Mass Cancel Request Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.size = 1

-- Display: Order Mass Cancel Request Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.display = function(value)
  if value == 0 then
    return "Order Mass Cancel Request Order Sub Type: Order (0)"
  end
  if value == 3 then
    return "Order Mass Cancel Request Order Sub Type: Quote (3)"
  end

  return "Order Mass Cancel Request Order Sub Type: Unknown("..value..")"
end

-- Dissect: Order Mass Cancel Request Order Sub Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_mass_cancel_request_order_sub_type, range, value, display)

  return offset + length, value
end

-- Order Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty = {}

-- Size: Order Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.size = 4

-- Display: Order Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity = {}

-- Size: Order Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.size = 4

-- Display: Order Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code = {}

-- Size: Order Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.size = 4

-- Display: Order Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.display = function(value)
  return "Order Reject Code: "..value
end

-- Dissect: Order Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_reject_code, range, value, display)

  return offset + length, value
end

-- Order Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type = {}

-- Size: Order Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.size = 1

-- Display: Order Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.display = function(value)
  if value == 1 then
    return "Order Type: Market (1)"
  end
  if value == 2 then
    return "Order Type: Limit (2)"
  end
  if value == 3 then
    return "Order Type: Stop (3)"
  end
  if value == 4 then
    return "Order Type: Stop Limit (4)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id = {}

-- Size: Original Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.size = 20

-- Display: Original Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.display = function(value)
  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Owner Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type = {}

-- Size: Owner Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.size = 1

-- Display: Owner Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.display = function(value)
  if value == 0 then
    return "Owner Type: Default (0)"
  end
  if value == 1 then
    return "Owner Type: Retail Investor (1)"
  end
  if value == 2 then
    return "Owner Type: Retail Liquidity Provider (2)"
  end

  return "Owner Type: Unknown("..value..")"
end

-- Dissect: Owner Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.owner_type, range, value, display)

  return offset + length, value
end

-- Partition Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id = {}

-- Size: Partition Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size = 1

-- Display: Partition Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Passive Only Order
lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order = {}

-- Size: Passive Only Order
lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.size = 1

-- Display: Passive Only Order
lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.display = function(value)
  if value == 0 then
    return "Passive Only Order: No Constraint (0)"
  end
  if value == 99 then
    return "Passive Only Order: Only Accept Order If It Will Not Match With Visible Contra Order Otherwise Expire Order (99)"
  end
  if value == 100 then
    return "Passive Only Order: Only Accept Order If Setting New Visible Bbo Otherwise Expire Order (100)"
  end
  if value == 1 then
    return "Passive Only Order: Only Accept Order If Setting New Bbo Or Joining Existing Bbo Otherwise Expire Order (1)"
  end
  if value == 2 then
    return "Passive Only Order: Only Accept Order If Will Be At Bbo Or Within One Visible Pricepoint Otherwise Expire Order (2)"
  end
  if value == 3 then
    return "Passive Only Order: Only Accept Order If Will Be At Bbo Or Within Two Visible Pricepoints Otherwise Expire Order (3)"
  end

  return "Passive Only Order: Unknown("..value..")"
end

-- Dissect: Passive Only Order
lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.passive_only_order, range, value, display)

  return offset + length, value
end

-- Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.password = {}

-- Size: Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.password.size = 25

-- Display: Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
lseg_millennium_nativetradinggateway_ntgi_v21_2.password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.password, range, value, display)

  return offset + length, value
end

-- Password Expiry Day Count
lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count = {}

-- Size: Password Expiry Day Count
lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.size = 30

-- Display: Password Expiry Day Count
lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.display = function(value)
  return "Password Expiry Day Count: "..value
end

-- Dissect: Password Expiry Day Count
lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.password_expiry_day_count, range, value, display)

  return offset + length, value
end

-- Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.price = {}

-- Size: Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.price.size = 8

-- Display: Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.price, range, value, display)

  return offset + length, value
end

-- Private Quote
lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote = {}

-- Size: Private Quote
lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.size = 1

-- Display: Private Quote
lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.display = function(value)
  if value == 2 then
    return "Private Quote: Private Quote (2)"
  end

  return "Private Quote: Unknown("..value..")"
end

-- Dissect: Private Quote
lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.private_quote, range, value, display)

  return offset + length, value
end

-- Public Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id = {}

-- Size: Public Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.size = 12

-- Display: Public Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.display = function(value)
  return "Public Order Id: "..value
end

-- Dissect: Public Order Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.public_order_id, range, value, display)

  return offset + length, value
end

-- Quote Ack Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status = {}

-- Size: Quote Ack Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.size = 1

-- Display: Quote Ack Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.display = function(value)
  if value == 1 then
    return "Quote Ack Status: Accepted (1)"
  end
  if value == 2 then
    return "Quote Ack Status: Rejected (2)"
  end

  return "Quote Ack Status: Unknown("..value..")"
end

-- Dissect: Quote Ack Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_ack_status, range, value, display)

  return offset + length, value
end

-- Quote Msg Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id = {}

-- Size: Quote Msg Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.size = 20

-- Display: Quote Msg Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.display = function(value)
  return "Quote Msg Id: "..value
end

-- Dissect: Quote Msg Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_msg_id, range, value, display)

  return offset + length, value
end

-- Quote Req Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id = {}

-- Size: Quote Req Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.size = 10

-- Display: Quote Req Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type = {}

-- Size: Quote Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.size = 1

-- Display: Quote Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.display = function(value)
  if value == 0 then
    return "Quote Request Type: Manual Named If Any Market Maker I Ds Are Specified Else Anonymous (0)"
  end
  if value == 1 then
    return "Quote Request Type: Automatic Named If Any Market Maker I Ds Are Specified Else Anonymous (1)"
  end
  if value == 2 then
    return "Quote Request Type: Manual Named (2)"
  end
  if value == 3 then
    return "Quote Request Type: Manual Anonymous (3)"
  end
  if value == 4 then
    return "Quote Request Type: Automatic Named (4)"
  end
  if value == 5 then
    return "Quote Request Type: Automatic Anonymous (5)"
  end

  return "Quote Request Type: Unknown("..value..")"
end

-- Dissect: Quote Request Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_request_type, range, value, display)

  return offset + length, value
end

-- Quote Resp Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type = {}

-- Size: Quote Resp Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.size = 1

-- Display: Quote Resp Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.display = function(value)
  if value == 1 then
    return "Quote Resp Type: Hit Lift (1)"
  end
  if value == 3 then
    return "Quote Resp Type: Expired (3)"
  end
  if value == 7 then
    return "Quote Resp Type: End Trade (7)"
  end
  if value == 8 then
    return "Quote Resp Type: Timed Out (8)"
  end
  if value == 11 then
    return "Quote Resp Type: Cancelled (11)"
  end
  if value == 100 then
    return "Quote Resp Type: Replace (100)"
  end
  if value == 101 then
    return "Quote Resp Type: Executable (101)"
  end
  if value == 102 then
    return "Quote Resp Type: Make Rfq Quotes Public (102)"
  end

  return "Quote Resp Type: Unknown("..value..")"
end

-- Dissect: Quote Resp Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_resp_type, range, value, display)

  return offset + length, value
end

-- Quote Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status = {}

-- Size: Quote Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.size = 1

-- Display: Quote Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.display = function(value)
  if value == 1 then
    return "Quote Status: Accepted (1)"
  end
  if value == 2 then
    return "Quote Status: Rejected (2)"
  end

  return "Quote Status: Unknown("..value..")"
end

-- Dissect: Quote Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reason = {}

-- Size: Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.size = 20

-- Display: Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code = {}

-- Size: Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size = 4

-- Display: Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason = {}

-- Size: Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.size = 30

-- Display: Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Rejected Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type = {}

-- Size: Rejected Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.size = 1

-- Display: Rejected Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.display = function(value)
  return "Rejected Message Type: "..value
end

-- Dissect: Rejected Message Type
lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rejected_message_type, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1 = {}

-- Size: Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.size = 1

-- Display: Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10 = {}

-- Size: Reserved 10
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.size = 10

-- Display: Reserved 10
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 14
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14 = {}

-- Size: Reserved 14
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.size = 14

-- Display: Reserved 14
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4 = {}

-- Size: Reserved 4
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.size = 4

-- Display: Reserved 4
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 5
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5 = {}

-- Size: Reserved 5
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.size = 5

-- Display: Reserved 5
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Reserved 7
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7 = {}

-- Size: Reserved 7
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.size = 7

-- Display: Reserved 7
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8 = {}

-- Size: Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.size = 8

-- Display: Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Restatement Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason = {}

-- Size: Restatement Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.size = 1

-- Display: Restatement Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.display = function(value)
  return "Restatement Reason: "..value
end

-- Dissect: Restatement Reason
lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Rfq Disclose Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side = {}

-- Size: Rfq Disclose Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.size = 1

-- Display: Rfq Disclose Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.display = function(value)
  if value == 0 then
    return "Rfq Disclose Side: Do Not Disclose (0)"
  end
  if value == 1 then
    return "Rfq Disclose Side: Disclose (1)"
  end

  return "Rfq Disclose Side: Unknown("..value..")"
end

-- Dissect: Rfq Disclose Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_disclose_side, range, value, display)

  return offset + length, value
end

-- Rfq Execution Delay
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay = {}

-- Size: Rfq Execution Delay
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.size = 1

-- Display: Rfq Execution Delay
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.display = function(value)
  return "Rfq Execution Delay: "..value
end

-- Dissect: Rfq Execution Delay
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_execution_delay, range, value, display)

  return offset + length, value
end

-- Rfq Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status = {}

-- Size: Rfq Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.size = 1

-- Display: Rfq Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.display = function(value)
  if value == 1 then
    return "Rfq Execution Report Order Status: P Fill (1)"
  end
  if value == 2 then
    return "Rfq Execution Report Order Status: Fill (2)"
  end
  if value == 4 then
    return "Rfq Execution Report Order Status: Cancelled (4)"
  end
  if value == 6 then
    return "Rfq Execution Report Order Status: Expired (6)"
  end

  return "Rfq Execution Report Order Status: Unknown("..value..")"
end

-- Dissect: Rfq Execution Report Order Status
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_execution_report_order_status, range, value, display)

  return offset + length, value
end

-- Rfq Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id = {}

-- Size: Rfq Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size = 10

-- Display: Rfq Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.display = function(value)
  return "Rfq Id: "..value
end

-- Dissect: Rfq Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_id, range, value, display)

  return offset + length, value
end

-- Rfq Min Quotes
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes = {}

-- Size: Rfq Min Quotes
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.size = 1

-- Display: Rfq Min Quotes
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.display = function(value)
  return "Rfq Min Quotes: "..value
end

-- Dissect: Rfq Min Quotes
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_min_quotes, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1 = {}

-- Size: Second Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.size = 1

-- Display: Second Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Seconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds = {}

-- Size: Seconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.size = 4

-- Display: Seconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Segment
lseg_millennium_nativetradinggateway_ntgi_v21_2.segment = {}

-- Size: Segment
lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.size = 4

-- Display: Segment
lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence No
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no = {}

-- Size: Sequence No
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.size = 4

-- Display: Sequence No
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.display = function(value)
  return "Sequence No: "..value
end

-- Dissect: Sequence No
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.sequence_no, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number = {}

-- Size: Sequence Number
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size = 4

-- Display: Sequence Number
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.side = {}

-- Size: Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size = 1

-- Display: Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.side.display = function(value)
  if value == 0 then
    return "Side: None (0)"
  end
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message = {}

-- Size: Start Of Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.size = 1

-- Display: Start Of Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price = {}

-- Size: Stop Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.size = 8

-- Display: Stop Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.display = function(value)
  return "Stop Price: "..value
end

-- Translate: Stop Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Price
lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.translate(raw)
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.stop_price, range, value, display)

  return offset + length, value
end

-- Third Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8 = {}

-- Size: Third Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.size = 8

-- Display: Third Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.third_reserved_8, range, value, display)

  return offset + length, value
end

-- Tif
lseg_millennium_nativetradinggateway_ntgi_v21_2.tif = {}

-- Size: Tif
lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.size = 1

-- Display: Tif
lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.display = function(value)
  if value == 0 then
    return "Tif: Day (0)"
  end
  if value == 3 then
    return "Tif: Immediate Or Cancel Ioc (3)"
  end
  if value == 4 then
    return "Tif: Fill Or Kill Fok (4)"
  end
  if value == 5 then
    return "Tif: At The Opening Opg (5)"
  end
  if value == 6 then
    return "Tif: Good Till Date Gtd (6)"
  end
  if value == 8 then
    return "Tif: Good Till Time Gtt (8)"
  end
  if value == 10 then
    return "Tif: At The Close Atc (10)"
  end
  if value == 12 then
    return "Tif: Closing Price Cross Cpx (12)"
  end
  if value == 50 then
    return "Tif: Good For Auction Gfa (50)"
  end
  if value == 51 then
    return "Tif: Good For Intraday Auction Gfx (51)"
  end
  if value == 52 then
    return "Tif: Good For Scheduled Auction Gfs (52)"
  end
  if value == 54 then
    return "Tif: Auction Volume Discovery Avd (54)"
  end
  if value == 55 then
    return "Tif: Auction Volume Close Avc (55)"
  end

  return "Tif: Unknown("..value..")"
end

-- Dissect: Tif
lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.tif, range, value, display)

  return offset + length, value
end

-- Trade Liquidity Indicator
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator = {}

-- Size: Trade Liquidity Indicator
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.size = 1

-- Display: Trade Liquidity Indicator
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.display = function(value)
  if value == "A" then
    return "Trade Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "R" then
    return "Trade Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == "C" then
    return "Trade Liquidity Indicator: Auction (C)"
  end

  return "Trade Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Trade Liquidity Indicator
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.trade_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Trade Match Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id = {}

-- Size: Trade Match Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.size = 8

-- Display: Trade Match Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.display = function(value)
  return "Trade Match Id: "..value
end

-- Dissect: Trade Match Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.trade_match_id, range, value, display)

  return offset + length, value
end

-- Trader Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id = {}

-- Size: Trader Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.size = 11

-- Display: Trader Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Type Of Trade
lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade = {}

-- Size: Type Of Trade
lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.size = 1

-- Display: Type Of Trade
lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.display = function(value)
  if value == 0 then
    return "Type Of Trade: Visible (0)"
  end
  if value == 1 then
    return "Type Of Trade: Hidden (1)"
  end
  if value == 2 then
    return "Type Of Trade: Not Specified For Aggressive Side Auction Trades And Rfq Trades (2)"
  end

  return "Type Of Trade: Unknown("..value..")"
end

-- Dissect: Type Of Trade
lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.type_of_trade, range, value, display)

  return offset + length, value
end

-- User Name
lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name = {}

-- Size: User Name
lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.size = 25

-- Display: User Name
lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.display = function(value)
  return "User Name: "..value
end

-- Dissect: User Name
lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.user_name, range, value, display)

  return offset + length, value
end

-- Waiver Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags = {}

-- Size: Waiver Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.size = 1

-- Display: Waiver Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.display = function(value)
  return "Waiver Flags: "..value
end

-- Dissect: Waiver Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.waiver_flags, range, value, display)

  return offset + length, value
end

-- Waiver Flags Post Trade Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags = {}

-- Size: Waiver Flags Post Trade Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.size = 1

-- Display: Waiver Flags Post Trade Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.display = function(value)
  return "Waiver Flags Post Trade Flags: "..value
end

-- Dissect: Waiver Flags Post Trade Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.waiver_flags_post_trade_flags, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Millennium NativeTradingGateway Ntgi 21.2
-----------------------------------------------------------------------

-- Transact Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time = {}

-- Size: Transact Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.size

-- Display: Transact Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = lseg_millennium_nativetradinggateway_ntgi_v21_2.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = lseg_millennium_nativetradinggateway_ntgi_v21_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, transact_time
end

-- Dissect: Transact Time
lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.transact_time, buffer(offset, 0))
    local index, value = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message = {}

-- Size: Business Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.size

-- Display: Business Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: UInt8
  index, app_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  index, reserved_10 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.business_reject_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Rfq Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message = {}

-- Size: Rfq Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.size

-- Display: Rfq Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Execution Id: String
  index, execution_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect(buffer, index, packet, parent)

  -- Execution Type: Alpha
  index, execution_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_type.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Int32
  index, executed_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_quantity.dissect(buffer, index, packet, parent)

  -- Executed Price: Price
  index, executed_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 8: UInt64
  index, reserved_8 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: UInt64
  index, second_reserved_8 = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Rfq Execution Report Order Status: UInt8
  index, rfq_execution_report_order_status = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_order_status.dissect(buffer, index, packet, parent)

  -- Leaves Quantity: Int32
  index, leaves_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: UInt64
  index, third_reserved_8 = lseg_millennium_nativetradinggateway_ntgi_v21_2.third_reserved_8.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 8: UInt64
  index, fourth_reserved_8 = lseg_millennium_nativetradinggateway_ntgi_v21_2.fourth_reserved_8.dissect(buffer, index, packet, parent)

  -- Contra Firm: String
  index, contra_firm = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account: UInt8
  index, clearing_account = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.dissect(buffer, index, packet, parent)

  -- Waiver Flags: UInt8
  index, waiver_flags = lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags.dissect(buffer, index, packet, parent)

  -- Execution Report Ref Id: String
  index, execution_report_ref_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.dissect(buffer, index, packet, parent)

  -- Contra Order Book: UInt8
  index, contra_order_book = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_order_book.dissect(buffer, index, packet, parent)

  -- Avg Px: Price
  index, avg_px = lseg_millennium_nativetradinggateway_ntgi_v21_2.avg_px.dissect(buffer, index, packet, parent)

  -- Last Market: UInt8
  index, last_market = lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.dissect(buffer, index, packet, parent)

  -- Reserved 7: String
  index, reserved_7 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_execution_report_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Response Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message = {}

-- Size: Quote Response Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.size

-- Display: Quote Response Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Response Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Quote Msg Id: String
  index, quote_msg_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  -- Quote Resp Type: UInt8
  index, quote_resp_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_resp_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.dissect(buffer, index, packet, parent)

  -- Bid Id: String
  index, bid_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.dissect(buffer, index, packet, parent)

  -- Offer Id: String
  index, offer_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account: UInt8
  index, clearing_account = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.dissect(buffer, index, packet, parent)

  -- Reserved 8: UInt64
  index, reserved_8 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Response Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_response_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Ack Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message = {}

-- Size: Quote Ack Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size

-- Display: Quote Ack Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Quote Msg Id: String
  index, quote_msg_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  -- Bid Id: String
  index, bid_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.dissect(buffer, index, packet, parent)

  -- Offer Id: String
  index, offer_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.dissect(buffer, index, packet, parent)

  -- Quote Ack Status: UInt8
  index, quote_ack_status = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_status.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_ack_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role Qualifiers
lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers = {}

-- Size: Party Role Qualifiers
lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.size = 1

-- Display: Party Role Qualifiers
lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Party Role Qualifiers
lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.bits = function(range, value, packet, parent)

  -- Client Id Qualifier: 2 Bit Enum with 3 values
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.client_id_qualifier, range, value)

  -- Investor Information Qualifier: 2 Bit Enum with 3 values
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.investor_information_qualifier, range, value)

  -- Executing Trader Qualifier: 2 Bit Enum with 3 values
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.executing_trader_qualifier, range, value)

  -- Reserved 67: 2 Bit
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_67, range, value)
end

-- Dissect: Party Role Qualifiers
lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.party_role_qualifiers, range, display)

  if show.structs then
    lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mi Fid Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags = {}

-- Size: Mi Fid Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.size = 1

-- Display: Mi Fid Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dea Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dea Flag"
  end
  -- Is Liquidity Provision flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Liquidity Provision"
  end
  -- Is Algo flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Algo"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mi Fid Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.bits = function(range, value, packet, parent)

  -- Dea Flag: 1 Bit
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.dea_flag, range, value)

  -- Liquidity Provision: 1 Bit
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.liquidity_provision, range, value)

  -- Algo: 1 Bit
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.algo, range, value)

  -- Reserved 37: 5 Bit
  parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reserved_37, range, value)
end

-- Dissect: Mi Fid Flags
lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.mi_fid_flags, range, display)

  if show.structs then
    lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Rfq Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message = {}

-- Size: Rfq Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.size

-- Display: Rfq Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Quote Msg Id: String
  index, quote_msg_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Quantity: Int32
  index, bid_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_quantity.dissect(buffer, index, packet, parent)

  -- Offer Price: Price
  index, offer_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Quantity: Int32
  index, offer_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_quantity.dissect(buffer, index, packet, parent)

  -- Auto Cancel: UInt8
  index, auto_cancel = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.dissect(buffer, index, packet, parent)

  -- Market Maker: String
  index, market_maker = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Firm: String
  index, market_maker_firm = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_firm.dissect(buffer, index, packet, parent)

  -- Bid Id: String
  index, bid_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.dissect(buffer, index, packet, parent)

  -- Offer Id: String
  index, offer_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account: UInt8
  index, clearing_account = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.dissect(buffer, index, packet, parent)

  -- Client Id: UInt32
  index, client_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.dissect(buffer, index, packet, parent)

  -- Investment Decision Maker: UInt32
  index, investment_decision_maker = lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Executing Trader: UInt32
  index, executing_trader = lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Mi Fid Flags: Struct of 4 fields
  index, mi_fid_flags = lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Party Role Qualifiers: Struct of 4 fields
  index, party_role_qualifiers = lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.rfq_quote_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message = {}

-- Size: Quote Request Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size

-- Display: Quote Request Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Quote Req Id: String
  index, quote_req_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.dissect(buffer, index, packet, parent)

  -- Market Makers: String
  index, market_makers = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.dissect(buffer, index, packet, parent)

  -- Contra Trader: String
  index, contra_trader = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_request_reject_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Status Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message = {}

-- Size: Quote Status Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.size

-- Display: Quote Status Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Status Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Quote Msg Id: String
  index, quote_msg_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_msg_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: String
  index, quote_req_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Status: UInt8
  index, quote_status = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.dissect(buffer, index, packet, parent)

  -- Market Makers: String
  index, market_makers = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  -- Expire Time: UInt32
  index, expire_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.dissect(buffer, index, packet, parent)

  -- Bid Id: String
  index, bid_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_id.dissect(buffer, index, packet, parent)

  -- Offer Id: String
  index, offer_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.offer_id.dissect(buffer, index, packet, parent)

  -- Expire Time Milliseconds: UInt32
  index, expire_time_milliseconds = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Status Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_status_report_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message = {}

-- Size: Quote Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.size

-- Display: Quote Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Quote Req Id: String
  index, quote_req_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_book.dissect(buffer, index, packet, parent)

  -- Private Quote: UInt8
  index, private_quote = lseg_millennium_nativetradinggateway_ntgi_v21_2.private_quote.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_quantity.dissect(buffer, index, packet, parent)

  -- Expire Time: UInt32
  index, expire_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time.dissect(buffer, index, packet, parent)

  -- Market Makers: String
  index, market_makers = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_makers.dissect(buffer, index, packet, parent)

  -- Contra Trader: String
  index, contra_trader = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_trader.dissect(buffer, index, packet, parent)

  -- Contra Firm: String
  index, contra_firm = lseg_millennium_nativetradinggateway_ntgi_v21_2.contra_firm.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  -- Client Id: UInt32
  index, client_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.dissect(buffer, index, packet, parent)

  -- Investment Decision Maker: UInt32
  index, investment_decision_maker = lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Executing Trader: UInt32
  index, executing_trader = lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Mi Fid Flags: Struct of 4 fields
  index, mi_fid_flags = lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Party Role Qualifiers: Struct of 4 fields
  index, party_role_qualifiers = lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.dissect(buffer, index, packet, parent)

  -- Quote Request Type: UInt8
  index, quote_request_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_nativetradinggateway_ntgi_v21_2.price.dissect(buffer, index, packet, parent)

  -- Rfq Execution Delay: UInt8
  index, rfq_execution_delay = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_delay.dissect(buffer, index, packet, parent)

  -- Rfq Min Quotes: UInt8
  index, rfq_min_quotes = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_min_quotes.dissect(buffer, index, packet, parent)

  -- Account Type: UInt8
  index, account_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.account_type.dissect(buffer, index, packet, parent)

  -- Order Capacity: UInt8
  index, order_capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_capacity.dissect(buffer, index, packet, parent)

  -- Rfq Disclose Side: UInt8
  index, rfq_disclose_side = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_disclose_side.dissect(buffer, index, packet, parent)

  -- Expire Time Milliseconds: UInt32
  index, expire_time_milliseconds = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_time_milliseconds.dissect(buffer, index, packet, parent)

  -- Auto Rfq Exec Strategy: UInt8
  index, auto_rfq_exec_strategy = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_rfq_exec_strategy.dissect(buffer, index, packet, parent)

  -- Num Of Competitors: UInt8
  index, num_of_competitors = lseg_millennium_nativetradinggateway_ntgi_v21_2.num_of_competitors.dissect(buffer, index, packet, parent)

  -- Market Maker Rank: UInt8
  index, market_maker_rank = lseg_millennium_nativetradinggateway_ntgi_v21_2.market_maker_rank.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.quote_request_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message = {}

-- Size: Order Mass Cancel Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.size

-- Display: Order Mass Cancel Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: UInt8
  index, app_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Response: UInt8
  index, mass_cancel_response = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_response.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Int32
  index, mass_cancel_reject_reason = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 4: Int32
  index, reserved_4 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_4.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  index, reserved_10 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_mass_cancel_report_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size

-- Display: Order Cancel Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: UInt8
  index, app_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Int32
  index, cancel_reject_reason = lseg_millennium_nativetradinggateway_ntgi_v21_2.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message = {}

-- Size: Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.size

-- Display: Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: UInt8
  index, app_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_millennium_nativetradinggateway_ntgi_v21_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Execution Id: String
  index, execution_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect(buffer, index, packet, parent)

  -- Exec Type: Alpha
  index, exec_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.exec_type.dissect(buffer, index, packet, parent)

  -- Execution Report Ref Id: String
  index, execution_report_ref_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_ref_id.dissect(buffer, index, packet, parent)

  -- Execution Report Order Status: UInt8
  index, execution_report_order_status = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_order_status.dissect(buffer, index, packet, parent)

  -- Order Reject Code: Int32
  index, order_reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_reject_code.dissect(buffer, index, packet, parent)

  -- Executed Price: Price
  index, executed_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_price.dissect(buffer, index, packet, parent)

  -- Executed Qty: Int32
  index, executed_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.executed_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int32
  index, leaves_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Waiver Flags Post Trade Flags: UInt8
  index, waiver_flags_post_trade_flags = lseg_millennium_nativetradinggateway_ntgi_v21_2.waiver_flags_post_trade_flags.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Restatement Reason: UInt8
  index, restatement_reason = lseg_millennium_nativetradinggateway_ntgi_v21_2.restatement_reason.dissect(buffer, index, packet, parent)

  -- Execution Report Pegged Exec Inst: UInt8
  index, execution_report_pegged_exec_inst = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_pegged_exec_inst.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Owner Type: UInt8
  index, owner_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.dissect(buffer, index, packet, parent)

  -- Reserved 7: String
  index, reserved_7 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_7.dissect(buffer, index, packet, parent)

  -- Counterparty: String
  index, counterparty = lseg_millennium_nativetradinggateway_ntgi_v21_2.counterparty.dissect(buffer, index, packet, parent)

  -- Trade Liquidity Indicator: Alpha
  index, trade_liquidity_indicator = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.trade_match_id.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.transact_time.dissect(buffer, index, packet, parent)

  -- Last Market: UInt8
  index, last_market = lseg_millennium_nativetradinggateway_ntgi_v21_2.last_market.dissect(buffer, index, packet, parent)

  -- Type Of Trade: UInt8
  index, type_of_trade = lseg_millennium_nativetradinggateway_ntgi_v21_2.type_of_trade.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  index, reserved_1 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Public Order Id: String
  index, public_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.public_order_id.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.execution_report_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message = {}

-- Size: Order Mass Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.size

-- Display: Order Mass Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: UInt8
  index, mass_cancel_request_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  index, reserved_1 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Group Id: UInt8
  index, group_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.dissect(buffer, index, packet, parent)

  -- Segment: String
  index, segment = lseg_millennium_nativetradinggateway_ntgi_v21_2.segment.dissect(buffer, index, packet, parent)

  -- Order Mass Cancel Request Order Sub Type: UInt8
  index, order_mass_cancel_request_order_sub_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_order_sub_type.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  index, reserved_10 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_mass_cancel_request_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.size

-- Display: Order Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  index, reserved_1 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Int8
  index, second_reserved_1 = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Rfq Id: String
  index, rfq_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_cancel_request_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.size

-- Display: Order Cancel Replace Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Group Id: UInt8
  index, group_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  index, reserved_1 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Expire Date Time: UInt32
  index, expire_date_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.dissect(buffer, index, packet, parent)

  -- Order Qty: Int32
  index, order_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = lseg_millennium_nativetradinggateway_ntgi_v21_2.account.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Int8
  index, second_reserved_1 = lseg_millennium_nativetradinggateway_ntgi_v21_2.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Stop Price: Price
  index, stop_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.dissect(buffer, index, packet, parent)

  -- Passive Only Order: UInt8
  index, passive_only_order = lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.dissect(buffer, index, packet, parent)

  -- Offset: Int32
  index, offset = lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.dissect(buffer, index, packet, parent)

  -- Reserved 5: String
  index, reserved_5 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_5.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message = {}

-- Size: New Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.size

-- Display: New Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Trader Id: String
  index, trader_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: UInt8
  index, clearing_account = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Int32
  index, bid_size = lseg_millennium_nativetradinggateway_ntgi_v21_2.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Int32
  index, ask_size = lseg_millennium_nativetradinggateway_ntgi_v21_2.ask_size.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect(buffer, index, packet, parent)

  -- Auto Cancel: UInt8
  index, auto_cancel = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.dissect(buffer, index, packet, parent)

  -- Client Id: UInt32
  index, client_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.dissect(buffer, index, packet, parent)

  -- Investment Decision Maker: UInt32
  index, investment_decision_maker = lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Executing Trader: UInt32
  index, executing_trader = lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Mi Fid Flags: Struct of 4 fields
  index, mi_fid_flags = lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Party Role Qualifiers: Struct of 4 fields
  index, party_role_qualifiers = lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.dissect(buffer, index, packet, parent)

  -- New Quote Pegged Exec Inst: UInt8
  index, new_quote_pegged_exec_inst = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_pegged_exec_inst.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Quote Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_quote_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message = {}

-- Size: New Order Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.side.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.size

-- Display: New Order Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Trader Id: String
  index, trader_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.trader_id.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = lseg_millennium_nativetradinggateway_ntgi_v21_2.account.dissect(buffer, index, packet, parent)

  -- Clearing Account: UInt8
  index, clearing_account = lseg_millennium_nativetradinggateway_ntgi_v21_2.clearing_account.dissect(buffer, index, packet, parent)

  -- Instrument Id: Int32
  index, instrument_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Mi Fid Flags: Struct of 4 fields
  index, mi_fid_flags = lseg_millennium_nativetradinggateway_ntgi_v21_2.mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Party Role Qualifiers: Struct of 4 fields
  index, party_role_qualifiers = lseg_millennium_nativetradinggateway_ntgi_v21_2.party_role_qualifiers.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_type.dissect(buffer, index, packet, parent)

  -- Tif: UInt8
  index, tif = lseg_millennium_nativetradinggateway_ntgi_v21_2.tif.dissect(buffer, index, packet, parent)

  -- Expire Date Time: UInt32
  index, expire_date_time = lseg_millennium_nativetradinggateway_ntgi_v21_2.expire_date_time.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = lseg_millennium_nativetradinggateway_ntgi_v21_2.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Int32
  index, order_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.order_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_millennium_nativetradinggateway_ntgi_v21_2.display_qty.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.limit_price.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = lseg_millennium_nativetradinggateway_ntgi_v21_2.capacity.dissect(buffer, index, packet, parent)

  -- Auto Cancel: UInt8
  index, auto_cancel = lseg_millennium_nativetradinggateway_ntgi_v21_2.auto_cancel.dissect(buffer, index, packet, parent)

  -- New Order Order Sub Type: UInt8
  index, new_order_order_sub_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_order_sub_type.dissect(buffer, index, packet, parent)

  -- Anonymity: UInt8
  index, anonymity = lseg_millennium_nativetradinggateway_ntgi_v21_2.anonymity.dissect(buffer, index, packet, parent)

  -- Stop Price: Price
  index, stop_price = lseg_millennium_nativetradinggateway_ntgi_v21_2.stop_price.dissect(buffer, index, packet, parent)

  -- Passive Only Order: UInt8
  index, passive_only_order = lseg_millennium_nativetradinggateway_ntgi_v21_2.passive_only_order.dissect(buffer, index, packet, parent)

  -- Client Id: UInt32
  index, client_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_id.dissect(buffer, index, packet, parent)

  -- Investment Decision Maker: UInt32
  index, investment_decision_maker = lseg_millennium_nativetradinggateway_ntgi_v21_2.investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Group Id: UInt8
  index, group_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.group_id.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = lseg_millennium_nativetradinggateway_ntgi_v21_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Executing Trader: UInt32
  index, executing_trader = lseg_millennium_nativetradinggateway_ntgi_v21_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Offset: Int32
  index, offset = lseg_millennium_nativetradinggateway_ntgi_v21_2.offset.dissect(buffer, index, packet, parent)

  -- New Order Pegged Exec Inst: UInt8
  index, new_order_pegged_exec_inst = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_pegged_exec_inst.dissect(buffer, index, packet, parent)

  -- Owner Type: UInt8
  index, owner_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.owner_type.dissect(buffer, index, packet, parent)

  -- Reserved 14: String
  index, reserved_14 = lseg_millennium_nativetradinggateway_ntgi_v21_2.reserved_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.new_order_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message = {}

-- Size: System Status Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.size

-- Display: System Status Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Status Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: UInt8
  index, app_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_id.dissect(buffer, index, packet, parent)

  -- App Status: UInt8
  index, app_status = lseg_millennium_nativetradinggateway_ntgi_v21_2.app_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Status Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.system_status_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message = {}

-- Size: Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.size

-- Display: Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect(buffer, index, packet, parent)

  -- Reject Reason: String
  index, reject_reason = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_reason.dissect(buffer, index, packet, parent)

  -- Rejected Message Type: Alpha
  index, rejected_message_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.rejected_message_type.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_millennium_nativetradinggateway_ntgi_v21_2.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.reject_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message = {}

-- Size: Logout Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.size

-- Display: Logout Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String
  index, reason = lseg_millennium_nativetradinggateway_ntgi_v21_2.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.logout_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Reply Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message = {}

-- Size: Logon Reply Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.size

-- Display: Logon Reply Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Reply Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_code.dissect(buffer, index, packet, parent)

  -- Password Expiry Day Count: String
  index, password_expiry_day_count = lseg_millennium_nativetradinggateway_ntgi_v21_2.password_expiry_day_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reply Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.logon_reply_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message = {}

-- Size: Logon Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.password.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.size

-- Display: Logon Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Name: String
  index, user_name = lseg_millennium_nativetradinggateway_ntgi_v21_2.user_name.dissect(buffer, index, packet, parent)

  -- Password: String
  index, password = lseg_millennium_nativetradinggateway_ntgi_v21_2.password.dissect(buffer, index, packet, parent)

  -- New Password: String
  index, new_password = lseg_millennium_nativetradinggateway_ntgi_v21_2.new_password.dissect(buffer, index, packet, parent)

  -- Message Version: UInt8
  index, message_version = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.logon_message, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_millennium_nativetradinggateway_ntgi_v21_2.payload = {}

-- Dissect: Payload
lseg_millennium_nativetradinggateway_ntgi_v21_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Message
  if message_type == "A" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Reply Message
  if message_type == "B" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.logon_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == "5" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == "0" then
    return offset
  end
  -- Dissect Reject Message
  if message_type == "3" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Status Message
  if message_type == "n" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.system_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if message_type == "D" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Quote Message
  if message_type == "S" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.new_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if message_type == "G" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if message_type == "F" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Cancel Request Message
  if message_type == "q" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Message
  if message_type == "8" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if message_type == "9" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Cancel Report Message
  if message_type == "r" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.order_mass_cancel_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if message_type == "a" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Status Report Message
  if message_type == "c" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_status_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Reject Message
  if message_type == "b" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_request_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Quote Message
  if message_type == "d" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Ack Message
  if message_type == "e" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Response Message
  if message_type == "f" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.quote_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Execution Report Message
  if message_type == "g" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.rfq_execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Reject Message
  if message_type == "j" then
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.business_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header = {}

-- Size: Message Header
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.size =
  lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.size + 
  lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.size

-- Display: Message Header
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: Int8
  index, start_of_message = lseg_millennium_nativetradinggateway_ntgi_v21_2.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: Int16
  index, message_length = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Alpha
  index, message_type = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message_header, buffer(offset, 0))
    local index = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.message = {}

-- Display: Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 22 branches
  index = lseg_millennium_nativetradinggateway_ntgi_v21_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_millennium_nativetradinggateway_ntgi_v21_2.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.fields.message, buffer(offset, 0))
    local current = lseg_millennium_nativetradinggateway_ntgi_v21_2.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = lseg_millennium_nativetradinggateway_ntgi_v21_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_millennium_nativetradinggateway_ntgi_v21_2.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_int() + 3

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
lseg_millennium_nativetradinggateway_ntgi_v21_2.packet = {}

-- Verify required size of Tcp packet
lseg_millennium_nativetradinggateway_ntgi_v21_2.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_millennium_nativetradinggateway_ntgi_v21_2.message_header.size
end

-- Dissect Packet
lseg_millennium_nativetradinggateway_ntgi_v21_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = lseg_millennium_nativetradinggateway_ntgi_v21_2.message.dissect(buffer, index, packet, parent, size_of_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.init()
end

-- Dissector for Lseg Millennium NativeTradingGateway Ntgi 21.2
function omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2, buffer(), omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.description, "("..buffer:len().." Bytes)")
  return lseg_millennium_nativetradinggateway_ntgi_v21_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Millennium NativeTradingGateway Ntgi 21.2 (Tcp)
local function omi_lseg_millennium_nativetradinggateway_ntgi_v21_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_millennium_nativetradinggateway_ntgi_v21_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_millennium_nativetradinggateway_ntgi_v21_2
  omi_lseg_millennium_nativetradinggateway_ntgi_v21_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Millennium NativeTradingGateway Ntgi 21.2
omi_lseg_millennium_nativetradinggateway_ntgi_v21_2:register_heuristic("tcp", omi_lseg_millennium_nativetradinggateway_ntgi_v21_2_tcp_heuristic)

-- Register Lseg Millennium NativeTradingGateway Ntgi 21.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_millennium_nativetradinggateway_ntgi_v21_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 21.2
--   Date: Friday, January 5, 2024
--   Specification: mit203-native-trading-gateway-specification-issue-21-2.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
