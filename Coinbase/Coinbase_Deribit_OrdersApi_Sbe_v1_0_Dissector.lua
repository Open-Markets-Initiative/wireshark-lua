-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Deribit OrdersApi Sbe 1.0 Protocol
local omi_coinbase_deribit_ordersapi_sbe_v1_0 = Proto("Coinbase.Deribit.OrdersApi.Sbe.v1.0.Lua", "Coinbase Deribit OrdersApi Sbe 1.0")

-- Protocol table
local coinbase_deribit_ordersapi_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase Deribit OrdersApi Sbe 1.0 Fields
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_fills_group = ProtoField.new("Amend Order Response Message fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessagefillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_fills_groups = ProtoField.new("Amend Order Response Message fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessagefillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_legs_group = ProtoField.new("Amend Order Response Message legs Group", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessagelegsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_legs_groups = ProtoField.new("Amend Order Response Message legs Groups", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessagelegsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_filled_qty = ProtoField.new("Ask Filled Qty", "coinbase.deribit.ordersapi.sbe.v1.0.askfilledqty", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_flags = ProtoField.new("Ask Flags", "coinbase.deribit.ordersapi.sbe.v1.0.askflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_order_id = ProtoField.new("Ask Order Id", "coinbase.deribit.ordersapi.sbe.v1.0.askorderid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_price = ProtoField.new("Ask Price", "coinbase.deribit.ordersapi.sbe.v1.0.askprice", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_price_optional = ProtoField.new("Ask Price Optional", "coinbase.deribit.ordersapi.sbe.v1.0.askpriceoptional", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_qty = ProtoField.new("Ask Qty", "coinbase.deribit.ordersapi.sbe.v1.0.askqty", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_reject_reason = ProtoField.new("Ask Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.askrejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_status = ProtoField.new("Ask Status", "coinbase.deribit.ordersapi.sbe.v1.0.askstatus", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_filled_qty = ProtoField.new("Bid Filled Qty", "coinbase.deribit.ordersapi.sbe.v1.0.bidfilledqty", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_flags = ProtoField.new("Bid Flags", "coinbase.deribit.ordersapi.sbe.v1.0.bidflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_order_id = ProtoField.new("Bid Order Id", "coinbase.deribit.ordersapi.sbe.v1.0.bidorderid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_price = ProtoField.new("Bid Price", "coinbase.deribit.ordersapi.sbe.v1.0.bidprice", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_price_optional = ProtoField.new("Bid Price Optional", "coinbase.deribit.ordersapi.sbe.v1.0.bidpriceoptional", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_qty = ProtoField.new("Bid Qty", "coinbase.deribit.ordersapi.sbe.v1.0.bidqty", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_reject_reason = ProtoField.new("Bid Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.bidrejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_status = ProtoField.new("Bid Status", "coinbase.deribit.ordersapi.sbe.v1.0.bidstatus", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "coinbase.deribit.ordersapi.sbe.v1.0.blocklength", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "coinbase.deribit.ordersapi.sbe.v1.0.cancelreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.client_id = ProtoField.new("Client Id", "coinbase.deribit.ordersapi.sbe.v1.0.clientid", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.client_order_id = ProtoField.new("Client Order Id", "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.correlation_id = ProtoField.new("Correlation Id", "coinbase.deribit.ordersapi.sbe.v1.0.correlationid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.correlation_id_optional = ProtoField.new("Correlation Id Optional", "coinbase.deribit.ordersapi.sbe.v1.0.correlationidoptional", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.currency_pair_id = ProtoField.new("Currency Pair Id", "coinbase.deribit.ordersapi.sbe.v1.0.currencypairid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.delta_level = ProtoField.new("Delta Level", "coinbase.deribit.ordersapi.sbe.v1.0.deltalevel", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.details = ProtoField.new("Details", "coinbase.deribit.ordersapi.sbe.v1.0.details", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.details_data = ProtoField.new("Details Data", "coinbase.deribit.ordersapi.sbe.v1.0.detailsdata", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.details_length = ProtoField.new("Details Length", "coinbase.deribit.ordersapi.sbe.v1.0.detailslength", ftypes.UINT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.exec_id = ProtoField.new("Exec Id", "coinbase.deribit.ordersapi.sbe.v1.0.execid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.exponent = ProtoField.new("Exponent", "coinbase.deribit.ordersapi.sbe.v1.0.exponent", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.fill_id = ProtoField.new("Fill Id", "coinbase.deribit.ordersapi.sbe.v1.0.fillid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.fill_price = ProtoField.new("Fill Price", "coinbase.deribit.ordersapi.sbe.v1.0.fillprice", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.fill_qty = ProtoField.new("Fill Qty", "coinbase.deribit.ordersapi.sbe.v1.0.fillqty", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_cancel_flags = ProtoField.new("Flags Cancel Flags", "coinbase.deribit.ordersapi.sbe.v1.0.flagscancelflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_fill_flags = ProtoField.new("Flags Fill Flags", "coinbase.deribit.ordersapi.sbe.v1.0.flagsfillflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_mass_quote_flags = ProtoField.new("Flags Mass Quote Flags", "coinbase.deribit.ordersapi.sbe.v1.0.flagsmassquoteflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_multi_part_event_flags = ProtoField.new("Flags Multi Part Event Flags", "coinbase.deribit.ordersapi.sbe.v1.0.flagsmultiparteventflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_order_flags = ProtoField.new("Flags Order Flags", "coinbase.deribit.ordersapi.sbe.v1.0.flagsorderflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_replace_order_flags = ProtoField.new("Flags Replace Order Flags", "coinbase.deribit.ordersapi.sbe.v1.0.flagsreplaceorderflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.from_sequence_number = ProtoField.new("From Sequence Number", "coinbase.deribit.ordersapi.sbe.v1.0.fromsequencenumber", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.frozen_until = ProtoField.new("Frozen Until", "coinbase.deribit.ordersapi.sbe.v1.0.frozenuntil", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "coinbase.deribit.ordersapi.sbe.v1.0.groupsizeencoding", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.heartbeat_interval_seconds = ProtoField.new("Heartbeat Interval Seconds", "coinbase.deribit.ordersapi.sbe.v1.0.heartbeatintervalseconds", ftypes.INT32)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.instrument_id_optional = ProtoField.new("Instrument Id Optional", "coinbase.deribit.ordersapi.sbe.v1.0.instrumentidoptional", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_fully_filled = ProtoField.new("Is Fully Filled", "coinbase.deribit.ordersapi.sbe.v1.0.isfullyfilled", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_last_message = ProtoField.new("Is Last Message", "coinbase.deribit.ordersapi.sbe.v1.0.islastmessage", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_quote = ProtoField.new("Is Quote", "coinbase.deribit.ordersapi.sbe.v1.0.isquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_resend = ProtoField.new("Is Resend", "coinbase.deribit.ordersapi.sbe.v1.0.isresend", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.last_processed_seq_no = ProtoField.new("Last Processed Seq No", "coinbase.deribit.ordersapi.sbe.v1.0.lastprocessedseqno", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.leg_side = ProtoField.new("Leg Side", "coinbase.deribit.ordersapi.sbe.v1.0.legside", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mantissa = ProtoField.new("Mantissa", "coinbase.deribit.ordersapi.sbe.v1.0.mantissa", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.market_limit = ProtoField.new("Market Limit", "coinbase.deribit.ordersapi.sbe.v1.0.marketlimit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_fills_group = ProtoField.new("Mass Quote Orders Placed Message fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessagefillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_fills_groups = ProtoField.new("Mass Quote Orders Placed Message fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessagefillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_legs_group = ProtoField.new("Mass Quote Orders Placed Message legs Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessagelegsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_legs_groups = ProtoField.new("Mass Quote Orders Placed Message legs Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessagelegsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_orders_group = ProtoField.new("Mass Quote Orders Placed Message orders Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessageordersgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_orders_groups = ProtoField.new("Mass Quote Orders Placed Message orders Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessageordersgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message_quotes_group = ProtoField.new("Mass Quote Request Message quotes Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoterequestmessagequotesgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message_quotes_groups = ProtoField.new("Mass Quote Request Message quotes Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoterequestmessagequotesgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_ask_fills_group = ProtoField.new("Mass Quote Response Message ask Fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessageaskfillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_ask_fills_groups = ProtoField.new("Mass Quote Response Message ask Fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessageaskfillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_bid_fills_group = ProtoField.new("Mass Quote Response Message bid Fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagebidfillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_bid_fills_groups = ProtoField.new("Mass Quote Response Message bid Fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagebidfillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_legs_group = ProtoField.new("Mass Quote Response Message legs Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagelegsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_legs_groups = ProtoField.new("Mass Quote Response Message legs Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagelegsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_quotes_group = ProtoField.new("Mass Quote Response Message quotes Group", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagequotesgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_quotes_groups = ProtoField.new("Mass Quote Response Message quotes Groups", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagequotesgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.match_id = ProtoField.new("Match Id", "coinbase.deribit.ordersapi.sbe.v1.0.matchid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "coinbase.deribit.ordersapi.sbe.v1.0.messageheader", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.message_length = ProtoField.new("Message Length", "coinbase.deribit.ordersapi.sbe.v1.0.messagelength", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mmp = ProtoField.new("Mmp", "coinbase.deribit.ordersapi.sbe.v1.0.mmp", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mmp_group_id = ProtoField.new("Mmp Group Id", "coinbase.deribit.ordersapi.sbe.v1.0.mmpgroupid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_fills_group = ProtoField.new("New Order Response Message fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessagefillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_fills_groups = ProtoField.new("New Order Response Message fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessagefillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_legs_group = ProtoField.new("New Order Response Message legs Group", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessagelegsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_legs_groups = ProtoField.new("New Order Response Message legs Groups", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessagelegsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_sequence_number = ProtoField.new("New Sequence Number", "coinbase.deribit.ordersapi.sbe.v1.0.newsequencenumber", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.num_in_group = ProtoField.new("Num In Group", "coinbase.deribit.ordersapi.sbe.v1.0.numingroup", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_fills_group = ProtoField.new("Order Filled Message fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessagefillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_fills_groups = ProtoField.new("Order Filled Message fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessagefillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_legs_group = ProtoField.new("Order Filled Message legs Group", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessagelegsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_legs_groups = ProtoField.new("Order Filled Message legs Groups", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessagelegsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_id = ProtoField.new("Order Id", "coinbase.deribit.ordersapi.sbe.v1.0.orderid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_id_fill_id = ProtoField.new("Order Id Fill Id", "coinbase.deribit.ordersapi.sbe.v1.0.orderidfillid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_id_optional = ProtoField.new("Order Id Optional", "coinbase.deribit.ordersapi.sbe.v1.0.orderidoptional", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_fills_group = ProtoField.new("Order Placed Message fills Group", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessagefillsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_fills_groups = ProtoField.new("Order Placed Message fills Groups", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessagefillsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_legs_group = ProtoField.new("Order Placed Message legs Group", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessagelegsgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_legs_groups = ProtoField.new("Order Placed Message legs Groups", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessagelegsgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message_orders_group = ProtoField.new("Orders Canceled Message orders Group", "coinbase.deribit.ordersapi.sbe.v1.0.orderscanceledmessageordersgroup", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message_orders_groups = ProtoField.new("Orders Canceled Message orders Groups", "coinbase.deribit.ordersapi.sbe.v1.0.orderscanceledmessageordersgroups", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.packet = ProtoField.new("Packet", "coinbase.deribit.ordersapi.sbe.v1.0.packet", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.padding = ProtoField.new("Padding", "coinbase.deribit.ordersapi.sbe.v1.0.padding", ftypes.BYTES)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only = ProtoField.new("Post Only", "coinbase.deribit.ordersapi.sbe.v1.0.postonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only_reject = ProtoField.new("Post Only Reject", "coinbase.deribit.ordersapi.sbe.v1.0.postonlyreject", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.price = ProtoField.new("Price", "coinbase.deribit.ordersapi.sbe.v1.0.price", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.product_type = ProtoField.new("Product Type", "coinbase.deribit.ordersapi.sbe.v1.0.producttype", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.protocol_id = ProtoField.new("Protocol Id", "coinbase.deribit.ordersapi.sbe.v1.0.protocolid", ftypes.UINT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.quantity = ProtoField.new("Quantity", "coinbase.deribit.ordersapi.sbe.v1.0.quantity", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.quantity_level = ProtoField.new("Quantity Level", "coinbase.deribit.ordersapi.sbe.v1.0.quantitylevel", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.quote_id = ProtoField.new("Quote Id", "coinbase.deribit.ordersapi.sbe.v1.0.quoteid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason = ProtoField.new("Reason", "coinbase.deribit.ordersapi.sbe.v1.0.reason", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_cancel_order_reject_reason = ProtoField.new("Reason Cancel Order Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.reasoncancelorderrejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_data = ProtoField.new("Reason Data", "coinbase.deribit.ordersapi.sbe.v1.0.reasondata", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_length = ProtoField.new("Reason Length", "coinbase.deribit.ordersapi.sbe.v1.0.reasonlength", ftypes.UINT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_mass_cancel_reject_reason = ProtoField.new("Reason Mass Cancel Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.reasonmasscancelrejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_mass_quote_reject_reason = ProtoField.new("Reason Mass Quote Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.reasonmassquoterejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_order_reject_reason = ProtoField.new("Reason Order Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.reasonorderrejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_reject_reason = ProtoField.new("Reason Reject Reason", "coinbase.deribit.ordersapi.sbe.v1.0.reasonrejectreason", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.receive_time = ProtoField.new("Receive Time", "coinbase.deribit.ordersapi.sbe.v1.0.receivetime", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ref_sequence_number = ProtoField.new("Ref Sequence Number", "coinbase.deribit.ordersapi.sbe.v1.0.refsequencenumber", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_10 = ProtoField.new("Reserved 10", "coinbase.deribit.ordersapi.sbe.v1.0.reserved10", ftypes.UINT16, nil, base.DEC, 0xFFC0)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_13 = ProtoField.new("Reserved 13", "coinbase.deribit.ordersapi.sbe.v1.0.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_6 = ProtoField.new("Reserved 6", "coinbase.deribit.ordersapi.sbe.v1.0.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_7 = ProtoField.new("Reserved 7", "coinbase.deribit.ordersapi.sbe.v1.0.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "coinbase.deribit.ordersapi.sbe.v1.0.reservedbits", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_mmp = ProtoField.new("Reset Mmp", "coinbase.deribit.ordersapi.sbe.v1.0.resetmmp", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_seq_num = ProtoField.new("Reset Seq Num", "coinbase.deribit.ordersapi.sbe.v1.0.resetseqnum", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.deribit.ordersapi.sbe.v1.0.sbemessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.schema_version = ProtoField.new("Schema Version", "coinbase.deribit.ordersapi.sbe.v1.0.schemaversion", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.secret = ProtoField.new("Secret", "coinbase.deribit.ordersapi.sbe.v1.0.secret", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "coinbase.deribit.ordersapi.sbe.v1.0.selfmatchpreventionid", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.self_trading_mode = ProtoField.new("Self Trading Mode", "coinbase.deribit.ordersapi.sbe.v1.0.selftradingmode", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.send_time_ns = ProtoField.new("Send Time Ns", "coinbase.deribit.ordersapi.sbe.v1.0.sendtimens", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "coinbase.deribit.ordersapi.sbe.v1.0.sequencenumber", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.session_flags = ProtoField.new("Session Flags", "coinbase.deribit.ordersapi.sbe.v1.0.sessionflags", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.show_qty = ProtoField.new("Show Qty", "coinbase.deribit.ordersapi.sbe.v1.0.showqty", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.side = ProtoField.new("Side", "coinbase.deribit.ordersapi.sbe.v1.0.side", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.status = ProtoField.new("Status", "coinbase.deribit.ordersapi.sbe.v1.0.status", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "coinbase.deribit.ordersapi.sbe.v1.0.templateid", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.time_in_force = ProtoField.new("Time In Force", "coinbase.deribit.ordersapi.sbe.v1.0.timeinforce", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.timestamp = ProtoField.new("Timestamp", "coinbase.deribit.ordersapi.sbe.v1.0.timestamp", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.to_sequence_number = ProtoField.new("To Sequence Number", "coinbase.deribit.ordersapi.sbe.v1.0.tosequencenumber", ftypes.INT64)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.total_filled = ProtoField.new("Total Filled", "coinbase.deribit.ordersapi.sbe.v1.0.totalfilled", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.total_order_count = ProtoField.new("Total Order Count", "coinbase.deribit.ordersapi.sbe.v1.0.totalordercount", ftypes.INT32)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.trigger = ProtoField.new("Trigger", "coinbase.deribit.ordersapi.sbe.v1.0.trigger", ftypes.INT8)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.unused_order_flags_0 = ProtoField.new("Unused Order Flags 0", "coinbase.deribit.ordersapi.sbe.v1.0.unusedorderflags0", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.unused_replace_order_flags_0 = ProtoField.new("Unused Replace Order Flags 0", "coinbase.deribit.ordersapi.sbe.v1.0.unusedreplaceorderflags0", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.vega_level = ProtoField.new("Vega Level", "coinbase.deribit.ordersapi.sbe.v1.0.vegalevel", ftypes.DOUBLE)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.visible_qty = ProtoField.new("Visible Qty", "coinbase.deribit.ordersapi.sbe.v1.0.visibleqty", ftypes.STRING)

-- Coinbase Deribit Sbe OrdersApi 1.0 Application Messages
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_reject_message = ProtoField.new("Amend Order Reject Message", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderrejectmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_request_message = ProtoField.new("Amend Order Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderrequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message = ProtoField.new("Amend Order Response Message", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_order_reject_message = ProtoField.new("Cancel Order Reject Message", "coinbase.deribit.ordersapi.sbe.v1.0.cancelorderrejectmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.cancelorderrequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_order_response_message = ProtoField.new("Cancel Order Response Message", "coinbase.deribit.ordersapi.sbe.v1.0.cancelorderresponsemessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.gap_fill_message = ProtoField.new("Gap Fill Message", "coinbase.deribit.ordersapi.sbe.v1.0.gapfillmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "coinbase.deribit.ordersapi.sbe.v1.0.heartbeatmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logged_out_message = ProtoField.new("Logged Out Message", "coinbase.deribit.ordersapi.sbe.v1.0.loggedoutmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logon_conf_message = ProtoField.new("Logon Conf Message", "coinbase.deribit.ordersapi.sbe.v1.0.logonconfmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logon_message = ProtoField.new("Logon Message", "coinbase.deribit.ordersapi.sbe.v1.0.logonmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logout_message = ProtoField.new("Logout Message", "coinbase.deribit.ordersapi.sbe.v1.0.logoutmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "coinbase.deribit.ordersapi.sbe.v1.0.masscancelrejectmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.masscancelrequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_cancel_response_message = ProtoField.new("Mass Cancel Response Message", "coinbase.deribit.ordersapi.sbe.v1.0.masscancelresponsemessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_cancel_request_message = ProtoField.new("Mass Quote Cancel Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquotecancelrequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_mmp_triggered_message = ProtoField.new("Mass Quote Mmp Triggered Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquotemmptriggeredmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_mmp_unfrozen_message = ProtoField.new("Mass Quote Mmp Unfrozen Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquotemmpunfrozenmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message = ProtoField.new("Mass Quote Orders Placed Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_reject_message = ProtoField.new("Mass Quote Reject Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquoterejectmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message = ProtoField.new("Mass Quote Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquoterequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message = ProtoField.new("Mass Quote Response Message", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_reject_message = ProtoField.new("New Order Reject Message", "coinbase.deribit.ordersapi.sbe.v1.0.neworderrejectmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_request_message = ProtoField.new("New Order Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.neworderrequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message = ProtoField.new("New Order Response Message", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message = ProtoField.new("Order Filled Message", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message = ProtoField.new("Order Placed Message", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message = ProtoField.new("Orders Canceled Message", "coinbase.deribit.ordersapi.sbe.v1.0.orderscanceledmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_mmp_triggered_message = ProtoField.new("Orders Mmp Triggered Message", "coinbase.deribit.ordersapi.sbe.v1.0.ordersmmptriggeredmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_mmp_unfrozen_message = ProtoField.new("Orders Mmp Unfrozen Message", "coinbase.deribit.ordersapi.sbe.v1.0.ordersmmpunfrozenmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reject_message = ProtoField.new("Reject Message", "coinbase.deribit.ordersapi.sbe.v1.0.rejectmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.resend_request_message = ProtoField.new("Resend Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.resendrequestmessage", ftypes.STRING)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.test_request_message = ProtoField.new("Test Request Message", "coinbase.deribit.ordersapi.sbe.v1.0.testrequestmessage", ftypes.STRING)

-- Coinbase Deribit OrdersApi Sbe 1.0 generated fields
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_fills_group_index = ProtoField.new("Amend Order Response Message fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessagefillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_legs_group_index = ProtoField.new("Amend Order Response Message legs Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.amendorderresponsemessagelegsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_fills_group_index = ProtoField.new("Mass Quote Orders Placed Message fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessagefillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_legs_group_index = ProtoField.new("Mass Quote Orders Placed Message legs Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessagelegsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_orders_group_index = ProtoField.new("Mass Quote Orders Placed Message orders Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteordersplacedmessageordersgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message_quotes_group_index = ProtoField.new("Mass Quote Request Message quotes Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoterequestmessagequotesgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_ask_fills_group_index = ProtoField.new("Mass Quote Response Message ask Fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessageaskfillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_bid_fills_group_index = ProtoField.new("Mass Quote Response Message bid Fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagebidfillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_legs_group_index = ProtoField.new("Mass Quote Response Message legs Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagelegsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_quotes_group_index = ProtoField.new("Mass Quote Response Message quotes Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.massquoteresponsemessagequotesgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_fills_group_index = ProtoField.new("New Order Response Message fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessagefillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_legs_group_index = ProtoField.new("New Order Response Message legs Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.neworderresponsemessagelegsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_fills_group_index = ProtoField.new("Order Filled Message fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessagefillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_legs_group_index = ProtoField.new("Order Filled Message legs Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.orderfilledmessagelegsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_fills_group_index = ProtoField.new("Order Placed Message fills Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessagefillsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_legs_group_index = ProtoField.new("Order Placed Message legs Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.orderplacedmessagelegsgroupindex", ftypes.UINT16)
omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message_orders_group_index = ProtoField.new("Orders Canceled Message orders Group Index", "coinbase.deribit.ordersapi.sbe.v1.0.orderscanceledmessageordersgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Coinbase Deribit OrdersApi Sbe 1.0 Element Dissection Options
show.application_messages = true
show.amend_order_response_message_fills_group = true
show.amend_order_response_message_fills_groups = true
show.amend_order_response_message_legs_group = true
show.amend_order_response_message_legs_groups = true
show.ask_filled_qty = true
show.ask_flags = true
show.ask_qty = true
show.bid_filled_qty = true
show.bid_flags = true
show.bid_qty = true
show.details = true
show.fill_qty = true
show.flags_cancel_flags = true
show.flags_fill_flags = true
show.flags_mass_quote_flags = true
show.flags_multi_part_event_flags = true
show.flags_order_flags = true
show.flags_replace_order_flags = true
show.group_size_encoding = true
show.mass_quote_orders_placed_message_fills_group = true
show.mass_quote_orders_placed_message_fills_groups = true
show.mass_quote_orders_placed_message_legs_group = true
show.mass_quote_orders_placed_message_legs_groups = true
show.mass_quote_orders_placed_message_orders_group = true
show.mass_quote_orders_placed_message_orders_groups = true
show.mass_quote_request_message_quotes_group = true
show.mass_quote_request_message_quotes_groups = true
show.mass_quote_response_message_ask_fills_group = true
show.mass_quote_response_message_ask_fills_groups = true
show.mass_quote_response_message_bid_fills_group = true
show.mass_quote_response_message_bid_fills_groups = true
show.mass_quote_response_message_legs_group = true
show.mass_quote_response_message_legs_groups = true
show.mass_quote_response_message_quotes_group = true
show.mass_quote_response_message_quotes_groups = true
show.message_header = true
show.new_order_response_message_fills_group = true
show.new_order_response_message_fills_groups = true
show.new_order_response_message_legs_group = true
show.new_order_response_message_legs_groups = true
show.order_filled_message_fills_group = true
show.order_filled_message_fills_groups = true
show.order_filled_message_legs_group = true
show.order_filled_message_legs_groups = true
show.order_placed_message_fills_group = true
show.order_placed_message_fills_groups = true
show.order_placed_message_legs_group = true
show.order_placed_message_legs_groups = true
show.orders_canceled_message_orders_group = true
show.orders_canceled_message_orders_groups = true
show.packet = true
show.quantity = true
show.reason = true
show.sbe_message = true
show.session_flags = true
show.show_qty = true
show.total_filled = true
show.visible_qty = true
show.mass_quote_request_message_quotes_group_index = true
show.new_order_response_message_fills_group_index = true
show.new_order_response_message_legs_group_index = true
show.amend_order_response_message_fills_group_index = true
show.amend_order_response_message_legs_group_index = true
show.mass_quote_response_message_quotes_group_index = true
show.mass_quote_response_message_bid_fills_group_index = true
show.mass_quote_response_message_ask_fills_group_index = true
show.mass_quote_response_message_legs_group_index = true
show.order_filled_message_fills_group_index = true
show.order_filled_message_legs_group_index = true
show.orders_canceled_message_orders_group_index = true
show.order_placed_message_fills_group_index = true
show.order_placed_message_legs_group_index = true
show.mass_quote_orders_placed_message_orders_group_index = true
show.mass_quote_orders_placed_message_fills_group_index = true
show.mass_quote_orders_placed_message_legs_group_index = true

-- Register Coinbase Deribit OrdersApi Sbe 1.0 Show Options
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_group = Pref.bool("Show Amend Order Response Message fills Group", show.amend_order_response_message_fills_group, "Parse and add Amend Order Response Message fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_groups = Pref.bool("Show Amend Order Response Message fills Groups", show.amend_order_response_message_fills_groups, "Parse and add Amend Order Response Message fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_group = Pref.bool("Show Amend Order Response Message legs Group", show.amend_order_response_message_legs_group, "Parse and add Amend Order Response Message legs Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_groups = Pref.bool("Show Amend Order Response Message legs Groups", show.amend_order_response_message_legs_groups, "Parse and add Amend Order Response Message legs Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_filled_qty = Pref.bool("Show Ask Filled Qty", show.ask_filled_qty, "Parse and add Ask Filled Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_flags = Pref.bool("Show Ask Flags", show.ask_flags, "Parse and add Ask Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_qty = Pref.bool("Show Ask Qty", show.ask_qty, "Parse and add Ask Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_filled_qty = Pref.bool("Show Bid Filled Qty", show.bid_filled_qty, "Parse and add Bid Filled Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_flags = Pref.bool("Show Bid Flags", show.bid_flags, "Parse and add Bid Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_qty = Pref.bool("Show Bid Qty", show.bid_qty, "Parse and add Bid Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_details = Pref.bool("Show Details", show.details, "Parse and add Details to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_fill_qty = Pref.bool("Show Fill Qty", show.fill_qty, "Parse and add Fill Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_cancel_flags = Pref.bool("Show Flags Cancel Flags", show.flags_cancel_flags, "Parse and add Flags Cancel Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_fill_flags = Pref.bool("Show Flags Fill Flags", show.flags_fill_flags, "Parse and add Flags Fill Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_mass_quote_flags = Pref.bool("Show Flags Mass Quote Flags", show.flags_mass_quote_flags, "Parse and add Flags Mass Quote Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_multi_part_event_flags = Pref.bool("Show Flags Multi Part Event Flags", show.flags_multi_part_event_flags, "Parse and add Flags Multi Part Event Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_order_flags = Pref.bool("Show Flags Order Flags", show.flags_order_flags, "Parse and add Flags Order Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_replace_order_flags = Pref.bool("Show Flags Replace Order Flags", show.flags_replace_order_flags, "Parse and add Flags Replace Order Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_group = Pref.bool("Show Mass Quote Orders Placed Message fills Group", show.mass_quote_orders_placed_message_fills_group, "Parse and add Mass Quote Orders Placed Message fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_groups = Pref.bool("Show Mass Quote Orders Placed Message fills Groups", show.mass_quote_orders_placed_message_fills_groups, "Parse and add Mass Quote Orders Placed Message fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_group = Pref.bool("Show Mass Quote Orders Placed Message legs Group", show.mass_quote_orders_placed_message_legs_group, "Parse and add Mass Quote Orders Placed Message legs Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_groups = Pref.bool("Show Mass Quote Orders Placed Message legs Groups", show.mass_quote_orders_placed_message_legs_groups, "Parse and add Mass Quote Orders Placed Message legs Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_group = Pref.bool("Show Mass Quote Orders Placed Message orders Group", show.mass_quote_orders_placed_message_orders_group, "Parse and add Mass Quote Orders Placed Message orders Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_groups = Pref.bool("Show Mass Quote Orders Placed Message orders Groups", show.mass_quote_orders_placed_message_orders_groups, "Parse and add Mass Quote Orders Placed Message orders Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_group = Pref.bool("Show Mass Quote Request Message quotes Group", show.mass_quote_request_message_quotes_group, "Parse and add Mass Quote Request Message quotes Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_groups = Pref.bool("Show Mass Quote Request Message quotes Groups", show.mass_quote_request_message_quotes_groups, "Parse and add Mass Quote Request Message quotes Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_group = Pref.bool("Show Mass Quote Response Message ask Fills Group", show.mass_quote_response_message_ask_fills_group, "Parse and add Mass Quote Response Message ask Fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_groups = Pref.bool("Show Mass Quote Response Message ask Fills Groups", show.mass_quote_response_message_ask_fills_groups, "Parse and add Mass Quote Response Message ask Fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_group = Pref.bool("Show Mass Quote Response Message bid Fills Group", show.mass_quote_response_message_bid_fills_group, "Parse and add Mass Quote Response Message bid Fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_groups = Pref.bool("Show Mass Quote Response Message bid Fills Groups", show.mass_quote_response_message_bid_fills_groups, "Parse and add Mass Quote Response Message bid Fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_group = Pref.bool("Show Mass Quote Response Message legs Group", show.mass_quote_response_message_legs_group, "Parse and add Mass Quote Response Message legs Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_groups = Pref.bool("Show Mass Quote Response Message legs Groups", show.mass_quote_response_message_legs_groups, "Parse and add Mass Quote Response Message legs Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_group = Pref.bool("Show Mass Quote Response Message quotes Group", show.mass_quote_response_message_quotes_group, "Parse and add Mass Quote Response Message quotes Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_groups = Pref.bool("Show Mass Quote Response Message quotes Groups", show.mass_quote_response_message_quotes_groups, "Parse and add Mass Quote Response Message quotes Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_group = Pref.bool("Show New Order Response Message fills Group", show.new_order_response_message_fills_group, "Parse and add New Order Response Message fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_groups = Pref.bool("Show New Order Response Message fills Groups", show.new_order_response_message_fills_groups, "Parse and add New Order Response Message fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_group = Pref.bool("Show New Order Response Message legs Group", show.new_order_response_message_legs_group, "Parse and add New Order Response Message legs Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_groups = Pref.bool("Show New Order Response Message legs Groups", show.new_order_response_message_legs_groups, "Parse and add New Order Response Message legs Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_group = Pref.bool("Show Order Filled Message fills Group", show.order_filled_message_fills_group, "Parse and add Order Filled Message fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_groups = Pref.bool("Show Order Filled Message fills Groups", show.order_filled_message_fills_groups, "Parse and add Order Filled Message fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_group = Pref.bool("Show Order Filled Message legs Group", show.order_filled_message_legs_group, "Parse and add Order Filled Message legs Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_groups = Pref.bool("Show Order Filled Message legs Groups", show.order_filled_message_legs_groups, "Parse and add Order Filled Message legs Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_group = Pref.bool("Show Order Placed Message fills Group", show.order_placed_message_fills_group, "Parse and add Order Placed Message fills Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_groups = Pref.bool("Show Order Placed Message fills Groups", show.order_placed_message_fills_groups, "Parse and add Order Placed Message fills Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_group = Pref.bool("Show Order Placed Message legs Group", show.order_placed_message_legs_group, "Parse and add Order Placed Message legs Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_groups = Pref.bool("Show Order Placed Message legs Groups", show.order_placed_message_legs_groups, "Parse and add Order Placed Message legs Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_group = Pref.bool("Show Orders Canceled Message orders Group", show.orders_canceled_message_orders_group, "Parse and add Orders Canceled Message orders Group to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_groups = Pref.bool("Show Orders Canceled Message orders Groups", show.orders_canceled_message_orders_groups, "Parse and add Orders Canceled Message orders Groups to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_quantity = Pref.bool("Show Quantity", show.quantity, "Parse and add Quantity to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_reason = Pref.bool("Show Reason", show.reason, "Parse and add Reason to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_session_flags = Pref.bool("Show Session Flags", show.session_flags, "Parse and add Session Flags to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_show_qty = Pref.bool("Show Show Qty", show.show_qty, "Parse and add Show Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_total_filled = Pref.bool("Show Total Filled", show.total_filled, "Parse and add Total Filled to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_visible_qty = Pref.bool("Show Visible Qty", show.visible_qty, "Parse and add Visible Qty to protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_group_index = Pref.bool("Show Mass Quote Request Message quotes Group Index", show.mass_quote_request_message_quotes_group_index, "Show generated mass quote request message quotes group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_group_index = Pref.bool("Show New Order Response Message fills Group Index", show.new_order_response_message_fills_group_index, "Show generated new order response message fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_group_index = Pref.bool("Show New Order Response Message legs Group Index", show.new_order_response_message_legs_group_index, "Show generated new order response message legs group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_group_index = Pref.bool("Show Amend Order Response Message fills Group Index", show.amend_order_response_message_fills_group_index, "Show generated amend order response message fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_group_index = Pref.bool("Show Amend Order Response Message legs Group Index", show.amend_order_response_message_legs_group_index, "Show generated amend order response message legs group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_group_index = Pref.bool("Show Mass Quote Response Message quotes Group Index", show.mass_quote_response_message_quotes_group_index, "Show generated mass quote response message quotes group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_group_index = Pref.bool("Show Mass Quote Response Message bid Fills Group Index", show.mass_quote_response_message_bid_fills_group_index, "Show generated mass quote response message bid fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_group_index = Pref.bool("Show Mass Quote Response Message ask Fills Group Index", show.mass_quote_response_message_ask_fills_group_index, "Show generated mass quote response message ask fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_group_index = Pref.bool("Show Mass Quote Response Message legs Group Index", show.mass_quote_response_message_legs_group_index, "Show generated mass quote response message legs group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_group_index = Pref.bool("Show Order Filled Message fills Group Index", show.order_filled_message_fills_group_index, "Show generated order filled message fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_group_index = Pref.bool("Show Order Filled Message legs Group Index", show.order_filled_message_legs_group_index, "Show generated order filled message legs group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_group_index = Pref.bool("Show Orders Canceled Message orders Group Index", show.orders_canceled_message_orders_group_index, "Show generated orders canceled message orders group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_group_index = Pref.bool("Show Order Placed Message fills Group Index", show.order_placed_message_fills_group_index, "Show generated order placed message fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_group_index = Pref.bool("Show Order Placed Message legs Group Index", show.order_placed_message_legs_group_index, "Show generated order placed message legs group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_group_index = Pref.bool("Show Mass Quote Orders Placed Message orders Group Index", show.mass_quote_orders_placed_message_orders_group_index, "Show generated mass quote orders placed message orders group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_group_index = Pref.bool("Show Mass Quote Orders Placed Message fills Group Index", show.mass_quote_orders_placed_message_fills_group_index, "Show generated mass quote orders placed message fills group index in protocol tree")
omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_group_index = Pref.bool("Show Mass Quote Orders Placed Message legs Group Index", show.mass_quote_orders_placed_message_legs_group_index, "Show generated mass quote orders placed message legs group index in protocol tree")

-- Handle changed preferences
function omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs_changed()

  -- Check if show options have changed
  if show.amend_order_response_message_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_group then
    show.amend_order_response_message_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_group
  end
  if show.amend_order_response_message_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_groups then
    show.amend_order_response_message_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_groups
  end
  if show.amend_order_response_message_legs_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_group then
    show.amend_order_response_message_legs_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_group
  end
  if show.amend_order_response_message_legs_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_groups then
    show.amend_order_response_message_legs_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_groups
  end
  if show.application_messages ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_application_messages
  end
  if show.ask_filled_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_filled_qty then
    show.ask_filled_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_filled_qty
  end
  if show.ask_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_flags then
    show.ask_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_flags
  end
  if show.ask_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_qty then
    show.ask_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_ask_qty
  end
  if show.bid_filled_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_filled_qty then
    show.bid_filled_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_filled_qty
  end
  if show.bid_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_flags then
    show.bid_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_flags
  end
  if show.bid_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_qty then
    show.bid_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_bid_qty
  end
  if show.details ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_details then
    show.details = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_details
  end
  if show.fill_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_fill_qty then
    show.fill_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_fill_qty
  end
  if show.flags_cancel_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_cancel_flags then
    show.flags_cancel_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_cancel_flags
  end
  if show.flags_fill_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_fill_flags then
    show.flags_fill_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_fill_flags
  end
  if show.flags_mass_quote_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_mass_quote_flags then
    show.flags_mass_quote_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_mass_quote_flags
  end
  if show.flags_multi_part_event_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_multi_part_event_flags then
    show.flags_multi_part_event_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_multi_part_event_flags
  end
  if show.flags_order_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_order_flags then
    show.flags_order_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_order_flags
  end
  if show.flags_replace_order_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_replace_order_flags then
    show.flags_replace_order_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_flags_replace_order_flags
  end
  if show.group_size_encoding ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_group_size_encoding
  end
  if show.mass_quote_orders_placed_message_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_group then
    show.mass_quote_orders_placed_message_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_group
  end
  if show.mass_quote_orders_placed_message_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_groups then
    show.mass_quote_orders_placed_message_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_groups
  end
  if show.mass_quote_orders_placed_message_legs_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_group then
    show.mass_quote_orders_placed_message_legs_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_group
  end
  if show.mass_quote_orders_placed_message_legs_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_groups then
    show.mass_quote_orders_placed_message_legs_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_groups
  end
  if show.mass_quote_orders_placed_message_orders_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_group then
    show.mass_quote_orders_placed_message_orders_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_group
  end
  if show.mass_quote_orders_placed_message_orders_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_groups then
    show.mass_quote_orders_placed_message_orders_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_groups
  end
  if show.mass_quote_request_message_quotes_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_group then
    show.mass_quote_request_message_quotes_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_group
  end
  if show.mass_quote_request_message_quotes_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_groups then
    show.mass_quote_request_message_quotes_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_groups
  end
  if show.mass_quote_response_message_ask_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_group then
    show.mass_quote_response_message_ask_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_group
  end
  if show.mass_quote_response_message_ask_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_groups then
    show.mass_quote_response_message_ask_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_groups
  end
  if show.mass_quote_response_message_bid_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_group then
    show.mass_quote_response_message_bid_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_group
  end
  if show.mass_quote_response_message_bid_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_groups then
    show.mass_quote_response_message_bid_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_groups
  end
  if show.mass_quote_response_message_legs_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_group then
    show.mass_quote_response_message_legs_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_group
  end
  if show.mass_quote_response_message_legs_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_groups then
    show.mass_quote_response_message_legs_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_groups
  end
  if show.mass_quote_response_message_quotes_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_group then
    show.mass_quote_response_message_quotes_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_group
  end
  if show.mass_quote_response_message_quotes_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_groups then
    show.mass_quote_response_message_quotes_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_groups
  end
  if show.message_header ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_message_header then
    show.message_header = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_message_header
  end
  if show.new_order_response_message_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_group then
    show.new_order_response_message_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_group
  end
  if show.new_order_response_message_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_groups then
    show.new_order_response_message_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_groups
  end
  if show.new_order_response_message_legs_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_group then
    show.new_order_response_message_legs_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_group
  end
  if show.new_order_response_message_legs_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_groups then
    show.new_order_response_message_legs_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_groups
  end
  if show.order_filled_message_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_group then
    show.order_filled_message_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_group
  end
  if show.order_filled_message_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_groups then
    show.order_filled_message_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_groups
  end
  if show.order_filled_message_legs_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_group then
    show.order_filled_message_legs_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_group
  end
  if show.order_filled_message_legs_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_groups then
    show.order_filled_message_legs_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_groups
  end
  if show.order_placed_message_fills_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_group then
    show.order_placed_message_fills_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_group
  end
  if show.order_placed_message_fills_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_groups then
    show.order_placed_message_fills_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_groups
  end
  if show.order_placed_message_legs_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_group then
    show.order_placed_message_legs_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_group
  end
  if show.order_placed_message_legs_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_groups then
    show.order_placed_message_legs_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_groups
  end
  if show.orders_canceled_message_orders_group ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_group then
    show.orders_canceled_message_orders_group = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_group
  end
  if show.orders_canceled_message_orders_groups ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_groups then
    show.orders_canceled_message_orders_groups = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_groups
  end
  if show.packet ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_packet then
    show.packet = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_packet
  end
  if show.quantity ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_quantity then
    show.quantity = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_quantity
  end
  if show.reason ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_reason then
    show.reason = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_reason
  end
  if show.sbe_message ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_sbe_message then
    show.sbe_message = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_sbe_message
  end
  if show.session_flags ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_session_flags then
    show.session_flags = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_session_flags
  end
  if show.show_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_show_qty then
    show.show_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_show_qty
  end
  if show.total_filled ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_total_filled then
    show.total_filled = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_total_filled
  end
  if show.visible_qty ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_visible_qty then
    show.visible_qty = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_visible_qty
  end
  if show.mass_quote_request_message_quotes_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_group_index then
    show.mass_quote_request_message_quotes_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_request_message_quotes_group_index
  end
  if show.new_order_response_message_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_group_index then
    show.new_order_response_message_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_fills_group_index
  end
  if show.new_order_response_message_legs_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_group_index then
    show.new_order_response_message_legs_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_new_order_response_message_legs_group_index
  end
  if show.amend_order_response_message_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_group_index then
    show.amend_order_response_message_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_fills_group_index
  end
  if show.amend_order_response_message_legs_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_group_index then
    show.amend_order_response_message_legs_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_amend_order_response_message_legs_group_index
  end
  if show.mass_quote_response_message_quotes_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_group_index then
    show.mass_quote_response_message_quotes_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_quotes_group_index
  end
  if show.mass_quote_response_message_bid_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_group_index then
    show.mass_quote_response_message_bid_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_bid_fills_group_index
  end
  if show.mass_quote_response_message_ask_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_group_index then
    show.mass_quote_response_message_ask_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_ask_fills_group_index
  end
  if show.mass_quote_response_message_legs_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_group_index then
    show.mass_quote_response_message_legs_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_response_message_legs_group_index
  end
  if show.order_filled_message_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_group_index then
    show.order_filled_message_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_fills_group_index
  end
  if show.order_filled_message_legs_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_group_index then
    show.order_filled_message_legs_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_filled_message_legs_group_index
  end
  if show.orders_canceled_message_orders_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_group_index then
    show.orders_canceled_message_orders_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_orders_canceled_message_orders_group_index
  end
  if show.order_placed_message_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_group_index then
    show.order_placed_message_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_fills_group_index
  end
  if show.order_placed_message_legs_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_group_index then
    show.order_placed_message_legs_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_order_placed_message_legs_group_index
  end
  if show.mass_quote_orders_placed_message_orders_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_group_index then
    show.mass_quote_orders_placed_message_orders_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_orders_group_index
  end
  if show.mass_quote_orders_placed_message_fills_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_group_index then
    show.mass_quote_orders_placed_message_fills_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_fills_group_index
  end
  if show.mass_quote_orders_placed_message_legs_group_index ~= omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_group_index then
    show.mass_quote_orders_placed_message_legs_group_index = omi_coinbase_deribit_ordersapi_sbe_v1_0.prefs.show_mass_quote_orders_placed_message_legs_group_index
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- Convert exponent to decimal
factor = function(value)
  if value == nil then
    return nil
  elseif value == -1 then
    return 10
  elseif value == -2 then
    return 100
  elseif value == -3 then
    return 1000
  elseif value == -4 then
    return 10000
  elseif value == -5 then
    return 100000
  elseif value == -6 then
    return 1000000
  elseif value == -7 then
    return 10000000
  elseif value == -8 then
    return 100000000
  elseif value == -9 then
    return 1000000000
  end

  return 1
end


-----------------------------------------------------------------------
-- Coinbase Deribit OrdersApi Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Ask Order Id
coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id = {}

-- Size: Ask Order Id
coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.size = 8

-- Display: Ask Order Id
coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.display = function(value)
  return "Ask Order Id: "..value
end

-- Dissect: Ask Order Id
coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_order_id, range, value, display)

  return offset + length, value
end

-- Ask Price
coinbase_deribit_ordersapi_sbe_v1_0.ask_price = {}

-- Size: Ask Price
coinbase_deribit_ordersapi_sbe_v1_0.ask_price.size = 8

-- Display: Ask Price
coinbase_deribit_ordersapi_sbe_v1_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
coinbase_deribit_ordersapi_sbe_v1_0.ask_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Ask Price
coinbase_deribit_ordersapi_sbe_v1_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_ordersapi_sbe_v1_0.ask_price.translate(raw)
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional = {}

-- Size: Ask Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.size = 8

-- Display: Ask Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Price Optional: No Value"
  end

  return "Ask Price Optional: "..value
end

-- Translate: Ask Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Ask Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.translate(raw)
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_price_optional, range, value, display)

  return offset + length, value
end

-- Ask Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason = {}

-- Size: Ask Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.size = 1

-- Display: Ask Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.display = function(value)
  if value == 0 then
    return "Ask Reject Reason: System Error (0)"
  end
  if value == 1 then
    return "Ask Reject Reason: Invalid Instrument (1)"
  end
  if value == 2 then
    return "Ask Reject Reason: Invalid Field (2)"
  end
  if value == 3 then
    return "Ask Reject Reason: Insufficient Margin (3)"
  end
  if value == 4 then
    return "Ask Reject Reason: Duplicate Client Order Id (4)"
  end
  if value == 5 then
    return "Ask Reject Reason: Invalid Quantity (5)"
  end
  if value == 6 then
    return "Ask Reject Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Ask Reject Reason: Not Allowed By Market State (7)"
  end
  if value == 8 then
    return "Ask Reject Reason: Post Only (8)"
  end
  if value == 9 then
    return "Ask Reject Reason: Too Many Open Orders (9)"
  end
  if value == 10 then
    return "Ask Reject Reason: Permission Error (10)"
  end
  if value == 11 then
    return "Ask Reject Reason: Portfolio Not Found (11)"
  end
  if value == 12 then
    return "Ask Reject Reason: Order Not Found (12)"
  end
  if value == 13 then
    return "Ask Reject Reason: Mmp Not Configured (13)"
  end
  if value == 14 then
    return "Ask Reject Reason: Mmp Max Quote Qty Exceeded (14)"
  end
  if value == 15 then
    return "Ask Reject Reason: Mmp Group Frozen (15)"
  end
  if value == 16 then
    return "Ask Reject Reason: Invalid Margin Mode (16)"
  end
  if value == 17 then
    return "Ask Reject Reason: In Liquidation (17)"
  end
  if value == 18 then
    return "Ask Reject Reason: Risk Check Timed Out (18)"
  end
  if value == 19 then
    return "Ask Reject Reason: Too Many Pending Replaces (19)"
  end
  if value == 20 then
    return "Ask Reject Reason: Iceberg Not Allowed (20)"
  end
  if value == 21 then
    return "Ask Reject Reason: Invalid Allocations (21)"
  end
  if value == 22 then
    return "Ask Reject Reason: Price Too High (22)"
  end
  if value == 23 then
    return "Ask Reject Reason: Price Too Low (23)"
  end
  if value == 24 then
    return "Ask Reject Reason: Price Band Unavailable (24)"
  end
  if value == 25 then
    return "Ask Reject Reason: Rate Limit (25)"
  end

  return "Ask Reject Reason: Unknown("..value..")"
end

-- Dissect: Ask Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_reject_reason, range, value, display)

  return offset + length, value
end

-- Ask Status
coinbase_deribit_ordersapi_sbe_v1_0.ask_status = {}

-- Size: Ask Status
coinbase_deribit_ordersapi_sbe_v1_0.ask_status.size = 1

-- Display: Ask Status
coinbase_deribit_ordersapi_sbe_v1_0.ask_status.display = function(value)
  if value == 0 then
    return "Ask Status: Inactive (0)"
  end
  if value == 1 then
    return "Ask Status: Unmodified (1)"
  end
  if value == 2 then
    return "Ask Status: Qty Reduced (2)"
  end
  if value == 3 then
    return "Ask Status: Updated (3)"
  end
  if value == 4 then
    return "Ask Status: Filled (4)"
  end
  if value == 5 then
    return "Ask Status: Canceled By Request (5)"
  end
  if value == 6 then
    return "Ask Status: Canceled By Mmp (6)"
  end
  if value == 7 then
    return "Ask Status: Canceled By Self Match (7)"
  end
  if value == 8 then
    return "Ask Status: Speed Bumped (8)"
  end

  return "Ask Status: Unknown("..value..")"
end

-- Dissect: Ask Status
coinbase_deribit_ordersapi_sbe_v1_0.ask_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.ask_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_status, range, value, display)

  return offset + length, value
end

-- Bid Order Id
coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id = {}

-- Size: Bid Order Id
coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.size = 8

-- Display: Bid Order Id
coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.display = function(value)
  return "Bid Order Id: "..value
end

-- Dissect: Bid Order Id
coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_order_id, range, value, display)

  return offset + length, value
end

-- Bid Price
coinbase_deribit_ordersapi_sbe_v1_0.bid_price = {}

-- Size: Bid Price
coinbase_deribit_ordersapi_sbe_v1_0.bid_price.size = 8

-- Display: Bid Price
coinbase_deribit_ordersapi_sbe_v1_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
coinbase_deribit_ordersapi_sbe_v1_0.bid_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Bid Price
coinbase_deribit_ordersapi_sbe_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_ordersapi_sbe_v1_0.bid_price.translate(raw)
  local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional = {}

-- Size: Bid Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.size = 8

-- Display: Bid Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Price Optional: No Value"
  end

  return "Bid Price Optional: "..value
end

-- Translate: Bid Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Bid Price Optional
coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.translate(raw)
  local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_price_optional, range, value, display)

  return offset + length, value
end

-- Bid Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason = {}

-- Size: Bid Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.size = 1

-- Display: Bid Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.display = function(value)
  if value == 0 then
    return "Bid Reject Reason: System Error (0)"
  end
  if value == 1 then
    return "Bid Reject Reason: Invalid Instrument (1)"
  end
  if value == 2 then
    return "Bid Reject Reason: Invalid Field (2)"
  end
  if value == 3 then
    return "Bid Reject Reason: Insufficient Margin (3)"
  end
  if value == 4 then
    return "Bid Reject Reason: Duplicate Client Order Id (4)"
  end
  if value == 5 then
    return "Bid Reject Reason: Invalid Quantity (5)"
  end
  if value == 6 then
    return "Bid Reject Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Bid Reject Reason: Not Allowed By Market State (7)"
  end
  if value == 8 then
    return "Bid Reject Reason: Post Only (8)"
  end
  if value == 9 then
    return "Bid Reject Reason: Too Many Open Orders (9)"
  end
  if value == 10 then
    return "Bid Reject Reason: Permission Error (10)"
  end
  if value == 11 then
    return "Bid Reject Reason: Portfolio Not Found (11)"
  end
  if value == 12 then
    return "Bid Reject Reason: Order Not Found (12)"
  end
  if value == 13 then
    return "Bid Reject Reason: Mmp Not Configured (13)"
  end
  if value == 14 then
    return "Bid Reject Reason: Mmp Max Quote Qty Exceeded (14)"
  end
  if value == 15 then
    return "Bid Reject Reason: Mmp Group Frozen (15)"
  end
  if value == 16 then
    return "Bid Reject Reason: Invalid Margin Mode (16)"
  end
  if value == 17 then
    return "Bid Reject Reason: In Liquidation (17)"
  end
  if value == 18 then
    return "Bid Reject Reason: Risk Check Timed Out (18)"
  end
  if value == 19 then
    return "Bid Reject Reason: Too Many Pending Replaces (19)"
  end
  if value == 20 then
    return "Bid Reject Reason: Iceberg Not Allowed (20)"
  end
  if value == 21 then
    return "Bid Reject Reason: Invalid Allocations (21)"
  end
  if value == 22 then
    return "Bid Reject Reason: Price Too High (22)"
  end
  if value == 23 then
    return "Bid Reject Reason: Price Too Low (23)"
  end
  if value == 24 then
    return "Bid Reject Reason: Price Band Unavailable (24)"
  end
  if value == 25 then
    return "Bid Reject Reason: Rate Limit (25)"
  end

  return "Bid Reject Reason: Unknown("..value..")"
end

-- Dissect: Bid Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_reject_reason, range, value, display)

  return offset + length, value
end

-- Bid Status
coinbase_deribit_ordersapi_sbe_v1_0.bid_status = {}

-- Size: Bid Status
coinbase_deribit_ordersapi_sbe_v1_0.bid_status.size = 1

-- Display: Bid Status
coinbase_deribit_ordersapi_sbe_v1_0.bid_status.display = function(value)
  if value == 0 then
    return "Bid Status: Inactive (0)"
  end
  if value == 1 then
    return "Bid Status: Unmodified (1)"
  end
  if value == 2 then
    return "Bid Status: Qty Reduced (2)"
  end
  if value == 3 then
    return "Bid Status: Updated (3)"
  end
  if value == 4 then
    return "Bid Status: Filled (4)"
  end
  if value == 5 then
    return "Bid Status: Canceled By Request (5)"
  end
  if value == 6 then
    return "Bid Status: Canceled By Mmp (6)"
  end
  if value == 7 then
    return "Bid Status: Canceled By Self Match (7)"
  end
  if value == 8 then
    return "Bid Status: Speed Bumped (8)"
  end

  return "Bid Status: Unknown("..value..")"
end

-- Dissect: Bid Status
coinbase_deribit_ordersapi_sbe_v1_0.bid_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.bid_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_status, range, value, display)

  return offset + length, value
end

-- Block Length
coinbase_deribit_ordersapi_sbe_v1_0.block_length = {}

-- Size: Block Length
coinbase_deribit_ordersapi_sbe_v1_0.block_length.size = 2

-- Display: Block Length
coinbase_deribit_ordersapi_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_deribit_ordersapi_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Cancel Reason
coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason = {}

-- Size: Cancel Reason
coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size = 1

-- Display: Cancel Reason
coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.display = function(value)
  if value == 0 then
    return "Cancel Reason: Unknown (0)"
  end
  if value == 1 then
    return "Cancel Reason: Self Match Prevention (1)"
  end
  if value == 2 then
    return "Cancel Reason: Time In Force (2)"
  end
  if value == 3 then
    return "Cancel Reason: Admin (3)"
  end
  if value == 4 then
    return "Cancel Reason: Mm Protection (4)"
  end
  if value == 5 then
    return "Cancel Reason: Liquidation (5)"
  end
  if value == 6 then
    return "Cancel Reason: Market State Transition (6)"
  end
  if value == 7 then
    return "Cancel Reason: Client Disconnect (7)"
  end
  if value == 8 then
    return "Cancel Reason: Reduce Only (8)"
  end
  if value == 9 then
    return "Cancel Reason: Delivered (9)"
  end
  if value == 10 then
    return "Cancel Reason: Settlement (10)"
  end
  if value == 11 then
    return "Cancel Reason: Book Deactivated (11)"
  end
  if value == 12 then
    return "Cancel Reason: By Request (12)"
  end
  if value == 13 then
    return "Cancel Reason: Risk Check Timed Out (13)"
  end
  if value == 14 then
    return "Cancel Reason: Mmp Group Deleted (14)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Client Id
coinbase_deribit_ordersapi_sbe_v1_0.client_id = {}

-- Size: Client Id
coinbase_deribit_ordersapi_sbe_v1_0.client_id.size = 16

-- Display: Client Id
coinbase_deribit_ordersapi_sbe_v1_0.client_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id: No Value"
  end

  return "Client Id: "..value
end

-- Dissect: Client Id
coinbase_deribit_ordersapi_sbe_v1_0.client_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.client_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = coinbase_deribit_ordersapi_sbe_v1_0.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
coinbase_deribit_ordersapi_sbe_v1_0.client_order_id = {}

-- Size: Client Order Id
coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size = 8

-- Display: Client Order Id
coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Correlation Id
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id = {}

-- Size: Correlation Id
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size = 8

-- Display: Correlation Id
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.display = function(value)
  return "Correlation Id: "..value
end

-- Dissect: Correlation Id
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.correlation_id, range, value, display)

  return offset + length, value
end

-- Correlation Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional = {}

-- Size: Correlation Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.size = 8

-- Display: Correlation Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Correlation Id Optional: No Value"
  end

  return "Correlation Id Optional: "..value
end

-- Dissect: Correlation Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.correlation_id_optional, range, value, display)

  return offset + length, value
end

-- Currency Pair Id
coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id = {}

-- Size: Currency Pair Id
coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.size = 8

-- Display: Currency Pair Id
coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.display = function(value)
  return "Currency Pair Id: "..value
end

-- Dissect: Currency Pair Id
coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.currency_pair_id, range, value, display)

  return offset + length, value
end

-- Delta Level
coinbase_deribit_ordersapi_sbe_v1_0.delta_level = {}

-- Size: Delta Level
coinbase_deribit_ordersapi_sbe_v1_0.delta_level.size = 8

-- Display: Delta Level
coinbase_deribit_ordersapi_sbe_v1_0.delta_level.display = function(value)
  return "Delta Level: "..value
end

-- Dissect: Delta Level
coinbase_deribit_ordersapi_sbe_v1_0.delta_level.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.delta_level.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.delta_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.delta_level, range, value, display)

  return offset + length, value
end

-- Details Data
coinbase_deribit_ordersapi_sbe_v1_0.details_data = {}

-- Display: Details Data
coinbase_deribit_ordersapi_sbe_v1_0.details_data.display = function(value)
  return "Details Data: "..value
end

-- Dissect runtime sized field: Details Data
coinbase_deribit_ordersapi_sbe_v1_0.details_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.details_data.display(value, packet, parent, size)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.details_data, range, value, display)

  return offset + size, value
end

-- Details Length
coinbase_deribit_ordersapi_sbe_v1_0.details_length = {}

-- Size: Details Length
coinbase_deribit_ordersapi_sbe_v1_0.details_length.size = 1

-- Display: Details Length
coinbase_deribit_ordersapi_sbe_v1_0.details_length.display = function(value)
  return "Details Length: "..value
end

-- Dissect: Details Length
coinbase_deribit_ordersapi_sbe_v1_0.details_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.details_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.details_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.details_length, range, value, display)

  return offset + length, value
end

-- Exec Id
coinbase_deribit_ordersapi_sbe_v1_0.exec_id = {}

-- Size: Exec Id
coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size = 8

-- Display: Exec Id
coinbase_deribit_ordersapi_sbe_v1_0.exec_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Exec Id: No Value"
  end

  return "Exec Id: "..value
end

-- Dissect: Exec Id
coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exponent
coinbase_deribit_ordersapi_sbe_v1_0.exponent = {}

-- Size: Exponent
coinbase_deribit_ordersapi_sbe_v1_0.exponent.size = 1

-- Display: Exponent
coinbase_deribit_ordersapi_sbe_v1_0.exponent.display = function(value)
  return "Exponent: "..value
end

-- Dissect: Exponent
coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.exponent, range, value, display)

  return offset + length, value
end

-- Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.fill_id = {}

-- Size: Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size = 8

-- Display: Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.fill_id.display = function(value)
  return "Fill Id: "..value
end

-- Dissect: Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.fill_id, range, value, display)

  return offset + length, value
end

-- Fill Price
coinbase_deribit_ordersapi_sbe_v1_0.fill_price = {}

-- Size: Fill Price
coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size = 8

-- Display: Fill Price
coinbase_deribit_ordersapi_sbe_v1_0.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
coinbase_deribit_ordersapi_sbe_v1_0.fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Price
coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.translate(raw)
  local display = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.fill_price, range, value, display)

  return offset + length, value
end

-- From Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number = {}

-- Size: From Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.size = 8

-- Display: From Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.display = function(value)
  return "From Sequence Number: "..value
end

-- Dissect: From Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.from_sequence_number, range, value, display)

  return offset + length, value
end

-- Frozen Until
coinbase_deribit_ordersapi_sbe_v1_0.frozen_until = {}

-- Size: Frozen Until
coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.size = 8

-- Display: Frozen Until
coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Frozen Until: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Frozen Until
coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.frozen_until, range, value, display)

  return offset + length, value
end

-- Heartbeat Interval Seconds
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds = {}

-- Size: Heartbeat Interval Seconds
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.size = 4

-- Display: Heartbeat Interval Seconds
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.display = function(value)
  return "Heartbeat Interval Seconds: "..value
end

-- Dissect: Heartbeat Interval Seconds
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.heartbeat_interval_seconds, range, value, display)

  return offset + length, value
end

-- Instrument Id
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id = {}

-- Size: Instrument Id
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size = 8

-- Display: Instrument Id
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional = {}

-- Size: Instrument Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.size = 8

-- Display: Instrument Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Instrument Id Optional: No Value"
  end

  return "Instrument Id Optional: "..value
end

-- Dissect: Instrument Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.instrument_id_optional, range, value, display)

  return offset + length, value
end

-- Last Processed Seq No
coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no = {}

-- Size: Last Processed Seq No
coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.size = 8

-- Display: Last Processed Seq No
coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.display = function(value)
  return "Last Processed Seq No: "..value
end

-- Dissect: Last Processed Seq No
coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.last_processed_seq_no, range, value, display)

  return offset + length, value
end

-- Leg Side
coinbase_deribit_ordersapi_sbe_v1_0.leg_side = {}

-- Size: Leg Side
coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size = 1

-- Display: Leg Side
coinbase_deribit_ordersapi_sbe_v1_0.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 0 then
    return "Leg Side: Both (0)"
  end
  if value == -1 then
    return "Leg Side: Sell (-1)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Mantissa
coinbase_deribit_ordersapi_sbe_v1_0.mantissa = {}

-- Size: Mantissa
coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size = 8

-- Display: Mantissa
coinbase_deribit_ordersapi_sbe_v1_0.mantissa.display = function(value)
  return "Mantissa: "..value
end

-- Dissect: Mantissa
coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Match Id
coinbase_deribit_ordersapi_sbe_v1_0.match_id = {}

-- Size: Match Id
coinbase_deribit_ordersapi_sbe_v1_0.match_id.size = 8

-- Display: Match Id
coinbase_deribit_ordersapi_sbe_v1_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.match_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Length
coinbase_deribit_ordersapi_sbe_v1_0.message_length = {}

-- Size: Message Length
coinbase_deribit_ordersapi_sbe_v1_0.message_length.size = 2

-- Display: Message Length
coinbase_deribit_ordersapi_sbe_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
coinbase_deribit_ordersapi_sbe_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Mmp Group Id
coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id = {}

-- Size: Mmp Group Id
coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size = 8

-- Display: Mmp Group Id
coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.display = function(value)
  return "Mmp Group Id: "..value
end

-- Dissect: Mmp Group Id
coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mmp_group_id, range, value, display)

  return offset + length, value
end

-- New Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number = {}

-- Size: New Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.size = 8

-- Display: New Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.display = function(value)
  return "New Sequence Number: "..value
end

-- Dissect: New Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_sequence_number, range, value, display)

  return offset + length, value
end

-- Num In Group
coinbase_deribit_ordersapi_sbe_v1_0.num_in_group = {}

-- Size: Num In Group
coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.size = 2

-- Display: Num In Group
coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Order Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id = {}

-- Size: Order Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id.size = 8

-- Display: Order Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id = {}

-- Size: Order Id Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.size = 8

-- Display: Order Id Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.display = function(value)
  return "Order Id Fill Id: "..value
end

-- Dissect: Order Id Fill Id
coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_id_fill_id, range, value, display)

  return offset + length, value
end

-- Order Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional = {}

-- Size: Order Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.size = 8

-- Display: Order Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Padding
coinbase_deribit_ordersapi_sbe_v1_0.padding = {}

-- Display: Padding
coinbase_deribit_ordersapi_sbe_v1_0.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_deribit_ordersapi_sbe_v1_0.padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_deribit_ordersapi_sbe_v1_0.padding.display(value, packet, parent, size)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.padding, range, value, display)

  return offset + size, value
end

-- Price
coinbase_deribit_ordersapi_sbe_v1_0.price = {}

-- Size: Price
coinbase_deribit_ordersapi_sbe_v1_0.price.size = 8

-- Display: Price
coinbase_deribit_ordersapi_sbe_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
coinbase_deribit_ordersapi_sbe_v1_0.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
coinbase_deribit_ordersapi_sbe_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_deribit_ordersapi_sbe_v1_0.price.translate(raw)
  local display = coinbase_deribit_ordersapi_sbe_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Product Type
coinbase_deribit_ordersapi_sbe_v1_0.product_type = {}

-- Size: Product Type
coinbase_deribit_ordersapi_sbe_v1_0.product_type.size = 1

-- Display: Product Type
coinbase_deribit_ordersapi_sbe_v1_0.product_type.display = function(value)
  if value == 0 then
    return "Product Type: All (0)"
  end
  if value == 1 then
    return "Product Type: Options (1)"
  end
  if value == 2 then
    return "Product Type: Futures (2)"
  end
  if value == 3 then
    return "Product Type: Combo Futures (3)"
  end
  if value == 4 then
    return "Product Type: Combo Options (4)"
  end
  if value == 5 then
    return "Product Type: Spot (5)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
coinbase_deribit_ordersapi_sbe_v1_0.product_type.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.product_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.product_type, range, value, display)

  return offset + length, value
end

-- Protocol Id
coinbase_deribit_ordersapi_sbe_v1_0.protocol_id = {}

-- Size: Protocol Id
coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.size = 1

-- Display: Protocol Id
coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.display = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Quantity Level
coinbase_deribit_ordersapi_sbe_v1_0.quantity_level = {}

-- Size: Quantity Level
coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.size = 8

-- Display: Quantity Level
coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.display = function(value)
  return "Quantity Level: "..value
end

-- Dissect: Quantity Level
coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.quantity_level, range, value, display)

  return offset + length, value
end

-- Quote Id
coinbase_deribit_ordersapi_sbe_v1_0.quote_id = {}

-- Size: Quote Id
coinbase_deribit_ordersapi_sbe_v1_0.quote_id.size = 8

-- Display: Quote Id
coinbase_deribit_ordersapi_sbe_v1_0.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
coinbase_deribit_ordersapi_sbe_v1_0.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Reason Cancel Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason = {}

-- Size: Reason Cancel Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.size = 1

-- Display: Reason Cancel Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.display = function(value)
  if value == 0 then
    return "Reason Cancel Order Reject Reason: Error (0)"
  end
  if value == 1 then
    return "Reason Cancel Order Reject Reason: Unknown Order (1)"
  end
  if value == 2 then
    return "Reason Cancel Order Reject Reason: Client Permission Error (2)"
  end
  if value == 3 then
    return "Reason Cancel Order Reject Reason: Not Allowed By Market State (3)"
  end
  if value == 4 then
    return "Reason Cancel Order Reject Reason: Cancel Pending (4)"
  end

  return "Reason Cancel Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Reason Cancel Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_cancel_order_reject_reason, range, value, display)

  return offset + length, value
end

-- Reason Data
coinbase_deribit_ordersapi_sbe_v1_0.reason_data = {}

-- Display: Reason Data
coinbase_deribit_ordersapi_sbe_v1_0.reason_data.display = function(value)
  return "Reason Data: "..value
end

-- Dissect runtime sized field: Reason Data
coinbase_deribit_ordersapi_sbe_v1_0.reason_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_data.display(value, packet, parent, size)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_data, range, value, display)

  return offset + size, value
end

-- Reason Length
coinbase_deribit_ordersapi_sbe_v1_0.reason_length = {}

-- Size: Reason Length
coinbase_deribit_ordersapi_sbe_v1_0.reason_length.size = 1

-- Display: Reason Length
coinbase_deribit_ordersapi_sbe_v1_0.reason_length.display = function(value)
  return "Reason Length: "..value
end

-- Dissect: Reason Length
coinbase_deribit_ordersapi_sbe_v1_0.reason_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reason_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_length, range, value, display)

  return offset + length, value
end

-- Reason Mass Cancel Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason = {}

-- Size: Reason Mass Cancel Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.size = 1

-- Display: Reason Mass Cancel Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.display = function(value)
  if value == 0 then
    return "Reason Mass Cancel Reject Reason: Error (0)"
  end
  if value == 1 then
    return "Reason Mass Cancel Reject Reason: Invalid Mmp Group (1)"
  end
  if value == 2 then
    return "Reason Mass Cancel Reject Reason: Client Permission Error (2)"
  end
  if value == 3 then
    return "Reason Mass Cancel Reject Reason: Not Allowed By Market State (3)"
  end

  return "Reason Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Reason Mass Cancel Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Reason Mass Quote Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason = {}

-- Size: Reason Mass Quote Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.size = 1

-- Display: Reason Mass Quote Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.display = function(value)
  if value == 0 then
    return "Reason Mass Quote Reject Reason: System Error (0)"
  end
  if value == 1 then
    return "Reason Mass Quote Reject Reason: Invalid Mmp Group (1)"
  end
  if value == 2 then
    return "Reason Mass Quote Reject Reason: Mmp Group Disabled (2)"
  end
  if value == 3 then
    return "Reason Mass Quote Reject Reason: Mmp Group Frozen (3)"
  end
  if value == 4 then
    return "Reason Mass Quote Reject Reason: Too Many Quotes (4)"
  end
  if value == 5 then
    return "Reason Mass Quote Reject Reason: Invalid Instrument (5)"
  end
  if value == 6 then
    return "Reason Mass Quote Reject Reason: Rate Limit (6)"
  end

  return "Reason Mass Quote Reject Reason: Unknown("..value..")"
end

-- Dissect: Reason Mass Quote Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_mass_quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Reason Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason = {}

-- Size: Reason Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.size = 1

-- Display: Reason Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.display = function(value)
  if value == 0 then
    return "Reason Order Reject Reason: System Error (0)"
  end
  if value == 1 then
    return "Reason Order Reject Reason: Invalid Instrument (1)"
  end
  if value == 2 then
    return "Reason Order Reject Reason: Invalid Field (2)"
  end
  if value == 3 then
    return "Reason Order Reject Reason: Insufficient Margin (3)"
  end
  if value == 4 then
    return "Reason Order Reject Reason: Duplicate Client Order Id (4)"
  end
  if value == 5 then
    return "Reason Order Reject Reason: Invalid Quantity (5)"
  end
  if value == 6 then
    return "Reason Order Reject Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Reason Order Reject Reason: Not Allowed By Market State (7)"
  end
  if value == 8 then
    return "Reason Order Reject Reason: Post Only (8)"
  end
  if value == 9 then
    return "Reason Order Reject Reason: Too Many Open Orders (9)"
  end
  if value == 10 then
    return "Reason Order Reject Reason: Permission Error (10)"
  end
  if value == 11 then
    return "Reason Order Reject Reason: Portfolio Not Found (11)"
  end
  if value == 12 then
    return "Reason Order Reject Reason: Order Not Found (12)"
  end
  if value == 13 then
    return "Reason Order Reject Reason: Mmp Not Configured (13)"
  end
  if value == 14 then
    return "Reason Order Reject Reason: Mmp Max Quote Qty Exceeded (14)"
  end
  if value == 15 then
    return "Reason Order Reject Reason: Mmp Group Frozen (15)"
  end
  if value == 16 then
    return "Reason Order Reject Reason: Invalid Margin Mode (16)"
  end
  if value == 17 then
    return "Reason Order Reject Reason: In Liquidation (17)"
  end
  if value == 18 then
    return "Reason Order Reject Reason: Risk Check Timed Out (18)"
  end
  if value == 19 then
    return "Reason Order Reject Reason: Too Many Pending Replaces (19)"
  end
  if value == 20 then
    return "Reason Order Reject Reason: Iceberg Not Allowed (20)"
  end
  if value == 21 then
    return "Reason Order Reject Reason: Invalid Allocations (21)"
  end
  if value == 22 then
    return "Reason Order Reject Reason: Price Too High (22)"
  end
  if value == 23 then
    return "Reason Order Reject Reason: Price Too Low (23)"
  end
  if value == 24 then
    return "Reason Order Reject Reason: Price Band Unavailable (24)"
  end
  if value == 25 then
    return "Reason Order Reject Reason: Rate Limit (25)"
  end

  return "Reason Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Reason Order Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_order_reject_reason, range, value, display)

  return offset + length, value
end

-- Reason Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason = {}

-- Size: Reason Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.size = 1

-- Display: Reason Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.display = function(value)
  if value == 1 then
    return "Reason Reject Reason: Invalid Schema Id (1)"
  end
  if value == 2 then
    return "Reason Reject Reason: Invalid Template Id (2)"
  end
  if value == 3 then
    return "Reason Reject Reason: Invalid Block Length (3)"
  end
  if value == 4 then
    return "Reason Reject Reason: Invalid Field Value (4)"
  end

  return "Reason Reject Reason: Unknown("..value..")"
end

-- Dissect: Reason Reject Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason_reject_reason, range, value, display)

  return offset + length, value
end

-- Receive Time
coinbase_deribit_ordersapi_sbe_v1_0.receive_time = {}

-- Size: Receive Time
coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size = 8

-- Display: Receive Time
coinbase_deribit_ordersapi_sbe_v1_0.receive_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Receive Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Receive Time
coinbase_deribit_ordersapi_sbe_v1_0.receive_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.receive_time, range, value, display)

  return offset + length, value
end

-- Ref Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number = {}

-- Size: Ref Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.size = 8

-- Display: Ref Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.display = function(value)
  return "Ref Sequence Number: "..value
end

-- Dissect: Ref Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ref_sequence_number, range, value, display)

  return offset + length, value
end

-- Reset Seq Num
coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num = {}

-- Size: Reset Seq Num
coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.size = 1

-- Display: Reset Seq Num
coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.display = function(value)
  if value == 0 then
    return "Reset Seq Num: False (0)"
  end
  if value == 1 then
    return "Reset Seq Num: True (1)"
  end

  return "Reset Seq Num: Unknown("..value..")"
end

-- Dissect: Reset Seq Num
coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_seq_num, range, value, display)

  return offset + length, value
end

-- Schema Version
coinbase_deribit_ordersapi_sbe_v1_0.schema_version = {}

-- Size: Schema Version
coinbase_deribit_ordersapi_sbe_v1_0.schema_version.size = 2

-- Display: Schema Version
coinbase_deribit_ordersapi_sbe_v1_0.schema_version.display = function(value)
  return "Schema Version: "..value
end

-- Dissect: Schema Version
coinbase_deribit_ordersapi_sbe_v1_0.schema_version.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.schema_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.schema_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.schema_version, range, value, display)

  return offset + length, value
end

-- Secret
coinbase_deribit_ordersapi_sbe_v1_0.secret = {}

-- Size: Secret
coinbase_deribit_ordersapi_sbe_v1_0.secret.size = 48

-- Display: Secret
coinbase_deribit_ordersapi_sbe_v1_0.secret.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Secret: No Value"
  end

  return "Secret: "..value
end

-- Dissect: Secret
coinbase_deribit_ordersapi_sbe_v1_0.secret.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.secret.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = coinbase_deribit_ordersapi_sbe_v1_0.secret.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.secret, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Id
coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id = {}

-- Size: Self Match Prevention Id
coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.size = 8

-- Display: Self Match Prevention Id
coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Self Match Prevention Id: No Value"
  end

  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.self_match_prevention_id, range, value, display)

  return offset + length, value
end

-- Self Trading Mode
coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode = {}

-- Size: Self Trading Mode
coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.size = 1

-- Display: Self Trading Mode
coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.display = function(value)
  if value == 0 then
    return "Self Trading Mode: Cancel Taker (0)"
  end
  if value == 1 then
    return "Self Trading Mode: Cancel Maker (1)"
  end

  return "Self Trading Mode: Unknown("..value..")"
end

-- Dissect: Self Trading Mode
coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.self_trading_mode, range, value, display)

  return offset + length, value
end

-- Send Time Ns
coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns = {}

-- Size: Send Time Ns
coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.size = 8

-- Display: Send Time Ns
coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time Ns: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time Ns
coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.send_time_ns, range, value, display)

  return offset + length, value
end

-- Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.sequence_number = {}

-- Size: Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.size = 8

-- Display: Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
coinbase_deribit_ordersapi_sbe_v1_0.side = {}

-- Size: Side
coinbase_deribit_ordersapi_sbe_v1_0.side.size = 1

-- Display: Side
coinbase_deribit_ordersapi_sbe_v1_0.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 0 then
    return "Side: Both (0)"
  end
  if value == -1 then
    return "Side: Sell (-1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
coinbase_deribit_ordersapi_sbe_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Status
coinbase_deribit_ordersapi_sbe_v1_0.status = {}

-- Size: Status
coinbase_deribit_ordersapi_sbe_v1_0.status.size = 1

-- Display: Status
coinbase_deribit_ordersapi_sbe_v1_0.status.display = function(value)
  if value == 1 then
    return "Status: Active (1)"
  end
  if value == 2 then
    return "Status: Filled (2)"
  end
  if value == 3 then
    return "Status: Canceled (3)"
  end
  if value == 4 then
    return "Status: Queued (4)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
coinbase_deribit_ordersapi_sbe_v1_0.status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.status, range, value, display)

  return offset + length, value
end

-- Template Id
coinbase_deribit_ordersapi_sbe_v1_0.template_id = {}

-- Size: Template Id
coinbase_deribit_ordersapi_sbe_v1_0.template_id.size = 2

-- Display: Template Id
coinbase_deribit_ordersapi_sbe_v1_0.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Logon Message (1)"
  end
  if value == 2 then
    return "Template Id: Logon Conf Message (2)"
  end
  if value == 4 then
    return "Template Id: Logout Message (4)"
  end
  if value == 5 then
    return "Template Id: Logged Out Message (5)"
  end
  if value == 10 then
    return "Template Id: Heartbeat Message (10)"
  end
  if value == 11 then
    return "Template Id: Test Request Message (11)"
  end
  if value == 20 then
    return "Template Id: Resend Request Message (20)"
  end
  if value == 21 then
    return "Template Id: Gap Fill Message (21)"
  end
  if value == 30 then
    return "Template Id: Reject Message (30)"
  end
  if value == 100 then
    return "Template Id: New Order Request Message (100)"
  end
  if value == 110 then
    return "Template Id: Amend Order Request Message (110)"
  end
  if value == 120 then
    return "Template Id: Cancel Order Request Message (120)"
  end
  if value == 130 then
    return "Template Id: Mass Quote Request Message (130)"
  end
  if value == 140 then
    return "Template Id: Mass Cancel Request Message (140)"
  end
  if value == 145 then
    return "Template Id: Mass Quote Cancel Request Message (145)"
  end
  if value == 200 then
    return "Template Id: New Order Response Message (200)"
  end
  if value == 202 then
    return "Template Id: New Order Reject Message (202)"
  end
  if value == 210 then
    return "Template Id: Amend Order Response Message (210)"
  end
  if value == 212 then
    return "Template Id: Amend Order Reject Message (212)"
  end
  if value == 220 then
    return "Template Id: Cancel Order Response Message (220)"
  end
  if value == 222 then
    return "Template Id: Cancel Order Reject Message (222)"
  end
  if value == 230 then
    return "Template Id: Mass Quote Response Message (230)"
  end
  if value == 232 then
    return "Template Id: Mass Quote Reject Message (232)"
  end
  if value == 240 then
    return "Template Id: Mass Cancel Response Message (240)"
  end
  if value == 242 then
    return "Template Id: Mass Cancel Reject Message (242)"
  end
  if value == 300 then
    return "Template Id: Order Filled Message (300)"
  end
  if value == 310 then
    return "Template Id: Orders Canceled Message (310)"
  end
  if value == 312 then
    return "Template Id: Order Placed Message (312)"
  end
  if value == 314 then
    return "Template Id: Mass Quote Orders Placed Message (314)"
  end
  if value == 320 then
    return "Template Id: Mass Quote Mmp Triggered Message (320)"
  end
  if value == 322 then
    return "Template Id: Orders Mmp Triggered Message (322)"
  end
  if value == 324 then
    return "Template Id: Mass Quote Mmp Unfrozen Message (324)"
  end
  if value == 326 then
    return "Template Id: Orders Mmp Unfrozen Message (326)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
coinbase_deribit_ordersapi_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Time In Force
coinbase_deribit_ordersapi_sbe_v1_0.time_in_force = {}

-- Size: Time In Force
coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.size = 1

-- Display: Time In Force
coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
coinbase_deribit_ordersapi_sbe_v1_0.timestamp = {}

-- Size: Timestamp
coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size = 8

-- Display: Timestamp
coinbase_deribit_ordersapi_sbe_v1_0.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- To Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number = {}

-- Size: To Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.size = 8

-- Display: To Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.display = function(value)
  return "To Sequence Number: "..value
end

-- Dissect: To Sequence Number
coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.to_sequence_number, range, value, display)

  return offset + length, value
end

-- Total Order Count
coinbase_deribit_ordersapi_sbe_v1_0.total_order_count = {}

-- Size: Total Order Count
coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.size = 4

-- Display: Total Order Count
coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.display = function(value)
  return "Total Order Count: "..value
end

-- Dissect: Total Order Count
coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.total_order_count, range, value, display)

  return offset + length, value
end

-- Trigger
coinbase_deribit_ordersapi_sbe_v1_0.trigger = {}

-- Size: Trigger
coinbase_deribit_ordersapi_sbe_v1_0.trigger.size = 1

-- Display: Trigger
coinbase_deribit_ordersapi_sbe_v1_0.trigger.display = function(value)
  if value == 0 then
    return "Trigger: Quantity (0)"
  end
  if value == 1 then
    return "Trigger: Delta (1)"
  end
  if value == 2 then
    return "Trigger: Vega (2)"
  end

  return "Trigger: Unknown("..value..")"
end

-- Dissect: Trigger
coinbase_deribit_ordersapi_sbe_v1_0.trigger.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.trigger.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.trigger.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.trigger, range, value, display)

  return offset + length, value
end

-- Vega Level
coinbase_deribit_ordersapi_sbe_v1_0.vega_level = {}

-- Size: Vega Level
coinbase_deribit_ordersapi_sbe_v1_0.vega_level.size = 8

-- Display: Vega Level
coinbase_deribit_ordersapi_sbe_v1_0.vega_level.display = function(value)
  return "Vega Level: "..value
end

-- Dissect: Vega Level
coinbase_deribit_ordersapi_sbe_v1_0.vega_level.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_deribit_ordersapi_sbe_v1_0.vega_level.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.vega_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.vega_level, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Coinbase Deribit OrdersApi Sbe 1.0
-----------------------------------------------------------------------

-- Orders Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message = {}

-- Size: Orders Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.size

-- Display: Orders Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Currency Pair Id: CurrencyPairId
  index, currency_pair_id = coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.dissect(buffer, index, packet, parent)

  -- Correlation Id Optional: int64
  index, correlation_id_optional = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_mmp_unfrozen_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message = {}

-- Size: Mass Quote Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.size

-- Display: Mass Quote Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Correlation Id Optional: int64
  index, correlation_id_optional = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Mmp Unfrozen Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_mmp_unfrozen_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.fields(buffer, offset, packet, parent)
  end
end

-- Orders Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message = {}

-- Size: Orders Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.vega_level.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.delta_level.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.trigger.size

-- Display: Orders Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Currency Pair Id: CurrencyPairId
  index, currency_pair_id = coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.dissect(buffer, index, packet, parent)

  -- Frozen Until: TimestampNanos
  index, frozen_until = coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.dissect(buffer, index, packet, parent)

  -- Quantity Level: double
  index, quantity_level = coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.dissect(buffer, index, packet, parent)

  -- Vega Level: double
  index, vega_level = coinbase_deribit_ordersapi_sbe_v1_0.vega_level.dissect(buffer, index, packet, parent)

  -- Delta Level: double
  index, delta_level = coinbase_deribit_ordersapi_sbe_v1_0.delta_level.dissect(buffer, index, packet, parent)

  -- Trigger: MmpTriggerType
  index, trigger = coinbase_deribit_ordersapi_sbe_v1_0.trigger.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_mmp_triggered_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message = {}

-- Size: Mass Quote Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.vega_level.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.delta_level.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.trigger.size

-- Display: Mass Quote Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Frozen Until: TimestampNanos
  index, frozen_until = coinbase_deribit_ordersapi_sbe_v1_0.frozen_until.dissect(buffer, index, packet, parent)

  -- Quantity Level: double
  index, quantity_level = coinbase_deribit_ordersapi_sbe_v1_0.quantity_level.dissect(buffer, index, packet, parent)

  -- Vega Level: double
  index, vega_level = coinbase_deribit_ordersapi_sbe_v1_0.vega_level.dissect(buffer, index, packet, parent)

  -- Delta Level: double
  index, delta_level = coinbase_deribit_ordersapi_sbe_v1_0.delta_level.dissect(buffer, index, packet, parent)

  -- Trigger: MmpTriggerType
  index, trigger = coinbase_deribit_ordersapi_sbe_v1_0.trigger.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Mmp Triggered Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_mmp_triggered_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.fields(buffer, offset, packet, parent)
  end
end

-- Fill Qty
coinbase_deribit_ordersapi_sbe_v1_0.fill_qty = {}

-- Size: Fill Qty
coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Fill Qty
coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Fill Qty
coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local fill_qty = mantissa / factor( exponent )

  return index, fill_qty
end

-- Dissect: Fill Qty
coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect = function(buffer, offset, packet, parent)
  if show.fill_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.fill_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Orders Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group = {}

-- Size: Mass Quote Orders Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size

-- Display: Mass Quote Orders Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.fields = function(buffer, offset, packet, parent, mass_quote_orders_placed_message_legs_group_index)
  local index = offset

  -- Implicit Mass Quote Orders Placed Message legs Group Index
  if mass_quote_orders_placed_message_legs_group_index ~= nil and show.mass_quote_orders_placed_message_legs_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_legs_group_index, mass_quote_orders_placed_message_legs_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Id: FillId
  index, fill_id = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Orders Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.dissect = function(buffer, offset, packet, parent, mass_quote_orders_placed_message_legs_group_index)
  if show.mass_quote_orders_placed_message_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_legs_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.fields(buffer, offset, packet, parent, mass_quote_orders_placed_message_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.fields(buffer, offset, packet, parent, mass_quote_orders_placed_message_legs_group_index)
  end
end

-- Group Size Encoding
coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding = {}

-- Size: Group Size Encoding
coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size =
  coinbase_deribit_ordersapi_sbe_v1_0.block_length.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.size

-- Display: Group Size Encoding
coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = coinbase_deribit_ordersapi_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint16
  index, num_in_group = coinbase_deribit_ordersapi_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.group_size_encoding, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Orders Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups = {}

-- Calculate size of: Mass Quote Orders Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_orders_placed_message_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_orders_placed_message_legs_group_count * 34

  return index
end

-- Display: Mass Quote Orders Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Orders Placed Message legs Group
  for mass_quote_orders_placed_message_legs_group_index = 1, num_in_group do
    index, mass_quote_orders_placed_message_legs_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_group.dissect(buffer, index, packet, parent, mass_quote_orders_placed_message_legs_group_index)
  end

  return index
end

-- Dissect: Mass Quote Orders Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_orders_placed_message_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_legs_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Orders Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group = {}

-- Size: Mass Quote Orders Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size

-- Display: Mass Quote Orders Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.fields = function(buffer, offset, packet, parent, mass_quote_orders_placed_message_fills_group_index)
  local index = offset

  -- Implicit Mass Quote Orders Placed Message fills Group Index
  if mass_quote_orders_placed_message_fills_group_index ~= nil and show.mass_quote_orders_placed_message_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_fills_group_index, mass_quote_orders_placed_message_fills_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Order Id Fill Id: FillId
  index, order_id_fill_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id_fill_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Orders Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.dissect = function(buffer, offset, packet, parent, mass_quote_orders_placed_message_fills_group_index)
  if show.mass_quote_orders_placed_message_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.fields(buffer, offset, packet, parent, mass_quote_orders_placed_message_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.fields(buffer, offset, packet, parent, mass_quote_orders_placed_message_fills_group_index)
  end
end

-- Mass Quote Orders Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups = {}

-- Calculate size of: Mass Quote Orders Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_orders_placed_message_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_orders_placed_message_fills_group_count * 33

  return index
end

-- Display: Mass Quote Orders Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Orders Placed Message fills Group
  for mass_quote_orders_placed_message_fills_group_index = 1, num_in_group do
    index, mass_quote_orders_placed_message_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_group.dissect(buffer, index, packet, parent, mass_quote_orders_placed_message_fills_group_index)
  end

  return index
end

-- Dissect: Mass Quote Orders Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_orders_placed_message_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Visible Qty
coinbase_deribit_ordersapi_sbe_v1_0.visible_qty = {}

-- Size: Visible Qty
coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Visible Qty
coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Visible Qty
coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local visible_qty = mantissa / factor( exponent )

  return index, visible_qty
end

-- Dissect: Visible Qty
coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.dissect = function(buffer, offset, packet, parent)
  if show.visible_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.visible_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.fields(buffer, offset, packet, parent)
  end
end

-- Total Filled
coinbase_deribit_ordersapi_sbe_v1_0.total_filled = {}

-- Size: Total Filled
coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Total Filled
coinbase_deribit_ordersapi_sbe_v1_0.total_filled.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Total Filled
coinbase_deribit_ordersapi_sbe_v1_0.total_filled.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local total_filled = mantissa / factor( exponent )

  return index, total_filled
end

-- Dissect: Total Filled
coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect = function(buffer, offset, packet, parent)
  if show.total_filled then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.total_filled, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.total_filled.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
coinbase_deribit_ordersapi_sbe_v1_0.quantity = {}

-- Size: Quantity
coinbase_deribit_ordersapi_sbe_v1_0.quantity.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Quantity
coinbase_deribit_ordersapi_sbe_v1_0.quantity.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Quantity
coinbase_deribit_ordersapi_sbe_v1_0.quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local quantity = mantissa / factor( exponent )

  return index, quantity
end

-- Dissect: Quantity
coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect = function(buffer, offset, packet, parent)
  if show.quantity then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.quantity, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.quantity.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.quantity.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Orders Placed Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group = {}

-- Size: Mass Quote Orders Placed Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.quantity.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.side.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.status.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size

-- Display: Mass Quote Orders Placed Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.fields = function(buffer, offset, packet, parent, mass_quote_orders_placed_message_orders_group_index)
  local index = offset

  -- Implicit Mass Quote Orders Placed Message orders Group Index
  if mass_quote_orders_placed_message_orders_group_index ~= nil and show.mass_quote_orders_placed_message_orders_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_orders_group_index, mass_quote_orders_placed_message_orders_group_index)
    iteration:set_generated()
  end

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Struct of 2 fields
  index, quantity = coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Total Filled: Struct of 2 fields
  index, total_filled = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect(buffer, index, packet, parent)

  -- Visible Qty: Struct of 2 fields
  index, visible_qty = coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_deribit_ordersapi_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Status: OrderStatus
  index, status = coinbase_deribit_ordersapi_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReason
  index, cancel_reason = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Orders Placed Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.dissect = function(buffer, offset, packet, parent, mass_quote_orders_placed_message_orders_group_index)
  if show.mass_quote_orders_placed_message_orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_orders_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.fields(buffer, offset, packet, parent, mass_quote_orders_placed_message_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.fields(buffer, offset, packet, parent, mass_quote_orders_placed_message_orders_group_index)
  end
end

-- Mass Quote Orders Placed Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups = {}

-- Calculate size of: Mass Quote Orders Placed Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_orders_placed_message_orders_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_orders_placed_message_orders_group_count * 62

  return index
end

-- Display: Mass Quote Orders Placed Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Orders Placed Message orders Group
  for mass_quote_orders_placed_message_orders_group_index = 1, num_in_group do
    index, mass_quote_orders_placed_message_orders_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_group.dissect(buffer, index, packet, parent, mass_quote_orders_placed_message_orders_group_index)
  end

  return index
end

-- Dissect: Mass Quote Orders Placed Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_orders_placed_message_orders_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message_orders_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Orders Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message = {}

-- Calculate size of: Mass Quote Orders Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Orders Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Orders Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Mass Quote Orders Placed Message orders Groups: Struct of 2 fields
  index, mass_quote_orders_placed_message_orders_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_orders_groups.dissect(buffer, index, packet, parent)

  -- Mass Quote Orders Placed Message fills Groups: Struct of 2 fields
  index, mass_quote_orders_placed_message_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_fills_groups.dissect(buffer, index, packet, parent)

  -- Mass Quote Orders Placed Message legs Groups: Struct of 2 fields
  index, mass_quote_orders_placed_message_legs_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Orders Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_orders_placed_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group = {}

-- Size: Order Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size

-- Display: Order Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.fields = function(buffer, offset, packet, parent, order_placed_message_legs_group_index)
  local index = offset

  -- Implicit Order Placed Message legs Group Index
  if order_placed_message_legs_group_index ~= nil and show.order_placed_message_legs_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_legs_group_index, order_placed_message_legs_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Id: FillId
  index, fill_id = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Placed Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.dissect = function(buffer, offset, packet, parent, order_placed_message_legs_group_index)
  if show.order_placed_message_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_legs_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.fields(buffer, offset, packet, parent, order_placed_message_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.fields(buffer, offset, packet, parent, order_placed_message_legs_group_index)
  end
end

-- Order Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups = {}

-- Calculate size of: Order Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local order_placed_message_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + order_placed_message_legs_group_count * 34

  return index
end

-- Display: Order Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Order Placed Message legs Group
  for order_placed_message_legs_group_index = 1, num_in_group do
    index, order_placed_message_legs_group = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_group.dissect(buffer, index, packet, parent, order_placed_message_legs_group_index)
  end

  return index
end

-- Dissect: Order Placed Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.order_placed_message_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_legs_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Order Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group = {}

-- Size: Order Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size

-- Display: Order Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.fields = function(buffer, offset, packet, parent, order_placed_message_fills_group_index)
  local index = offset

  -- Implicit Order Placed Message fills Group Index
  if order_placed_message_fills_group_index ~= nil and show.order_placed_message_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_fills_group_index, order_placed_message_fills_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Placed Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.dissect = function(buffer, offset, packet, parent, order_placed_message_fills_group_index)
  if show.order_placed_message_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.fields(buffer, offset, packet, parent, order_placed_message_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.fields(buffer, offset, packet, parent, order_placed_message_fills_group_index)
  end
end

-- Order Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups = {}

-- Calculate size of: Order Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local order_placed_message_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + order_placed_message_fills_group_count * 25

  return index
end

-- Display: Order Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Order Placed Message fills Group
  for order_placed_message_fills_group_index = 1, num_in_group do
    index, order_placed_message_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_group.dissect(buffer, index, packet, parent, order_placed_message_fills_group_index)
  end

  return index
end

-- Dissect: Order Placed Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.order_placed_message_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Order Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message = {}

-- Calculate size of: Order Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.price.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.quantity.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.status.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Order Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Struct of 2 fields
  index, quantity = coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Total Filled: Struct of 2 fields
  index, total_filled = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect(buffer, index, packet, parent)

  -- Visible Qty: Struct of 2 fields
  index, visible_qty = coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.dissect(buffer, index, packet, parent)

  -- Status: OrderStatus
  index, status = coinbase_deribit_ordersapi_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReason
  index, cancel_reason = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Order Placed Message fills Groups: Struct of 2 fields
  index, order_placed_message_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_fills_groups.dissect(buffer, index, packet, parent)

  -- Order Placed Message legs Groups: Struct of 2 fields
  index, order_placed_message_legs_groups = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Placed Message
coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_placed_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags Cancel Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags = {}

-- Size: Flags Cancel Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.size = 1

-- Display: Flags Cancel Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Quote flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Is Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags Cancel Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.bits = function(range, value, packet, parent)

  -- Is Quote: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_quote, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Flags Cancel Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_cancel_flags, range, display)

  if show.flags_cancel_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Orders Canceled Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group = {}

-- Size: Orders Canceled Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.size

-- Display: Orders Canceled Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Canceled Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.fields = function(buffer, offset, packet, parent, orders_canceled_message_orders_group_index)
  local index = offset

  -- Implicit Orders Canceled Message orders Group Index
  if orders_canceled_message_orders_group_index ~= nil and show.orders_canceled_message_orders_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message_orders_group_index, orders_canceled_message_orders_group_index)
    iteration:set_generated()
  end

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Total Filled: Struct of 2 fields
  index, total_filled = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReason
  index, cancel_reason = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Flags Cancel Flags: Struct of 2 fields
  index, flags_cancel_flags = coinbase_deribit_ordersapi_sbe_v1_0.flags_cancel_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Canceled Message orders Group
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.dissect = function(buffer, offset, packet, parent, orders_canceled_message_orders_group_index)
  if show.orders_canceled_message_orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message_orders_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.fields(buffer, offset, packet, parent, orders_canceled_message_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.fields(buffer, offset, packet, parent, orders_canceled_message_orders_group_index)
  end
end

-- Orders Canceled Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups = {}

-- Calculate size of: Orders Canceled Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local orders_canceled_message_orders_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + orders_canceled_message_orders_group_count * 35

  return index
end

-- Display: Orders Canceled Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Canceled Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Orders Canceled Message orders Group
  for orders_canceled_message_orders_group_index = 1, num_in_group do
    index, orders_canceled_message_orders_group = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_group.dissect(buffer, index, packet, parent, orders_canceled_message_orders_group_index)
  end

  return index
end

-- Dissect: Orders Canceled Message orders Groups
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.dissect = function(buffer, offset, packet, parent)
  if show.orders_canceled_message_orders_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message_orders_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.fields(buffer, offset, packet, parent)
  end
end

-- Flags Multi Part Event Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags = {}

-- Size: Flags Multi Part Event Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.size = 1

-- Display: Flags Multi Part Event Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Last Message flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Is Last Message"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags Multi Part Event Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.bits = function(range, value, packet, parent)

  -- Is Last Message: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_last_message, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Flags Multi Part Event Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_multi_part_event_flags, range, display)

  if show.flags_multi_part_event_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Orders Canceled Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message = {}

-- Calculate size of: Orders Canceled Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Orders Canceled Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Canceled Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Flags Multi Part Event Flags: Struct of 2 fields
  index, flags_multi_part_event_flags = coinbase_deribit_ordersapi_sbe_v1_0.flags_multi_part_event_flags.dissect(buffer, index, packet, parent)

  -- Orders Canceled Message orders Groups: Struct of 2 fields
  index, orders_canceled_message_orders_groups = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message_orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Canceled Message
coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.orders_canceled_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Filled Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group = {}

-- Size: Order Filled Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size

-- Display: Order Filled Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.fields = function(buffer, offset, packet, parent, order_filled_message_legs_group_index)
  local index = offset

  -- Implicit Order Filled Message legs Group Index
  if order_filled_message_legs_group_index ~= nil and show.order_filled_message_legs_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_legs_group_index, order_filled_message_legs_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Id: FillId
  index, fill_id = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Filled Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.dissect = function(buffer, offset, packet, parent, order_filled_message_legs_group_index)
  if show.order_filled_message_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_legs_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.fields(buffer, offset, packet, parent, order_filled_message_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.fields(buffer, offset, packet, parent, order_filled_message_legs_group_index)
  end
end

-- Order Filled Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups = {}

-- Calculate size of: Order Filled Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local order_filled_message_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + order_filled_message_legs_group_count * 34

  return index
end

-- Display: Order Filled Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Order Filled Message legs Group
  for order_filled_message_legs_group_index = 1, num_in_group do
    index, order_filled_message_legs_group = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_group.dissect(buffer, index, packet, parent, order_filled_message_legs_group_index)
  end

  return index
end

-- Dissect: Order Filled Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.order_filled_message_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_legs_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Flags Fill Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags = {}

-- Size: Flags Fill Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.size = 1

-- Display: Flags Fill Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Quote flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Is Quote"
  end
  -- Is Is Fully Filled flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Is Fully Filled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags Fill Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.bits = function(range, value, packet, parent)

  -- Is Quote: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_quote, range, value)

  -- Is Fully Filled: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_fully_filled, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_6, range, value)
end

-- Dissect: Flags Fill Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_fill_flags, range, display)

  if show.flags_fill_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Filled Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group = {}

-- Size: Order Filled Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.side.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.size

-- Display: Order Filled Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.fields = function(buffer, offset, packet, parent, order_filled_message_fills_group_index)
  local index = offset

  -- Implicit Order Filled Message fills Group Index
  if order_filled_message_fills_group_index ~= nil and show.order_filled_message_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_fills_group_index, order_filled_message_fills_group_index)
    iteration:set_generated()
  end

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Total Filled: Struct of 2 fields
  index, total_filled = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_deribit_ordersapi_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Flags Fill Flags: Struct of 3 fields
  index, flags_fill_flags = coinbase_deribit_ordersapi_sbe_v1_0.flags_fill_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Filled Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.dissect = function(buffer, offset, packet, parent, order_filled_message_fills_group_index)
  if show.order_filled_message_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.fields(buffer, offset, packet, parent, order_filled_message_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.fields(buffer, offset, packet, parent, order_filled_message_fills_group_index)
  end
end

-- Order Filled Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups = {}

-- Calculate size of: Order Filled Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local order_filled_message_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + order_filled_message_fills_group_count * 60

  return index
end

-- Display: Order Filled Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Order Filled Message fills Group
  for order_filled_message_fills_group_index = 1, num_in_group do
    index, order_filled_message_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_group.dissect(buffer, index, packet, parent, order_filled_message_fills_group_index)
  end

  return index
end

-- Dissect: Order Filled Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.order_filled_message_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Order Filled Message
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message = {}

-- Calculate size of: Order Filled Message
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Order Filled Message
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Order Filled Message fills Groups: Struct of 2 fields
  index, order_filled_message_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_fills_groups.dissect(buffer, index, packet, parent)

  -- Order Filled Message legs Groups: Struct of 2 fields
  index, order_filled_message_legs_groups = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Filled Message
coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.order_filled_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Details
coinbase_deribit_ordersapi_sbe_v1_0.details = {}

-- Calculate size of: Details
coinbase_deribit_ordersapi_sbe_v1_0.details.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details_length.size

  local details_length = buffer(offset + index - 1, 1):le_uint()

  if details_length > 0 then
    -- Parse runtime size of: Details Data
    index = index + buffer(offset + index - 1, 1):le_uint()

  end

  return index
end

-- Display: Details
coinbase_deribit_ordersapi_sbe_v1_0.details.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Details
coinbase_deribit_ordersapi_sbe_v1_0.details.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Details Length: uint8
  index, details_length = coinbase_deribit_ordersapi_sbe_v1_0.details_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Details Data
  local details_data = nil

  local details_data_exists = details_length > 0

  if details_data_exists then

    -- Runtime Size Of: Details Data
    index, details_data = coinbase_deribit_ordersapi_sbe_v1_0.details_data.dissect(buffer, index, packet, parent, details_length)
  end

  -- Composite value
  local details = details_data

  return index, details
end

-- Dissect: Details
coinbase_deribit_ordersapi_sbe_v1_0.details.dissect = function(buffer, offset, packet, parent)
  if show.details then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.details, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.details.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.details.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.details.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message = {}

-- Calculate size of: Mass Cancel Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details.size(buffer, offset + index)

  return index
end

-- Display: Mass Cancel Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Reason Mass Cancel Reject Reason: MassCancelRejectReason
  index, reason_mass_cancel_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: Struct of 2 fields
  index, details = coinbase_deribit_ordersapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message = {}

-- Size: Mass Cancel Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.size

-- Display: Mass Cancel Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Receive Time: TimestampNanos
  index, receive_time = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.dissect(buffer, index, packet, parent)

  -- Total Order Count: int32
  index, total_order_count = coinbase_deribit_ordersapi_sbe_v1_0.total_order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_cancel_response_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message = {}

-- Calculate size of: Mass Quote Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.quote_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Quote Id: ClientOrderId
  index, quote_id = coinbase_deribit_ordersapi_sbe_v1_0.quote_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Reason Mass Quote Reject Reason: MassQuoteRejectReason
  index, reason_mass_quote_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.reason_mass_quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: Struct of 2 fields
  index, details = coinbase_deribit_ordersapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_reject_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group = {}

-- Size: Mass Quote Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size

-- Display: Mass Quote Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.fields = function(buffer, offset, packet, parent, mass_quote_response_message_legs_group_index)
  local index = offset

  -- Implicit Mass Quote Response Message legs Group Index
  if mass_quote_response_message_legs_group_index ~= nil and show.mass_quote_response_message_legs_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_legs_group_index, mass_quote_response_message_legs_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Id: FillId
  index, fill_id = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.dissect = function(buffer, offset, packet, parent, mass_quote_response_message_legs_group_index)
  if show.mass_quote_response_message_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_legs_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.fields(buffer, offset, packet, parent, mass_quote_response_message_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.fields(buffer, offset, packet, parent, mass_quote_response_message_legs_group_index)
  end
end

-- Mass Quote Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups = {}

-- Calculate size of: Mass Quote Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_response_message_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_response_message_legs_group_count * 34

  return index
end

-- Display: Mass Quote Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Response Message legs Group
  for mass_quote_response_message_legs_group_index = 1, num_in_group do
    index, mass_quote_response_message_legs_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_group.dissect(buffer, index, packet, parent, mass_quote_response_message_legs_group_index)
  end

  return index
end

-- Dissect: Mass Quote Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_response_message_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_legs_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Response Message ask Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group = {}

-- Size: Mass Quote Response Message ask Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size

-- Display: Mass Quote Response Message ask Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message ask Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.fields = function(buffer, offset, packet, parent, mass_quote_response_message_ask_fills_group_index)
  local index = offset

  -- Implicit Mass Quote Response Message ask Fills Group Index
  if mass_quote_response_message_ask_fills_group_index ~= nil and show.mass_quote_response_message_ask_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_ask_fills_group_index, mass_quote_response_message_ask_fills_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Response Message ask Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.dissect = function(buffer, offset, packet, parent, mass_quote_response_message_ask_fills_group_index)
  if show.mass_quote_response_message_ask_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_ask_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.fields(buffer, offset, packet, parent, mass_quote_response_message_ask_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.fields(buffer, offset, packet, parent, mass_quote_response_message_ask_fills_group_index)
  end
end

-- Mass Quote Response Message ask Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups = {}

-- Calculate size of: Mass Quote Response Message ask Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_response_message_ask_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_response_message_ask_fills_group_count * 33

  return index
end

-- Display: Mass Quote Response Message ask Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message ask Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Response Message ask Fills Group
  for mass_quote_response_message_ask_fills_group_index = 1, num_in_group do
    index, mass_quote_response_message_ask_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_group.dissect(buffer, index, packet, parent, mass_quote_response_message_ask_fills_group_index)
  end

  return index
end

-- Dissect: Mass Quote Response Message ask Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_response_message_ask_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_ask_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Response Message bid Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group = {}

-- Size: Mass Quote Response Message bid Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size

-- Display: Mass Quote Response Message bid Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message bid Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.fields = function(buffer, offset, packet, parent, mass_quote_response_message_bid_fills_group_index)
  local index = offset

  -- Implicit Mass Quote Response Message bid Fills Group Index
  if mass_quote_response_message_bid_fills_group_index ~= nil and show.mass_quote_response_message_bid_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_bid_fills_group_index, mass_quote_response_message_bid_fills_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Response Message bid Fills Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.dissect = function(buffer, offset, packet, parent, mass_quote_response_message_bid_fills_group_index)
  if show.mass_quote_response_message_bid_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_bid_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.fields(buffer, offset, packet, parent, mass_quote_response_message_bid_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.fields(buffer, offset, packet, parent, mass_quote_response_message_bid_fills_group_index)
  end
end

-- Mass Quote Response Message bid Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups = {}

-- Calculate size of: Mass Quote Response Message bid Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_response_message_bid_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_response_message_bid_fills_group_count * 33

  return index
end

-- Display: Mass Quote Response Message bid Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message bid Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Response Message bid Fills Group
  for mass_quote_response_message_bid_fills_group_index = 1, num_in_group do
    index, mass_quote_response_message_bid_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_group.dissect(buffer, index, packet, parent, mass_quote_response_message_bid_fills_group_index)
  end

  return index
end

-- Dissect: Mass Quote Response Message bid Fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_response_message_bid_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_bid_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Ask Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty = {}

-- Size: Ask Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Ask Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Ask Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local ask_filled_qty = mantissa / factor( exponent )

  return index, ask_filled_qty
end

-- Dissect: Ask Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.dissect = function(buffer, offset, packet, parent)
  if show.ask_filled_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_filled_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.fields(buffer, offset, packet, parent)
  end
end

-- Bid Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty = {}

-- Size: Bid Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Bid Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Bid Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local bid_filled_qty = mantissa / factor( exponent )

  return index, bid_filled_qty
end

-- Dissect: Bid Filled Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.dissect = function(buffer, offset, packet, parent)
  if show.bid_filled_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_filled_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.fields(buffer, offset, packet, parent)
  end
end

-- Ask Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_qty = {}

-- Size: Ask Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Ask Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Ask Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local ask_qty = mantissa / factor( exponent )

  return index, ask_qty
end

-- Dissect: Ask Qty
coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.dissect = function(buffer, offset, packet, parent)
  if show.ask_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.fields(buffer, offset, packet, parent)
  end
end

-- Bid Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_qty = {}

-- Size: Bid Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Bid Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Bid Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local bid_qty = mantissa / factor( exponent )

  return index, bid_qty
end

-- Dissect: Bid Qty
coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.dissect = function(buffer, offset, packet, parent)
  if show.bid_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Response Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group = {}

-- Size: Mass Quote Response Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_status.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_status.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.size

-- Display: Mass Quote Response Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.fields = function(buffer, offset, packet, parent, mass_quote_response_message_quotes_group_index)
  local index = offset

  -- Implicit Mass Quote Response Message quotes Group Index
  if mass_quote_response_message_quotes_group_index ~= nil and show.mass_quote_response_message_quotes_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_quotes_group_index, mass_quote_response_message_quotes_group_index)
    iteration:set_generated()
  end

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Order Id: OrderId
  index, bid_order_id = coinbase_deribit_ordersapi_sbe_v1_0.bid_order_id.dissect(buffer, index, packet, parent)

  -- Ask Order Id: OrderId
  index, ask_order_id = coinbase_deribit_ordersapi_sbe_v1_0.ask_order_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price9
  index, bid_price = coinbase_deribit_ordersapi_sbe_v1_0.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: Price9
  index, ask_price = coinbase_deribit_ordersapi_sbe_v1_0.ask_price.dissect(buffer, index, packet, parent)

  -- Bid Qty: Struct of 2 fields
  index, bid_qty = coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.dissect(buffer, index, packet, parent)

  -- Ask Qty: Struct of 2 fields
  index, ask_qty = coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.dissect(buffer, index, packet, parent)

  -- Bid Filled Qty: Struct of 2 fields
  index, bid_filled_qty = coinbase_deribit_ordersapi_sbe_v1_0.bid_filled_qty.dissect(buffer, index, packet, parent)

  -- Ask Filled Qty: Struct of 2 fields
  index, ask_filled_qty = coinbase_deribit_ordersapi_sbe_v1_0.ask_filled_qty.dissect(buffer, index, packet, parent)

  -- Bid Status: QuoteStatus
  index, bid_status = coinbase_deribit_ordersapi_sbe_v1_0.bid_status.dissect(buffer, index, packet, parent)

  -- Ask Status: QuoteStatus
  index, ask_status = coinbase_deribit_ordersapi_sbe_v1_0.ask_status.dissect(buffer, index, packet, parent)

  -- Bid Reject Reason: OrderRejectReason
  index, bid_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.bid_reject_reason.dissect(buffer, index, packet, parent)

  -- Ask Reject Reason: OrderRejectReason
  index, ask_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.ask_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Response Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.dissect = function(buffer, offset, packet, parent, mass_quote_response_message_quotes_group_index)
  if show.mass_quote_response_message_quotes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_quotes_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.fields(buffer, offset, packet, parent, mass_quote_response_message_quotes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.fields(buffer, offset, packet, parent, mass_quote_response_message_quotes_group_index)
  end
end

-- Mass Quote Response Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups = {}

-- Calculate size of: Mass Quote Response Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_response_message_quotes_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_response_message_quotes_group_count * 80

  return index
end

-- Display: Mass Quote Response Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Response Message quotes Group
  for mass_quote_response_message_quotes_group_index = 1, num_in_group do
    index, mass_quote_response_message_quotes_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_group.dissect(buffer, index, packet, parent, mass_quote_response_message_quotes_group_index)
  end

  return index
end

-- Dissect: Mass Quote Response Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_response_message_quotes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message_quotes_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message = {}

-- Calculate size of: Mass Quote Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.quote_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Quote Id: ClientOrderId
  index, quote_id = coinbase_deribit_ordersapi_sbe_v1_0.quote_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Receive Time: TimestampNanos
  index, receive_time = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.dissect(buffer, index, packet, parent)

  -- Mass Quote Response Message quotes Groups: Struct of 2 fields
  index, mass_quote_response_message_quotes_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_quotes_groups.dissect(buffer, index, packet, parent)

  -- Mass Quote Response Message bid Fills Groups: Struct of 2 fields
  index, mass_quote_response_message_bid_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_bid_fills_groups.dissect(buffer, index, packet, parent)

  -- Mass Quote Response Message ask Fills Groups: Struct of 2 fields
  index, mass_quote_response_message_ask_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_ask_fills_groups.dissect(buffer, index, packet, parent)

  -- Mass Quote Response Message legs Groups: Struct of 2 fields
  index, mass_quote_response_message_legs_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Response Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_response_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message = {}

-- Calculate size of: Cancel Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details.size(buffer, offset + index)

  return index
end

-- Display: Cancel Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderId
  index, order_id_optional = coinbase_deribit_ordersapi_sbe_v1_0.order_id_optional.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Reason Cancel Order Reject Reason: CancelOrderRejectReason
  index, reason_cancel_order_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.reason_cancel_order_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: Struct of 2 fields
  index, details = coinbase_deribit_ordersapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_order_reject_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message = {}

-- Size: Cancel Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size

-- Display: Cancel Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Receive Time: TimestampNanos
  index, receive_time = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_order_response_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message = {}

-- Calculate size of: Amend Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details.size(buffer, offset + index)

  return index
end

-- Display: Amend Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Reason Order Reject Reason: OrderRejectReason
  index, reason_order_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: Struct of 2 fields
  index, details = coinbase_deribit_ordersapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_reject_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group = {}

-- Size: Amend Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size

-- Display: Amend Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.fields = function(buffer, offset, packet, parent, amend_order_response_message_legs_group_index)
  local index = offset

  -- Implicit Amend Order Response Message legs Group Index
  if amend_order_response_message_legs_group_index ~= nil and show.amend_order_response_message_legs_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_legs_group_index, amend_order_response_message_legs_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Id: FillId
  index, fill_id = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.dissect = function(buffer, offset, packet, parent, amend_order_response_message_legs_group_index)
  if show.amend_order_response_message_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_legs_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.fields(buffer, offset, packet, parent, amend_order_response_message_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.fields(buffer, offset, packet, parent, amend_order_response_message_legs_group_index)
  end
end

-- Amend Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups = {}

-- Calculate size of: Amend Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local amend_order_response_message_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + amend_order_response_message_legs_group_count * 34

  return index
end

-- Display: Amend Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Amend Order Response Message legs Group
  for amend_order_response_message_legs_group_index = 1, num_in_group do
    index, amend_order_response_message_legs_group = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_group.dissect(buffer, index, packet, parent, amend_order_response_message_legs_group_index)
  end

  return index
end

-- Dissect: Amend Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.amend_order_response_message_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_legs_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group = {}

-- Size: Amend Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size

-- Display: Amend Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.fields = function(buffer, offset, packet, parent, amend_order_response_message_fills_group_index)
  local index = offset

  -- Implicit Amend Order Response Message fills Group Index
  if amend_order_response_message_fills_group_index ~= nil and show.amend_order_response_message_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_fills_group_index, amend_order_response_message_fills_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.dissect = function(buffer, offset, packet, parent, amend_order_response_message_fills_group_index)
  if show.amend_order_response_message_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.fields(buffer, offset, packet, parent, amend_order_response_message_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.fields(buffer, offset, packet, parent, amend_order_response_message_fills_group_index)
  end
end

-- Amend Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups = {}

-- Calculate size of: Amend Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local amend_order_response_message_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + amend_order_response_message_fills_group_count * 25

  return index
end

-- Display: Amend Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Amend Order Response Message fills Group
  for amend_order_response_message_fills_group_index = 1, num_in_group do
    index, amend_order_response_message_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_group.dissect(buffer, index, packet, parent, amend_order_response_message_fills_group_index)
  end

  return index
end

-- Dissect: Amend Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.amend_order_response_message_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message = {}

-- Calculate size of: Amend Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.price.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.quantity.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.status.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Amend Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Struct of 2 fields
  index, quantity = coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Total Filled: Struct of 2 fields
  index, total_filled = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect(buffer, index, packet, parent)

  -- Visible Qty: Struct of 2 fields
  index, visible_qty = coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.dissect(buffer, index, packet, parent)

  -- Receive Time: TimestampNanos
  index, receive_time = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.dissect(buffer, index, packet, parent)

  -- Status: OrderStatus
  index, status = coinbase_deribit_ordersapi_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReason
  index, cancel_reason = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Amend Order Response Message fills Groups: Struct of 2 fields
  index, amend_order_response_message_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_fills_groups.dissect(buffer, index, packet, parent)

  -- Amend Order Response Message legs Groups: Struct of 2 fields
  index, amend_order_response_message_legs_groups = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_response_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message = {}

-- Calculate size of: New Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details.size(buffer, offset + index)

  return index
end

-- Display: New Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Reason Order Reject Reason: OrderRejectReason
  index, reason_order_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.reason_order_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: Struct of 2 fields
  index, details = coinbase_deribit_ordersapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_reject_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group = {}

-- Size: New Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.leg_side.size

-- Display: New Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.fields = function(buffer, offset, packet, parent, new_order_response_message_legs_group_index)
  local index = offset

  -- Implicit New Order Response Message legs Group Index
  if new_order_response_message_legs_group_index ~= nil and show.new_order_response_message_legs_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_legs_group_index, new_order_response_message_legs_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Id: FillId
  index, fill_id = coinbase_deribit_ordersapi_sbe_v1_0.fill_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = coinbase_deribit_ordersapi_sbe_v1_0.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message legs Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.dissect = function(buffer, offset, packet, parent, new_order_response_message_legs_group_index)
  if show.new_order_response_message_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_legs_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.fields(buffer, offset, packet, parent, new_order_response_message_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.fields(buffer, offset, packet, parent, new_order_response_message_legs_group_index)
  end
end

-- New Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups = {}

-- Calculate size of: New Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local new_order_response_message_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + new_order_response_message_legs_group_count * 34

  return index
end

-- Display: New Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: New Order Response Message legs Group
  for new_order_response_message_legs_group_index = 1, num_in_group do
    index, new_order_response_message_legs_group = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_group.dissect(buffer, index, packet, parent, new_order_response_message_legs_group_index)
  end

  return index
end

-- Dissect: New Order Response Message legs Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.new_order_response_message_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_legs_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group = {}

-- Size: New Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.match_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.size

-- Display: New Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.fields = function(buffer, offset, packet, parent, new_order_response_message_fills_group_index)
  local index = offset

  -- Implicit New Order Response Message fills Group Index
  if new_order_response_message_fills_group_index ~= nil and show.new_order_response_message_fills_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_fills_group_index, new_order_response_message_fills_group_index)
    iteration:set_generated()
  end

  -- Match Id: FillId
  index, match_id = coinbase_deribit_ordersapi_sbe_v1_0.match_id.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_deribit_ordersapi_sbe_v1_0.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Struct of 2 fields
  index, fill_qty = coinbase_deribit_ordersapi_sbe_v1_0.fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message fills Group
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.dissect = function(buffer, offset, packet, parent, new_order_response_message_fills_group_index)
  if show.new_order_response_message_fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_fills_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.fields(buffer, offset, packet, parent, new_order_response_message_fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.fields(buffer, offset, packet, parent, new_order_response_message_fills_group_index)
  end
end

-- New Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups = {}

-- Calculate size of: New Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local new_order_response_message_fills_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + new_order_response_message_fills_group_count * 25

  return index
end

-- Display: New Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: New Order Response Message fills Group
  for new_order_response_message_fills_group_index = 1, num_in_group do
    index, new_order_response_message_fills_group = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_group.dissect(buffer, index, packet, parent, new_order_response_message_fills_group_index)
  end

  return index
end

-- Dissect: New Order Response Message fills Groups
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.new_order_response_message_fills_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message_fills_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message = {}

-- Calculate size of: New Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.timestamp.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.exec_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.order_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.price.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.quantity.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.total_filled.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.receive_time.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.side.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.status.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.size(buffer, offset + index)

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimestampNanos
  index, timestamp = coinbase_deribit_ordersapi_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: EventId
  index, exec_id = coinbase_deribit_ordersapi_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_deribit_ordersapi_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Struct of 2 fields
  index, quantity = coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Total Filled: Struct of 2 fields
  index, total_filled = coinbase_deribit_ordersapi_sbe_v1_0.total_filled.dissect(buffer, index, packet, parent)

  -- Visible Qty: Struct of 2 fields
  index, visible_qty = coinbase_deribit_ordersapi_sbe_v1_0.visible_qty.dissect(buffer, index, packet, parent)

  -- Receive Time: TimestampNanos
  index, receive_time = coinbase_deribit_ordersapi_sbe_v1_0.receive_time.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_deribit_ordersapi_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Status: OrderStatus
  index, status = coinbase_deribit_ordersapi_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReason
  index, cancel_reason = coinbase_deribit_ordersapi_sbe_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- New Order Response Message fills Groups: Struct of 2 fields
  index, new_order_response_message_fills_groups = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_fills_groups.dissect(buffer, index, packet, parent)

  -- New Order Response Message legs Groups: Struct of 2 fields
  index, new_order_response_message_legs_groups = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_response_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message = {}

-- Size: Mass Quote Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.side.size

-- Display: Mass Quote Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_deribit_ordersapi_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_cancel_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.product_type.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.side.size

-- Display: Mass Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Currency Pair Id: CurrencyPairId
  index, currency_pair_id = coinbase_deribit_ordersapi_sbe_v1_0.currency_pair_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Optional: InstrumentId
  index, instrument_id_optional = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Product Type: ProductType
  index, product_type = coinbase_deribit_ordersapi_sbe_v1_0.product_type.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_deribit_ordersapi_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Flags
coinbase_deribit_ordersapi_sbe_v1_0.ask_flags = {}

-- Size: Ask Flags
coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.size = 2

-- Display: Ask Flags
coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused Order Flags 0 flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Unused Order Flags 0"
  end
  -- Is Post Only flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Post Only"
  end
  -- Is Post Only Reject flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Post Only Reject"
  end
  -- Is Market Limit flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Market Limit"
  end
  -- Is Mmp flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Mmp"
  end
  -- Is Reset Mmp flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Reset Mmp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Ask Flags
coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.bits = function(range, value, packet, parent)

  -- Unused Order Flags 0: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.unused_order_flags_0, range, value)

  -- Post Only: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only, range, value)

  -- Post Only Reject: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only_reject, range, value)

  -- Market Limit: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.market_limit, range, value)

  -- Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mmp, range, value)

  -- Reset Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_mmp, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_10, range, value)
end

-- Dissect: Ask Flags
coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.ask_flags, range, display)

  if show.ask_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Bid Flags
coinbase_deribit_ordersapi_sbe_v1_0.bid_flags = {}

-- Size: Bid Flags
coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.size = 2

-- Display: Bid Flags
coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused Order Flags 0 flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Unused Order Flags 0"
  end
  -- Is Post Only flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Post Only"
  end
  -- Is Post Only Reject flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Post Only Reject"
  end
  -- Is Market Limit flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Market Limit"
  end
  -- Is Mmp flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Mmp"
  end
  -- Is Reset Mmp flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Reset Mmp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bid Flags
coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.bits = function(range, value, packet, parent)

  -- Unused Order Flags 0: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.unused_order_flags_0, range, value)

  -- Post Only: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only, range, value)

  -- Post Only Reject: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only_reject, range, value)

  -- Market Limit: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.market_limit, range, value)

  -- Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mmp, range, value)

  -- Reset Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_mmp, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_10, range, value)
end

-- Dissect: Bid Flags
coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.bid_flags, range, display)

  if show.bid_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Quote Request Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group = {}

-- Size: Mass Quote Request Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.size =
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.size

-- Display: Mass Quote Request Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.fields = function(buffer, offset, packet, parent, mass_quote_request_message_quotes_group_index)
  local index = offset

  -- Implicit Mass Quote Request Message quotes Group Index
  if mass_quote_request_message_quotes_group_index ~= nil and show.mass_quote_request_message_quotes_group_index then
    local iteration = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message_quotes_group_index, mass_quote_request_message_quotes_group_index)
    iteration:set_generated()
  end

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Price Optional: Price9
  index, bid_price_optional = coinbase_deribit_ordersapi_sbe_v1_0.bid_price_optional.dissect(buffer, index, packet, parent)

  -- Ask Price Optional: Price9
  index, ask_price_optional = coinbase_deribit_ordersapi_sbe_v1_0.ask_price_optional.dissect(buffer, index, packet, parent)

  -- Bid Qty: Struct of 2 fields
  index, bid_qty = coinbase_deribit_ordersapi_sbe_v1_0.bid_qty.dissect(buffer, index, packet, parent)

  -- Ask Qty: Struct of 2 fields
  index, ask_qty = coinbase_deribit_ordersapi_sbe_v1_0.ask_qty.dissect(buffer, index, packet, parent)

  -- Bid Flags: Struct of 7 fields
  index, bid_flags = coinbase_deribit_ordersapi_sbe_v1_0.bid_flags.dissect(buffer, index, packet, parent)

  -- Ask Flags: Struct of 7 fields
  index, ask_flags = coinbase_deribit_ordersapi_sbe_v1_0.ask_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Request Message quotes Group
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.dissect = function(buffer, offset, packet, parent, mass_quote_request_message_quotes_group_index)
  if show.mass_quote_request_message_quotes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message_quotes_group, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.fields(buffer, offset, packet, parent, mass_quote_request_message_quotes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.fields(buffer, offset, packet, parent, mass_quote_request_message_quotes_group_index)
  end
end

-- Mass Quote Request Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups = {}

-- Calculate size of: Mass Quote Request Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_request_message_quotes_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_request_message_quotes_group_count * 46

  return index
end

-- Display: Mass Quote Request Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = coinbase_deribit_ordersapi_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Request Message quotes Group
  for mass_quote_request_message_quotes_group_index = 1, num_in_group do
    index, mass_quote_request_message_quotes_group = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_group.dissect(buffer, index, packet, parent, mass_quote_request_message_quotes_group_index)
  end

  return index
end

-- Dissect: Mass Quote Request Message quotes Groups
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_request_message_quotes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message_quotes_groups, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.fields(buffer, offset, packet, parent)
  end
end

-- Flags Mass Quote Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags = {}

-- Size: Flags Mass Quote Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.size = 1

-- Display: Flags Mass Quote Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Reset Mmp flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Reset Mmp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags Mass Quote Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.bits = function(range, value, packet, parent)

  -- Reset Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_mmp, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Flags Mass Quote Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_mass_quote_flags, range, display)

  if show.flags_mass_quote_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Quote Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message = {}

-- Calculate size of: Mass Quote Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.quote_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Id: ClientOrderId
  index, quote_id = coinbase_deribit_ordersapi_sbe_v1_0.quote_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Mmp Group Id: int64
  index, mmp_group_id = coinbase_deribit_ordersapi_sbe_v1_0.mmp_group_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64
  index, self_match_prevention_id = coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Flags Mass Quote Flags: Struct of 2 fields
  index, flags_mass_quote_flags = coinbase_deribit_ordersapi_sbe_v1_0.flags_mass_quote_flags.dissect(buffer, index, packet, parent)

  -- Mass Quote Request Message quotes Groups: Struct of 2 fields
  index, mass_quote_request_message_quotes_groups = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message_quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Request Message
coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mass_quote_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message = {}

-- Size: Cancel Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size

-- Display: Cancel Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.cancel_order_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags Replace Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags = {}

-- Size: Flags Replace Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.size = 2

-- Display: Flags Replace Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused Replace Order Flags 0 flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Unused Replace Order Flags 0"
  end
  -- Is Post Only flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Post Only"
  end
  -- Is Post Only Reject flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Post Only Reject"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags Replace Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.bits = function(range, value, packet, parent)

  -- Unused Replace Order Flags 0: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.unused_replace_order_flags_0, range, value)

  -- Post Only: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only, range, value)

  -- Post Only Reject: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only_reject, range, value)

  -- Reserved 13: 13 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_13, range, value)
end

-- Dissect: Flags Replace Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_replace_order_flags, range, display)

  if show.flags_replace_order_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Show Qty
coinbase_deribit_ordersapi_sbe_v1_0.show_qty = {}

-- Size: Show Qty
coinbase_deribit_ordersapi_sbe_v1_0.show_qty.size =
  coinbase_deribit_ordersapi_sbe_v1_0.mantissa.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.exponent.size

-- Display: Show Qty
coinbase_deribit_ordersapi_sbe_v1_0.show_qty.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Show Qty
coinbase_deribit_ordersapi_sbe_v1_0.show_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = coinbase_deribit_ordersapi_sbe_v1_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = coinbase_deribit_ordersapi_sbe_v1_0.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local show_qty = mantissa / factor( exponent )

  return index, show_qty
end

-- Dissect: Show Qty
coinbase_deribit_ordersapi_sbe_v1_0.show_qty.dissect = function(buffer, offset, packet, parent)
  if show.show_qty then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.show_qty, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.show_qty.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.show_qty.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.show_qty.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message = {}

-- Size: Amend Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.quantity.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.show_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.size

-- Display: Amend Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Struct of 2 fields
  index, quantity = coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Show Qty: Struct of 2 fields
  index, show_qty = coinbase_deribit_ordersapi_sbe_v1_0.show_qty.dissect(buffer, index, packet, parent)

  -- Flags Replace Order Flags: Struct of 4 fields
  index, flags_replace_order_flags = coinbase_deribit_ordersapi_sbe_v1_0.flags_replace_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.amend_order_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags = {}

-- Size: Flags Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.size = 2

-- Display: Flags Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused Order Flags 0 flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Unused Order Flags 0"
  end
  -- Is Post Only flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Post Only"
  end
  -- Is Post Only Reject flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Post Only Reject"
  end
  -- Is Market Limit flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Market Limit"
  end
  -- Is Mmp flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Mmp"
  end
  -- Is Reset Mmp flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Reset Mmp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.bits = function(range, value, packet, parent)

  -- Unused Order Flags 0: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.unused_order_flags_0, range, value)

  -- Post Only: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only, range, value)

  -- Post Only Reject: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.post_only_reject, range, value)

  -- Market Limit: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.market_limit, range, value)

  -- Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.mmp, range, value)

  -- Reset Mmp: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reset_mmp, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_10, range, value)
end

-- Dissect: Flags Order Flags
coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.flags_order_flags, range, display)

  if show.flags_order_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message = {}

-- Size: New Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.price.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.quantity.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.show_qty.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.side.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.size

-- Display: New Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_deribit_ordersapi_sbe_v1_0.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_deribit_ordersapi_sbe_v1_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9
  index, price = coinbase_deribit_ordersapi_sbe_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Struct of 2 fields
  index, quantity = coinbase_deribit_ordersapi_sbe_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Show Qty: Struct of 2 fields
  index, show_qty = coinbase_deribit_ordersapi_sbe_v1_0.show_qty.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64
  index, self_match_prevention_id = coinbase_deribit_ordersapi_sbe_v1_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_deribit_ordersapi_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Time In Force: int8
  index, time_in_force = coinbase_deribit_ordersapi_sbe_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Flags Order Flags: Struct of 7 fields
  index, flags_order_flags = coinbase_deribit_ordersapi_sbe_v1_0.flags_order_flags.dissect(buffer, index, packet, parent)

  -- Self Trading Mode: SelfTradingMode
  index, self_trading_mode = coinbase_deribit_ordersapi_sbe_v1_0.self_trading_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.new_order_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.reject_message = {}

-- Calculate size of: Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.reject_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.size

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.details.size(buffer, offset + index)

  return index
end

-- Display: Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Sequence Number: int64
  index, ref_sequence_number = coinbase_deribit_ordersapi_sbe_v1_0.ref_sequence_number.dissect(buffer, index, packet, parent)

  -- Reason Reject Reason: RejectReason
  index, reason_reject_reason = coinbase_deribit_ordersapi_sbe_v1_0.reason_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: Struct of 2 fields
  index, details = coinbase_deribit_ordersapi_sbe_v1_0.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
coinbase_deribit_ordersapi_sbe_v1_0.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reject_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Fill Message
coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message = {}

-- Size: Gap Fill Message
coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.size

-- Display: Gap Fill Message
coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Fill Message
coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Sequence Number: int64
  index, new_sequence_number = coinbase_deribit_ordersapi_sbe_v1_0.new_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Fill Message
coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.gap_fill_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.fields(buffer, offset, packet, parent)
  end
end

-- Resend Request Message
coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message = {}

-- Size: Resend Request Message
coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.size

-- Display: Resend Request Message
coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request Message
coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence Number: int64
  index, from_sequence_number = coinbase_deribit_ordersapi_sbe_v1_0.from_sequence_number.dissect(buffer, index, packet, parent)

  -- To Sequence Number: int64
  index, to_sequence_number = coinbase_deribit_ordersapi_sbe_v1_0.to_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.resend_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Request Message
coinbase_deribit_ordersapi_sbe_v1_0.test_request_message = {}

-- Size: Test Request Message
coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

-- Display: Test Request Message
coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Request Message
coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.test_request_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message = {}

-- Size: Heartbeat Message
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.size

-- Display: Heartbeat Message
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: int64
  index, correlation_id = coinbase_deribit_ordersapi_sbe_v1_0.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.heartbeat_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason = {}

-- Calculate size of: Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason_length.size

  local reason_length = buffer(offset + index - 1, 1):le_uint()

  if reason_length > 0 then
    -- Parse runtime size of: Reason Data
    index = index + buffer(offset + index - 1, 1):le_uint()

  end

  return index
end

-- Display: Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Length: uint8
  index, reason_length = coinbase_deribit_ordersapi_sbe_v1_0.reason_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Reason Data
  local reason_data = nil

  local reason_data_exists = reason_length > 0

  if reason_data_exists then

    -- Runtime Size Of: Reason Data
    index, reason_data = coinbase_deribit_ordersapi_sbe_v1_0.reason_data.dissect(buffer, index, packet, parent, reason_length)
  end

  -- Composite value
  local reason = reason_data

  return index, reason
end

-- Dissect: Reason
coinbase_deribit_ordersapi_sbe_v1_0.reason.dissect = function(buffer, offset, packet, parent)
  if show.reason then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reason, buffer(offset, 0))
    local index, value = coinbase_deribit_ordersapi_sbe_v1_0.reason.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.reason.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.reason.fields(buffer, offset, packet, parent)
  end
end

-- Logged Out Message
coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message = {}

-- Calculate size of: Logged Out Message
coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason.size(buffer, offset + index)

  return index
end

-- Display: Logged Out Message
coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logged Out Message
coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: Struct of 2 fields
  index, reason = coinbase_deribit_ordersapi_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logged Out Message
coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logged_out_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
coinbase_deribit_ordersapi_sbe_v1_0.logout_message = {}

-- Calculate size of: Logout Message
coinbase_deribit_ordersapi_sbe_v1_0.logout_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_deribit_ordersapi_sbe_v1_0.reason.size(buffer, offset + index)

  return index
end

-- Display: Logout Message
coinbase_deribit_ordersapi_sbe_v1_0.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
coinbase_deribit_ordersapi_sbe_v1_0.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: Struct of 2 fields
  index, reason = coinbase_deribit_ordersapi_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
coinbase_deribit_ordersapi_sbe_v1_0.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logout_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Conf Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message = {}

-- Size: Logon Conf Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.size

-- Display: Logon Conf Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Conf Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heartbeat Interval Seconds: int32
  index, heartbeat_interval_seconds = coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_interval_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Conf Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logon_conf_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_message = {}

-- Size: Logon Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_message.size =
  coinbase_deribit_ordersapi_sbe_v1_0.client_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.secret.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.size

-- Display: Logon Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Id: String16
  index, client_id = coinbase_deribit_ordersapi_sbe_v1_0.client_id.dissect(buffer, index, packet, parent)

  -- Secret: String48
  index, secret = coinbase_deribit_ordersapi_sbe_v1_0.secret.dissect(buffer, index, packet, parent)

  -- Reset Seq Num: Bool
  index, reset_seq_num = coinbase_deribit_ordersapi_sbe_v1_0.reset_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
coinbase_deribit_ordersapi_sbe_v1_0.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.logon_message, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
coinbase_deribit_ordersapi_sbe_v1_0.payload = {}

-- Dissect: Payload
coinbase_deribit_ordersapi_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Logon Message
  if template_id == 1 then
    return coinbase_deribit_ordersapi_sbe_v1_0.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Conf Message
  if template_id == 2 then
    return coinbase_deribit_ordersapi_sbe_v1_0.logon_conf_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 4 then
    return coinbase_deribit_ordersapi_sbe_v1_0.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logged Out Message
  if template_id == 5 then
    return coinbase_deribit_ordersapi_sbe_v1_0.logged_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 10 then
    return coinbase_deribit_ordersapi_sbe_v1_0.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if template_id == 11 then
    return coinbase_deribit_ordersapi_sbe_v1_0.test_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 20 then
    return coinbase_deribit_ordersapi_sbe_v1_0.resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill Message
  if template_id == 21 then
    return coinbase_deribit_ordersapi_sbe_v1_0.gap_fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 30 then
    return coinbase_deribit_ordersapi_sbe_v1_0.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Request Message
  if template_id == 100 then
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Order Request Message
  if template_id == 110 then
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request Message
  if template_id == 120 then
    return coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request Message
  if template_id == 130 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 140 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Cancel Request Message
  if template_id == 145 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if template_id == 200 then
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Reject Message
  if template_id == 202 then
    return coinbase_deribit_ordersapi_sbe_v1_0.new_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Order Response Message
  if template_id == 210 then
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Order Reject Message
  if template_id == 212 then
    return coinbase_deribit_ordersapi_sbe_v1_0.amend_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response Message
  if template_id == 220 then
    return coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Reject Message
  if template_id == 222 then
    return coinbase_deribit_ordersapi_sbe_v1_0.cancel_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Response Message
  if template_id == 230 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Reject Message
  if template_id == 232 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response Message
  if template_id == 240 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 242 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Filled Message
  if template_id == 300 then
    return coinbase_deribit_ordersapi_sbe_v1_0.order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orders Canceled Message
  if template_id == 310 then
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Placed Message
  if template_id == 312 then
    return coinbase_deribit_ordersapi_sbe_v1_0.order_placed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Orders Placed Message
  if template_id == 314 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_orders_placed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Mmp Triggered Message
  if template_id == 320 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_triggered_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orders Mmp Triggered Message
  if template_id == 322 then
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_triggered_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Mmp Unfrozen Message
  if template_id == 324 then
    return coinbase_deribit_ordersapi_sbe_v1_0.mass_quote_mmp_unfrozen_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orders Mmp Unfrozen Message
  if template_id == 326 then
    return coinbase_deribit_ordersapi_sbe_v1_0.orders_mmp_unfrozen_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Session Flags
coinbase_deribit_ordersapi_sbe_v1_0.session_flags = {}

-- Size: Session Flags
coinbase_deribit_ordersapi_sbe_v1_0.session_flags.size = 1

-- Display: Session Flags
coinbase_deribit_ordersapi_sbe_v1_0.session_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Resend flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Is Resend"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Session Flags
coinbase_deribit_ordersapi_sbe_v1_0.session_flags.bits = function(range, value, packet, parent)

  -- Is Resend: 1 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.is_resend, range, value)

  -- Reserved Bits: 7 Bit
  parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.reserved_bits, range, value)
end

-- Dissect: Session Flags
coinbase_deribit_ordersapi_sbe_v1_0.session_flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_deribit_ordersapi_sbe_v1_0.session_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_deribit_ordersapi_sbe_v1_0.session_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.session_flags, range, display)

  if show.session_flags then
    coinbase_deribit_ordersapi_sbe_v1_0.session_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Message Header
coinbase_deribit_ordersapi_sbe_v1_0.message_header = {}

-- Size: Message Header
coinbase_deribit_ordersapi_sbe_v1_0.message_header.size =
  coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.session_flags.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.message_length.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.template_id.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.schema_version.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.size + 
  coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.size

-- Display: Message Header
coinbase_deribit_ordersapi_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
coinbase_deribit_ordersapi_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: uint8
  index, protocol_id = coinbase_deribit_ordersapi_sbe_v1_0.protocol_id.dissect(buffer, index, packet, parent)

  -- Session Flags: Struct of 2 fields
  index, session_flags = coinbase_deribit_ordersapi_sbe_v1_0.session_flags.dissect(buffer, index, packet, parent)

  -- Message Length: uint16
  index, message_length = coinbase_deribit_ordersapi_sbe_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = coinbase_deribit_ordersapi_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Version: uint16
  index, schema_version = coinbase_deribit_ordersapi_sbe_v1_0.schema_version.dissect(buffer, index, packet, parent)

  -- Sequence Number: int64
  index, sequence_number = coinbase_deribit_ordersapi_sbe_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Last Processed Seq No: int64
  index, last_processed_seq_no = coinbase_deribit_ordersapi_sbe_v1_0.last_processed_seq_no.dissect(buffer, index, packet, parent)

  -- Send Time Ns: int64
  index, send_time_ns = coinbase_deribit_ordersapi_sbe_v1_0.send_time_ns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_deribit_ordersapi_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = coinbase_deribit_ordersapi_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_deribit_ordersapi_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
coinbase_deribit_ordersapi_sbe_v1_0.sbe_message = {}

-- Display: Sbe Message
coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 8 fields
  index, message_header = coinbase_deribit_ordersapi_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 28, 2):le_uint()

  -- Payload: Runtime Type with 33 branches
  index = coinbase_deribit_ordersapi_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  -- Dependency element: Message Length
  local message_length = buffer(offset + 2, 2):le_uint()

  -- Runtime optional field: Padding
  local padding = nil

  local padding_exists = message_length - (index - offset) > 0

  if padding_exists then

    -- Runtime Size Of: Padding
    local size_of_padding = message_length - (index - offset)

    -- Padding: 0 Byte
    index, padding = coinbase_deribit_ordersapi_sbe_v1_0.padding.dissect(buffer, index, packet, parent, size_of_padding)
  end

  return index
end

-- Dissect: Sbe Message
coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local current = coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < coinbase_deribit_ordersapi_sbe_v1_0.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 2, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
coinbase_deribit_ordersapi_sbe_v1_0.packet = {}

-- Verify required size of Tcp packet
coinbase_deribit_ordersapi_sbe_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= coinbase_deribit_ordersapi_sbe_v1_0.message_header.size
end

-- Dissect Packet
coinbase_deribit_ordersapi_sbe_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = coinbase_deribit_ordersapi_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
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
function omi_coinbase_deribit_ordersapi_sbe_v1_0.init()
end

-- Dissector for Coinbase Deribit OrdersApi Sbe 1.0
function omi_coinbase_deribit_ordersapi_sbe_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_coinbase_deribit_ordersapi_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_coinbase_deribit_ordersapi_sbe_v1_0, buffer(), omi_coinbase_deribit_ordersapi_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return coinbase_deribit_ordersapi_sbe_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Coinbase Deribit OrdersApi Sbe 1.0 (Tcp)
local function omi_coinbase_deribit_ordersapi_sbe_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not coinbase_deribit_ordersapi_sbe_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_coinbase_deribit_ordersapi_sbe_v1_0
  omi_coinbase_deribit_ordersapi_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Deribit OrdersApi Sbe 1.0
omi_coinbase_deribit_ordersapi_sbe_v1_0:register_heuristic("tcp", omi_coinbase_deribit_ordersapi_sbe_v1_0_tcp_heuristic)

-- Register Coinbase Deribit OrdersApi Sbe 1.0 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_coinbase_deribit_ordersapi_sbe_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.0
--   Date: Friday, September 5, 2025
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
