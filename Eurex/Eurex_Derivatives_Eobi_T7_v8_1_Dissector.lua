-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 8.1 Protocol
local omi_eurex_derivatives_eobi_t7_v8_1 = Proto("Eurex.Derivatives.Eobi.T7.v8.1.Lua", "Eurex Derivatives Eobi T7 8.1")

-- Protocol table
local eurex_derivatives_eobi_t7_v8_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 8.1 Fields
omi_eurex_derivatives_eobi_t7_v8_1.fields.aggressor_side = ProtoField.new("Aggressor Side", "eurex.derivatives.eobi.t7.v8.1.aggressorside", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.aggressor_time = ProtoField.new("Aggressor Time", "eurex.derivatives.eobi.t7.v8.1.aggressortime", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "eurex.derivatives.eobi.t7.v8.1.algorithmictradeindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.derivatives.eobi.t7.v8.1.applseqnum", ftypes.UINT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.appl_seq_reset_indicator = ProtoField.new("Appl Seq Reset Indicator", "eurex.derivatives.eobi.t7.v8.1.applseqresetindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.bid_ord_type = ProtoField.new("Bid Ord Type", "eurex.derivatives.eobi.t7.v8.1.bidordtype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.bid_px = ProtoField.new("Bid Px", "eurex.derivatives.eobi.t7.v8.1.bidpx", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.bid_size = ProtoField.new("Bid Size", "eurex.derivatives.eobi.t7.v8.1.bidsize", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.eobi.t7.v8.1.bodylen", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.completion_indicator = ProtoField.new("Completion Indicator", "eurex.derivatives.eobi.t7.v8.1.completionindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.cross_request_type = ProtoField.new("Cross Request Type", "eurex.derivatives.eobi.t7.v8.1.crossrequesttype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.display_qty = ProtoField.new("Display Qty", "eurex.derivatives.eobi.t7.v8.1.displayqty", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.eobi.t7.v8.1.execid", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.derivatives.eobi.t7.v8.1.fastmarketindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.header_length = ProtoField.new("Header Length", "eurex.derivatives.eobi.t7.v8.1.headerlength", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "eurex.derivatives.eobi.t7.v8.1.imbalanceqty", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.derivatives.eobi.t7.v8.1.impliedmarketindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.input_source = ProtoField.new("Input Source", "eurex.derivatives.eobi.t7.v8.1.inputsource", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.instrmt_leg_grp_comp = ProtoField.new("Instrmt Leg Grp Comp", "eurex.derivatives.eobi.t7.v8.1.instrmtleggrpcomp", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.instrument_scope_product_complex = ProtoField.new("Instrument Scope Product Complex", "eurex.derivatives.eobi.t7.v8.1.instrumentscopeproductcomplex", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.derivatives.eobi.t7.v8.1.lastfragment", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.derivatives.eobi.t7.v8.1.lastmsgseqnumprocessed", ftypes.UINT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.last_px = ProtoField.new("Last Px", "eurex.derivatives.eobi.t7.v8.1.lastpx", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.last_qty = ProtoField.new("Last Qty", "eurex.derivatives.eobi.t7.v8.1.lastqty", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.derivatives.eobi.t7.v8.1.lastupdatetime", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_price = ProtoField.new("Leg Price", "eurex.derivatives.eobi.t7.v8.1.legprice", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.derivatives.eobi.t7.v8.1.legratioqty", ftypes.INT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.derivatives.eobi.t7.v8.1.legsecurityid", ftypes.INT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.derivatives.eobi.t7.v8.1.legsecuritytype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_side = ProtoField.new("Leg Side", "eurex.derivatives.eobi.t7.v8.1.legside", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.derivatives.eobi.t7.v8.1.legsymbol", ftypes.INT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.market_condition = ProtoField.new("Market Condition", "eurex.derivatives.eobi.t7.v8.1.marketcondition", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.eobi.t7.v8.1.marketsegmentid", ftypes.INT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.mass_market_condition = ProtoField.new("Mass Market Condition", "eurex.derivatives.eobi.t7.v8.1.massmarketcondition", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.mass_sold_out_indicator = ProtoField.new("Mass Sold Out Indicator", "eurex.derivatives.eobi.t7.v8.1.masssoldoutindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.derivatives.eobi.t7.v8.1.matchsubtype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.eobi.t7.v8.1.matchtype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "eurex.derivatives.eobi.t7.v8.1.mdentrypx", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "eurex.derivatives.eobi.t7.v8.1.mdentrysize", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "eurex.derivatives.eobi.t7.v8.1.mdentrytype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_instrument_entry_grp_comp = ProtoField.new("Md Instrument Entry Grp Comp", "eurex.derivatives.eobi.t7.v8.1.mdinstrumententrygrpcomp", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_trade_entry_grp_comp = ProtoField.new("Md Trade Entry Grp Comp", "eurex.derivatives.eobi.t7.v8.1.mdtradeentrygrpcomp", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.message = ProtoField.new("Message", "eurex.derivatives.eobi.t7.v8.1.message", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.message_header_comp = ProtoField.new("Message Header Comp", "eurex.derivatives.eobi.t7.v8.1.messageheadercomp", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.eobi.t7.v8.1.msgseqnum", ftypes.UINT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.no_legs = ProtoField.new("No Legs", "eurex.derivatives.eobi.t7.v8.1.nolegs", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.no_md_entries = ProtoField.new("No Md Entries", "eurex.derivatives.eobi.t7.v8.1.nomdentries", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.no_related_sym = ProtoField.new("No Related Sym", "eurex.derivatives.eobi.t7.v8.1.norelatedsym", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.offer_ord_type = ProtoField.new("Offer Ord Type", "eurex.derivatives.eobi.t7.v8.1.offerordtype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.offer_px = ProtoField.new("Offer Px", "eurex.derivatives.eobi.t7.v8.1.offerpx", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.offer_size = ProtoField.new("Offer Size", "eurex.derivatives.eobi.t7.v8.1.offersize", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.eobi.t7.v8.1.ordtype", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.order_details_comp = ProtoField.new("Order Details Comp", "eurex.derivatives.eobi.t7.v8.1.orderdetailscomp", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.packet = ProtoField.new("Packet", "eurex.derivatives.eobi.t7.v8.1.packet", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_header = ProtoField.new("Packet Header", "eurex.derivatives.eobi.t7.v8.1.packetheader", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_id = ProtoField.new("Packet Id", "eurex.derivatives.eobi.t7.v8.1.packetid", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_info = ProtoField.new("Packet Info", "eurex.derivatives.eobi.t7.v8.1.packetinfo", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "eurex.derivatives.eobi.t7.v8.1.packetsequencenumber", ftypes.UINT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_1 = ProtoField.new("Pad 1", "eurex.derivatives.eobi.t7.v8.1.pad1", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.eobi.t7.v8.1.pad2", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.eobi.t7.v8.1.pad3", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.eobi.t7.v8.1.pad4", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_5 = ProtoField.new("Pad 5", "eurex.derivatives.eobi.t7.v8.1.pad5", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.eobi.t7.v8.1.pad6", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.eobi.t7.v8.1.pad7", ftypes.BYTES)
omi_eurex_derivatives_eobi_t7_v8_1.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.eobi.t7.v8.1.partitionid", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.payload = ProtoField.new("Payload", "eurex.derivatives.eobi.t7.v8.1.payload", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.potential_security_trading_event = ProtoField.new("Potential Security Trading Event", "eurex.derivatives.eobi.t7.v8.1.potentialsecuritytradingevent", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "eurex.derivatives.eobi.t7.v8.1.prevdisplayqty", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.prev_price = ProtoField.new("Prev Price", "eurex.derivatives.eobi.t7.v8.1.prevprice", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.price = ProtoField.new("Price", "eurex.derivatives.eobi.t7.v8.1.price", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.eobi.t7.v8.1.productcomplex", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.eobi.t7.v8.1.requesttime", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.resting_cxl_qty = ProtoField.new("Resting Cxl Qty", "eurex.derivatives.eobi.t7.v8.1.restingcxlqty", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "eurex.derivatives.eobi.t7.v8.1.restinghiddenqty", ftypes.DOUBLE)
omi_eurex_derivatives_eobi_t7_v8_1.fields.sec_mass_stat_grp_comp = ProtoField.new("Sec Mass Stat Grp Comp", "eurex.derivatives.eobi.t7.v8.1.secmassstatgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.eobi.t7.v8.1.securityid", ftypes.INT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_mass_status = ProtoField.new("Security Mass Status", "eurex.derivatives.eobi.t7.v8.1.securitymassstatus", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_mass_trading_event = ProtoField.new("Security Mass Trading Event", "eurex.derivatives.eobi.t7.v8.1.securitymasstradingevent", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_mass_trading_status = ProtoField.new("Security Mass Trading Status", "eurex.derivatives.eobi.t7.v8.1.securitymasstradingstatus", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_status = ProtoField.new("Security Status", "eurex.derivatives.eobi.t7.v8.1.securitystatus", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.derivatives.eobi.t7.v8.1.securitysubtype", ftypes.INT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_trading_event = ProtoField.new("Security Trading Event", "eurex.derivatives.eobi.t7.v8.1.securitytradingevent", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "eurex.derivatives.eobi.t7.v8.1.securitytradingstatus", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.side = ProtoField.new("Side", "eurex.derivatives.eobi.t7.v8.1.side", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.sold_out_indicator = ProtoField.new("Sold Out Indicator", "eurex.derivatives.eobi.t7.v8.1.soldoutindicator", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.eobi.t7.v8.1.templateid", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.tot_no_orders = ProtoField.new("Tot No Orders", "eurex.derivatives.eobi.t7.v8.1.totnoorders", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "eurex.derivatives.eobi.t7.v8.1.tradsesstatus", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trade_condition = ProtoField.new("Trade Condition", "eurex.derivatives.eobi.t7.v8.1.tradecondition", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trading_session_id = ProtoField.new("Trading Session Id", "eurex.derivatives.eobi.t7.v8.1.tradingsessionid", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.eobi.t7.v8.1.tradingsessionsubid", ftypes.UINT8)
omi_eurex_derivatives_eobi_t7_v8_1.fields.transact_time = ProtoField.new("Transact Time", "eurex.derivatives.eobi.t7.v8.1.transacttime", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.derivatives.eobi.t7.v8.1.trdmatchid", ftypes.UINT32)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "eurex.derivatives.eobi.t7.v8.1.trdregtsexecutiontime", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg Ts Prev Time Priority", "eurex.derivatives.eobi.t7.v8.1.trdregtsprevtimepriority", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "eurex.derivatives.eobi.t7.v8.1.trdregtstimein", ftypes.UINT64)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.derivatives.eobi.t7.v8.1.trdregtstimepriority", ftypes.UINT64)

-- Eurex Derivatives Eobi T7 8.1 messages
omi_eurex_derivatives_eobi_t7_v8_1.fields.add_complex_instrument = ProtoField.new("Add Complex Instrument", "eurex.derivatives.eobi.t7.v8.1.addcomplexinstrument", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.auction_bbo = ProtoField.new("Auction Bbo", "eurex.derivatives.eobi.t7.v8.1.auctionbbo", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.auction_clearing_price = ProtoField.new("Auction Clearing Price", "eurex.derivatives.eobi.t7.v8.1.auctionclearingprice", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.cross_request = ProtoField.new("Cross Request", "eurex.derivatives.eobi.t7.v8.1.crossrequest", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.execution_summary = ProtoField.new("Execution Summary", "eurex.derivatives.eobi.t7.v8.1.executionsummary", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.full_order_execution = ProtoField.new("Full Order Execution", "eurex.derivatives.eobi.t7.v8.1.fullorderexecution", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.eobi.t7.v8.1.heartbeat", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.instrument_state_change = ProtoField.new("Instrument State Change", "eurex.derivatives.eobi.t7.v8.1.instrumentstatechange", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.instrument_summary = ProtoField.new("Instrument Summary", "eurex.derivatives.eobi.t7.v8.1.instrumentsummary", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.mass_instrument_state_change = ProtoField.new("Mass Instrument State Change", "eurex.derivatives.eobi.t7.v8.1.massinstrumentstatechange", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.order_add = ProtoField.new("Order Add", "eurex.derivatives.eobi.t7.v8.1.orderadd", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.order_delete = ProtoField.new("Order Delete", "eurex.derivatives.eobi.t7.v8.1.orderdelete", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.order_mass_delete = ProtoField.new("Order Mass Delete", "eurex.derivatives.eobi.t7.v8.1.ordermassdelete", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.order_modify = ProtoField.new("Order Modify", "eurex.derivatives.eobi.t7.v8.1.ordermodify", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.order_modify_same_prio = ProtoField.new("Order Modify Same Prio", "eurex.derivatives.eobi.t7.v8.1.ordermodifysameprio", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.partial_order_execution = ProtoField.new("Partial Order Execution", "eurex.derivatives.eobi.t7.v8.1.partialorderexecution", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.product_state_change = ProtoField.new("Product State Change", "eurex.derivatives.eobi.t7.v8.1.productstatechange", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.product_summary = ProtoField.new("Product Summary", "eurex.derivatives.eobi.t7.v8.1.productsummary", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.quote_request = ProtoField.new("Quote Request", "eurex.derivatives.eobi.t7.v8.1.quoterequest", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.snapshot_order = ProtoField.new("Snapshot Order", "eurex.derivatives.eobi.t7.v8.1.snapshotorder", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.top_of_book = ProtoField.new("Top Of Book", "eurex.derivatives.eobi.t7.v8.1.topofbook", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trade_report = ProtoField.new("Trade Report", "eurex.derivatives.eobi.t7.v8.1.tradereport", ftypes.STRING)
omi_eurex_derivatives_eobi_t7_v8_1.fields.trade_reversal = ProtoField.new("Trade Reversal", "eurex.derivatives.eobi.t7.v8.1.tradereversal", ftypes.STRING)

-- Eurex Derivatives Eobi T7 8.1 generated fields
omi_eurex_derivatives_eobi_t7_v8_1.fields.instrmt_leg_grp_comp_index = ProtoField.new("Instrmt Leg Grp Comp Index", "eurex.derivatives.eobi.t7.v8.1.instrmtleggrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_instrument_entry_grp_comp_index = ProtoField.new("Md Instrument Entry Grp Comp Index", "eurex.derivatives.eobi.t7.v8.1.mdinstrumententrygrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.md_trade_entry_grp_comp_index = ProtoField.new("Md Trade Entry Grp Comp Index", "eurex.derivatives.eobi.t7.v8.1.mdtradeentrygrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eobi_t7_v8_1.fields.sec_mass_stat_grp_comp_index = ProtoField.new("Sec Mass Stat Grp Comp Index", "eurex.derivatives.eobi.t7.v8.1.secmassstatgrpcompindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Eurex Derivatives Eobi T7 8.1 Element Dissection Options
show.add_complex_instrument = true
show.auction_bbo = true
show.auction_clearing_price = true
show.cross_request = true
show.execution_summary = true
show.full_order_execution = true
show.heartbeat = true
show.instrmt_leg_grp_comp = true
show.instrument_state_change = true
show.instrument_summary = true
show.mass_instrument_state_change = true
show.md_instrument_entry_grp_comp = true
show.md_trade_entry_grp_comp = true
show.message = true
show.message_header_comp = true
show.order_add = true
show.order_delete = true
show.order_details_comp = true
show.order_mass_delete = true
show.order_modify = true
show.order_modify_same_prio = true
show.packet = true
show.packet_header = true
show.packet_info = true
show.partial_order_execution = true
show.product_state_change = true
show.product_summary = true
show.quote_request = true
show.sec_mass_stat_grp_comp = true
show.snapshot_order = true
show.top_of_book = true
show.trade_report = true
show.trade_reversal = true
show.payload = false

-- Register Eurex Derivatives Eobi T7 8.1 Show Options
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_add_complex_instrument = Pref.bool("Show Add Complex Instrument", show.add_complex_instrument, "Parse and add Add Complex Instrument to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_auction_bbo = Pref.bool("Show Auction Bbo", show.auction_bbo, "Parse and add Auction Bbo to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_auction_clearing_price = Pref.bool("Show Auction Clearing Price", show.auction_clearing_price, "Parse and add Auction Clearing Price to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_execution_summary = Pref.bool("Show Execution Summary", show.execution_summary, "Parse and add Execution Summary to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_full_order_execution = Pref.bool("Show Full Order Execution", show.full_order_execution, "Parse and add Full Order Execution to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrmt_leg_grp_comp = Pref.bool("Show Instrmt Leg Grp Comp", show.instrmt_leg_grp_comp, "Parse and add Instrmt Leg Grp Comp to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrument_state_change = Pref.bool("Show Instrument State Change", show.instrument_state_change, "Parse and add Instrument State Change to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrument_summary = Pref.bool("Show Instrument Summary", show.instrument_summary, "Parse and add Instrument Summary to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_mass_instrument_state_change = Pref.bool("Show Mass Instrument State Change", show.mass_instrument_state_change, "Parse and add Mass Instrument State Change to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_md_instrument_entry_grp_comp = Pref.bool("Show Md Instrument Entry Grp Comp", show.md_instrument_entry_grp_comp, "Parse and add Md Instrument Entry Grp Comp to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_md_trade_entry_grp_comp = Pref.bool("Show Md Trade Entry Grp Comp", show.md_trade_entry_grp_comp, "Parse and add Md Trade Entry Grp Comp to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_message_header_comp = Pref.bool("Show Message Header Comp", show.message_header_comp, "Parse and add Message Header Comp to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_add = Pref.bool("Show Order Add", show.order_add, "Parse and add Order Add to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_delete = Pref.bool("Show Order Delete", show.order_delete, "Parse and add Order Delete to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_details_comp = Pref.bool("Show Order Details Comp", show.order_details_comp, "Parse and add Order Details Comp to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_mass_delete = Pref.bool("Show Order Mass Delete", show.order_mass_delete, "Parse and add Order Mass Delete to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_modify = Pref.bool("Show Order Modify", show.order_modify, "Parse and add Order Modify to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_modify_same_prio = Pref.bool("Show Order Modify Same Prio", show.order_modify_same_prio, "Parse and add Order Modify Same Prio to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet_info = Pref.bool("Show Packet Info", show.packet_info, "Parse and add Packet Info to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_partial_order_execution = Pref.bool("Show Partial Order Execution", show.partial_order_execution, "Parse and add Partial Order Execution to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_product_state_change = Pref.bool("Show Product State Change", show.product_state_change, "Parse and add Product State Change to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_product_summary = Pref.bool("Show Product Summary", show.product_summary, "Parse and add Product Summary to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_sec_mass_stat_grp_comp = Pref.bool("Show Sec Mass Stat Grp Comp", show.sec_mass_stat_grp_comp, "Parse and add Sec Mass Stat Grp Comp to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_snapshot_order = Pref.bool("Show Snapshot Order", show.snapshot_order, "Parse and add Snapshot Order to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_top_of_book = Pref.bool("Show Top Of Book", show.top_of_book, "Parse and add Top Of Book to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_trade_report = Pref.bool("Show Trade Report", show.trade_report, "Parse and add Trade Report to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_trade_reversal = Pref.bool("Show Trade Reversal", show.trade_reversal, "Parse and add Trade Reversal to protocol tree")
omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_eurex_derivatives_eobi_t7_v8_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_complex_instrument ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_add_complex_instrument then
    show.add_complex_instrument = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_add_complex_instrument
    changed = true
  end
  if show.auction_bbo ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_auction_bbo then
    show.auction_bbo = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_auction_bbo
    changed = true
  end
  if show.auction_clearing_price ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_auction_clearing_price then
    show.auction_clearing_price = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_auction_clearing_price
    changed = true
  end
  if show.cross_request ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_cross_request then
    show.cross_request = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_cross_request
    changed = true
  end
  if show.execution_summary ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_execution_summary then
    show.execution_summary = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_execution_summary
    changed = true
  end
  if show.full_order_execution ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_full_order_execution then
    show.full_order_execution = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_full_order_execution
    changed = true
  end
  if show.heartbeat ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_heartbeat then
    show.heartbeat = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_heartbeat
    changed = true
  end
  if show.instrmt_leg_grp_comp ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrmt_leg_grp_comp then
    show.instrmt_leg_grp_comp = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrmt_leg_grp_comp
    changed = true
  end
  if show.instrument_state_change ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrument_state_change then
    show.instrument_state_change = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrument_state_change
    changed = true
  end
  if show.instrument_summary ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrument_summary then
    show.instrument_summary = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_instrument_summary
    changed = true
  end
  if show.mass_instrument_state_change ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_mass_instrument_state_change then
    show.mass_instrument_state_change = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_mass_instrument_state_change
    changed = true
  end
  if show.md_instrument_entry_grp_comp ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_md_instrument_entry_grp_comp then
    show.md_instrument_entry_grp_comp = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_md_instrument_entry_grp_comp
    changed = true
  end
  if show.md_trade_entry_grp_comp ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_md_trade_entry_grp_comp then
    show.md_trade_entry_grp_comp = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_md_trade_entry_grp_comp
    changed = true
  end
  if show.message ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_message then
    show.message = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_message
    changed = true
  end
  if show.message_header_comp ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_message_header_comp then
    show.message_header_comp = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_message_header_comp
    changed = true
  end
  if show.order_add ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_add then
    show.order_add = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_add
    changed = true
  end
  if show.order_delete ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_delete then
    show.order_delete = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_delete
    changed = true
  end
  if show.order_details_comp ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_details_comp then
    show.order_details_comp = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_details_comp
    changed = true
  end
  if show.order_mass_delete ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_mass_delete then
    show.order_mass_delete = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_mass_delete
    changed = true
  end
  if show.order_modify ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_modify then
    show.order_modify = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_modify
    changed = true
  end
  if show.order_modify_same_prio ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_modify_same_prio then
    show.order_modify_same_prio = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_order_modify_same_prio
    changed = true
  end
  if show.packet ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet then
    show.packet = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet_header then
    show.packet_header = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet_header
    changed = true
  end
  if show.packet_info ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet_info then
    show.packet_info = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_packet_info
    changed = true
  end
  if show.partial_order_execution ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_partial_order_execution then
    show.partial_order_execution = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_partial_order_execution
    changed = true
  end
  if show.product_state_change ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_product_state_change then
    show.product_state_change = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_product_state_change
    changed = true
  end
  if show.product_summary ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_product_summary then
    show.product_summary = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_product_summary
    changed = true
  end
  if show.quote_request ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_quote_request then
    show.quote_request = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_quote_request
    changed = true
  end
  if show.sec_mass_stat_grp_comp ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_sec_mass_stat_grp_comp then
    show.sec_mass_stat_grp_comp = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_sec_mass_stat_grp_comp
    changed = true
  end
  if show.snapshot_order ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_snapshot_order then
    show.snapshot_order = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_snapshot_order
    changed = true
  end
  if show.top_of_book ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_top_of_book then
    show.top_of_book = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_top_of_book
    changed = true
  end
  if show.trade_report ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_trade_report then
    show.trade_report = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_trade_report
    changed = true
  end
  if show.trade_reversal ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_trade_reversal then
    show.trade_reversal = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_trade_reversal
    changed = true
  end
  if show.payload ~= omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_payload then
    show.payload = omi_eurex_derivatives_eobi_t7_v8_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Eurex Derivatives Eobi T7 8.1
-----------------------------------------------------------------------

-- Pad 7
eurex_derivatives_eobi_t7_v8_1.pad_7 = {}

-- Size: Pad 7
eurex_derivatives_eobi_t7_v8_1.pad_7.size = 7

-- Display: Pad 7
eurex_derivatives_eobi_t7_v8_1.pad_7.display = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
eurex_derivatives_eobi_t7_v8_1.pad_7.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Md Entry Type
eurex_derivatives_eobi_t7_v8_1.md_entry_type = {}

-- Size: Md Entry Type
eurex_derivatives_eobi_t7_v8_1.md_entry_type.size = 1

-- Display: Md Entry Type
eurex_derivatives_eobi_t7_v8_1.md_entry_type.display = function(value)
  if value == 2 then
    return "Md Entry Type: Trade (2)"
  end
  if value == 4 then
    return "Md Entry Type: Opening Price (4)"
  end
  if value == 5 then
    return "Md Entry Type: Closing Price (5)"
  end
  if value == 7 then
    return "Md Entry Type: High Price (7)"
  end
  if value == 8 then
    return "Md Entry Type: Low Price (8)"
  end
  if value == 66 then
    return "Md Entry Type: Trade Volume (66)"
  end
  if value == 101 then
    return "Md Entry Type: Previous Closing Price (101)"
  end
  if value == 200 then
    return "Md Entry Type: Opening Auction (200)"
  end
  if value == 201 then
    return "Md Entry Type: Intraday Auction (201)"
  end
  if value == 202 then
    return "Md Entry Type: Circuit Breaker Auction (202)"
  end
  if value == 203 then
    return "Md Entry Type: Closing Auction (203)"
  end
  if value == 204 then
    return "Md Entry Type: Ipo Auction (204)"
  end
  if value == 0xFF then
    return "Md Entry Type: No Value"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
eurex_derivatives_eobi_t7_v8_1.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Entry Size
eurex_derivatives_eobi_t7_v8_1.md_entry_size = {}

-- Size: Md Entry Size
eurex_derivatives_eobi_t7_v8_1.md_entry_size.size = 8

-- Display: Md Entry Size
eurex_derivatives_eobi_t7_v8_1.md_entry_size.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Translate: Md Entry Size
eurex_derivatives_eobi_t7_v8_1.md_entry_size.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Md Entry Size
eurex_derivatives_eobi_t7_v8_1.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.md_entry_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.md_entry_size.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.md_entry_size.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Px
eurex_derivatives_eobi_t7_v8_1.md_entry_px = {}

-- Size: Md Entry Px
eurex_derivatives_eobi_t7_v8_1.md_entry_px.size = 8

-- Display: Md Entry Px
eurex_derivatives_eobi_t7_v8_1.md_entry_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
eurex_derivatives_eobi_t7_v8_1.md_entry_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Md Entry Px
eurex_derivatives_eobi_t7_v8_1.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.md_entry_px.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.md_entry_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp = {}

-- Size: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.size =
  eurex_derivatives_eobi_t7_v8_1.md_entry_px.size + 
  eurex_derivatives_eobi_t7_v8_1.md_entry_size.size + 
  eurex_derivatives_eobi_t7_v8_1.md_entry_type.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_7.size

-- Display: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.fields = function(buffer, offset, packet, parent, md_trade_entry_grp_comp_index)
  local index = offset

  -- Implicit Md Trade Entry Grp Comp Index
  if md_trade_entry_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_trade_entry_grp_comp_index, md_trade_entry_grp_comp_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_px = eurex_derivatives_eobi_t7_v8_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = eurex_derivatives_eobi_t7_v8_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, md_entry_type = eurex_derivatives_eobi_t7_v8_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v8_1.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.dissect = function(buffer, offset, packet, parent, md_trade_entry_grp_comp_index)
  if show.md_trade_entry_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_trade_entry_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.fields(buffer, offset, packet, parent, md_trade_entry_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.fields(buffer, offset, packet, parent, md_trade_entry_grp_comp_index)
  end
end

-- No Md Entries
eurex_derivatives_eobi_t7_v8_1.no_md_entries = {}

-- Size: No Md Entries
eurex_derivatives_eobi_t7_v8_1.no_md_entries.size = 1

-- Display: No Md Entries
eurex_derivatives_eobi_t7_v8_1.no_md_entries.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Md Entries: No Value"
  end

  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
eurex_derivatives_eobi_t7_v8_1.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- Pad 2
eurex_derivatives_eobi_t7_v8_1.pad_2 = {}

-- Size: Pad 2
eurex_derivatives_eobi_t7_v8_1.pad_2.size = 2

-- Display: Pad 2
eurex_derivatives_eobi_t7_v8_1.pad_2.display = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
eurex_derivatives_eobi_t7_v8_1.pad_2.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Trade Condition
eurex_derivatives_eobi_t7_v8_1.trade_condition = {}

-- Size: Trade Condition
eurex_derivatives_eobi_t7_v8_1.trade_condition.size = 2

-- Display: Trade Condition
eurex_derivatives_eobi_t7_v8_1.trade_condition.display = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end
  if value == 107 then
    return "Trade Condition: Out Of Sequence (107)"
  end
  if value == 153 then
    return "Trade Condition: Systematic Internalizer (153)"
  end
  if value == 155 then
    return "Trade Condition: Midpoint Price (155)"
  end
  if value == 156 then
    return "Trade Condition: Trading On Terms Of Issue (156)"
  end
  if value == 596 then
    return "Trade Condition: Special Auction (596)"
  end
  if value == 0xFFFF then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
eurex_derivatives_eobi_t7_v8_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trade_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trd Match Id
eurex_derivatives_eobi_t7_v8_1.trd_match_id = {}

-- Size: Trd Match Id
eurex_derivatives_eobi_t7_v8_1.trd_match_id.size = 4

-- Display: Trd Match Id
eurex_derivatives_eobi_t7_v8_1.trd_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trd Match Id: No Value"
  end

  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
eurex_derivatives_eobi_t7_v8_1.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time = {}

-- Size: Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.size = 8

-- Display: Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Execution Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Execution Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length, value
end

-- Last Px
eurex_derivatives_eobi_t7_v8_1.last_px = {}

-- Size: Last Px
eurex_derivatives_eobi_t7_v8_1.last_px.size = 8

-- Display: Last Px
eurex_derivatives_eobi_t7_v8_1.last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Translate: Last Px
eurex_derivatives_eobi_t7_v8_1.last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Last Px
eurex_derivatives_eobi_t7_v8_1.last_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.last_px.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
eurex_derivatives_eobi_t7_v8_1.last_qty = {}

-- Size: Last Qty
eurex_derivatives_eobi_t7_v8_1.last_qty.size = 8

-- Display: Last Qty
eurex_derivatives_eobi_t7_v8_1.last_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Translate: Last Qty
eurex_derivatives_eobi_t7_v8_1.last_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Last Qty
eurex_derivatives_eobi_t7_v8_1.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.last_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.last_qty.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.last_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Transact Time
eurex_derivatives_eobi_t7_v8_1.transact_time = {}

-- Size: Transact Time
eurex_derivatives_eobi_t7_v8_1.transact_time.size = 8

-- Display: Transact Time
eurex_derivatives_eobi_t7_v8_1.transact_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Transact Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
eurex_derivatives_eobi_t7_v8_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Security Id
eurex_derivatives_eobi_t7_v8_1.security_id = {}

-- Size: Security Id
eurex_derivatives_eobi_t7_v8_1.security_id.size = 8

-- Display: Security Id
eurex_derivatives_eobi_t7_v8_1.security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
eurex_derivatives_eobi_t7_v8_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eobi_t7_v8_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Trade Reversal
eurex_derivatives_eobi_t7_v8_1.trade_reversal = {}

-- Calculate size of: Trade Reversal
eurex_derivatives_eobi_t7_v8_1.trade_reversal.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v8_1.security_id.size

  index = index + eurex_derivatives_eobi_t7_v8_1.transact_time.size

  index = index + eurex_derivatives_eobi_t7_v8_1.last_qty.size

  index = index + eurex_derivatives_eobi_t7_v8_1.last_px.size

  index = index + eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.size

  index = index + eurex_derivatives_eobi_t7_v8_1.trd_match_id.size

  index = index + eurex_derivatives_eobi_t7_v8_1.trade_condition.size

  index = index + eurex_derivatives_eobi_t7_v8_1.pad_2.size

  index = index + eurex_derivatives_eobi_t7_v8_1.no_md_entries.size

  index = index + eurex_derivatives_eobi_t7_v8_1.pad_7.size

  -- Calculate field size from count
  local md_trade_entry_grp_comp_count = buffer(offset + index - 8, 1):le_uint()
  index = index + md_trade_entry_grp_comp_count * 24

  return index
end

-- Display: Trade Reversal
eurex_derivatives_eobi_t7_v8_1.trade_reversal.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Reversal
eurex_derivatives_eobi_t7_v8_1.trade_reversal.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_execution_time = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v8_1.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trade_condition = eurex_derivatives_eobi_t7_v8_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v8_1.pad_2.dissect(buffer, index, packet, parent)

  -- No Md Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_md_entries = eurex_derivatives_eobi_t7_v8_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v8_1.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Md Trade Entry Grp Comp
  for md_trade_entry_grp_comp_index = 1, no_md_entries do
    index, md_trade_entry_grp_comp = eurex_derivatives_eobi_t7_v8_1.md_trade_entry_grp_comp.dissect(buffer, index, packet, parent, md_trade_entry_grp_comp_index)
  end

  return index
end

-- Dissect: Trade Reversal
eurex_derivatives_eobi_t7_v8_1.trade_reversal.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_reversal then
    local length = eurex_derivatives_eobi_t7_v8_1.trade_reversal.size(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v8_1.trade_reversal.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trade_reversal, range, display)
  end

  return eurex_derivatives_eobi_t7_v8_1.trade_reversal.fields(buffer, offset, packet, parent)
end

-- Pad 6
eurex_derivatives_eobi_t7_v8_1.pad_6 = {}

-- Size: Pad 6
eurex_derivatives_eobi_t7_v8_1.pad_6.size = 6

-- Display: Pad 6
eurex_derivatives_eobi_t7_v8_1.pad_6.display = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
eurex_derivatives_eobi_t7_v8_1.pad_6.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Pad 1
eurex_derivatives_eobi_t7_v8_1.pad_1 = {}

-- Size: Pad 1
eurex_derivatives_eobi_t7_v8_1.pad_1.size = 1

-- Display: Pad 1
eurex_derivatives_eobi_t7_v8_1.pad_1.display = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
eurex_derivatives_eobi_t7_v8_1.pad_1.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator = {}

-- Size: Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.size = 1

-- Display: Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.display = function(value)
  if value == 1 then
    return "Algorithmic Trade Indicator: Algorithmic Trade (1)"
  end
  if value == 0xFF then
    return "Algorithmic Trade Indicator: No Value"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.algorithmic_trade_indicator, range, value, display)

  return offset + length, value
end

-- Match Sub Type
eurex_derivatives_eobi_t7_v8_1.match_sub_type = {}

-- Size: Match Sub Type
eurex_derivatives_eobi_t7_v8_1.match_sub_type.size = 1

-- Display: Match Sub Type
eurex_derivatives_eobi_t7_v8_1.match_sub_type.display = function(value)
  if value == 1 then
    return "Match Sub Type: Opening Auction (1)"
  end
  if value == 2 then
    return "Match Sub Type: Closing Auction (2)"
  end
  if value == 3 then
    return "Match Sub Type: Intraday Auction (3)"
  end
  if value == 4 then
    return "Match Sub Type: Circuit Breaker Auction (4)"
  end
  if value == 5 then
    return "Match Sub Type: Ipo Auction (5)"
  end
  if value == 0xFF then
    return "Match Sub Type: No Value"
  end

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
eurex_derivatives_eobi_t7_v8_1.match_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.match_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.match_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Match Type
eurex_derivatives_eobi_t7_v8_1.match_type = {}

-- Size: Match Type
eurex_derivatives_eobi_t7_v8_1.match_type.size = 1

-- Display: Match Type
eurex_derivatives_eobi_t7_v8_1.match_type.display = function(value)
  if value == 3 then
    return "Match Type: Confirmed Trade Report (3)"
  end
  if value == 5 then
    return "Match Type: Cross Auction (5)"
  end
  if value == 7 then
    return "Match Type: Call Auction (7)"
  end
  if value == 13 then
    return "Match Type: Liquidity Improvement Cross (13)"
  end
  if value == 14 then
    return "Match Type: Continuous Auction (14)"
  end
  if value == 0xFF then
    return "Match Type: No Value"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_derivatives_eobi_t7_v8_1.match_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.match_type, range, value, display)

  return offset + length, value
end

-- Trade Report
eurex_derivatives_eobi_t7_v8_1.trade_report = {}

-- Size: Trade Report
eurex_derivatives_eobi_t7_v8_1.trade_report.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.last_px.size + 
  eurex_derivatives_eobi_t7_v8_1.trd_match_id.size + 
  eurex_derivatives_eobi_t7_v8_1.match_type.size + 
  eurex_derivatives_eobi_t7_v8_1.match_sub_type.size + 
  eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_1.size + 
  eurex_derivatives_eobi_t7_v8_1.trade_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_6.size

-- Display: Trade Report
eurex_derivatives_eobi_t7_v8_1.trade_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report
eurex_derivatives_eobi_t7_v8_1.trade_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v8_1.trd_match_id.dissect(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_type = eurex_derivatives_eobi_t7_v8_1.match_type.dissect(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_sub_type = eurex_derivatives_eobi_t7_v8_1.match_sub_type.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, algorithmic_trade_indicator = eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trade_condition = eurex_derivatives_eobi_t7_v8_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v8_1.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report
eurex_derivatives_eobi_t7_v8_1.trade_report.dissect = function(buffer, offset, packet, parent)
  if show.trade_report then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trade_report, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.trade_report.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.trade_report.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.trade_report.fields(buffer, offset, packet, parent)
  end
end

-- Offer Size
eurex_derivatives_eobi_t7_v8_1.offer_size = {}

-- Size: Offer Size
eurex_derivatives_eobi_t7_v8_1.offer_size.size = 8

-- Display: Offer Size
eurex_derivatives_eobi_t7_v8_1.offer_size.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Translate: Offer Size
eurex_derivatives_eobi_t7_v8_1.offer_size.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Offer Size
eurex_derivatives_eobi_t7_v8_1.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.offer_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.offer_size.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.offer_size.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Size
eurex_derivatives_eobi_t7_v8_1.bid_size = {}

-- Size: Bid Size
eurex_derivatives_eobi_t7_v8_1.bid_size.size = 8

-- Display: Bid Size
eurex_derivatives_eobi_t7_v8_1.bid_size.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Translate: Bid Size
eurex_derivatives_eobi_t7_v8_1.bid_size.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Bid Size
eurex_derivatives_eobi_t7_v8_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.bid_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.bid_size.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.bid_size.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Offer Px
eurex_derivatives_eobi_t7_v8_1.offer_px = {}

-- Size: Offer Px
eurex_derivatives_eobi_t7_v8_1.offer_px.size = 8

-- Display: Offer Px
eurex_derivatives_eobi_t7_v8_1.offer_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
eurex_derivatives_eobi_t7_v8_1.offer_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Offer Px
eurex_derivatives_eobi_t7_v8_1.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.offer_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.offer_px.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.offer_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Bid Px
eurex_derivatives_eobi_t7_v8_1.bid_px = {}

-- Size: Bid Px
eurex_derivatives_eobi_t7_v8_1.bid_px.size = 8

-- Display: Bid Px
eurex_derivatives_eobi_t7_v8_1.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
eurex_derivatives_eobi_t7_v8_1.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Bid Px
eurex_derivatives_eobi_t7_v8_1.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.bid_px.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Top Of Book
eurex_derivatives_eobi_t7_v8_1.top_of_book = {}

-- Size: Top Of Book
eurex_derivatives_eobi_t7_v8_1.top_of_book.size =
  eurex_derivatives_eobi_t7_v8_1.transact_time.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.bid_px.size + 
  eurex_derivatives_eobi_t7_v8_1.offer_px.size + 
  eurex_derivatives_eobi_t7_v8_1.bid_size.size + 
  eurex_derivatives_eobi_t7_v8_1.offer_size.size

-- Display: Top Of Book
eurex_derivatives_eobi_t7_v8_1.top_of_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book
eurex_derivatives_eobi_t7_v8_1.top_of_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_px = eurex_derivatives_eobi_t7_v8_1.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_px = eurex_derivatives_eobi_t7_v8_1.offer_px.dissect(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = eurex_derivatives_eobi_t7_v8_1.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = eurex_derivatives_eobi_t7_v8_1.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book
eurex_derivatives_eobi_t7_v8_1.top_of_book.dissect = function(buffer, offset, packet, parent)
  if show.top_of_book then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.top_of_book, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.top_of_book.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.top_of_book.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.top_of_book.fields(buffer, offset, packet, parent)
  end
end

-- Price
eurex_derivatives_eobi_t7_v8_1.price = {}

-- Size: Price
eurex_derivatives_eobi_t7_v8_1.price.size = 8

-- Display: Price
eurex_derivatives_eobi_t7_v8_1.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
eurex_derivatives_eobi_t7_v8_1.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price
eurex_derivatives_eobi_t7_v8_1.price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.price.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.price, range, value, display)

  return offset + length, value
end

-- Ord Type
eurex_derivatives_eobi_t7_v8_1.ord_type = {}

-- Size: Ord Type
eurex_derivatives_eobi_t7_v8_1.ord_type.size = 1

-- Display: Ord Type
eurex_derivatives_eobi_t7_v8_1.ord_type.display = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end
  if value == 0xFF then
    return "Ord Type: No Value"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
eurex_derivatives_eobi_t7_v8_1.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.ord_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Side
eurex_derivatives_eobi_t7_v8_1.side = {}

-- Size: Side
eurex_derivatives_eobi_t7_v8_1.side.size = 1

-- Display: Side
eurex_derivatives_eobi_t7_v8_1.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 0xFF then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
eurex_derivatives_eobi_t7_v8_1.side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.side, range, value, display)

  return offset + length, value
end

-- Display Qty
eurex_derivatives_eobi_t7_v8_1.display_qty = {}

-- Size: Display Qty
eurex_derivatives_eobi_t7_v8_1.display_qty.size = 8

-- Display: Display Qty
eurex_derivatives_eobi_t7_v8_1.display_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Translate: Display Qty
eurex_derivatives_eobi_t7_v8_1.display_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Display Qty
eurex_derivatives_eobi_t7_v8_1.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.display_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.display_qty.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.display_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority = {}

-- Size: Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.size = 8

-- Display: Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time Priority: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time Priority: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Order Details Comp
eurex_derivatives_eobi_t7_v8_1.order_details_comp = {}

-- Size: Order Details Comp
eurex_derivatives_eobi_t7_v8_1.order_details_comp.size =
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.size + 
  eurex_derivatives_eobi_t7_v8_1.display_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.side.size + 
  eurex_derivatives_eobi_t7_v8_1.ord_type.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_6.size + 
  eurex_derivatives_eobi_t7_v8_1.price.size

-- Display: Order Details Comp
eurex_derivatives_eobi_t7_v8_1.order_details_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Details Comp
eurex_derivatives_eobi_t7_v8_1.order_details_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = eurex_derivatives_eobi_t7_v8_1.display_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_type = eurex_derivatives_eobi_t7_v8_1.ord_type.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v8_1.pad_6.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v8_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Details Comp
eurex_derivatives_eobi_t7_v8_1.order_details_comp.dissect = function(buffer, offset, packet, parent)
  if show.order_details_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.order_details_comp, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.order_details_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.order_details_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.order_details_comp.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Order
eurex_derivatives_eobi_t7_v8_1.snapshot_order = {}

-- Size: Snapshot Order
eurex_derivatives_eobi_t7_v8_1.snapshot_order.size =
  eurex_derivatives_eobi_t7_v8_1.order_details_comp.size

-- Display: Snapshot Order
eurex_derivatives_eobi_t7_v8_1.snapshot_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Order
eurex_derivatives_eobi_t7_v8_1.snapshot_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v8_1.order_details_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Order
eurex_derivatives_eobi_t7_v8_1.snapshot_order.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.snapshot_order, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.snapshot_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.snapshot_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.snapshot_order.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request
eurex_derivatives_eobi_t7_v8_1.quote_request = {}

-- Size: Quote Request
eurex_derivatives_eobi_t7_v8_1.quote_request.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.side.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_7.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size

-- Display: Quote Request
eurex_derivatives_eobi_t7_v8_1.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
eurex_derivatives_eobi_t7_v8_1.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v8_1.side.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v8_1.pad_7.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
eurex_derivatives_eobi_t7_v8_1.quote_request.dissect = function(buffer, offset, packet, parent)
  if show.quote_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.quote_request, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.quote_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.quote_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.quote_request.fields(buffer, offset, packet, parent)
  end
end

-- Fast Market Indicator
eurex_derivatives_eobi_t7_v8_1.fast_market_indicator = {}

-- Size: Fast Market Indicator
eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size = 1

-- Display: Fast Market Indicator
eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.display = function(value)
  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end
  if value == 0xFF then
    return "Fast Market Indicator: No Value"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.fast_market_indicator, range, value, display)

  return offset + length, value
end

-- Market Condition
eurex_derivatives_eobi_t7_v8_1.market_condition = {}

-- Size: Market Condition
eurex_derivatives_eobi_t7_v8_1.market_condition.size = 1

-- Display: Market Condition
eurex_derivatives_eobi_t7_v8_1.market_condition.display = function(value)
  if value == 0 then
    return "Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Market Condition: Stressed (1)"
  end
  if value == 0xFF then
    return "Market Condition: No Value"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition
eurex_derivatives_eobi_t7_v8_1.market_condition.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.market_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.market_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
eurex_derivatives_eobi_t7_v8_1.trad_ses_status = {}

-- Size: Trad Ses Status
eurex_derivatives_eobi_t7_v8_1.trad_ses_status.size = 1

-- Display: Trad Ses Status
eurex_derivatives_eobi_t7_v8_1.trad_ses_status.display = function(value)
  if value == 1 then
    return "Trad Ses Status: Halted (1)"
  end
  if value == 2 then
    return "Trad Ses Status: Open (2)"
  end
  if value == 3 then
    return "Trad Ses Status: Closed (3)"
  end
  if value == 0xFF then
    return "Trad Ses Status: No Value"
  end

  return "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
eurex_derivatives_eobi_t7_v8_1.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.display = function(value)
  if value == 1 then
    return "Trading Session Sub Id: Pre Trading (1)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Continuous (3)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Post Trading (5)"
  end
  if value == 7 then
    return "Trading Session Sub Id: Quiescent (7)"
  end
  if value == 0xFF then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trading Session Id
eurex_derivatives_eobi_t7_v8_1.trading_session_id = {}

-- Size: Trading Session Id
eurex_derivatives_eobi_t7_v8_1.trading_session_id.size = 1

-- Display: Trading Session Id
eurex_derivatives_eobi_t7_v8_1.trading_session_id.display = function(value)
  if value == 1 then
    return "Trading Session Id: Day (1)"
  end
  if value == 3 then
    return "Trading Session Id: Morning (3)"
  end
  if value == 5 then
    return "Trading Session Id: Evening (5)"
  end
  if value == 6 then
    return "Trading Session Id: After Hours (6)"
  end
  if value == 7 then
    return "Trading Session Id: Holiday (7)"
  end
  if value == 0xFF then
    return "Trading Session Id: No Value"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
eurex_derivatives_eobi_t7_v8_1.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed = {}

-- Size: Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Last Msg Seq Num Processed: No Value"
  end

  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Product Summary
eurex_derivatives_eobi_t7_v8_1.product_summary = {}

-- Size: Product Summary
eurex_derivatives_eobi_t7_v8_1.product_summary.size =
  eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.size + 
  eurex_derivatives_eobi_t7_v8_1.trading_session_id.size + 
  eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.size + 
  eurex_derivatives_eobi_t7_v8_1.trad_ses_status.size + 
  eurex_derivatives_eobi_t7_v8_1.market_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_7.size

-- Display: Product Summary
eurex_derivatives_eobi_t7_v8_1.product_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product Summary
eurex_derivatives_eobi_t7_v8_1.product_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num_processed = eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_id = eurex_derivatives_eobi_t7_v8_1.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_sub_id = eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_status = eurex_derivatives_eobi_t7_v8_1.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v8_1.market_condition.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v8_1.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary
eurex_derivatives_eobi_t7_v8_1.product_summary.dissect = function(buffer, offset, packet, parent)
  if show.product_summary then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.product_summary, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.product_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.product_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.product_summary.fields(buffer, offset, packet, parent)
  end
end

-- Pad 3
eurex_derivatives_eobi_t7_v8_1.pad_3 = {}

-- Size: Pad 3
eurex_derivatives_eobi_t7_v8_1.pad_3.size = 3

-- Display: Pad 3
eurex_derivatives_eobi_t7_v8_1.pad_3.display = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
eurex_derivatives_eobi_t7_v8_1.pad_3.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Product State Change
eurex_derivatives_eobi_t7_v8_1.product_state_change = {}

-- Size: Product State Change
eurex_derivatives_eobi_t7_v8_1.product_state_change.size =
  eurex_derivatives_eobi_t7_v8_1.trading_session_id.size + 
  eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.size + 
  eurex_derivatives_eobi_t7_v8_1.trad_ses_status.size + 
  eurex_derivatives_eobi_t7_v8_1.market_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_3.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size

-- Display: Product State Change
eurex_derivatives_eobi_t7_v8_1.product_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product State Change
eurex_derivatives_eobi_t7_v8_1.product_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_id = eurex_derivatives_eobi_t7_v8_1.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_sub_id = eurex_derivatives_eobi_t7_v8_1.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_status = eurex_derivatives_eobi_t7_v8_1.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v8_1.market_condition.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eobi_t7_v8_1.pad_3.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product State Change
eurex_derivatives_eobi_t7_v8_1.product_state_change.dissect = function(buffer, offset, packet, parent)
  if show.product_state_change then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.product_state_change, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.product_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.product_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.product_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Partial Order Execution
eurex_derivatives_eobi_t7_v8_1.partial_order_execution = {}

-- Size: Partial Order Execution
eurex_derivatives_eobi_t7_v8_1.partial_order_execution.size =
  eurex_derivatives_eobi_t7_v8_1.side.size + 
  eurex_derivatives_eobi_t7_v8_1.ord_type.size + 
  eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_1.size + 
  eurex_derivatives_eobi_t7_v8_1.trd_match_id.size + 
  eurex_derivatives_eobi_t7_v8_1.price.size + 
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.last_px.size

-- Display: Partial Order Execution
eurex_derivatives_eobi_t7_v8_1.partial_order_execution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Order Execution
eurex_derivatives_eobi_t7_v8_1.partial_order_execution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_type = eurex_derivatives_eobi_t7_v8_1.ord_type.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, algorithmic_trade_indicator = eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v8_1.trd_match_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v8_1.price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Order Execution
eurex_derivatives_eobi_t7_v8_1.partial_order_execution.dissect = function(buffer, offset, packet, parent)
  if show.partial_order_execution then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.partial_order_execution, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.partial_order_execution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.partial_order_execution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.partial_order_execution.fields(buffer, offset, packet, parent)
  end
end

-- Prev Display Qty
eurex_derivatives_eobi_t7_v8_1.prev_display_qty = {}

-- Size: Prev Display Qty
eurex_derivatives_eobi_t7_v8_1.prev_display_qty.size = 8

-- Display: Prev Display Qty
eurex_derivatives_eobi_t7_v8_1.prev_display_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Prev Display Qty: No Value"
  end

  return "Prev Display Qty: "..value
end

-- Translate: Prev Display Qty
eurex_derivatives_eobi_t7_v8_1.prev_display_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Prev Display Qty
eurex_derivatives_eobi_t7_v8_1.prev_display_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.prev_display_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.prev_display_qty.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.prev_display_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.prev_display_qty, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time In
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in = {}

-- Size: Trd Reg Ts Time In
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.size = 8

-- Display: Trd Reg Ts Time In
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time In: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time In
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Order Modify Same Prio
eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio = {}

-- Size: Order Modify Same Prio
eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.size =
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size + 
  eurex_derivatives_eobi_t7_v8_1.prev_display_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.order_details_comp.size

-- Display: Order Modify Same Prio
eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Same Prio
eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Prev Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, prev_display_qty = eurex_derivatives_eobi_t7_v8_1.prev_display_qty.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v8_1.order_details_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Same Prio
eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_same_prio then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.order_modify_same_prio, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.fields(buffer, offset, packet, parent)
  end
end

-- Prev Price
eurex_derivatives_eobi_t7_v8_1.prev_price = {}

-- Size: Prev Price
eurex_derivatives_eobi_t7_v8_1.prev_price.size = 8

-- Display: Prev Price
eurex_derivatives_eobi_t7_v8_1.prev_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Prev Price: No Value"
  end

  return "Prev Price: "..value
end

-- Translate: Prev Price
eurex_derivatives_eobi_t7_v8_1.prev_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Prev Price
eurex_derivatives_eobi_t7_v8_1.prev_price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.prev_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.prev_price.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.prev_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.prev_price, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority = {}

-- Size: Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.size = 8

-- Display: Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Prev Time Priority: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Prev Time Priority: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.trd_reg_ts_prev_time_priority, range, value, display)

  return offset + length, value
end

-- Order Modify
eurex_derivatives_eobi_t7_v8_1.order_modify = {}

-- Size: Order Modify
eurex_derivatives_eobi_t7_v8_1.order_modify.size =
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.size + 
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.size + 
  eurex_derivatives_eobi_t7_v8_1.prev_price.size + 
  eurex_derivatives_eobi_t7_v8_1.prev_display_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.order_details_comp.size

-- Display: Order Modify
eurex_derivatives_eobi_t7_v8_1.order_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify
eurex_derivatives_eobi_t7_v8_1.order_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Prev Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_prev_time_priority = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_prev_time_priority.dissect(buffer, index, packet, parent)

  -- Prev Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, prev_price = eurex_derivatives_eobi_t7_v8_1.prev_price.dissect(buffer, index, packet, parent)

  -- Prev Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, prev_display_qty = eurex_derivatives_eobi_t7_v8_1.prev_display_qty.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v8_1.order_details_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
eurex_derivatives_eobi_t7_v8_1.order_modify.dissect = function(buffer, offset, packet, parent)
  if show.order_modify then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.order_modify, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.order_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.order_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.order_modify.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Delete
eurex_derivatives_eobi_t7_v8_1.order_mass_delete = {}

-- Size: Order Mass Delete
eurex_derivatives_eobi_t7_v8_1.order_mass_delete.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size

-- Display: Order Mass Delete
eurex_derivatives_eobi_t7_v8_1.order_mass_delete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Delete
eurex_derivatives_eobi_t7_v8_1.order_mass_delete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Delete
eurex_derivatives_eobi_t7_v8_1.order_mass_delete.dissect = function(buffer, offset, packet, parent)
  if show.order_mass_delete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.order_mass_delete, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.order_mass_delete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.order_mass_delete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.order_mass_delete.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete
eurex_derivatives_eobi_t7_v8_1.order_delete = {}

-- Size: Order Delete
eurex_derivatives_eobi_t7_v8_1.order_delete.size =
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.order_details_comp.size

-- Display: Order Delete
eurex_derivatives_eobi_t7_v8_1.order_delete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete
eurex_derivatives_eobi_t7_v8_1.order_delete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v8_1.order_details_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete
eurex_derivatives_eobi_t7_v8_1.order_delete.dissect = function(buffer, offset, packet, parent)
  if show.order_delete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.order_delete, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.order_delete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.order_delete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.order_delete.fields(buffer, offset, packet, parent)
  end
end

-- Order Add
eurex_derivatives_eobi_t7_v8_1.order_add = {}

-- Size: Order Add
eurex_derivatives_eobi_t7_v8_1.order_add.size =
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.order_details_comp.size

-- Display: Order Add
eurex_derivatives_eobi_t7_v8_1.order_add.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add
eurex_derivatives_eobi_t7_v8_1.order_add.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v8_1.order_details_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
eurex_derivatives_eobi_t7_v8_1.order_add.dissect = function(buffer, offset, packet, parent)
  if show.order_add then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.order_add, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.order_add.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.order_add.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.order_add.fields(buffer, offset, packet, parent)
  end
end

-- Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.sold_out_indicator = {}

-- Size: Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.size = 1

-- Display: Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.display = function(value)
  if value == 1 then
    return "Sold Out Indicator: Sold Out (1)"
  end
  if value == 0xFF then
    return "Sold Out Indicator: No Value"
  end

  return "Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.sold_out_indicator, range, value, display)

  return offset + length, value
end

-- Security Trading Event
eurex_derivatives_eobi_t7_v8_1.security_trading_event = {}

-- Size: Security Trading Event
eurex_derivatives_eobi_t7_v8_1.security_trading_event.size = 1

-- Display: Security Trading Event
eurex_derivatives_eobi_t7_v8_1.security_trading_event.display = function(value)
  if value == 10 then
    return "Security Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 11 then
    return "Security Trading Event: Price Volatility Auction Is Extended Again (11)"
  end
  if value == 0xFF then
    return "Security Trading Event: No Value"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
eurex_derivatives_eobi_t7_v8_1.security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Security Trading Status
eurex_derivatives_eobi_t7_v8_1.security_trading_status = {}

-- Size: Security Trading Status
eurex_derivatives_eobi_t7_v8_1.security_trading_status.size = 1

-- Display: Security Trading Status
eurex_derivatives_eobi_t7_v8_1.security_trading_status.display = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt (2)"
  end
  if value == 7 then
    return "Security Trading Status: Market Imbalance Buy (7)"
  end
  if value == 8 then
    return "Security Trading Status: Market Imbalance Sell (8)"
  end
  if value == 200 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 201 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 202 then
    return "Security Trading Status: Book (202)"
  end
  if value == 203 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 204 then
    return "Security Trading Status: Opening Auction (204)"
  end
  if value == 205 then
    return "Security Trading Status: Opening Auction Freeze (205)"
  end
  if value == 206 then
    return "Security Trading Status: Intraday Auction (206)"
  end
  if value == 207 then
    return "Security Trading Status: Intraday Auction Freeze (207)"
  end
  if value == 208 then
    return "Security Trading Status: Circuit Breaker Auction (208)"
  end
  if value == 209 then
    return "Security Trading Status: Circuit Breaker Auction Freeze (209)"
  end
  if value == 210 then
    return "Security Trading Status: Closing Auction (210)"
  end
  if value == 211 then
    return "Security Trading Status: Closing Auction Freeze (211)"
  end
  if value == 212 then
    return "Security Trading Status: Ipo Auction (212)"
  end
  if value == 213 then
    return "Security Trading Status: Ipo Auction Freeze (213)"
  end
  if value == 214 then
    return "Security Trading Status: Pre Call (214)"
  end
  if value == 215 then
    return "Security Trading Status: Call (215)"
  end
  if value == 216 then
    return "Security Trading Status: Freeze (216)"
  end
  if value == 0xFF then
    return "Security Trading Status: No Value"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
eurex_derivatives_eobi_t7_v8_1.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Status
eurex_derivatives_eobi_t7_v8_1.security_status = {}

-- Size: Security Status
eurex_derivatives_eobi_t7_v8_1.security_status.size = 1

-- Display: Security Status
eurex_derivatives_eobi_t7_v8_1.security_status.display = function(value)
  if value == 1 then
    return "Security Status: Active (1)"
  end
  if value == 2 then
    return "Security Status: Inactive (2)"
  end
  if value == 4 then
    return "Security Status: Expired (4)"
  end
  if value == 6 then
    return "Security Status: Knocked Out (6)"
  end
  if value == 7 then
    return "Security Status: Knock Out Revoked (7)"
  end
  if value == 9 then
    return "Security Status: Suspended (9)"
  end
  if value == 11 then
    return "Security Status: Pending Deletion (11)"
  end
  if value == 12 then
    return "Security Status: Knocked Out And Suspended (12)"
  end
  if value == 0xFF then
    return "Security Status: No Value"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
eurex_derivatives_eobi_t7_v8_1.security_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_status, range, value, display)

  return offset + length, value
end

-- Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp = {}

-- Size: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.security_status.size + 
  eurex_derivatives_eobi_t7_v8_1.security_trading_status.size + 
  eurex_derivatives_eobi_t7_v8_1.market_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.security_trading_event.size + 
  eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_3.size

-- Display: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.fields = function(buffer, offset, packet, parent, sec_mass_stat_grp_comp_index)
  local index = offset

  -- Implicit Sec Mass Stat Grp Comp Index
  if sec_mass_stat_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.sec_mass_stat_grp_comp_index, sec_mass_stat_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_status = eurex_derivatives_eobi_t7_v8_1.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v8_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v8_1.market_condition.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_trading_event = eurex_derivatives_eobi_t7_v8_1.security_trading_event.dissect(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eobi_t7_v8_1.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.dissect = function(buffer, offset, packet, parent, sec_mass_stat_grp_comp_index)
  if show.sec_mass_stat_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.sec_mass_stat_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.fields(buffer, offset, packet, parent, sec_mass_stat_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.fields(buffer, offset, packet, parent, sec_mass_stat_grp_comp_index)
  end
end

-- No Related Sym
eurex_derivatives_eobi_t7_v8_1.no_related_sym = {}

-- Size: No Related Sym
eurex_derivatives_eobi_t7_v8_1.no_related_sym.size = 1

-- Display: No Related Sym
eurex_derivatives_eobi_t7_v8_1.no_related_sym.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Related Sym: No Value"
  end

  return "No Related Sym: "..value
end

-- Dissect: No Related Sym
eurex_derivatives_eobi_t7_v8_1.no_related_sym.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.no_related_sym.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.no_related_sym.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.no_related_sym, range, value, display)

  return offset + length, value
end

-- Last Fragment
eurex_derivatives_eobi_t7_v8_1.last_fragment = {}

-- Size: Last Fragment
eurex_derivatives_eobi_t7_v8_1.last_fragment.size = 1

-- Display: Last Fragment
eurex_derivatives_eobi_t7_v8_1.last_fragment.display = function(value)
  if value == 0 then
    return "Last Fragment: N (0)"
  end
  if value == 1 then
    return "Last Fragment: Y (1)"
  end
  if value == 0xFF then
    return "Last Fragment: No Value"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
eurex_derivatives_eobi_t7_v8_1.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.last_fragment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator = {}

-- Size: Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.size = 1

-- Display: Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.display = function(value)
  if value == 1 then
    return "Mass Sold Out Indicator: Sold Out (1)"
  end
  if value == 0xFF then
    return "Mass Sold Out Indicator: No Value"
  end

  return "Mass Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.mass_sold_out_indicator, range, value, display)

  return offset + length, value
end

-- Security Mass Trading Event
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event = {}

-- Size: Security Mass Trading Event
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.size = 1

-- Display: Security Mass Trading Event
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.display = function(value)
  if value == 10 then
    return "Security Mass Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 11 then
    return "Security Mass Trading Event: Price Volatility Auction Is Extended Again (11)"
  end
  if value == 0xFF then
    return "Security Mass Trading Event: No Value"
  end

  return "Security Mass Trading Event: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Event
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_mass_trading_event, range, value, display)

  return offset + length, value
end

-- Mass Market Condition
eurex_derivatives_eobi_t7_v8_1.mass_market_condition = {}

-- Size: Mass Market Condition
eurex_derivatives_eobi_t7_v8_1.mass_market_condition.size = 1

-- Display: Mass Market Condition
eurex_derivatives_eobi_t7_v8_1.mass_market_condition.display = function(value)
  if value == 0 then
    return "Mass Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Mass Market Condition: Stressed (1)"
  end
  if value == 0xFF then
    return "Mass Market Condition: No Value"
  end

  return "Mass Market Condition: Unknown("..value..")"
end

-- Dissect: Mass Market Condition
eurex_derivatives_eobi_t7_v8_1.mass_market_condition.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.mass_market_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.mass_market_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.mass_market_condition, range, value, display)

  return offset + length, value
end

-- Security Mass Trading Status
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status = {}

-- Size: Security Mass Trading Status
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.size = 1

-- Display: Security Mass Trading Status
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.display = function(value)
  if value == 2 then
    return "Security Mass Trading Status: Trading Halt (2)"
  end
  if value == 7 then
    return "Security Mass Trading Status: Market Imbalance Buy (7)"
  end
  if value == 8 then
    return "Security Mass Trading Status: Market Imbalance Sell (8)"
  end
  if value == 200 then
    return "Security Mass Trading Status: Closed (200)"
  end
  if value == 201 then
    return "Security Mass Trading Status: Restricted (201)"
  end
  if value == 202 then
    return "Security Mass Trading Status: Book (202)"
  end
  if value == 203 then
    return "Security Mass Trading Status: Continuous (203)"
  end
  if value == 204 then
    return "Security Mass Trading Status: Opening Auction (204)"
  end
  if value == 205 then
    return "Security Mass Trading Status: Opening Auction Freeze (205)"
  end
  if value == 206 then
    return "Security Mass Trading Status: Intraday Auction (206)"
  end
  if value == 207 then
    return "Security Mass Trading Status: Intraday Auction Freeze (207)"
  end
  if value == 208 then
    return "Security Mass Trading Status: Circuit Breaker Auction (208)"
  end
  if value == 209 then
    return "Security Mass Trading Status: Circuit Breaker Auction Freeze (209)"
  end
  if value == 210 then
    return "Security Mass Trading Status: Closing Auction (210)"
  end
  if value == 211 then
    return "Security Mass Trading Status: Closing Auction Freeze (211)"
  end
  if value == 212 then
    return "Security Mass Trading Status: Ipo Auction (212)"
  end
  if value == 213 then
    return "Security Mass Trading Status: Ipo Auction Freeze (213)"
  end
  if value == 214 then
    return "Security Mass Trading Status: Pre Call (214)"
  end
  if value == 215 then
    return "Security Mass Trading Status: Call (215)"
  end
  if value == 216 then
    return "Security Mass Trading Status: Freeze (216)"
  end
  if value == 0xFF then
    return "Security Mass Trading Status: No Value"
  end

  return "Security Mass Trading Status: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Status
eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_mass_trading_status, range, value, display)

  return offset + length, value
end

-- Security Mass Status
eurex_derivatives_eobi_t7_v8_1.security_mass_status = {}

-- Size: Security Mass Status
eurex_derivatives_eobi_t7_v8_1.security_mass_status.size = 1

-- Display: Security Mass Status
eurex_derivatives_eobi_t7_v8_1.security_mass_status.display = function(value)
  if value == 1 then
    return "Security Mass Status: Active (1)"
  end
  if value == 2 then
    return "Security Mass Status: Inactive (2)"
  end
  if value == 4 then
    return "Security Mass Status: Expired (4)"
  end
  if value == 6 then
    return "Security Mass Status: Knocked Out (6)"
  end
  if value == 7 then
    return "Security Mass Status: Knock Out Revoked (7)"
  end
  if value == 9 then
    return "Security Mass Status: Suspended (9)"
  end
  if value == 11 then
    return "Security Mass Status: Pending Deletion (11)"
  end
  if value == 12 then
    return "Security Mass Status: Knocked Out And Suspended (12)"
  end
  if value == 0xFF then
    return "Security Mass Status: No Value"
  end

  return "Security Mass Status: Unknown("..value..")"
end

-- Dissect: Security Mass Status
eurex_derivatives_eobi_t7_v8_1.security_mass_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_mass_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.security_mass_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_mass_status, range, value, display)

  return offset + length, value
end

-- Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex = {}

-- Size: Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.size = 1

-- Display: Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.display = function(value)
  if value == 1 then
    return "Instrument Scope Product Complex: Simple Instrument (1)"
  end
  if value == 2 then
    return "Instrument Scope Product Complex: Standard Option Strategy (2)"
  end
  if value == 3 then
    return "Instrument Scope Product Complex: Non Standard Option Strategy (3)"
  end
  if value == 4 then
    return "Instrument Scope Product Complex: Volatility Strategy (4)"
  end
  if value == 5 then
    return "Instrument Scope Product Complex: Futures Spread (5)"
  end
  if value == 6 then
    return "Instrument Scope Product Complex: Inter Product Spread (6)"
  end
  if value == 7 then
    return "Instrument Scope Product Complex: Standard Futures Strategy (7)"
  end
  if value == 8 then
    return "Instrument Scope Product Complex: Pack And Bundle (8)"
  end
  if value == 9 then
    return "Instrument Scope Product Complex: Strip (9)"
  end
  if value == 0xFF then
    return "Instrument Scope Product Complex: No Value"
  end

  return "Instrument Scope Product Complex: Unknown("..value..")"
end

-- Dissect: Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.instrument_scope_product_complex, range, value, display)

  return offset + length, value
end

-- Mass Instrument State Change
eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change = {}

-- Calculate size of: Mass Instrument State Change
eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_mass_status.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.size

  index = index + eurex_derivatives_eobi_t7_v8_1.mass_market_condition.size

  index = index + eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.size

  index = index + eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.size

  index = index + eurex_derivatives_eobi_t7_v8_1.pad_1.size

  index = index + eurex_derivatives_eobi_t7_v8_1.transact_time.size

  index = index + eurex_derivatives_eobi_t7_v8_1.last_fragment.size

  index = index + eurex_derivatives_eobi_t7_v8_1.no_related_sym.size

  index = index + eurex_derivatives_eobi_t7_v8_1.pad_6.size

  -- Calculate field size from count
  local sec_mass_stat_grp_comp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + sec_mass_stat_grp_comp_count * 16

  return index
end

-- Display: Mass Instrument State Change
eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Instrument State Change
eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Scope Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, instrument_scope_product_complex = eurex_derivatives_eobi_t7_v8_1.instrument_scope_product_complex.dissect(buffer, index, packet, parent)

  -- Security Mass Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_mass_status = eurex_derivatives_eobi_t7_v8_1.security_mass_status.dissect(buffer, index, packet, parent)

  -- Security Mass Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, security_mass_trading_status = eurex_derivatives_eobi_t7_v8_1.security_mass_trading_status.dissect(buffer, index, packet, parent)

  -- Mass Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_market_condition = eurex_derivatives_eobi_t7_v8_1.mass_market_condition.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Security Mass Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_mass_trading_event = eurex_derivatives_eobi_t7_v8_1.security_mass_trading_event.dissect(buffer, index, packet, parent)

  -- Mass Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_sold_out_indicator = eurex_derivatives_eobi_t7_v8_1.mass_sold_out_indicator.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eobi_t7_v8_1.last_fragment.dissect(buffer, index, packet, parent)

  -- No Related Sym: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_related_sym = eurex_derivatives_eobi_t7_v8_1.no_related_sym.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v8_1.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Sec Mass Stat Grp Comp
  for sec_mass_stat_grp_comp_index = 1, no_related_sym do
    index, sec_mass_stat_grp_comp = eurex_derivatives_eobi_t7_v8_1.sec_mass_stat_grp_comp.dissect(buffer, index, packet, parent, sec_mass_stat_grp_comp_index)
  end

  return index
end

-- Dissect: Mass Instrument State Change
eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_instrument_state_change then
    local length = eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.size(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.mass_instrument_state_change, range, display)
  end

  return eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.fields(buffer, offset, packet, parent)
end

-- Pad 4
eurex_derivatives_eobi_t7_v8_1.pad_4 = {}

-- Size: Pad 4
eurex_derivatives_eobi_t7_v8_1.pad_4.size = 4

-- Display: Pad 4
eurex_derivatives_eobi_t7_v8_1.pad_4.display = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
eurex_derivatives_eobi_t7_v8_1.pad_4.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp = {}

-- Size: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.size =
  eurex_derivatives_eobi_t7_v8_1.md_entry_px.size + 
  eurex_derivatives_eobi_t7_v8_1.md_entry_size.size + 
  eurex_derivatives_eobi_t7_v8_1.md_entry_type.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_1.size + 
  eurex_derivatives_eobi_t7_v8_1.trade_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_4.size

-- Display: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.fields = function(buffer, offset, packet, parent, md_instrument_entry_grp_comp_index)
  local index = offset

  -- Implicit Md Instrument Entry Grp Comp Index
  if md_instrument_entry_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_instrument_entry_grp_comp_index, md_instrument_entry_grp_comp_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_px = eurex_derivatives_eobi_t7_v8_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = eurex_derivatives_eobi_t7_v8_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, md_entry_type = eurex_derivatives_eobi_t7_v8_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trade_condition = eurex_derivatives_eobi_t7_v8_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v8_1.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.dissect = function(buffer, offset, packet, parent, md_instrument_entry_grp_comp_index)
  if show.md_instrument_entry_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.md_instrument_entry_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.fields(buffer, offset, packet, parent, md_instrument_entry_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.fields(buffer, offset, packet, parent, md_instrument_entry_grp_comp_index)
  end
end

-- Product Complex
eurex_derivatives_eobi_t7_v8_1.product_complex = {}

-- Size: Product Complex
eurex_derivatives_eobi_t7_v8_1.product_complex.size = 1

-- Display: Product Complex
eurex_derivatives_eobi_t7_v8_1.product_complex.display = function(value)
  if value == 1 then
    return "Product Complex: Simple Instrument (1)"
  end
  if value == 2 then
    return "Product Complex: Standard Option Strategy (2)"
  end
  if value == 3 then
    return "Product Complex: Non Standard Option Strategy (3)"
  end
  if value == 4 then
    return "Product Complex: Volatility Strategy (4)"
  end
  if value == 5 then
    return "Product Complex: Futures Spread (5)"
  end
  if value == 6 then
    return "Product Complex: Inter Product Spread (6)"
  end
  if value == 7 then
    return "Product Complex: Standard Futures Strategy (7)"
  end
  if value == 8 then
    return "Product Complex: Pack And Bundle (8)"
  end
  if value == 9 then
    return "Product Complex: Strip (9)"
  end
  if value == 0xFF then
    return "Product Complex: No Value"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
eurex_derivatives_eobi_t7_v8_1.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Tot No Orders
eurex_derivatives_eobi_t7_v8_1.tot_no_orders = {}

-- Size: Tot No Orders
eurex_derivatives_eobi_t7_v8_1.tot_no_orders.size = 2

-- Display: Tot No Orders
eurex_derivatives_eobi_t7_v8_1.tot_no_orders.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Tot No Orders: No Value"
  end

  return "Tot No Orders: "..value
end

-- Dissect: Tot No Orders
eurex_derivatives_eobi_t7_v8_1.tot_no_orders.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.tot_no_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.tot_no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.tot_no_orders, range, value, display)

  return offset + length, value
end

-- Last Update Time
eurex_derivatives_eobi_t7_v8_1.last_update_time = {}

-- Size: Last Update Time
eurex_derivatives_eobi_t7_v8_1.last_update_time.size = 8

-- Display: Last Update Time
eurex_derivatives_eobi_t7_v8_1.last_update_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Update Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Last Update Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
eurex_derivatives_eobi_t7_v8_1.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Instrument Summary
eurex_derivatives_eobi_t7_v8_1.instrument_summary = {}

-- Calculate size of: Instrument Summary
eurex_derivatives_eobi_t7_v8_1.instrument_summary.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v8_1.security_id.size

  index = index + eurex_derivatives_eobi_t7_v8_1.last_update_time.size

  index = index + eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.size

  index = index + eurex_derivatives_eobi_t7_v8_1.tot_no_orders.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_status.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_trading_status.size

  index = index + eurex_derivatives_eobi_t7_v8_1.market_condition.size

  index = index + eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_trading_event.size

  index = index + eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.size

  index = index + eurex_derivatives_eobi_t7_v8_1.product_complex.size

  index = index + eurex_derivatives_eobi_t7_v8_1.no_md_entries.size

  index = index + eurex_derivatives_eobi_t7_v8_1.pad_6.size

  -- Calculate field size from count
  local md_instrument_entry_grp_comp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + md_instrument_entry_grp_comp_count * 24

  return index
end

-- Display: Instrument Summary
eurex_derivatives_eobi_t7_v8_1.instrument_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Summary
eurex_derivatives_eobi_t7_v8_1.instrument_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_update_time = eurex_derivatives_eobi_t7_v8_1.last_update_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_execution_time = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_execution_time.dissect(buffer, index, packet, parent)

  -- Tot No Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tot_no_orders = eurex_derivatives_eobi_t7_v8_1.tot_no_orders.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_status = eurex_derivatives_eobi_t7_v8_1.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v8_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v8_1.market_condition.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_trading_event = eurex_derivatives_eobi_t7_v8_1.security_trading_event.dissect(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eobi_t7_v8_1.product_complex.dissect(buffer, index, packet, parent)

  -- No Md Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_md_entries = eurex_derivatives_eobi_t7_v8_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v8_1.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Md Instrument Entry Grp Comp
  for md_instrument_entry_grp_comp_index = 1, no_md_entries do
    index, md_instrument_entry_grp_comp = eurex_derivatives_eobi_t7_v8_1.md_instrument_entry_grp_comp.dissect(buffer, index, packet, parent, md_instrument_entry_grp_comp_index)
  end

  return index
end

-- Dissect: Instrument Summary
eurex_derivatives_eobi_t7_v8_1.instrument_summary.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_summary then
    local length = eurex_derivatives_eobi_t7_v8_1.instrument_summary.size(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v8_1.instrument_summary.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.instrument_summary, range, display)
  end

  return eurex_derivatives_eobi_t7_v8_1.instrument_summary.fields(buffer, offset, packet, parent)
end

-- Instrument State Change
eurex_derivatives_eobi_t7_v8_1.instrument_state_change = {}

-- Size: Instrument State Change
eurex_derivatives_eobi_t7_v8_1.instrument_state_change.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.security_status.size + 
  eurex_derivatives_eobi_t7_v8_1.security_trading_status.size + 
  eurex_derivatives_eobi_t7_v8_1.market_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.security_trading_event.size + 
  eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_2.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size

-- Display: Instrument State Change
eurex_derivatives_eobi_t7_v8_1.instrument_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Change
eurex_derivatives_eobi_t7_v8_1.instrument_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_status = eurex_derivatives_eobi_t7_v8_1.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v8_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v8_1.market_condition.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v8_1.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_trading_event = eurex_derivatives_eobi_t7_v8_1.security_trading_event.dissect(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = eurex_derivatives_eobi_t7_v8_1.sold_out_indicator.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v8_1.pad_2.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change
eurex_derivatives_eobi_t7_v8_1.instrument_state_change.dissect = function(buffer, offset, packet, parent)
  if show.instrument_state_change then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.instrument_state_change, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.instrument_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.instrument_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.instrument_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat
eurex_derivatives_eobi_t7_v8_1.heartbeat = {}

-- Size: Heartbeat
eurex_derivatives_eobi_t7_v8_1.heartbeat.size =
  eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_4.size

-- Display: Heartbeat
eurex_derivatives_eobi_t7_v8_1.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
eurex_derivatives_eobi_t7_v8_1.heartbeat.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num_processed = eurex_derivatives_eobi_t7_v8_1.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v8_1.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
eurex_derivatives_eobi_t7_v8_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.heartbeat, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.heartbeat.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.heartbeat.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.heartbeat.fields(buffer, offset, packet, parent)
  end
end

-- Full Order Execution
eurex_derivatives_eobi_t7_v8_1.full_order_execution = {}

-- Size: Full Order Execution
eurex_derivatives_eobi_t7_v8_1.full_order_execution.size =
  eurex_derivatives_eobi_t7_v8_1.side.size + 
  eurex_derivatives_eobi_t7_v8_1.ord_type.size + 
  eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_1.size + 
  eurex_derivatives_eobi_t7_v8_1.trd_match_id.size + 
  eurex_derivatives_eobi_t7_v8_1.price.size + 
  eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.last_px.size

-- Display: Full Order Execution
eurex_derivatives_eobi_t7_v8_1.full_order_execution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Order Execution
eurex_derivatives_eobi_t7_v8_1.full_order_execution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_type = eurex_derivatives_eobi_t7_v8_1.ord_type.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, algorithmic_trade_indicator = eurex_derivatives_eobi_t7_v8_1.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v8_1.trd_match_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v8_1.price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eobi_t7_v8_1.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Order Execution
eurex_derivatives_eobi_t7_v8_1.full_order_execution.dissect = function(buffer, offset, packet, parent)
  if show.full_order_execution then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.full_order_execution, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.full_order_execution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.full_order_execution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.full_order_execution.fields(buffer, offset, packet, parent)
  end
end

-- Resting Cxl Qty
eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty = {}

-- Size: Resting Cxl Qty
eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.size = 8

-- Display: Resting Cxl Qty
eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Resting Cxl Qty: No Value"
  end

  return "Resting Cxl Qty: "..value
end

-- Translate: Resting Cxl Qty
eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Resting Cxl Qty
eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.resting_cxl_qty, range, value, display)

  return offset + length, value
end

-- Resting Hidden Qty
eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty = {}

-- Size: Resting Hidden Qty
eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.size = 8

-- Display: Resting Hidden Qty
eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Resting Hidden Qty: No Value"
  end

  return "Resting Hidden Qty: "..value
end

-- Translate: Resting Hidden Qty
eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Resting Hidden Qty
eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.resting_hidden_qty, range, value, display)

  return offset + length, value
end

-- Aggressor Side
eurex_derivatives_eobi_t7_v8_1.aggressor_side = {}

-- Size: Aggressor Side
eurex_derivatives_eobi_t7_v8_1.aggressor_side.size = 1

-- Display: Aggressor Side
eurex_derivatives_eobi_t7_v8_1.aggressor_side.display = function(value)
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end
  if value == 0xFF then
    return "Aggressor Side: No Value"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
eurex_derivatives_eobi_t7_v8_1.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Exec Id
eurex_derivatives_eobi_t7_v8_1.exec_id = {}

-- Size: Exec Id
eurex_derivatives_eobi_t7_v8_1.exec_id.size = 8

-- Display: Exec Id
eurex_derivatives_eobi_t7_v8_1.exec_id.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Exec Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Exec Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Exec Id
eurex_derivatives_eobi_t7_v8_1.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Request Time
eurex_derivatives_eobi_t7_v8_1.request_time = {}

-- Size: Request Time
eurex_derivatives_eobi_t7_v8_1.request_time.size = 8

-- Display: Request Time
eurex_derivatives_eobi_t7_v8_1.request_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Request Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
eurex_derivatives_eobi_t7_v8_1.request_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.request_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.request_time, range, value, display)

  return offset + length, value
end

-- Aggressor Time
eurex_derivatives_eobi_t7_v8_1.aggressor_time = {}

-- Size: Aggressor Time
eurex_derivatives_eobi_t7_v8_1.aggressor_time.size = 8

-- Display: Aggressor Time
eurex_derivatives_eobi_t7_v8_1.aggressor_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Aggressor Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Aggressor Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Aggressor Time
eurex_derivatives_eobi_t7_v8_1.aggressor_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.aggressor_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v8_1.aggressor_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.aggressor_time, range, value, display)

  return offset + length, value
end

-- Execution Summary
eurex_derivatives_eobi_t7_v8_1.execution_summary = {}

-- Size: Execution Summary
eurex_derivatives_eobi_t7_v8_1.execution_summary.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.aggressor_time.size + 
  eurex_derivatives_eobi_t7_v8_1.request_time.size + 
  eurex_derivatives_eobi_t7_v8_1.exec_id.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.aggressor_side.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_1.size + 
  eurex_derivatives_eobi_t7_v8_1.trade_condition.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_4.size + 
  eurex_derivatives_eobi_t7_v8_1.last_px.size + 
  eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.size

-- Display: Execution Summary
eurex_derivatives_eobi_t7_v8_1.execution_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary
eurex_derivatives_eobi_t7_v8_1.execution_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Aggressor Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, aggressor_time = eurex_derivatives_eobi_t7_v8_1.aggressor_time.dissect(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eobi_t7_v8_1.request_time.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eobi_t7_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = eurex_derivatives_eobi_t7_v8_1.aggressor_side.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trade_condition = eurex_derivatives_eobi_t7_v8_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v8_1.pad_4.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Resting Hidden Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, resting_hidden_qty = eurex_derivatives_eobi_t7_v8_1.resting_hidden_qty.dissect(buffer, index, packet, parent)

  -- Resting Cxl Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, resting_cxl_qty = eurex_derivatives_eobi_t7_v8_1.resting_cxl_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary
eurex_derivatives_eobi_t7_v8_1.execution_summary.dissect = function(buffer, offset, packet, parent)
  if show.execution_summary then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.execution_summary, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.execution_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.execution_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.execution_summary.fields(buffer, offset, packet, parent)
  end
end

-- Pad 5
eurex_derivatives_eobi_t7_v8_1.pad_5 = {}

-- Size: Pad 5
eurex_derivatives_eobi_t7_v8_1.pad_5.size = 5

-- Display: Pad 5
eurex_derivatives_eobi_t7_v8_1.pad_5.display = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
eurex_derivatives_eobi_t7_v8_1.pad_5.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.pad_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v8_1.pad_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Input Source
eurex_derivatives_eobi_t7_v8_1.input_source = {}

-- Size: Input Source
eurex_derivatives_eobi_t7_v8_1.input_source.size = 1

-- Display: Input Source
eurex_derivatives_eobi_t7_v8_1.input_source.display = function(value)
  if value == 1 then
    return "Input Source: Clip Client Broker (1)"
  end
  if value == 0xFF then
    return "Input Source: No Value"
  end

  return "Input Source: Unknown("..value..")"
end

-- Dissect: Input Source
eurex_derivatives_eobi_t7_v8_1.input_source.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.input_source.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.input_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.input_source, range, value, display)

  return offset + length, value
end

-- Cross Request Type
eurex_derivatives_eobi_t7_v8_1.cross_request_type = {}

-- Size: Cross Request Type
eurex_derivatives_eobi_t7_v8_1.cross_request_type.size = 1

-- Display: Cross Request Type
eurex_derivatives_eobi_t7_v8_1.cross_request_type.display = function(value)
  if value == 1 then
    return "Cross Request Type: Cross Announcement (1)"
  end
  if value == 2 then
    return "Cross Request Type: Liquidity Improvement Cross (2)"
  end
  if value == 0xFF then
    return "Cross Request Type: No Value"
  end

  return "Cross Request Type: Unknown("..value..")"
end

-- Dissect: Cross Request Type
eurex_derivatives_eobi_t7_v8_1.cross_request_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.cross_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.cross_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.cross_request_type, range, value, display)

  return offset + length, value
end

-- Cross Request
eurex_derivatives_eobi_t7_v8_1.cross_request = {}

-- Size: Cross Request
eurex_derivatives_eobi_t7_v8_1.cross_request.size =
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.last_px.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.side.size + 
  eurex_derivatives_eobi_t7_v8_1.cross_request_type.size + 
  eurex_derivatives_eobi_t7_v8_1.input_source.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_5.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size

-- Display: Cross Request
eurex_derivatives_eobi_t7_v8_1.cross_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Request
eurex_derivatives_eobi_t7_v8_1.cross_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v8_1.side.dissect(buffer, index, packet, parent)

  -- Cross Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cross_request_type = eurex_derivatives_eobi_t7_v8_1.cross_request_type.dissect(buffer, index, packet, parent)

  -- Input Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, input_source = eurex_derivatives_eobi_t7_v8_1.input_source.dissect(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v8_1.pad_5.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
eurex_derivatives_eobi_t7_v8_1.cross_request.dissect = function(buffer, offset, packet, parent)
  if show.cross_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.cross_request, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.cross_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.cross_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.cross_request.fields(buffer, offset, packet, parent)
  end
end

-- Potential Security Trading Event
eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event = {}

-- Size: Potential Security Trading Event
eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.size = 1

-- Display: Potential Security Trading Event
eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.display = function(value)
  if value == 0 then
    return "Potential Security Trading Event: None (0)"
  end
  if value == 10 then
    return "Potential Security Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 0xFF then
    return "Potential Security Trading Event: No Value"
  end

  return "Potential Security Trading Event: Unknown("..value..")"
end

-- Dissect: Potential Security Trading Event
eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.potential_security_trading_event, range, value, display)

  return offset + length, value
end

-- Imbalance Qty
eurex_derivatives_eobi_t7_v8_1.imbalance_qty = {}

-- Size: Imbalance Qty
eurex_derivatives_eobi_t7_v8_1.imbalance_qty.size = 8

-- Display: Imbalance Qty
eurex_derivatives_eobi_t7_v8_1.imbalance_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Imbalance Qty: No Value"
  end

  return "Imbalance Qty: "..value
end

-- Translate: Imbalance Qty
eurex_derivatives_eobi_t7_v8_1.imbalance_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Imbalance Qty
eurex_derivatives_eobi_t7_v8_1.imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.imbalance_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.imbalance_qty.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.imbalance_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Auction Clearing Price
eurex_derivatives_eobi_t7_v8_1.auction_clearing_price = {}

-- Size: Auction Clearing Price
eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.size =
  eurex_derivatives_eobi_t7_v8_1.transact_time.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.last_px.size + 
  eurex_derivatives_eobi_t7_v8_1.last_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.imbalance_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.security_trading_status.size + 
  eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_6.size

-- Display: Auction Clearing Price
eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Clearing Price
eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Imbalance Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_qty = eurex_derivatives_eobi_t7_v8_1.imbalance_qty.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v8_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Potential Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, potential_security_trading_event = eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v8_1.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Clearing Price
eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.dissect = function(buffer, offset, packet, parent)
  if show.auction_clearing_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.auction_clearing_price, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.fields(buffer, offset, packet, parent)
  end
end

-- Offer Ord Type
eurex_derivatives_eobi_t7_v8_1.offer_ord_type = {}

-- Size: Offer Ord Type
eurex_derivatives_eobi_t7_v8_1.offer_ord_type.size = 1

-- Display: Offer Ord Type
eurex_derivatives_eobi_t7_v8_1.offer_ord_type.display = function(value)
  if value == 1 then
    return "Offer Ord Type: Market (1)"
  end
  if value == 0xFF then
    return "Offer Ord Type: No Value"
  end

  return "Offer Ord Type: Unknown("..value..")"
end

-- Dissect: Offer Ord Type
eurex_derivatives_eobi_t7_v8_1.offer_ord_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.offer_ord_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.offer_ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.offer_ord_type, range, value, display)

  return offset + length, value
end

-- Bid Ord Type
eurex_derivatives_eobi_t7_v8_1.bid_ord_type = {}

-- Size: Bid Ord Type
eurex_derivatives_eobi_t7_v8_1.bid_ord_type.size = 1

-- Display: Bid Ord Type
eurex_derivatives_eobi_t7_v8_1.bid_ord_type.display = function(value)
  if value == 1 then
    return "Bid Ord Type: Market (1)"
  end
  if value == 0xFF then
    return "Bid Ord Type: No Value"
  end

  return "Bid Ord Type: Unknown("..value..")"
end

-- Dissect: Bid Ord Type
eurex_derivatives_eobi_t7_v8_1.bid_ord_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.bid_ord_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.bid_ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.bid_ord_type, range, value, display)

  return offset + length, value
end

-- Auction Bbo
eurex_derivatives_eobi_t7_v8_1.auction_bbo = {}

-- Size: Auction Bbo
eurex_derivatives_eobi_t7_v8_1.auction_bbo.size =
  eurex_derivatives_eobi_t7_v8_1.transact_time.size + 
  eurex_derivatives_eobi_t7_v8_1.security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.bid_px.size + 
  eurex_derivatives_eobi_t7_v8_1.offer_px.size + 
  eurex_derivatives_eobi_t7_v8_1.bid_size.size + 
  eurex_derivatives_eobi_t7_v8_1.offer_size.size + 
  eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.size + 
  eurex_derivatives_eobi_t7_v8_1.bid_ord_type.size + 
  eurex_derivatives_eobi_t7_v8_1.offer_ord_type.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_5.size

-- Display: Auction Bbo
eurex_derivatives_eobi_t7_v8_1.auction_bbo.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Bbo
eurex_derivatives_eobi_t7_v8_1.auction_bbo.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_px = eurex_derivatives_eobi_t7_v8_1.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_px = eurex_derivatives_eobi_t7_v8_1.offer_px.dissect(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = eurex_derivatives_eobi_t7_v8_1.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = eurex_derivatives_eobi_t7_v8_1.offer_size.dissect(buffer, index, packet, parent)

  -- Potential Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, potential_security_trading_event = eurex_derivatives_eobi_t7_v8_1.potential_security_trading_event.dissect(buffer, index, packet, parent)

  -- Bid Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, bid_ord_type = eurex_derivatives_eobi_t7_v8_1.bid_ord_type.dissect(buffer, index, packet, parent)

  -- Offer Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, offer_ord_type = eurex_derivatives_eobi_t7_v8_1.offer_ord_type.dissect(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v8_1.pad_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Bbo
eurex_derivatives_eobi_t7_v8_1.auction_bbo.dissect = function(buffer, offset, packet, parent)
  if show.auction_bbo then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.auction_bbo, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.auction_bbo.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.auction_bbo.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.auction_bbo.fields(buffer, offset, packet, parent)
  end
end

-- Leg Side
eurex_derivatives_eobi_t7_v8_1.leg_side = {}

-- Size: Leg Side
eurex_derivatives_eobi_t7_v8_1.leg_side.size = 1

-- Display: Leg Side
eurex_derivatives_eobi_t7_v8_1.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end
  if value == 0xFF then
    return "Leg Side: No Value"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
eurex_derivatives_eobi_t7_v8_1.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Type
eurex_derivatives_eobi_t7_v8_1.leg_security_type = {}

-- Size: Leg Security Type
eurex_derivatives_eobi_t7_v8_1.leg_security_type.size = 1

-- Display: Leg Security Type
eurex_derivatives_eobi_t7_v8_1.leg_security_type.display = function(value)
  if value == 1 then
    return "Leg Security Type: Leg Security Multi Leg (1)"
  end
  if value == 2 then
    return "Leg Security Type: Leg Security Underlying Leg (2)"
  end
  if value == 0xFF then
    return "Leg Security Type: No Value"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
eurex_derivatives_eobi_t7_v8_1.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Price
eurex_derivatives_eobi_t7_v8_1.leg_price = {}

-- Size: Leg Price
eurex_derivatives_eobi_t7_v8_1.leg_price.size = 8

-- Display: Leg Price
eurex_derivatives_eobi_t7_v8_1.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
eurex_derivatives_eobi_t7_v8_1.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Leg Price
eurex_derivatives_eobi_t7_v8_1.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eobi_t7_v8_1.leg_price.translate(raw)
  local display = eurex_derivatives_eobi_t7_v8_1.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Security Id
eurex_derivatives_eobi_t7_v8_1.leg_security_id = {}

-- Size: Leg Security Id
eurex_derivatives_eobi_t7_v8_1.leg_security_id.size = 8

-- Display: Leg Security Id
eurex_derivatives_eobi_t7_v8_1.leg_security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Security Id: No Value"
  end

  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
eurex_derivatives_eobi_t7_v8_1.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eobi_t7_v8_1.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Symbol
eurex_derivatives_eobi_t7_v8_1.leg_symbol = {}

-- Size: Leg Symbol
eurex_derivatives_eobi_t7_v8_1.leg_symbol.size = 4

-- Display: Leg Symbol
eurex_derivatives_eobi_t7_v8_1.leg_symbol.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
eurex_derivatives_eobi_t7_v8_1.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v8_1.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp = {}

-- Size: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.size =
  eurex_derivatives_eobi_t7_v8_1.leg_symbol.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_4.size + 
  eurex_derivatives_eobi_t7_v8_1.leg_security_id.size + 
  eurex_derivatives_eobi_t7_v8_1.leg_price.size + 
  eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.size + 
  eurex_derivatives_eobi_t7_v8_1.leg_security_type.size + 
  eurex_derivatives_eobi_t7_v8_1.leg_side.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_2.size

-- Display: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.fields = function(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
  local index = offset

  -- Implicit Instrmt Leg Grp Comp Index
  if instrmt_leg_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.instrmt_leg_grp_comp_index, instrmt_leg_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_symbol = eurex_derivatives_eobi_t7_v8_1.leg_symbol.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v8_1.pad_4.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = eurex_derivatives_eobi_t7_v8_1.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_price = eurex_derivatives_eobi_t7_v8_1.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_ratio_qty = eurex_derivatives_eobi_t7_v8_1.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = eurex_derivatives_eobi_t7_v8_1.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = eurex_derivatives_eobi_t7_v8_1.leg_side.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v8_1.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.dissect = function(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
  if show.instrmt_leg_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.instrmt_leg_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.fields(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.fields(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
  end
end

-- No Legs
eurex_derivatives_eobi_t7_v8_1.no_legs = {}

-- Size: No Legs
eurex_derivatives_eobi_t7_v8_1.no_legs.size = 1

-- Display: No Legs
eurex_derivatives_eobi_t7_v8_1.no_legs.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Legs: No Value"
  end

  return "No Legs: "..value
end

-- Dissect: No Legs
eurex_derivatives_eobi_t7_v8_1.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.no_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Implied Market Indicator
eurex_derivatives_eobi_t7_v8_1.implied_market_indicator = {}

-- Size: Implied Market Indicator
eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.size = 1

-- Display: Implied Market Indicator
eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.display = function(value)
  if value == 0 then
    return "Implied Market Indicator: Not Implied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Implied In Out (3)"
  end
  if value == 0xFF then
    return "Implied Market Indicator: No Value"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Security Sub Type
eurex_derivatives_eobi_t7_v8_1.security_sub_type = {}

-- Size: Security Sub Type
eurex_derivatives_eobi_t7_v8_1.security_sub_type.size = 4

-- Display: Security Sub Type
eurex_derivatives_eobi_t7_v8_1.security_sub_type.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
eurex_derivatives_eobi_t7_v8_1.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.security_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v8_1.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Add Complex Instrument
eurex_derivatives_eobi_t7_v8_1.add_complex_instrument = {}

-- Calculate size of: Add Complex Instrument
eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v8_1.security_id.size

  index = index + eurex_derivatives_eobi_t7_v8_1.transact_time.size

  index = index + eurex_derivatives_eobi_t7_v8_1.security_sub_type.size

  index = index + eurex_derivatives_eobi_t7_v8_1.product_complex.size

  index = index + eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.size

  index = index + eurex_derivatives_eobi_t7_v8_1.no_legs.size

  index = index + eurex_derivatives_eobi_t7_v8_1.pad_1.size

  -- Calculate field size from count
  local instrmt_leg_grp_comp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + instrmt_leg_grp_comp_count * 32

  return index
end

-- Display: Add Complex Instrument
eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument
eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer Nullable
  index, security_sub_type = eurex_derivatives_eobi_t7_v8_1.security_sub_type.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eobi_t7_v8_1.product_complex.dissect(buffer, index, packet, parent)

  -- Implied Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, implied_market_indicator = eurex_derivatives_eobi_t7_v8_1.implied_market_indicator.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eobi_t7_v8_1.no_legs.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v8_1.pad_1.dissect(buffer, index, packet, parent)

  -- Repeating: Instrmt Leg Grp Comp
  for instrmt_leg_grp_comp_index = 1, no_legs do
    index, instrmt_leg_grp_comp = eurex_derivatives_eobi_t7_v8_1.instrmt_leg_grp_comp.dissect(buffer, index, packet, parent, instrmt_leg_grp_comp_index)
  end

  return index
end

-- Dissect: Add Complex Instrument
eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.add_complex_instrument then
    local length = eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.size(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.add_complex_instrument, range, display)
  end

  return eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.fields(buffer, offset, packet, parent)
end

-- Payload
eurex_derivatives_eobi_t7_v8_1.payload = {}

-- Size: Payload
eurex_derivatives_eobi_t7_v8_1.payload.size = function(buffer, offset, template_id)
  -- Size of Add Complex Instrument
  if template_id == 13400 then
    return eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.size(buffer, offset)
  end
  -- Size of Auction Bbo
  if template_id == 13500 then
    return eurex_derivatives_eobi_t7_v8_1.auction_bbo.size
  end
  -- Size of Auction Clearing Price
  if template_id == 13501 then
    return eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.size
  end
  -- Size of Cross Request
  if template_id == 13502 then
    return eurex_derivatives_eobi_t7_v8_1.cross_request.size
  end
  -- Size of Execution Summary
  if template_id == 13202 then
    return eurex_derivatives_eobi_t7_v8_1.execution_summary.size
  end
  -- Size of Full Order Execution
  if template_id == 13104 then
    return eurex_derivatives_eobi_t7_v8_1.full_order_execution.size
  end
  -- Size of Heartbeat
  if template_id == 13001 then
    return eurex_derivatives_eobi_t7_v8_1.heartbeat.size
  end
  -- Size of Instrument State Change
  if template_id == 13301 then
    return eurex_derivatives_eobi_t7_v8_1.instrument_state_change.size
  end
  -- Size of Instrument Summary
  if template_id == 13601 then
    return eurex_derivatives_eobi_t7_v8_1.instrument_summary.size(buffer, offset)
  end
  -- Size of Mass Instrument State Change
  if template_id == 13302 then
    return eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.size(buffer, offset)
  end
  -- Size of Order Add
  if template_id == 13100 then
    return eurex_derivatives_eobi_t7_v8_1.order_add.size
  end
  -- Size of Order Delete
  if template_id == 13102 then
    return eurex_derivatives_eobi_t7_v8_1.order_delete.size
  end
  -- Size of Order Mass Delete
  if template_id == 13103 then
    return eurex_derivatives_eobi_t7_v8_1.order_mass_delete.size
  end
  -- Size of Order Modify
  if template_id == 13101 then
    return eurex_derivatives_eobi_t7_v8_1.order_modify.size
  end
  -- Size of Order Modify Same Prio
  if template_id == 13106 then
    return eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.size
  end
  -- Size of Partial Order Execution
  if template_id == 13105 then
    return eurex_derivatives_eobi_t7_v8_1.partial_order_execution.size
  end
  -- Size of Product State Change
  if template_id == 13300 then
    return eurex_derivatives_eobi_t7_v8_1.product_state_change.size
  end
  -- Size of Product Summary
  if template_id == 13600 then
    return eurex_derivatives_eobi_t7_v8_1.product_summary.size
  end
  -- Size of Quote Request
  if template_id == 13503 then
    return eurex_derivatives_eobi_t7_v8_1.quote_request.size
  end
  -- Size of Snapshot Order
  if template_id == 13602 then
    return eurex_derivatives_eobi_t7_v8_1.snapshot_order.size
  end
  -- Size of Top Of Book
  if template_id == 13504 then
    return eurex_derivatives_eobi_t7_v8_1.top_of_book.size
  end
  -- Size of Trade Report
  if template_id == 13201 then
    return eurex_derivatives_eobi_t7_v8_1.trade_report.size
  end
  -- Size of Trade Reversal
  if template_id == 13200 then
    return eurex_derivatives_eobi_t7_v8_1.trade_reversal.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
eurex_derivatives_eobi_t7_v8_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
eurex_derivatives_eobi_t7_v8_1.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Add Complex Instrument
  if template_id == 13400 then
    return eurex_derivatives_eobi_t7_v8_1.add_complex_instrument.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Bbo
  if template_id == 13500 then
    return eurex_derivatives_eobi_t7_v8_1.auction_bbo.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Clearing Price
  if template_id == 13501 then
    return eurex_derivatives_eobi_t7_v8_1.auction_clearing_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if template_id == 13502 then
    return eurex_derivatives_eobi_t7_v8_1.cross_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary
  if template_id == 13202 then
    return eurex_derivatives_eobi_t7_v8_1.execution_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Full Order Execution
  if template_id == 13104 then
    return eurex_derivatives_eobi_t7_v8_1.full_order_execution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 13001 then
    return eurex_derivatives_eobi_t7_v8_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument State Change
  if template_id == 13301 then
    return eurex_derivatives_eobi_t7_v8_1.instrument_state_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Summary
  if template_id == 13601 then
    return eurex_derivatives_eobi_t7_v8_1.instrument_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Instrument State Change
  if template_id == 13302 then
    return eurex_derivatives_eobi_t7_v8_1.mass_instrument_state_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add
  if template_id == 13100 then
    return eurex_derivatives_eobi_t7_v8_1.order_add.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete
  if template_id == 13102 then
    return eurex_derivatives_eobi_t7_v8_1.order_delete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Delete
  if template_id == 13103 then
    return eurex_derivatives_eobi_t7_v8_1.order_mass_delete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify
  if template_id == 13101 then
    return eurex_derivatives_eobi_t7_v8_1.order_modify.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Same Prio
  if template_id == 13106 then
    return eurex_derivatives_eobi_t7_v8_1.order_modify_same_prio.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Partial Order Execution
  if template_id == 13105 then
    return eurex_derivatives_eobi_t7_v8_1.partial_order_execution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Product State Change
  if template_id == 13300 then
    return eurex_derivatives_eobi_t7_v8_1.product_state_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Product Summary
  if template_id == 13600 then
    return eurex_derivatives_eobi_t7_v8_1.product_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 13503 then
    return eurex_derivatives_eobi_t7_v8_1.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Order
  if template_id == 13602 then
    return eurex_derivatives_eobi_t7_v8_1.snapshot_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book
  if template_id == 13504 then
    return eurex_derivatives_eobi_t7_v8_1.top_of_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report
  if template_id == 13201 then
    return eurex_derivatives_eobi_t7_v8_1.trade_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Reversal
  if template_id == 13200 then
    return eurex_derivatives_eobi_t7_v8_1.trade_reversal.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
eurex_derivatives_eobi_t7_v8_1.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return eurex_derivatives_eobi_t7_v8_1.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = eurex_derivatives_eobi_t7_v8_1.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = eurex_derivatives_eobi_t7_v8_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.payload, range, display)

  return eurex_derivatives_eobi_t7_v8_1.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Msg Seq Num
eurex_derivatives_eobi_t7_v8_1.msg_seq_num = {}

-- Size: Msg Seq Num
eurex_derivatives_eobi_t7_v8_1.msg_seq_num.size = 4

-- Display: Msg Seq Num
eurex_derivatives_eobi_t7_v8_1.msg_seq_num.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Msg Seq Num: No Value"
  end

  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
eurex_derivatives_eobi_t7_v8_1.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Template Id
eurex_derivatives_eobi_t7_v8_1.template_id = {}

-- Size: Template Id
eurex_derivatives_eobi_t7_v8_1.template_id.size = 2

-- Display: Template Id
eurex_derivatives_eobi_t7_v8_1.template_id.display = function(value)
  if value == 0xFFFF then
    return "Template Id: No Value"
  end
  if value == 13400 then
    return "Template Id: Add Complex Instrument (13400)"
  end
  if value == 13500 then
    return "Template Id: Auction Bbo (13500)"
  end
  if value == 13501 then
    return "Template Id: Auction Clearing Price (13501)"
  end
  if value == 13502 then
    return "Template Id: Cross Request (13502)"
  end
  if value == 13202 then
    return "Template Id: Execution Summary (13202)"
  end
  if value == 13104 then
    return "Template Id: Full Order Execution (13104)"
  end
  if value == 13001 then
    return "Template Id: Heartbeat (13001)"
  end
  if value == 13301 then
    return "Template Id: Instrument State Change (13301)"
  end
  if value == 13601 then
    return "Template Id: Instrument Summary (13601)"
  end
  if value == 13302 then
    return "Template Id: Mass Instrument State Change (13302)"
  end
  if value == 13100 then
    return "Template Id: Order Add (13100)"
  end
  if value == 13102 then
    return "Template Id: Order Delete (13102)"
  end
  if value == 13103 then
    return "Template Id: Order Mass Delete (13103)"
  end
  if value == 13101 then
    return "Template Id: Order Modify (13101)"
  end
  if value == 13106 then
    return "Template Id: Order Modify Same Prio (13106)"
  end
  if value == 13002 then
    return "Template Id: Packet Header (13002)"
  end
  if value == 13105 then
    return "Template Id: Partial Order Execution (13105)"
  end
  if value == 13300 then
    return "Template Id: Product State Change (13300)"
  end
  if value == 13600 then
    return "Template Id: Product Summary (13600)"
  end
  if value == 13503 then
    return "Template Id: Quote Request (13503)"
  end
  if value == 13602 then
    return "Template Id: Snapshot Order (13602)"
  end
  if value == 13504 then
    return "Template Id: Top Of Book (13504)"
  end
  if value == 13201 then
    return "Template Id: Trade Report (13201)"
  end
  if value == 13200 then
    return "Template Id: Trade Reversal (13200)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
eurex_derivatives_eobi_t7_v8_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Body Len
eurex_derivatives_eobi_t7_v8_1.body_len = {}

-- Size: Body Len
eurex_derivatives_eobi_t7_v8_1.body_len.size = 2

-- Display: Body Len
eurex_derivatives_eobi_t7_v8_1.body_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Body Len: No Value"
  end

  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_derivatives_eobi_t7_v8_1.body_len.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.body_len, range, value, display)

  return offset + length, value
end

-- Message Header Comp
eurex_derivatives_eobi_t7_v8_1.message_header_comp = {}

-- Size: Message Header Comp
eurex_derivatives_eobi_t7_v8_1.message_header_comp.size =
  eurex_derivatives_eobi_t7_v8_1.body_len.size + 
  eurex_derivatives_eobi_t7_v8_1.template_id.size + 
  eurex_derivatives_eobi_t7_v8_1.msg_seq_num.size

-- Display: Message Header Comp
eurex_derivatives_eobi_t7_v8_1.message_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header Comp
eurex_derivatives_eobi_t7_v8_1.message_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, body_len = eurex_derivatives_eobi_t7_v8_1.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, template_id = eurex_derivatives_eobi_t7_v8_1.template_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_eobi_t7_v8_1.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header Comp
eurex_derivatives_eobi_t7_v8_1.message_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.message_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.message_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.message_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.message_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.message_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Message
eurex_derivatives_eobi_t7_v8_1.message = {}

-- Display: Message
eurex_derivatives_eobi_t7_v8_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
eurex_derivatives_eobi_t7_v8_1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header Comp: Struct of 3 fields
  index, message_header_comp = eurex_derivatives_eobi_t7_v8_1.message_header_comp.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 23 branches
  index = eurex_derivatives_eobi_t7_v8_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
eurex_derivatives_eobi_t7_v8_1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.message, buffer(offset, 0))
    local current = eurex_derivatives_eobi_t7_v8_1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = eurex_derivatives_eobi_t7_v8_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    eurex_derivatives_eobi_t7_v8_1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator = {}

-- Size: Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.size = 1

-- Display: Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.display = function(value)
  if value == 0 then
    return "Appl Seq Reset Indicator: No Reset (0)"
  end
  if value == 1 then
    return "Appl Seq Reset Indicator: Reset (1)"
  end
  if value == 0xFF then
    return "Appl Seq Reset Indicator: No Value"
  end

  return "Appl Seq Reset Indicator: Unknown("..value..")"
end

-- Dissect: Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.appl_seq_reset_indicator, range, value, display)

  return offset + length, value
end

-- Completion Indicator
eurex_derivatives_eobi_t7_v8_1.completion_indicator = {}

-- Size: Completion Indicator
eurex_derivatives_eobi_t7_v8_1.completion_indicator.size = 1

-- Display: Completion Indicator
eurex_derivatives_eobi_t7_v8_1.completion_indicator.display = function(value)
  if value == 0 then
    return "Completion Indicator: Incomplete (0)"
  end
  if value == 1 then
    return "Completion Indicator: Complete (1)"
  end
  if value == 0xFF then
    return "Completion Indicator: No Value"
  end

  return "Completion Indicator: Unknown("..value..")"
end

-- Dissect: Completion Indicator
eurex_derivatives_eobi_t7_v8_1.completion_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.completion_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.completion_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.completion_indicator, range, value, display)

  return offset + length, value
end

-- Partition Id
eurex_derivatives_eobi_t7_v8_1.partition_id = {}

-- Size: Partition Id
eurex_derivatives_eobi_t7_v8_1.partition_id.size = 1

-- Display: Partition Id
eurex_derivatives_eobi_t7_v8_1.partition_id.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
eurex_derivatives_eobi_t7_v8_1.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Market Segment Id
eurex_derivatives_eobi_t7_v8_1.market_segment_id = {}

-- Size: Market Segment Id
eurex_derivatives_eobi_t7_v8_1.market_segment_id.size = 4

-- Display: Market Segment Id
eurex_derivatives_eobi_t7_v8_1.market_segment_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
eurex_derivatives_eobi_t7_v8_1.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v8_1.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
eurex_derivatives_eobi_t7_v8_1.appl_seq_num = {}

-- Size: Appl Seq Num
eurex_derivatives_eobi_t7_v8_1.appl_seq_num.size = 4

-- Display: Appl Seq Num
eurex_derivatives_eobi_t7_v8_1.appl_seq_num.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Appl Seq Num: No Value"
  end

  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
eurex_derivatives_eobi_t7_v8_1.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
eurex_derivatives_eobi_t7_v8_1.packet_sequence_number = {}

-- Size: Packet Sequence Number
eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Id
eurex_derivatives_eobi_t7_v8_1.packet_id = {}

-- Size: Packet Id
eurex_derivatives_eobi_t7_v8_1.packet_id.size = 2

-- Display: Packet Id
eurex_derivatives_eobi_t7_v8_1.packet_id.display = function(value)
  if value == 13002 then
    return "Packet Id: Packet Id"
  end

  return "Packet Id: Unknown("..value..")"
end

-- Dissect: Packet Id
eurex_derivatives_eobi_t7_v8_1.packet_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.packet_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.packet_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_id, range, value, display)

  return offset + length, value
end

-- Header Length
eurex_derivatives_eobi_t7_v8_1.header_length = {}

-- Size: Header Length
eurex_derivatives_eobi_t7_v8_1.header_length.size = 2

-- Display: Header Length
eurex_derivatives_eobi_t7_v8_1.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
eurex_derivatives_eobi_t7_v8_1.header_length.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v8_1.header_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v8_1.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Packet Info
eurex_derivatives_eobi_t7_v8_1.packet_info = {}

-- Size: Packet Info
eurex_derivatives_eobi_t7_v8_1.packet_info.size =
  eurex_derivatives_eobi_t7_v8_1.header_length.size + 
  eurex_derivatives_eobi_t7_v8_1.packet_id.size + 
  eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.size

-- Display: Packet Info
eurex_derivatives_eobi_t7_v8_1.packet_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Info
eurex_derivatives_eobi_t7_v8_1.packet_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Header Length: 2 Byte Unsigned Fixed Width Integer
  index, header_length = eurex_derivatives_eobi_t7_v8_1.header_length.dissect(buffer, index, packet, parent)

  -- Packet Id: 2 Byte Unsigned Fixed Width Integer Static
  index, packet_id = eurex_derivatives_eobi_t7_v8_1.packet_id.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = eurex_derivatives_eobi_t7_v8_1.packet_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Info
eurex_derivatives_eobi_t7_v8_1.packet_info.dissect = function(buffer, offset, packet, parent)
  if show.packet_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_info, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.packet_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.packet_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.packet_info.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
eurex_derivatives_eobi_t7_v8_1.packet_header = {}

-- Size: Packet Header
eurex_derivatives_eobi_t7_v8_1.packet_header.size =
  eurex_derivatives_eobi_t7_v8_1.packet_info.size + 
  eurex_derivatives_eobi_t7_v8_1.appl_seq_num.size + 
  eurex_derivatives_eobi_t7_v8_1.market_segment_id.size + 
  eurex_derivatives_eobi_t7_v8_1.partition_id.size + 
  eurex_derivatives_eobi_t7_v8_1.completion_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.size + 
  eurex_derivatives_eobi_t7_v8_1.pad_5.size + 
  eurex_derivatives_eobi_t7_v8_1.transact_time.size

-- Display: Packet Header
eurex_derivatives_eobi_t7_v8_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
eurex_derivatives_eobi_t7_v8_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Info: Struct of 3 fields
  index, packet_info = eurex_derivatives_eobi_t7_v8_1.packet_info.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_seq_num = eurex_derivatives_eobi_t7_v8_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eobi_t7_v8_1.market_segment_id.dissect(buffer, index, packet, parent)

  -- Partition Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eobi_t7_v8_1.partition_id.dissect(buffer, index, packet, parent)

  -- Completion Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, completion_indicator = eurex_derivatives_eobi_t7_v8_1.completion_indicator.dissect(buffer, index, packet, parent)

  -- Appl Seq Reset Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_reset_indicator = eurex_derivatives_eobi_t7_v8_1.appl_seq_reset_indicator.dissect(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v8_1.pad_5.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v8_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
eurex_derivatives_eobi_t7_v8_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eobi_t7_v8_1.fields.packet_header, buffer(offset, 0))
    local index = eurex_derivatives_eobi_t7_v8_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eobi_t7_v8_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eobi_t7_v8_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
eurex_derivatives_eobi_t7_v8_1.packet = {}

-- Dissect Packet
eurex_derivatives_eobi_t7_v8_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = eurex_derivatives_eobi_t7_v8_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Body Len
    local body_len = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = eurex_derivatives_eobi_t7_v8_1.message.dissect(buffer, index, packet, parent, body_len)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_eurex_derivatives_eobi_t7_v8_1.init()
end

-- Dissector for Eurex Derivatives Eobi T7 8.1
function omi_eurex_derivatives_eobi_t7_v8_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_eurex_derivatives_eobi_t7_v8_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_eurex_derivatives_eobi_t7_v8_1, buffer(), omi_eurex_derivatives_eobi_t7_v8_1.description, "("..buffer:len().." Bytes)")
  return eurex_derivatives_eobi_t7_v8_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_eurex_derivatives_eobi_t7_v8_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
eurex_derivatives_eobi_t7_v8_1.packet.requiredsize = function(buffer)

  return true
end

-- Verify Packet Id Field
eurex_derivatives_eobi_t7_v8_1.packet_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2, 2):le_uint()

  if value == 13002 then
    return true
  end

  return false
end

-- Dissector Heuristic for Eurex Derivatives Eobi T7 8.1
local function omi_eurex_derivatives_eobi_t7_v8_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not eurex_derivatives_eobi_t7_v8_1.packet.requiredsize(buffer) then return false end

  -- Verify Packet Id
  if not eurex_derivatives_eobi_t7_v8_1.packet_id.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_eurex_derivatives_eobi_t7_v8_1
  omi_eurex_derivatives_eobi_t7_v8_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Eobi T7 8.1
omi_eurex_derivatives_eobi_t7_v8_1:register_heuristic("udp", omi_eurex_derivatives_eobi_t7_v8_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 8.1
--   Date: Monday, March 23, 2020
--   Specification: T7_EOBI_Manual_v.8.1.0.pdf
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
