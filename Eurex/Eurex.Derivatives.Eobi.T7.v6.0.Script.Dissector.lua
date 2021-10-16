-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 6.0 Protocol
local eurex_derivatives_eobi_t7_v6_0 = Proto("Eurex.Derivatives.Eobi.T7.v6.0.Lua", "Eurex Derivatives Eobi T7 6.0")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 6.0 Fields
eurex_derivatives_eobi_t7_v6_0.fields.add_complex_instrument = ProtoField.new("Add Complex Instrument", "eurex.derivatives.eobi.t7.v6.0.addcomplexinstrument", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.aggressor_side = ProtoField.new("Aggressor Side", "eurex.derivatives.eobi.t7.v6.0.aggressorside", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.aggressor_time = ProtoField.new("Aggressor Time", "eurex.derivatives.eobi.t7.v6.0.aggressortime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "eurex.derivatives.eobi.t7.v6.0.algorithmictradeindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.derivatives.eobi.t7.v6.0.applseqnum", ftypes.UINT32)
eurex_derivatives_eobi_t7_v6_0.fields.appl_seq_reset_indicator = ProtoField.new("Appl Seq Reset Indicator", "eurex.derivatives.eobi.t7.v6.0.applseqresetindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.auction_bbo = ProtoField.new("Auction Bbo", "eurex.derivatives.eobi.t7.v6.0.auctionbbo", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.auction_clearing_price = ProtoField.new("Auction Clearing Price", "eurex.derivatives.eobi.t7.v6.0.auctionclearingprice", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.bid_px = ProtoField.new("Bid Px", "eurex.derivatives.eobi.t7.v6.0.bidpx", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.bid_size = ProtoField.new("Bid Size", "eurex.derivatives.eobi.t7.v6.0.bidsize", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.eobi.t7.v6.0.bodylen", ftypes.UINT16)
eurex_derivatives_eobi_t7_v6_0.fields.completion_indicator = ProtoField.new("Completion Indicator", "eurex.derivatives.eobi.t7.v6.0.completionindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.cross_request = ProtoField.new("Cross Request", "eurex.derivatives.eobi.t7.v6.0.crossrequest", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.display_qty = ProtoField.new("Display Qty", "eurex.derivatives.eobi.t7.v6.0.displayqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.eobi.t7.v6.0.execid", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.execution_summary = ProtoField.new("Execution Summary", "eurex.derivatives.eobi.t7.v6.0.executionsummary", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.derivatives.eobi.t7.v6.0.fastmarketindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.full_order_execution = ProtoField.new("Full Order Execution", "eurex.derivatives.eobi.t7.v6.0.fullorderexecution", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.header_length = ProtoField.new("Header Length", "eurex.derivatives.eobi.t7.v6.0.headerlength", ftypes.UINT16)
eurex_derivatives_eobi_t7_v6_0.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.eobi.t7.v6.0.heartbeat", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "eurex.derivatives.eobi.t7.v6.0.imbalanceqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.derivatives.eobi.t7.v6.0.impliedmarketindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.instrmt_leg_grp_comp = ProtoField.new("Instrmt Leg Grp Comp", "eurex.derivatives.eobi.t7.v6.0.instrmtleggrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.instrument_state_change = ProtoField.new("Instrument State Change", "eurex.derivatives.eobi.t7.v6.0.instrumentstatechange", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.instrument_summary = ProtoField.new("Instrument Summary", "eurex.derivatives.eobi.t7.v6.0.instrumentsummary", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.derivatives.eobi.t7.v6.0.lastmsgseqnumprocessed", ftypes.UINT32)
eurex_derivatives_eobi_t7_v6_0.fields.last_px = ProtoField.new("Last Px", "eurex.derivatives.eobi.t7.v6.0.lastpx", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.last_qty = ProtoField.new("Last Qty", "eurex.derivatives.eobi.t7.v6.0.lastqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.derivatives.eobi.t7.v6.0.lastupdatetime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.derivatives.eobi.t7.v6.0.legratioqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.derivatives.eobi.t7.v6.0.legsecurityid", ftypes.INT64)
eurex_derivatives_eobi_t7_v6_0.fields.leg_side = ProtoField.new("Leg Side", "eurex.derivatives.eobi.t7.v6.0.legside", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.derivatives.eobi.t7.v6.0.legsymbol", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.market_condition = ProtoField.new("Market Condition", "eurex.derivatives.eobi.t7.v6.0.marketcondition", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.eobi.t7.v6.0.marketsegmentid", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.derivatives.eobi.t7.v6.0.matchsubtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.eobi.t7.v6.0.matchtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "eurex.derivatives.eobi.t7.v6.0.mdentrypx", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.md_entry_size = ProtoField.new("Md Entry Size", "eurex.derivatives.eobi.t7.v6.0.mdentrysize", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "eurex.derivatives.eobi.t7.v6.0.mdentrytype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.md_instrument_entry_grp_comp = ProtoField.new("Md Instrument Entry Grp Comp", "eurex.derivatives.eobi.t7.v6.0.mdinstrumententrygrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.md_trade_entry_grp_comp = ProtoField.new("Md Trade Entry Grp Comp", "eurex.derivatives.eobi.t7.v6.0.mdtradeentrygrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.message = ProtoField.new("Message", "eurex.derivatives.eobi.t7.v6.0.message", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.message_header_comp = ProtoField.new("Message Header Comp", "eurex.derivatives.eobi.t7.v6.0.messageheadercomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.eobi.t7.v6.0.msgseqnum", ftypes.UINT32)
eurex_derivatives_eobi_t7_v6_0.fields.no_legs = ProtoField.new("No Legs", "eurex.derivatives.eobi.t7.v6.0.nolegs", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.no_md_entries = ProtoField.new("No Md Entries", "eurex.derivatives.eobi.t7.v6.0.nomdentries", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.offer_px = ProtoField.new("Offer Px", "eurex.derivatives.eobi.t7.v6.0.offerpx", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.offer_size = ProtoField.new("Offer Size", "eurex.derivatives.eobi.t7.v6.0.offersize", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.eobi.t7.v6.0.ordtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.order_add = ProtoField.new("Order Add", "eurex.derivatives.eobi.t7.v6.0.orderadd", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.order_delete = ProtoField.new("Order Delete", "eurex.derivatives.eobi.t7.v6.0.orderdelete", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.order_details_comp = ProtoField.new("Order Details Comp", "eurex.derivatives.eobi.t7.v6.0.orderdetailscomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.order_mass_delete = ProtoField.new("Order Mass Delete", "eurex.derivatives.eobi.t7.v6.0.ordermassdelete", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.order_modify = ProtoField.new("Order Modify", "eurex.derivatives.eobi.t7.v6.0.ordermodify", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.order_modify_same_prio = ProtoField.new("Order Modify Same Prio", "eurex.derivatives.eobi.t7.v6.0.ordermodifysameprio", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.packet = ProtoField.new("Packet", "eurex.derivatives.eobi.t7.v6.0.packet", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.packet_header = ProtoField.new("Packet Header", "eurex.derivatives.eobi.t7.v6.0.packetheader", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.packet_id = ProtoField.new("Packet Id", "eurex.derivatives.eobi.t7.v6.0.packetid", ftypes.UINT16)
eurex_derivatives_eobi_t7_v6_0.fields.packet_info = ProtoField.new("Packet Info", "eurex.derivatives.eobi.t7.v6.0.packetinfo", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "eurex.derivatives.eobi.t7.v6.0.packetsequencenumber", ftypes.UINT32)
eurex_derivatives_eobi_t7_v6_0.fields.pad_1 = ProtoField.new("Pad 1", "eurex.derivatives.eobi.t7.v6.0.pad1", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.eobi.t7.v6.0.pad2", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.eobi.t7.v6.0.pad3", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.eobi.t7.v6.0.pad4", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.pad_5 = ProtoField.new("Pad 5", "eurex.derivatives.eobi.t7.v6.0.pad5", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.eobi.t7.v6.0.pad6", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.eobi.t7.v6.0.pad7", ftypes.BYTES)
eurex_derivatives_eobi_t7_v6_0.fields.partial_order_execution = ProtoField.new("Partial Order Execution", "eurex.derivatives.eobi.t7.v6.0.partialorderexecution", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.eobi.t7.v6.0.partitionid", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.payload = ProtoField.new("Payload", "eurex.derivatives.eobi.t7.v6.0.payload", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.potential_security_trading_event = ProtoField.new("Potential Security Trading Event", "eurex.derivatives.eobi.t7.v6.0.potentialsecuritytradingevent", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "eurex.derivatives.eobi.t7.v6.0.prevdisplayqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.prev_price = ProtoField.new("Prev Price", "eurex.derivatives.eobi.t7.v6.0.prevprice", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.price = ProtoField.new("Price", "eurex.derivatives.eobi.t7.v6.0.price", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.eobi.t7.v6.0.productcomplex", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.product_state_change = ProtoField.new("Product State Change", "eurex.derivatives.eobi.t7.v6.0.productstatechange", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.product_summary = ProtoField.new("Product Summary", "eurex.derivatives.eobi.t7.v6.0.productsummary", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.quote_request = ProtoField.new("Quote Request", "eurex.derivatives.eobi.t7.v6.0.quoterequest", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.eobi.t7.v6.0.requesttime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.resting_cxl_qty = ProtoField.new("Resting Cxl Qty", "eurex.derivatives.eobi.t7.v6.0.restingcxlqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "eurex.derivatives.eobi.t7.v6.0.restinghiddenqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.eobi.t7.v6.0.securityid", ftypes.INT64)
eurex_derivatives_eobi_t7_v6_0.fields.security_status = ProtoField.new("Security Status", "eurex.derivatives.eobi.t7.v6.0.securitystatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.derivatives.eobi.t7.v6.0.securitysubtype", ftypes.INT32)
eurex_derivatives_eobi_t7_v6_0.fields.security_trading_event = ProtoField.new("Security Trading Event", "eurex.derivatives.eobi.t7.v6.0.securitytradingevent", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "eurex.derivatives.eobi.t7.v6.0.securitytradingstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.side = ProtoField.new("Side", "eurex.derivatives.eobi.t7.v6.0.side", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.snapshot_order = ProtoField.new("Snapshot Order", "eurex.derivatives.eobi.t7.v6.0.snapshotorder", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.eobi.t7.v6.0.templateid", ftypes.UINT16)
eurex_derivatives_eobi_t7_v6_0.fields.top_of_book = ProtoField.new("Top Of Book", "eurex.derivatives.eobi.t7.v6.0.topofbook", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.tot_no_orders = ProtoField.new("Tot No Orders", "eurex.derivatives.eobi.t7.v6.0.totnoorders", ftypes.UINT16)
eurex_derivatives_eobi_t7_v6_0.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "eurex.derivatives.eobi.t7.v6.0.tradsesstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.trade_condition = ProtoField.new("Trade Condition", "eurex.derivatives.eobi.t7.v6.0.tradecondition", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.trade_report = ProtoField.new("Trade Report", "eurex.derivatives.eobi.t7.v6.0.tradereport", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.trade_reversal = ProtoField.new("Trade Reversal", "eurex.derivatives.eobi.t7.v6.0.tradereversal", ftypes.STRING)
eurex_derivatives_eobi_t7_v6_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "eurex.derivatives.eobi.t7.v6.0.tradingsessionid", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.eobi.t7.v6.0.tradingsessionsubid", ftypes.UINT8)
eurex_derivatives_eobi_t7_v6_0.fields.transact_time = ProtoField.new("Transact Time", "eurex.derivatives.eobi.t7.v6.0.transacttime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.derivatives.eobi.t7.v6.0.trdmatchid", ftypes.UINT32)
eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "eurex.derivatives.eobi.t7.v6.0.trdregtsexecutiontime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg Ts Prev Time Priority", "eurex.derivatives.eobi.t7.v6.0.trdregtsprevtimepriority", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "eurex.derivatives.eobi.t7.v6.0.trdregtstimein", ftypes.UINT64)
eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.derivatives.eobi.t7.v6.0.trdregtstimepriority", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 6.0 Element Dissection Options
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
show.snapshot_order = true
show.top_of_book = true
show.trade_report = true
show.trade_reversal = true
show.payload = false

-- Register Eurex Derivatives Eobi T7 6.0 Show Options
eurex_derivatives_eobi_t7_v6_0.prefs.show_add_complex_instrument = Pref.bool("Show Add Complex Instrument", show.add_complex_instrument, "Parse and add Add Complex Instrument to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_auction_bbo = Pref.bool("Show Auction Bbo", show.auction_bbo, "Parse and add Auction Bbo to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_auction_clearing_price = Pref.bool("Show Auction Clearing Price", show.auction_clearing_price, "Parse and add Auction Clearing Price to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_execution_summary = Pref.bool("Show Execution Summary", show.execution_summary, "Parse and add Execution Summary to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_full_order_execution = Pref.bool("Show Full Order Execution", show.full_order_execution, "Parse and add Full Order Execution to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_instrmt_leg_grp_comp = Pref.bool("Show Instrmt Leg Grp Comp", show.instrmt_leg_grp_comp, "Parse and add Instrmt Leg Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_instrument_state_change = Pref.bool("Show Instrument State Change", show.instrument_state_change, "Parse and add Instrument State Change to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_instrument_summary = Pref.bool("Show Instrument Summary", show.instrument_summary, "Parse and add Instrument Summary to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_md_instrument_entry_grp_comp = Pref.bool("Show Md Instrument Entry Grp Comp", show.md_instrument_entry_grp_comp, "Parse and add Md Instrument Entry Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_md_trade_entry_grp_comp = Pref.bool("Show Md Trade Entry Grp Comp", show.md_trade_entry_grp_comp, "Parse and add Md Trade Entry Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_message_header_comp = Pref.bool("Show Message Header Comp", show.message_header_comp, "Parse and add Message Header Comp to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_order_add = Pref.bool("Show Order Add", show.order_add, "Parse and add Order Add to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_order_delete = Pref.bool("Show Order Delete", show.order_delete, "Parse and add Order Delete to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_order_details_comp = Pref.bool("Show Order Details Comp", show.order_details_comp, "Parse and add Order Details Comp to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_order_mass_delete = Pref.bool("Show Order Mass Delete", show.order_mass_delete, "Parse and add Order Mass Delete to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_order_modify = Pref.bool("Show Order Modify", show.order_modify, "Parse and add Order Modify to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_order_modify_same_prio = Pref.bool("Show Order Modify Same Prio", show.order_modify_same_prio, "Parse and add Order Modify Same Prio to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_packet_info = Pref.bool("Show Packet Info", show.packet_info, "Parse and add Packet Info to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_partial_order_execution = Pref.bool("Show Partial Order Execution", show.partial_order_execution, "Parse and add Partial Order Execution to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_product_state_change = Pref.bool("Show Product State Change", show.product_state_change, "Parse and add Product State Change to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_product_summary = Pref.bool("Show Product Summary", show.product_summary, "Parse and add Product Summary to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_snapshot_order = Pref.bool("Show Snapshot Order", show.snapshot_order, "Parse and add Snapshot Order to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_top_of_book = Pref.bool("Show Top Of Book", show.top_of_book, "Parse and add Top Of Book to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_trade_report = Pref.bool("Show Trade Report", show.trade_report, "Parse and add Trade Report to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_trade_reversal = Pref.bool("Show Trade Reversal", show.trade_reversal, "Parse and add Trade Reversal to protocol tree")
eurex_derivatives_eobi_t7_v6_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function eurex_derivatives_eobi_t7_v6_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_complex_instrument ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_add_complex_instrument then
    show.add_complex_instrument = eurex_derivatives_eobi_t7_v6_0.prefs.show_add_complex_instrument
    changed = true
  end
  if show.auction_bbo ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_auction_bbo then
    show.auction_bbo = eurex_derivatives_eobi_t7_v6_0.prefs.show_auction_bbo
    changed = true
  end
  if show.auction_clearing_price ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_auction_clearing_price then
    show.auction_clearing_price = eurex_derivatives_eobi_t7_v6_0.prefs.show_auction_clearing_price
    changed = true
  end
  if show.cross_request ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_cross_request then
    show.cross_request = eurex_derivatives_eobi_t7_v6_0.prefs.show_cross_request
    changed = true
  end
  if show.execution_summary ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_execution_summary then
    show.execution_summary = eurex_derivatives_eobi_t7_v6_0.prefs.show_execution_summary
    changed = true
  end
  if show.full_order_execution ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_full_order_execution then
    show.full_order_execution = eurex_derivatives_eobi_t7_v6_0.prefs.show_full_order_execution
    changed = true
  end
  if show.heartbeat ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_heartbeat then
    show.heartbeat = eurex_derivatives_eobi_t7_v6_0.prefs.show_heartbeat
    changed = true
  end
  if show.instrmt_leg_grp_comp ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_instrmt_leg_grp_comp then
    show.instrmt_leg_grp_comp = eurex_derivatives_eobi_t7_v6_0.prefs.show_instrmt_leg_grp_comp
    changed = true
  end
  if show.instrument_state_change ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_instrument_state_change then
    show.instrument_state_change = eurex_derivatives_eobi_t7_v6_0.prefs.show_instrument_state_change
    changed = true
  end
  if show.instrument_summary ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_instrument_summary then
    show.instrument_summary = eurex_derivatives_eobi_t7_v6_0.prefs.show_instrument_summary
    changed = true
  end
  if show.md_instrument_entry_grp_comp ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_md_instrument_entry_grp_comp then
    show.md_instrument_entry_grp_comp = eurex_derivatives_eobi_t7_v6_0.prefs.show_md_instrument_entry_grp_comp
    changed = true
  end
  if show.md_trade_entry_grp_comp ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_md_trade_entry_grp_comp then
    show.md_trade_entry_grp_comp = eurex_derivatives_eobi_t7_v6_0.prefs.show_md_trade_entry_grp_comp
    changed = true
  end
  if show.message ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_message then
    show.message = eurex_derivatives_eobi_t7_v6_0.prefs.show_message
    changed = true
  end
  if show.message_header_comp ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_message_header_comp then
    show.message_header_comp = eurex_derivatives_eobi_t7_v6_0.prefs.show_message_header_comp
    changed = true
  end
  if show.order_add ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_order_add then
    show.order_add = eurex_derivatives_eobi_t7_v6_0.prefs.show_order_add
    changed = true
  end
  if show.order_delete ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_order_delete then
    show.order_delete = eurex_derivatives_eobi_t7_v6_0.prefs.show_order_delete
    changed = true
  end
  if show.order_details_comp ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_order_details_comp then
    show.order_details_comp = eurex_derivatives_eobi_t7_v6_0.prefs.show_order_details_comp
    changed = true
  end
  if show.order_mass_delete ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_order_mass_delete then
    show.order_mass_delete = eurex_derivatives_eobi_t7_v6_0.prefs.show_order_mass_delete
    changed = true
  end
  if show.order_modify ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_order_modify then
    show.order_modify = eurex_derivatives_eobi_t7_v6_0.prefs.show_order_modify
    changed = true
  end
  if show.order_modify_same_prio ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_order_modify_same_prio then
    show.order_modify_same_prio = eurex_derivatives_eobi_t7_v6_0.prefs.show_order_modify_same_prio
    changed = true
  end
  if show.packet ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_packet then
    show.packet = eurex_derivatives_eobi_t7_v6_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_packet_header then
    show.packet_header = eurex_derivatives_eobi_t7_v6_0.prefs.show_packet_header
    changed = true
  end
  if show.packet_info ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_packet_info then
    show.packet_info = eurex_derivatives_eobi_t7_v6_0.prefs.show_packet_info
    changed = true
  end
  if show.partial_order_execution ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_partial_order_execution then
    show.partial_order_execution = eurex_derivatives_eobi_t7_v6_0.prefs.show_partial_order_execution
    changed = true
  end
  if show.product_state_change ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_product_state_change then
    show.product_state_change = eurex_derivatives_eobi_t7_v6_0.prefs.show_product_state_change
    changed = true
  end
  if show.product_summary ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_product_summary then
    show.product_summary = eurex_derivatives_eobi_t7_v6_0.prefs.show_product_summary
    changed = true
  end
  if show.quote_request ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_quote_request then
    show.quote_request = eurex_derivatives_eobi_t7_v6_0.prefs.show_quote_request
    changed = true
  end
  if show.snapshot_order ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_snapshot_order then
    show.snapshot_order = eurex_derivatives_eobi_t7_v6_0.prefs.show_snapshot_order
    changed = true
  end
  if show.top_of_book ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_top_of_book then
    show.top_of_book = eurex_derivatives_eobi_t7_v6_0.prefs.show_top_of_book
    changed = true
  end
  if show.trade_report ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_trade_report then
    show.trade_report = eurex_derivatives_eobi_t7_v6_0.prefs.show_trade_report
    changed = true
  end
  if show.trade_reversal ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_trade_reversal then
    show.trade_reversal = eurex_derivatives_eobi_t7_v6_0.prefs.show_trade_reversal
    changed = true
  end
  if show.payload ~= eurex_derivatives_eobi_t7_v6_0.prefs.show_payload then
    show.payload = eurex_derivatives_eobi_t7_v6_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Eurex Derivatives Eobi T7 6.0
-----------------------------------------------------------------------

-- Size: Pad 3
size_of.pad_3 = 3

-- Display: Pad 3
display.pad_3 = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
dissect.pad_3 = function(buffer, offset, packet, parent)
  local length = size_of.pad_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_3(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type
size_of.md_entry_type = 1

-- Display: Md Entry Type
display.md_entry_type = function(value)
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

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size
size_of.md_entry_size = 4

-- Display: Md Entry Size
display.md_entry_size = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px
size_of.md_entry_px = 8

-- Display: Md Entry Px
display.md_entry_px = function(value)
  return "Md Entry Px: "..value:tonumber()/100000000
end

-- Dissect: Md Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Trade Entry Grp Comp
size_of.md_trade_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px

  index = index + size_of.md_entry_size

  index = index + size_of.md_entry_type

  index = index + size_of.pad_3

  return index
end

-- Display: Md Trade Entry Grp Comp
display.md_trade_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Trade Entry Grp Comp
dissect.md_trade_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_entry_type = dissect.md_entry_type(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Trade Entry Grp Comp
dissect.md_trade_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_trade_entry_grp_comp then
    local length = size_of.md_trade_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_trade_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.md_trade_entry_grp_comp, range, display)
  end

  return dissect.md_trade_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Md Entries
size_of.no_md_entries = 1

-- Display: No Md Entries
display.no_md_entries = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
dissect.no_md_entries = function(buffer, offset, packet, parent)
  local length = size_of.no_md_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_md_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- Size: Pad 6
size_of.pad_6 = 6

-- Display: Pad 6
display.pad_6 = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
dissect.pad_6 = function(buffer, offset, packet, parent)
  local length = size_of.pad_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_6(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end
  if value == 153 then
    return "Trade Condition: Systematic Internalizer (153)"
  end
  if value == 155 then
    return "Trade Condition: Midpoint Price (155)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Execution Time
size_of.trd_reg_ts_execution_time = 8

-- Display: Trd Reg Ts Execution Time
display.trd_reg_ts_execution_time = function(value)
  return "Trd Reg Ts Execution Time: "..value
end

-- Dissect: Trd Reg Ts Execution Time
dissect.trd_reg_ts_execution_time = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_execution_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_execution_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length, value
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  return "Last Px: "..value:tonumber()/100000000
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = size_of.last_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
size_of.last_qty = 4

-- Display: Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Trd Match Id
size_of.trd_match_id = 4

-- Display: Trd Match Id
display.trd_match_id = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Security Id
size_of.security_id = 8

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Reversal
size_of.trade_reversal = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.trd_match_id

  index = index + size_of.last_qty

  index = index + size_of.last_px

  index = index + size_of.trd_reg_ts_execution_time

  index = index + size_of.trade_condition

  index = index + size_of.pad_6

  index = index + size_of.no_md_entries

  -- Calculate field size from count
  local md_trade_entry_grp_comp_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_trade_entry_grp_comp_count * 16

  return index
end

-- Display: Trade Reversal
display.trade_reversal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Reversal
dissect.trade_reversal_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_execution_time = dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- No Md Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_md_entries = dissect.no_md_entries(buffer, index, packet, parent)

  -- Md Trade Entry Grp Comp: Struct of 4 fields
  for i = 1, no_md_entries do
    index = dissect.md_trade_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Reversal
dissect.trade_reversal = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_reversal then
    local length = size_of.trade_reversal(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_reversal(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trade_reversal, range, display)
  end

  return dissect.trade_reversal_fields(buffer, offset, packet, parent)
end

-- Size: Pad 4
size_of.pad_4 = 4

-- Display: Pad 4
display.pad_4 = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
dissect.pad_4 = function(buffer, offset, packet, parent)
  local length = size_of.pad_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_4(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Size: Algorithmic Trade Indicator
size_of.algorithmic_trade_indicator = 1

-- Display: Algorithmic Trade Indicator
display.algorithmic_trade_indicator = function(value)
  if value == 1 then
    return "Algorithmic Trade Indicator: Algorithmic Trade (1)"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
dissect.algorithmic_trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.algorithmic_trade_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.algorithmic_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.algorithmic_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Match Sub Type
size_of.match_sub_type = 1

-- Display: Match Sub Type
display.match_sub_type = function(value)
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

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
dissect.match_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.match_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Match Type
size_of.match_type = 1

-- Display: Match Type
display.match_type = function(value)
  if value == 3 then
    return "Match Type: Confirmed Trade Report (3)"
  end
  if value == 5 then
    return "Match Type: Cross Auction (5)"
  end
  if value == 7 then
    return "Match Type: Call Auction (7)"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
dissect.match_type = function(buffer, offset, packet, parent)
  local length = size_of.match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.match_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report
size_of.trade_report = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.trd_match_id

  index = index + size_of.last_qty

  index = index + size_of.last_px

  index = index + size_of.match_type

  index = index + size_of.match_sub_type

  index = index + size_of.algorithmic_trade_indicator

  index = index + size_of.trade_condition

  index = index + size_of.pad_4

  return index
end

-- Display: Trade Report
display.trade_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report
dissect.trade_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_sub_type = dissect.match_sub_type(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, algorithmic_trade_indicator = dissect.algorithmic_trade_indicator(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report
dissect.trade_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report then
    local length = size_of.trade_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_report(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trade_report, range, display)
  end

  return dissect.trade_report_fields(buffer, offset, packet, parent)
end

-- Size: Offer Px
size_of.offer_px = 8

-- Display: Offer Px
display.offer_px = function(value)
  return "Offer Px: "..value:tonumber()/100000000
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local length = size_of.offer_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
size_of.bid_px = 8

-- Display: Bid Px
display.bid_px = function(value)
  return "Bid Px: "..value:tonumber()/100000000
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local length = size_of.bid_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Top Of Book
size_of.top_of_book = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  return index
end

-- Display: Top Of Book
display.top_of_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top Of Book
dissect.top_of_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book
dissect.top_of_book = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_book then
    local length = size_of.top_of_book(buffer, offset)
    local range = buffer(offset, length)
    local display = display.top_of_book(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.top_of_book, range, display)
  end

  return dissect.top_of_book_fields(buffer, offset, packet, parent)
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value:tonumber()/100000000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Pad 2
size_of.pad_2 = 2

-- Display: Pad 2
display.pad_2 = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
dissect.pad_2 = function(buffer, offset, packet, parent)
  local length = size_of.pad_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_2(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
size_of.ord_type = 1

-- Display: Ord Type
display.ord_type = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
dissect.ord_type = function(buffer, offset, packet, parent)
  local length = size_of.ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
size_of.display_qty = 4

-- Display: Display Qty
display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time Priority
size_of.trd_reg_ts_time_priority = 8

-- Display: Trd Reg Ts Time Priority
display.trd_reg_ts_time_priority = function(value)
  return "Trd Reg Ts Time Priority: "..value
end

-- Dissect: Trd Reg Ts Time Priority
dissect.trd_reg_ts_time_priority = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_time_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Details Comp
size_of.order_details_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.display_qty

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.pad_2

  index = index + size_of.price

  return index
end

-- Display: Order Details Comp
display.order_details_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Details Comp
dissect.order_details_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Details Comp
dissect.order_details_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_details_comp then
    local length = size_of.order_details_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_details_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.order_details_comp, range, display)
  end

  return dissect.order_details_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Order
size_of.snapshot_order = function(buffer, offset)
  local index = 0

  index = index + size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Snapshot Order
display.snapshot_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Order
dissect.snapshot_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Order
dissect.snapshot_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_order then
    local length = size_of.snapshot_order(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_order(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.snapshot_order, range, display)
  end

  return dissect.snapshot_order_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Request
size_of.quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.last_qty

  index = index + size_of.side

  index = index + size_of.pad_3

  index = index + size_of.transact_time

  return index
end

-- Display: Quote Request
display.quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request
dissect.quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_request then
    local length = size_of.quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.quote_request, range, display)
  end

  return dissect.quote_request_fields(buffer, offset, packet, parent)
end

-- Size: Pad 7
size_of.pad_7 = 7

-- Display: Pad 7
display.pad_7 = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
dissect.pad_7 = function(buffer, offset, packet, parent)
  local length = size_of.pad_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_7(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Size: Fast Market Indicator
size_of.fast_market_indicator = 1

-- Display: Fast Market Indicator
display.fast_market_indicator = function(value)
  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
dissect.fast_market_indicator = function(buffer, offset, packet, parent)
  local length = size_of.fast_market_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fast_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.fast_market_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Condition
size_of.market_condition = 1

-- Display: Market Condition
display.market_condition = function(value)
  if value == 0 then
    return "Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Market Condition: Stressed (1)"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition
dissect.market_condition = function(buffer, offset, packet, parent)
  local length = size_of.market_condition
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Status
size_of.trad_ses_status = 1

-- Display: Trad Ses Status
display.trad_ses_status = function(value)
  if value == 1 then
    return "Trad Ses Status: Halted (1)"
  end
  if value == 2 then
    return "Trad Ses Status: Open (2)"
  end
  if value == 3 then
    return "Trad Ses Status: Closed (3)"
  end

  return "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
dissect.trad_ses_status = function(buffer, offset, packet, parent)
  local length = size_of.trad_ses_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trad_ses_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
display.trading_session_sub_id = function(value)
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

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Id
size_of.trading_session_id = 1

-- Display: Trading Session Id
display.trading_session_id = function(value)
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

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = size_of.trading_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Last Msg Seq Num Processed
size_of.last_msg_seq_num_processed = 4

-- Display: Last Msg Seq Num Processed
display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local length = size_of.last_msg_seq_num_processed
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Product Summary
size_of.product_summary = function(buffer, offset)
  local index = 0

  index = index + size_of.last_msg_seq_num_processed

  index = index + size_of.trading_session_id

  index = index + size_of.trading_session_sub_id

  index = index + size_of.trad_ses_status

  index = index + size_of.market_condition

  index = index + size_of.fast_market_indicator

  index = index + size_of.pad_7

  return index
end

-- Display: Product Summary
display.product_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Product Summary
dissect.product_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_id = dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trad_ses_status = dissect.trad_ses_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_condition = dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, fast_market_indicator = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary
dissect.product_summary = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.product_summary then
    local length = size_of.product_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = display.product_summary(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.product_summary, range, display)
  end

  return dissect.product_summary_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Product State Change
size_of.product_state_change = function(buffer, offset)
  local index = 0

  index = index + size_of.trading_session_id

  index = index + size_of.trading_session_sub_id

  index = index + size_of.trad_ses_status

  index = index + size_of.market_condition

  index = index + size_of.fast_market_indicator

  index = index + size_of.pad_3

  index = index + size_of.transact_time

  return index
end

-- Display: Product State Change
display.product_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Product State Change
dissect.product_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_id = dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trad_ses_status = dissect.trad_ses_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_condition = dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, fast_market_indicator = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Product State Change
dissect.product_state_change = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.product_state_change then
    local length = size_of.product_state_change(buffer, offset)
    local range = buffer(offset, length)
    local display = display.product_state_change(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.product_state_change, range, display)
  end

  return dissect.product_state_change_fields(buffer, offset, packet, parent)
end

-- Size: Pad 5
size_of.pad_5 = 5

-- Display: Pad 5
display.pad_5 = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
dissect.pad_5 = function(buffer, offset, packet, parent)
  local length = size_of.pad_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_5(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Calculate size of: Partial Order Execution
size_of.partial_order_execution = function(buffer, offset)
  local index = 0

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.algorithmic_trade_indicator

  index = index + size_of.pad_5

  index = index + size_of.price

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.security_id

  index = index + size_of.trd_match_id

  index = index + size_of.last_qty

  index = index + size_of.last_px

  return index
end

-- Display: Partial Order Execution
display.partial_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Partial Order Execution
dissect.partial_order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, algorithmic_trade_indicator = dissect.algorithmic_trade_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Order Execution
dissect.partial_order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.partial_order_execution then
    local length = size_of.partial_order_execution(buffer, offset)
    local range = buffer(offset, length)
    local display = display.partial_order_execution(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.partial_order_execution, range, display)
  end

  return dissect.partial_order_execution_fields(buffer, offset, packet, parent)
end

-- Size: Prev Display Qty
size_of.prev_display_qty = 4

-- Display: Prev Display Qty
display.prev_display_qty = function(value)
  return "Prev Display Qty: "..value
end

-- Dissect: Prev Display Qty
dissect.prev_display_qty = function(buffer, offset, packet, parent)
  local length = size_of.prev_display_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.prev_display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.prev_display_qty, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time In
size_of.trd_reg_ts_time_in = 8

-- Display: Trd Reg Ts Time In
display.trd_reg_ts_time_in = function(value)
  return "Trd Reg Ts Time In: "..value
end

-- Dissect: Trd Reg Ts Time In
dissect.trd_reg_ts_time_in = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_time_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_in(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modify Same Prio
size_of.order_modify_same_prio = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.transact_time

  index = index + size_of.prev_display_qty

  index = index + size_of.pad_4

  index = index + size_of.security_id

  index = index + size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Modify Same Prio
display.order_modify_same_prio = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify Same Prio
dissect.order_modify_same_prio_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Prev Display Qty: 4 Byte Signed Fixed Width Integer
  index, prev_display_qty = dissect.prev_display_qty(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Same Prio
dissect.order_modify_same_prio = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify_same_prio then
    local length = size_of.order_modify_same_prio(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_modify_same_prio(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.order_modify_same_prio, range, display)
  end

  return dissect.order_modify_same_prio_fields(buffer, offset, packet, parent)
end

-- Size: Prev Price
size_of.prev_price = 8

-- Display: Prev Price
display.prev_price = function(value)
  return "Prev Price: "..value:tonumber()/100000000
end

-- Dissect: Prev Price
dissect.prev_price = function(buffer, offset, packet, parent)
  local length = size_of.prev_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.prev_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.prev_price, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Prev Time Priority
size_of.trd_reg_ts_prev_time_priority = 8

-- Display: Trd Reg Ts Prev Time Priority
display.trd_reg_ts_prev_time_priority = function(value)
  return "Trd Reg Ts Prev Time Priority: "..value
end

-- Dissect: Trd Reg Ts Prev Time Priority
dissect.trd_reg_ts_prev_time_priority = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_prev_time_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_prev_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.trd_reg_ts_prev_time_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modify
size_of.order_modify = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.trd_reg_ts_prev_time_priority

  index = index + size_of.prev_price

  index = index + size_of.prev_display_qty

  index = index + size_of.pad_4

  index = index + size_of.security_id

  index = index + size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Modify
display.order_modify = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify
dissect.order_modify_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Trd Reg Ts Prev Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_prev_time_priority = dissect.trd_reg_ts_prev_time_priority(buffer, index, packet, parent)

  -- Prev Price: 8 Byte Unsigned Fixed Width Integer
  index, prev_price = dissect.prev_price(buffer, index, packet, parent)

  -- Prev Display Qty: 4 Byte Signed Fixed Width Integer
  index, prev_display_qty = dissect.prev_display_qty(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
dissect.order_modify = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify then
    local length = size_of.order_modify(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_modify(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.order_modify, range, display)
  end

  return dissect.order_modify_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Mass Delete
size_of.order_mass_delete = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.transact_time

  return index
end

-- Display: Order Mass Delete
display.order_mass_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Delete
dissect.order_mass_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Delete
dissect.order_mass_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_delete then
    local length = size_of.order_mass_delete(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_mass_delete(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.order_mass_delete, range, display)
  end

  return dissect.order_mass_delete_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Delete
size_of.order_delete = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.transact_time

  index = index + size_of.security_id

  index = index + size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Delete
display.order_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete
dissect.order_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete
dissect.order_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete then
    local length = size_of.order_delete(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_delete(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.order_delete, range, display)
  end

  return dissect.order_delete_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Add
size_of.order_add = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.security_id

  index = index + size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Add
display.order_add = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Add
dissect.order_add_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 6 fields
  index, order_details_comp = dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
dissect.order_add = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_add then
    local length = size_of.order_add(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_add(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.order_add, range, display)
  end

  return dissect.order_add_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Instrument Entry Grp Comp
size_of.md_instrument_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px

  index = index + size_of.md_entry_size

  index = index + size_of.md_entry_type

  index = index + size_of.trade_condition

  index = index + size_of.pad_2

  return index
end

-- Display: Md Instrument Entry Grp Comp
display.md_instrument_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Entry Grp Comp
dissect.md_instrument_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_entry_type = dissect.md_entry_type(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Entry Grp Comp
dissect.md_instrument_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_instrument_entry_grp_comp then
    local length = size_of.md_instrument_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.md_instrument_entry_grp_comp, range, display)
  end

  return dissect.md_instrument_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Event
size_of.security_trading_event = 1

-- Display: Security Trading Event
display.security_trading_event = function(value)
  if value == 10 then
    return "Security Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 11 then
    return "Security Trading Event: Price Volatility Auction Is Extended Again (11)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
dissect.security_trading_event = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Status
size_of.security_trading_status = 1

-- Display: Security Trading Status
display.security_trading_status = function(value)
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

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  if value == 1 then
    return "Security Status: Active (1)"
  end
  if value == 2 then
    return "Security Status: Inactive (2)"
  end
  if value == 4 then
    return "Security Status: Expired (4)"
  end
  if value == 9 then
    return "Security Status: Suspended (9)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local length = size_of.security_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Tot No Orders
size_of.tot_no_orders = 2

-- Display: Tot No Orders
display.tot_no_orders = function(value)
  return "Tot No Orders: "..value
end

-- Dissect: Tot No Orders
dissect.tot_no_orders = function(buffer, offset, packet, parent)
  local length = size_of.tot_no_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_no_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.tot_no_orders, range, value, display)

  return offset + length, value
end

-- Size: Last Update Time
size_of.last_update_time = 8

-- Display: Last Update Time
display.last_update_time = function(value)
  return "Last Update Time: "..value
end

-- Dissect: Last Update Time
dissect.last_update_time = function(buffer, offset, packet, parent)
  local length = size_of.last_update_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Summary
size_of.instrument_summary = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.last_update_time

  index = index + size_of.trd_reg_ts_execution_time

  index = index + size_of.tot_no_orders

  index = index + size_of.security_status

  index = index + size_of.security_trading_status

  index = index + size_of.market_condition

  index = index + size_of.fast_market_indicator

  index = index + size_of.security_trading_event

  index = index + size_of.no_md_entries

  -- Calculate field size from count
  local md_instrument_entry_grp_comp_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_instrument_entry_grp_comp_count * 16

  return index
end

-- Display: Instrument Summary
display.instrument_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Summary
dissect.instrument_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_execution_time = dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Tot No Orders: 2 Byte Unsigned Fixed Width Integer
  index, tot_no_orders = dissect.tot_no_orders(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_condition = dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, fast_market_indicator = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_trading_event = dissect.security_trading_event(buffer, index, packet, parent)

  -- No Md Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_md_entries = dissect.no_md_entries(buffer, index, packet, parent)

  -- Md Instrument Entry Grp Comp: Struct of 5 fields
  for i = 1, no_md_entries do
    index = dissect.md_instrument_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Instrument Summary
dissect.instrument_summary = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_summary then
    local length = size_of.instrument_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_summary(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.instrument_summary, range, display)
  end

  return dissect.instrument_summary_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument State Change
size_of.instrument_state_change = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.security_status

  index = index + size_of.security_trading_status

  index = index + size_of.market_condition

  index = index + size_of.fast_market_indicator

  index = index + size_of.security_trading_event

  index = index + size_of.pad_3

  index = index + size_of.transact_time

  return index
end

-- Display: Instrument State Change
display.instrument_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument State Change
dissect.instrument_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_condition = dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, fast_market_indicator = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_trading_event = dissect.security_trading_event(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change
dissect.instrument_state_change = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_state_change then
    local length = size_of.instrument_state_change(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_state_change(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.instrument_state_change, range, display)
  end

  return dissect.instrument_state_change_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat
size_of.heartbeat = function(buffer, offset)
  local index = 0

  index = index + size_of.last_msg_seq_num_processed

  index = index + size_of.pad_4

  return index
end

-- Display: Heartbeat
display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local length = size_of.heartbeat(buffer, offset)
    local range = buffer(offset, length)
    local display = display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.heartbeat, range, display)
  end

  return dissect.heartbeat_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Full Order Execution
size_of.full_order_execution = function(buffer, offset)
  local index = 0

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.algorithmic_trade_indicator

  index = index + size_of.pad_5

  index = index + size_of.price

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.security_id

  index = index + size_of.trd_match_id

  index = index + size_of.last_qty

  index = index + size_of.last_px

  return index
end

-- Display: Full Order Execution
display.full_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Order Execution
dissect.full_order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, algorithmic_trade_indicator = dissect.algorithmic_trade_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Order Execution
dissect.full_order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.full_order_execution then
    local length = size_of.full_order_execution(buffer, offset)
    local range = buffer(offset, length)
    local display = display.full_order_execution(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.full_order_execution, range, display)
  end

  return dissect.full_order_execution_fields(buffer, offset, packet, parent)
end

-- Size: Resting Cxl Qty
size_of.resting_cxl_qty = 4

-- Display: Resting Cxl Qty
display.resting_cxl_qty = function(value)
  return "Resting Cxl Qty: "..value
end

-- Dissect: Resting Cxl Qty
dissect.resting_cxl_qty = function(buffer, offset, packet, parent)
  local length = size_of.resting_cxl_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.resting_cxl_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.resting_cxl_qty, range, value, display)

  return offset + length, value
end

-- Size: Resting Hidden Qty
size_of.resting_hidden_qty = 4

-- Display: Resting Hidden Qty
display.resting_hidden_qty = function(value)
  return "Resting Hidden Qty: "..value
end

-- Dissect: Resting Hidden Qty
dissect.resting_hidden_qty = function(buffer, offset, packet, parent)
  local length = size_of.resting_hidden_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.resting_hidden_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.resting_hidden_qty, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
size_of.aggressor_side = 1

-- Display: Aggressor Side
display.aggressor_side = function(value)
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
size_of.exec_id = 8

-- Display: Exec Id
display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
dissect.exec_id = function(buffer, offset, packet, parent)
  local length = size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Request Time
size_of.request_time = 8

-- Display: Request Time
display.request_time = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
dissect.request_time = function(buffer, offset, packet, parent)
  local length = size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.request_time, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Time
size_of.aggressor_time = 8

-- Display: Aggressor Time
display.aggressor_time = function(value)
  return "Aggressor Time: "..value
end

-- Dissect: Aggressor Time
dissect.aggressor_time = function(buffer, offset, packet, parent)
  local length = size_of.aggressor_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.aggressor_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.aggressor_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Summary
size_of.execution_summary = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.aggressor_time

  index = index + size_of.request_time

  index = index + size_of.exec_id

  index = index + size_of.last_qty

  index = index + size_of.aggressor_side

  index = index + size_of.trade_condition

  index = index + size_of.pad_2

  index = index + size_of.last_px

  index = index + size_of.resting_hidden_qty

  index = index + size_of.resting_cxl_qty

  return index
end

-- Display: Execution Summary
display.execution_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Summary
dissect.execution_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Aggressor Time: 8 Byte Unsigned Fixed Width Integer
  index, aggressor_time = dissect.aggressor_time(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_side = dissect.aggressor_side(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Resting Hidden Qty: 4 Byte Signed Fixed Width Integer
  index, resting_hidden_qty = dissect.resting_hidden_qty(buffer, index, packet, parent)

  -- Resting Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, resting_cxl_qty = dissect.resting_cxl_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary
dissect.execution_summary = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_summary then
    local length = size_of.execution_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_summary(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.execution_summary, range, display)
  end

  return dissect.execution_summary_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cross Request
size_of.cross_request = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.last_qty

  index = index + size_of.pad_4

  index = index + size_of.transact_time

  return index
end

-- Display: Cross Request
display.cross_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request
dissect.cross_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
dissect.cross_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_request then
    local length = size_of.cross_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cross_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.cross_request, range, display)
  end

  return dissect.cross_request_fields(buffer, offset, packet, parent)
end

-- Size: Potential Security Trading Event
size_of.potential_security_trading_event = 1

-- Display: Potential Security Trading Event
display.potential_security_trading_event = function(value)
  if value == 0 then
    return "Potential Security Trading Event: None (0)"
  end
  if value == 10 then
    return "Potential Security Trading Event: Price Volatility Auction Is Extended (10)"
  end

  return "Potential Security Trading Event: Unknown("..value..")"
end

-- Dissect: Potential Security Trading Event
dissect.potential_security_trading_event = function(buffer, offset, packet, parent)
  local length = size_of.potential_security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.potential_security_trading_event(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.potential_security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Qty
size_of.imbalance_qty = 4

-- Display: Imbalance Qty
display.imbalance_qty = function(value)
  return "Imbalance Qty: "..value
end

-- Dissect: Imbalance Qty
dissect.imbalance_qty = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Clearing Price
size_of.auction_clearing_price = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.last_qty

  index = index + size_of.imbalance_qty

  index = index + size_of.security_trading_status

  index = index + size_of.potential_security_trading_event

  index = index + size_of.pad_6

  return index
end

-- Display: Auction Clearing Price
display.auction_clearing_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Clearing Price
dissect.auction_clearing_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Imbalance Qty: 4 Byte Signed Fixed Width Integer
  index, imbalance_qty = dissect.imbalance_qty(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Potential Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, potential_security_trading_event = dissect.potential_security_trading_event(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Clearing Price
dissect.auction_clearing_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_clearing_price then
    local length = size_of.auction_clearing_price(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_clearing_price(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.auction_clearing_price, range, display)
  end

  return dissect.auction_clearing_price_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size
size_of.offer_size = 4

-- Display: Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Bbo
size_of.auction_bbo = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  index = index + size_of.potential_security_trading_event

  index = index + size_of.pad_7

  return index
end

-- Display: Auction Bbo
display.auction_bbo = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Bbo
dissect.auction_bbo_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Potential Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, potential_security_trading_event = dissect.potential_security_trading_event(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Bbo
dissect.auction_bbo = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_bbo then
    local length = size_of.auction_bbo(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_bbo(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.auction_bbo, range, display)
  end

  return dissect.auction_bbo_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
size_of.leg_security_id = 8

-- Display: Leg Security Id
display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
size_of.leg_symbol = 4

-- Display: Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrmt Leg Grp Comp
size_of.instrmt_leg_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol

  index = index + size_of.pad_4

  index = index + size_of.leg_security_id

  index = index + size_of.leg_ratio_qty

  index = index + size_of.leg_side

  index = index + size_of.pad_3

  return index
end

-- Display: Instrmt Leg Grp Comp
display.instrmt_leg_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp Comp
dissect.instrmt_leg_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer
  index, leg_symbol = dissect.leg_symbol(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp Comp
dissect.instrmt_leg_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrmt_leg_grp_comp then
    local length = size_of.instrmt_leg_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrmt_leg_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.instrmt_leg_grp_comp, range, display)
  end

  return dissect.instrmt_leg_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Pad 1
size_of.pad_1 = 1

-- Display: Pad 1
display.pad_1 = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
dissect.pad_1 = function(buffer, offset, packet, parent)
  local length = size_of.pad_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_1(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Size: No Legs
size_of.no_legs = 1

-- Display: No Legs
display.no_legs = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
dissect.no_legs = function(buffer, offset, packet, parent)
  local length = size_of.no_legs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_legs(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Size: Implied Market Indicator
size_of.implied_market_indicator = 1

-- Display: Implied Market Indicator
display.implied_market_indicator = function(value)
  if value == 0 then
    return "Implied Market Indicator: Not Implied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Implied In Out (3)"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
dissect.implied_market_indicator = function(buffer, offset, packet, parent)
  local length = size_of.implied_market_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.implied_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Size: Product Complex
size_of.product_complex = 1

-- Display: Product Complex
display.product_complex = function(value)
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

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
dissect.product_complex = function(buffer, offset, packet, parent)
  local length = size_of.product_complex
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
size_of.security_sub_type = 4

-- Display: Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.security_sub_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Complex Instrument
size_of.add_complex_instrument = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.security_sub_type

  index = index + size_of.product_complex

  index = index + size_of.implied_market_indicator

  index = index + size_of.no_legs

  index = index + size_of.pad_1

  -- Calculate field size from count
  local instrmt_leg_grp_comp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + instrmt_leg_grp_comp_count * 24

  return index
end

-- Display: Add Complex Instrument
display.add_complex_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Complex Instrument
dissect.add_complex_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Implied Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, implied_market_indicator = dissect.implied_market_indicator(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Instrmt Leg Grp Comp: Struct of 6 fields
  for i = 1, no_legs do
    index = dissect.instrmt_leg_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Add Complex Instrument
dissect.add_complex_instrument = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.add_complex_instrument then
    local length = size_of.add_complex_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_complex_instrument(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.add_complex_instrument, range, display)
  end

  return dissect.add_complex_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Add Complex Instrument
  if template_id == 13400 then
    return size_of.add_complex_instrument(buffer, offset)
  end
  -- Size of Auction Bbo
  if template_id == 13500 then
    return size_of.auction_bbo(buffer, offset)
  end
  -- Size of Auction Clearing Price
  if template_id == 13501 then
    return size_of.auction_clearing_price(buffer, offset)
  end
  -- Size of Cross Request
  if template_id == 13502 then
    return size_of.cross_request(buffer, offset)
  end
  -- Size of Execution Summary
  if template_id == 13202 then
    return size_of.execution_summary(buffer, offset)
  end
  -- Size of Full Order Execution
  if template_id == 13104 then
    return size_of.full_order_execution(buffer, offset)
  end
  -- Size of Heartbeat
  if template_id == 13001 then
    return size_of.heartbeat(buffer, offset)
  end
  -- Size of Instrument State Change
  if template_id == 13301 then
    return size_of.instrument_state_change(buffer, offset)
  end
  -- Size of Instrument Summary
  if template_id == 13601 then
    return size_of.instrument_summary(buffer, offset)
  end
  -- Size of Order Add
  if template_id == 13100 then
    return size_of.order_add(buffer, offset)
  end
  -- Size of Order Delete
  if template_id == 13102 then
    return size_of.order_delete(buffer, offset)
  end
  -- Size of Order Mass Delete
  if template_id == 13103 then
    return size_of.order_mass_delete(buffer, offset)
  end
  -- Size of Order Modify
  if template_id == 13101 then
    return size_of.order_modify(buffer, offset)
  end
  -- Size of Order Modify Same Prio
  if template_id == 13106 then
    return size_of.order_modify_same_prio(buffer, offset)
  end
  -- Size of Partial Order Execution
  if template_id == 13105 then
    return size_of.partial_order_execution(buffer, offset)
  end
  -- Size of Product State Change
  if template_id == 13300 then
    return size_of.product_state_change(buffer, offset)
  end
  -- Size of Product Summary
  if template_id == 13600 then
    return size_of.product_summary(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 13503 then
    return size_of.quote_request(buffer, offset)
  end
  -- Size of Snapshot Order
  if template_id == 13602 then
    return size_of.snapshot_order(buffer, offset)
  end
  -- Size of Top Of Book
  if template_id == 13504 then
    return size_of.top_of_book(buffer, offset)
  end
  -- Size of Trade Report
  if template_id == 13201 then
    return size_of.trade_report(buffer, offset)
  end
  -- Size of Trade Reversal
  if template_id == 13200 then
    return size_of.trade_reversal(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Add Complex Instrument
  if template_id == 13400 then
    return dissect.add_complex_instrument(buffer, offset, packet, parent)
  end
  -- Dissect Auction Bbo
  if template_id == 13500 then
    return dissect.auction_bbo(buffer, offset, packet, parent)
  end
  -- Dissect Auction Clearing Price
  if template_id == 13501 then
    return dissect.auction_clearing_price(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if template_id == 13502 then
    return dissect.cross_request(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary
  if template_id == 13202 then
    return dissect.execution_summary(buffer, offset, packet, parent)
  end
  -- Dissect Full Order Execution
  if template_id == 13104 then
    return dissect.full_order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 13001 then
    return dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Instrument State Change
  if template_id == 13301 then
    return dissect.instrument_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Summary
  if template_id == 13601 then
    return dissect.instrument_summary(buffer, offset, packet, parent)
  end
  -- Dissect Order Add
  if template_id == 13100 then
    return dissect.order_add(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete
  if template_id == 13102 then
    return dissect.order_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Delete
  if template_id == 13103 then
    return dissect.order_mass_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify
  if template_id == 13101 then
    return dissect.order_modify(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Same Prio
  if template_id == 13106 then
    return dissect.order_modify_same_prio(buffer, offset, packet, parent)
  end
  -- Dissect Partial Order Execution
  if template_id == 13105 then
    return dissect.partial_order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Product State Change
  if template_id == 13300 then
    return dissect.product_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Product Summary
  if template_id == 13600 then
    return dissect.product_summary(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 13503 then
    return dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Order
  if template_id == 13602 then
    return dissect.snapshot_order(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book
  if template_id == 13504 then
    return dissect.top_of_book(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report
  if template_id == 13201 then
    return dissect.trade_report(buffer, offset, packet, parent)
  end
  -- Dissect Trade Reversal
  if template_id == 13200 then
    return dissect.trade_reversal(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Msg Seq Num
size_of.msg_seq_num = 4

-- Display: Msg Seq Num
display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Body Len
size_of.body_len = 2

-- Display: Body Len
display.body_len = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
dissect.body_len = function(buffer, offset, packet, parent)
  local length = size_of.body_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header Comp
size_of.message_header_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.body_len

  index = index + size_of.template_id

  index = index + size_of.msg_seq_num

  return index
end

-- Display: Message Header Comp
display.message_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header Comp
dissect.message_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 2 Byte Unsigned Fixed Width Integer
  index, body_len = dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header Comp
dissect.message_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header_comp then
    local length = size_of.message_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.message_header_comp, range, display)
  end

  return dissect.message_header_comp_fields(buffer, offset, packet, parent)
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header Comp: Struct of 3 fields
  index, message_header_comp = dissect.message_header_comp(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 22 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.message, range, display)
  end

  dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Appl Seq Reset Indicator
size_of.appl_seq_reset_indicator = 1

-- Display: Appl Seq Reset Indicator
display.appl_seq_reset_indicator = function(value)
  if value == 0 then
    return "Appl Seq Reset Indicator: No Reset (0)"
  end
  if value == 1 then
    return "Appl Seq Reset Indicator: Reset (1)"
  end

  return "Appl Seq Reset Indicator: Unknown("..value..")"
end

-- Dissect: Appl Seq Reset Indicator
dissect.appl_seq_reset_indicator = function(buffer, offset, packet, parent)
  local length = size_of.appl_seq_reset_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_seq_reset_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.appl_seq_reset_indicator, range, value, display)

  return offset + length, value
end

-- Size: Completion Indicator
size_of.completion_indicator = 1

-- Display: Completion Indicator
display.completion_indicator = function(value)
  if value == 0 then
    return "Completion Indicator: Incomplete (0)"
  end
  if value == 1 then
    return "Completion Indicator: Complete (1)"
  end

  return "Completion Indicator: Unknown("..value..")"
end

-- Dissect: Completion Indicator
dissect.completion_indicator = function(buffer, offset, packet, parent)
  local length = size_of.completion_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.completion_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.completion_indicator, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
size_of.partition_id = 1

-- Display: Partition Id
display.partition_id = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
dissect.partition_id = function(buffer, offset, packet, parent)
  local length = size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
size_of.market_segment_id = 4

-- Display: Market Segment Id
display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Num
size_of.appl_seq_num = 4

-- Display: Appl Seq Num
display.appl_seq_num = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
dissect.appl_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.appl_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Packet Sequence Number
size_of.packet_sequence_number = 4

-- Display: Packet Sequence Number
display.packet_sequence_number = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
dissect.packet_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.packet_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_sequence_number(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Id
size_of.packet_id = 2

-- Display: Packet Id
display.packet_id = function(value)
  return "Packet Id: "..value
end

-- Dissect: Packet Id
dissect.packet_id = function(buffer, offset, packet, parent)
  local length = size_of.packet_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.packet_id, range, value, display)

  return offset + length, value
end

-- Size: Header Length
size_of.header_length = 2

-- Display: Header Length
display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
dissect.header_length = function(buffer, offset, packet, parent)
  local length = size_of.header_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.header_length(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v6_0.fields.header_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Info
size_of.packet_info = function(buffer, offset)
  local index = 0

  index = index + size_of.header_length

  index = index + size_of.packet_id

  index = index + size_of.packet_sequence_number

  return index
end

-- Display: Packet Info
display.packet_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Info
dissect.packet_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Header Length: 2 Byte Unsigned Fixed Width Integer
  index, header_length = dissect.header_length(buffer, index, packet, parent)

  -- Packet Id: 2 Byte Unsigned Fixed Width Integer Static
  index, packet_id = dissect.packet_id(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = dissect.packet_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Info
dissect.packet_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_info then
    local length = size_of.packet_info(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_info(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.packet_info, range, display)
  end

  return dissect.packet_info_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.packet_info(buffer, offset + index)

  index = index + size_of.appl_seq_num

  index = index + size_of.market_segment_id

  index = index + size_of.partition_id

  index = index + size_of.completion_indicator

  index = index + size_of.appl_seq_reset_indicator

  index = index + size_of.pad_5

  index = index + size_of.transact_time

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Info: Struct of 3 fields
  index, packet_info = dissect.packet_info(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = dissect.appl_seq_num(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Partition Id: 1 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Completion Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, completion_indicator = dissect.completion_indicator(buffer, index, packet, parent)

  -- Appl Seq Reset Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_reset_indicator = dissect.appl_seq_reset_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v6_0.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Body Len
    local body_len = buffer(index, 2):le_uint()

    -- Message: Struct of 2 fields
    index = dissect.message(buffer, index, packet, parent, body_len)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function eurex_derivatives_eobi_t7_v6_0.init()
end

-- Dissector for Eurex Derivatives Eobi T7 6.0
function eurex_derivatives_eobi_t7_v6_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_derivatives_eobi_t7_v6_0.name

  -- Dissect protocol
  local protocol = parent:add(eurex_derivatives_eobi_t7_v6_0, buffer(), eurex_derivatives_eobi_t7_v6_0.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, eurex_derivatives_eobi_t7_v6_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_derivatives_eobi_t7_v6_0_packet_size = function(buffer)

  return true
end

-- Verify Packet Id Field
verify.packet_id = function(buffer)
  if 13002 == buffer(2, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Eurex Derivatives Eobi T7 6.0
local function eurex_derivatives_eobi_t7_v6_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_derivatives_eobi_t7_v6_0_packet_size(buffer) then return false end

  -- Verify Packet Id
  if not verify.packet_id(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_derivatives_eobi_t7_v6_0
  eurex_derivatives_eobi_t7_v6_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Eobi T7 6.0
eurex_derivatives_eobi_t7_v6_0:register_heuristic("udp", eurex_derivatives_eobi_t7_v6_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 6.0
--   Date: Monday, October 23, 2017
--   Specification: T7-Enhanced-Order-Book-Interface---Manual.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
