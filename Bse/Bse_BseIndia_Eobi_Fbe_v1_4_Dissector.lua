-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bse BseIndia Eobi Fbe 1.4 Protocol
local omi_bse_bseindia_eobi_fbe_v1_4 = Proto("Omi.Bse.BseIndia.Eobi.Fbe.v1.4", "Bse BseIndia Eobi Fbe 1.4")

-- Protocol table
local bse_bseindia_eobi_fbe_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bse BseIndia Eobi Fbe 1.4 Fields
omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_side = ProtoField.new("Aggressor Side", "bse.bseindia.eobi.fbe.v1.4.aggressorside", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_timestamp = ProtoField.new("Aggressor Timestamp", "bse.bseindia.eobi.fbe.v1.4.aggressortimestamp", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "bse.bseindia.eobi.fbe.v1.4.applseqnum", ftypes.UINT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_reset_indicator = ProtoField.new("Appl Seq Reset Indicator", "bse.bseindia.eobi.fbe.v1.4.applseqresetindicator", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.bid_px = ProtoField.new("Bid Px", "bse.bseindia.eobi.fbe.v1.4.bidpx", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.body_len = ProtoField.new("Body Len", "bse.bseindia.eobi.fbe.v1.4.bodylen", ftypes.UINT16)
omi_bse_bseindia_eobi_fbe_v1_4.fields.close_price = ProtoField.new("Close Price", "bse.bseindia.eobi.fbe.v1.4.closeprice", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.completion_indicator = ProtoField.new("Completion Indicator", "bse.bseindia.eobi.fbe.v1.4.completionindicator", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.display_qty = ProtoField.new("Display Qty", "bse.bseindia.eobi.fbe.v1.4.displayqty", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.exec_id = ProtoField.new("Exec Id", "bse.bseindia.eobi.fbe.v1.4.execid", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "bse.bseindia.eobi.fbe.v1.4.fastmarketindicator", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "bse.bseindia.eobi.fbe.v1.4.impliedmarketindicator", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "bse.bseindia.eobi.fbe.v1.4.instrmtleggrp", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "bse.bseindia.eobi.fbe.v1.4.lastmsgseqnumprocessed", ftypes.UINT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_px = ProtoField.new("Last Px", "bse.bseindia.eobi.fbe.v1.4.lastpx", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_qty = ProtoField.new("Last Qty", "bse.bseindia.eobi.fbe.v1.4.lastqty", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.last_update_time = ProtoField.new("Last Update Time", "bse.bseindia.eobi.fbe.v1.4.lastupdatetime", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "bse.bseindia.eobi.fbe.v1.4.legratioqty", ftypes.INT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_security_id = ProtoField.new("Leg Security Id", "bse.bseindia.eobi.fbe.v1.4.legsecurityid", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_side = ProtoField.new("Leg Side", "bse.bseindia.eobi.fbe.v1.4.legside", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_ckt_limit = ProtoField.new("Lower Ckt Limit", "bse.bseindia.eobi.fbe.v1.4.lowercktlimit", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_exec_limit = ProtoField.new("Lower Exec Limit", "bse.bseindia.eobi.fbe.v1.4.lowerexeclimit", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.market_segment_id = ProtoField.new("Market Segment Id", "bse.bseindia.eobi.fbe.v1.4.marketsegmentid", ftypes.INT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_px = ProtoField.new("Md Entry Px", "bse.bseindia.eobi.fbe.v1.4.mdentrypx", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_size = ProtoField.new("Md Entry Size", "bse.bseindia.eobi.fbe.v1.4.mdentrysize", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_type = ProtoField.new("Md Entry Type", "bse.bseindia.eobi.fbe.v1.4.mdentrytype", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp = ProtoField.new("Md Instrument Entry Grp", "bse.bseindia.eobi.fbe.v1.4.mdinstrumententrygrp", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp = ProtoField.new("Md Trade Entry Grp", "bse.bseindia.eobi.fbe.v1.4.mdtradeentrygrp", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.eobi.fbe.v1.4.msgseqnum", ftypes.UINT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.no_legs = ProtoField.new("No Legs", "bse.bseindia.eobi.fbe.v1.4.nolegs", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.no_md_entries = ProtoField.new("No Md Entries", "bse.bseindia.eobi.fbe.v1.4.nomdentries", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.no_of_trades = ProtoField.new("No Of Trades", "bse.bseindia.eobi.fbe.v1.4.nooftrades", ftypes.UINT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.offer_px = ProtoField.new("Offer Px", "bse.bseindia.eobi.fbe.v1.4.offerpx", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_details = ProtoField.new("Order Details", "bse.bseindia.eobi.fbe.v1.4.orderdetails", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_1 = ProtoField.new("Pad 1", "bse.bseindia.eobi.fbe.v1.4.pad1", ftypes.BYTES)
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_3 = ProtoField.new("Pad 3", "bse.bseindia.eobi.fbe.v1.4.pad3", ftypes.BYTES)
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_4 = ProtoField.new("Pad 4", "bse.bseindia.eobi.fbe.v1.4.pad4", ftypes.BYTES)
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_5 = ProtoField.new("Pad 5", "bse.bseindia.eobi.fbe.v1.4.pad5", ftypes.BYTES)
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_6 = ProtoField.new("Pad 6", "bse.bseindia.eobi.fbe.v1.4.pad6", ftypes.BYTES)
omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_7 = ProtoField.new("Pad 7", "bse.bseindia.eobi.fbe.v1.4.pad7", ftypes.BYTES)
omi_bse_bseindia_eobi_fbe_v1_4.fields.partition_id = ProtoField.new("Partition Id", "bse.bseindia.eobi.fbe.v1.4.partitionid", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_close_price = ProtoField.new("Prev Close Price", "bse.bseindia.eobi.fbe.v1.4.prevcloseprice", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "bse.bseindia.eobi.fbe.v1.4.prevdisplayqty", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_price = ProtoField.new("Prev Price", "bse.bseindia.eobi.fbe.v1.4.prevprice", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.price = ProtoField.new("Price", "bse.bseindia.eobi.fbe.v1.4.price", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.product_complex = ProtoField.new("Product Complex", "bse.bseindia.eobi.fbe.v1.4.productcomplex", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "bse.bseindia.eobi.fbe.v1.4.restinghiddenqty", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_id = ProtoField.new("Security Id", "bse.bseindia.eobi.fbe.v1.4.securityid", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_status = ProtoField.new("Security Status", "bse.bseindia.eobi.fbe.v1.4.securitystatus", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_sub_type = ProtoField.new("Security Sub Type", "bse.bseindia.eobi.fbe.v1.4.securitysubtype", ftypes.INT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.security_trading_status = ProtoField.new("Security Trading Status", "bse.bseindia.eobi.fbe.v1.4.securitytradingstatus", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.side = ProtoField.new("Side", "bse.bseindia.eobi.fbe.v1.4.side", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.template_id = ProtoField.new("Template Id", "bse.bseindia.eobi.fbe.v1.4.templateid", ftypes.UINT16)
omi_bse_bseindia_eobi_fbe_v1_4.fields.tot_no_orders = ProtoField.new("Tot No Orders", "bse.bseindia.eobi.fbe.v1.4.totnoorders", ftypes.UINT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bse.bseindia.eobi.fbe.v1.4.tradsesstatus", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_condition = ProtoField.new("Trade Condition", "bse.bseindia.eobi.fbe.v1.4.tradecondition", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_volume = ProtoField.new("Trade Volume", "bse.bseindia.eobi.fbe.v1.4.tradevolume", ftypes.INT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_id = ProtoField.new("Trading Session Id", "bse.bseindia.eobi.fbe.v1.4.tradingsessionid", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bse.bseindia.eobi.fbe.v1.4.tradingsessionsubid", ftypes.UINT8)
omi_bse_bseindia_eobi_fbe_v1_4.fields.transact_time = ProtoField.new("Transact Time", "bse.bseindia.eobi.fbe.v1.4.transacttime", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_match_id = ProtoField.new("Trd Match Id", "bse.bseindia.eobi.fbe.v1.4.trdmatchid", ftypes.UINT32)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "bse.bseindia.eobi.fbe.v1.4.trdregtsexecutiontime", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg Ts Prev Time Priority", "bse.bseindia.eobi.fbe.v1.4.trdregtsprevtimepriority", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "bse.bseindia.eobi.fbe.v1.4.trdregtstimein", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "bse.bseindia.eobi.fbe.v1.4.trdregtstimepriority", ftypes.UINT64)
omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_ckt_limit = ProtoField.new("Upper Ckt Limit", "bse.bseindia.eobi.fbe.v1.4.uppercktlimit", ftypes.DOUBLE)
omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_exec_limit = ProtoField.new("Upper Exec Limit", "bse.bseindia.eobi.fbe.v1.4.upperexeclimit", ftypes.DOUBLE)

-- Bse BseIndia Eobi Fbe 1.4 Headers
omi_bse_bseindia_eobi_fbe_v1_4.fields.eobi_header = ProtoField.new("Eobi Header", "bse.bseindia.eobi.fbe.v1.4.eobiheader", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.message = ProtoField.new("Message", "bse.bseindia.eobi.fbe.v1.4.message", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.message_header = ProtoField.new("Message Header", "bse.bseindia.eobi.fbe.v1.4.messageheader", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.packet = ProtoField.new("Packet", "bse.bseindia.eobi.fbe.v1.4.packet", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.packet_header = ProtoField.new("Packet Header", "bse.bseindia.eobi.fbe.v1.4.packetheader", ftypes.STRING)

-- Bse BseIndia Eobi 1.4 Application Messages
omi_bse_bseindia_eobi_fbe_v1_4.fields.add_complex_instrument_message = ProtoField.new("Add Complex Instrument Message", "bse.bseindia.eobi.fbe.v1.4.addcomplexinstrumentmessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_best_bid_offer_message = ProtoField.new("Auction Best Bid Offer Message", "bse.bseindia.eobi.fbe.v1.4.auctionbestbidoffermessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_clearing_price_message = ProtoField.new("Auction Clearing Price Message", "bse.bseindia.eobi.fbe.v1.4.auctionclearingpricemessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.execution_summary_message = ProtoField.new("Execution Summary Message", "bse.bseindia.eobi.fbe.v1.4.executionsummarymessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.full_order_execution_message = ProtoField.new("Full Order Execution Message", "bse.bseindia.eobi.fbe.v1.4.fullorderexecutionmessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bse.bseindia.eobi.fbe.v1.4.heartbeatmessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_info_message = ProtoField.new("Instrument Info Message", "bse.bseindia.eobi.fbe.v1.4.instrumentinfomessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_state_change_message = ProtoField.new("Instrument State Change Message", "bse.bseindia.eobi.fbe.v1.4.instrumentstatechangemessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_summary_message = ProtoField.new("Instrument Summary Message", "bse.bseindia.eobi.fbe.v1.4.instrumentsummarymessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.lpp_range_message = ProtoField.new("Lpp Range Message", "bse.bseindia.eobi.fbe.v1.4.lpprangemessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_add_message = ProtoField.new("Order Add Message", "bse.bseindia.eobi.fbe.v1.4.orderaddmessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_delete_message = ProtoField.new("Order Delete Message", "bse.bseindia.eobi.fbe.v1.4.orderdeletemessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_mass_delete_message = ProtoField.new("Order Mass Delete Message", "bse.bseindia.eobi.fbe.v1.4.ordermassdeletemessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_message = ProtoField.new("Order Modify Message", "bse.bseindia.eobi.fbe.v1.4.ordermodifymessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_same_priority_message = ProtoField.new("Order Modify Same Priority Message", "bse.bseindia.eobi.fbe.v1.4.ordermodifysameprioritymessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.partial_order_execution_message = ProtoField.new("Partial Order Execution Message", "bse.bseindia.eobi.fbe.v1.4.partialorderexecutionmessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.product_state_change_message = ProtoField.new("Product State Change Message", "bse.bseindia.eobi.fbe.v1.4.productstatechangemessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.product_summary_message = ProtoField.new("Product Summary Message", "bse.bseindia.eobi.fbe.v1.4.productsummarymessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.snapshot_order_message = ProtoField.new("Snapshot Order Message", "bse.bseindia.eobi.fbe.v1.4.snapshotordermessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "bse.bseindia.eobi.fbe.v1.4.topofbookmessage", ftypes.STRING)
omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_reversal_message = ProtoField.new("Trade Reversal Message", "bse.bseindia.eobi.fbe.v1.4.tradereversalmessage", ftypes.STRING)

-- Bse BseIndia Eobi Fbe 1.4 generated fields
omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp_index = ProtoField.new("Instrmt Leg Grp Index", "bse.bseindia.eobi.fbe.v1.4.instrmtleggrpindex", ftypes.UINT16)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp_index = ProtoField.new("Md Instrument Entry Grp Index", "bse.bseindia.eobi.fbe.v1.4.mdinstrumententrygrpindex", ftypes.UINT16)
omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp_index = ProtoField.new("Md Trade Entry Grp Index", "bse.bseindia.eobi.fbe.v1.4.mdtradeentrygrpindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bse BseIndia Eobi Fbe 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.indexes = true

-- Register Bse BseIndia Eobi Fbe 1.4 Show Options
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_bse_bseindia_eobi_fbe_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_application_messages then
    show.application_messages = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_application_messages
  end
  if show.repeating_groups ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_repeating_groups then
    show.repeating_groups = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_repeating_groups
  end
  if show.structs ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_structs then
    show.structs = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_structs
  end
  if show.indexes ~= omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_indexes then
    show.indexes = omi_bse_bseindia_eobi_fbe_v1_4.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Bse BseIndia Eobi Fbe 1.4 Fields
-----------------------------------------------------------------------

-- Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side = {}

-- Size: Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side.size = 1

-- Display: Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side.display = function(value)
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
bse_bseindia_eobi_fbe_v1_4.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp = {}

-- Size: Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.size = 8

-- Display: Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Aggressor Timestamp: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Aggressor Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Aggressor Timestamp
bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.aggressor_timestamp, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num = {}

-- Size: Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num.size = 4

-- Display: Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num.display = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
bse_bseindia_eobi_fbe_v1_4.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator = {}

-- Size: Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.size = 1

-- Display: Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.display = function(value)
  return "Appl Seq Reset Indicator: "..value
end

-- Dissect: Appl Seq Reset Indicator
bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.appl_seq_reset_indicator, range, value, display)

  return offset + length, value
end

-- Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px = {}

-- Size: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.size = 8

-- Display: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Bid Px
bse_bseindia_eobi_fbe_v1_4.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.bid_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Body Len
bse_bseindia_eobi_fbe_v1_4.body_len = {}

-- Size: Body Len
bse_bseindia_eobi_fbe_v1_4.body_len.size = 2

-- Display: Body Len
bse_bseindia_eobi_fbe_v1_4.body_len.display = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
bse_bseindia_eobi_fbe_v1_4.body_len.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.body_len, range, value, display)

  return offset + length, value
end

-- Close Price
bse_bseindia_eobi_fbe_v1_4.close_price = {}

-- Size: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.size = 8

-- Display: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Close Price: No Value"
  end

  return "Close Price: "..value
end

-- Translate: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Close Price
bse_bseindia_eobi_fbe_v1_4.close_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.close_price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.close_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.close_price, range, value, display)

  return offset + length, value
end

-- Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator = {}

-- Size: Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator.size = 1

-- Display: Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator.display = function(value)
  return "Completion Indicator: "..value
end

-- Dissect: Completion Indicator
bse_bseindia_eobi_fbe_v1_4.completion_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.completion_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.completion_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.completion_indicator, range, value, display)

  return offset + length, value
end

-- Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty = {}

-- Size: Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty.size = 8

-- Display: Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
bse_bseindia_eobi_fbe_v1_4.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id = {}

-- Size: Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id.size = 8

-- Display: Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Exec Id: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Exec Id
bse_bseindia_eobi_fbe_v1_4.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator = {}

-- Size: Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size = 1

-- Display: Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.display = function(value)
  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.fast_market_indicator, range, value, display)

  return offset + length, value
end

-- Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator = {}

-- Size: Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.size = 1

-- Display: Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.display = function(value)
  if value == 0 then
    return "Implied Market Indicator: Not Implied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Implied In Out (3)"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed = {}

-- Size: Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.display = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Last Px
bse_bseindia_eobi_fbe_v1_4.last_px = {}

-- Size: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.size = 8

-- Display: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
bse_bseindia_eobi_fbe_v1_4.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.last_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty = {}

-- Size: Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty.size = 8

-- Display: Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bse_bseindia_eobi_fbe_v1_4.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time = {}

-- Size: Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time.size = 8

-- Display: Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Last Update Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
bse_bseindia_eobi_fbe_v1_4.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id = {}

-- Size: Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id.size = 8

-- Display: Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
bse_bseindia_eobi_fbe_v1_4.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side = {}

-- Size: Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side.size = 1

-- Display: Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
bse_bseindia_eobi_fbe_v1_4.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit = {}

-- Size: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.size = 8

-- Display: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Lower Ckt Limit: No Value"
  end

  return "Lower Ckt Limit: "..value
end

-- Translate: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Lower Ckt Limit
bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_ckt_limit, range, value, display)

  return offset + length, value
end

-- Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit = {}

-- Size: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.size = 8

-- Display: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.display = function(value)
  return "Lower Exec Limit: "..value
end

-- Translate: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Lower Exec Limit
bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.lower_exec_limit, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id = {}

-- Size: Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id.size = 4

-- Display: Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
bse_bseindia_eobi_fbe_v1_4.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eobi_fbe_v1_4.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px = {}

-- Size: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.size = 8

-- Display: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Md Entry Px
bse_bseindia_eobi_fbe_v1_4.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.md_entry_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.md_entry_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size = {}

-- Size: Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size.size = 8

-- Display: Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
bse_bseindia_eobi_fbe_v1_4.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type = {}

-- Size: Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type.size = 1

-- Display: Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type.display = function(value)
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
    return "Md Entry Type: Upper Ckt Limit (204)"
  end
  if value == 205 then
    return "Md Entry Type: Lower Ckt Limit (205)"
  end
  if value == 206 then
    return "Md Entry Type: Gross Trade Amt (206)"
  end
  if value == 208 then
    return "Md Entry Type: Upper Exec Limit (208)"
  end
  if value == 209 then
    return "Md Entry Type: Lower Exec Limit (209)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
bse_bseindia_eobi_fbe_v1_4.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num = {}

-- Size: Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size = 4

-- Display: Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
bse_bseindia_eobi_fbe_v1_4.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs = {}

-- Size: No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs.size = 1

-- Display: No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs.display = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
bse_bseindia_eobi_fbe_v1_4.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.no_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.no_legs, range, value, display)

  return offset + length, value
end

-- No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries = {}

-- Size: No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries.size = 1

-- Display: No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
bse_bseindia_eobi_fbe_v1_4.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades = {}

-- Size: No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades.size = 4

-- Display: No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades.display = function(value)
  return "No Of Trades: "..value
end

-- Dissect: No Of Trades
bse_bseindia_eobi_fbe_v1_4.no_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.no_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.no_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.no_of_trades, range, value, display)

  return offset + length, value
end

-- Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px = {}

-- Size: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.size = 8

-- Display: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Offer Px
bse_bseindia_eobi_fbe_v1_4.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.offer_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.offer_px.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.offer_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1 = {}

-- Size: Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1.size = 1

-- Display: Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1.display = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
bse_bseindia_eobi_fbe_v1_4.pad_1.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3 = {}

-- Size: Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3.size = 3

-- Display: Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3.display = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
bse_bseindia_eobi_fbe_v1_4.pad_3.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4 = {}

-- Size: Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4.size = 4

-- Display: Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4.display = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
bse_bseindia_eobi_fbe_v1_4.pad_4.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5 = {}

-- Size: Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5.size = 5

-- Display: Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5.display = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
bse_bseindia_eobi_fbe_v1_4.pad_5.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6 = {}

-- Size: Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6.size = 6

-- Display: Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6.display = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
bse_bseindia_eobi_fbe_v1_4.pad_6.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7 = {}

-- Size: Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7.size = 7

-- Display: Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7.display = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
bse_bseindia_eobi_fbe_v1_4.pad_7.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.pad_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eobi_fbe_v1_4.pad_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id = {}

-- Size: Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id.size = 1

-- Display: Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
bse_bseindia_eobi_fbe_v1_4.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price = {}

-- Size: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.size = 8

-- Display: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Prev Close Price: No Value"
  end

  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Prev Close Price
bse_bseindia_eobi_fbe_v1_4.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.prev_close_price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.prev_close_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty = {}

-- Size: Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size = 8

-- Display: Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty.display = function(value)
  return "Prev Display Qty: "..value
end

-- Dissect: Prev Display Qty
bse_bseindia_eobi_fbe_v1_4.prev_display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_display_qty, range, value, display)

  return offset + length, value
end

-- Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price = {}

-- Size: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.size = 8

-- Display: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.display = function(value)
  return "Prev Price: "..value
end

-- Translate: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Prev Price
bse_bseindia_eobi_fbe_v1_4.prev_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.prev_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.prev_price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.prev_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.prev_price, range, value, display)

  return offset + length, value
end

-- Price
bse_bseindia_eobi_fbe_v1_4.price = {}

-- Size: Price
bse_bseindia_eobi_fbe_v1_4.price.size = 8

-- Display: Price
bse_bseindia_eobi_fbe_v1_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bse_bseindia_eobi_fbe_v1_4.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bse_bseindia_eobi_fbe_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.price.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex = {}

-- Size: Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex.size = 1

-- Display: Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex.display = function(value)
  if value == 5 then
    return "Product Complex: Futures Spread (5)"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
bse_bseindia_eobi_fbe_v1_4.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty = {}

-- Size: Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.size = 8

-- Display: Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Resting Hidden Qty: No Value"
  end

  return "Resting Hidden Qty: "..value
end

-- Dissect: Resting Hidden Qty
bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.resting_hidden_qty, range, value, display)

  return offset + length, value
end

-- Security Id
bse_bseindia_eobi_fbe_v1_4.security_id = {}

-- Size: Security Id
bse_bseindia_eobi_fbe_v1_4.security_id.size = 8

-- Display: Security Id
bse_bseindia_eobi_fbe_v1_4.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
bse_bseindia_eobi_fbe_v1_4.security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
bse_bseindia_eobi_fbe_v1_4.security_status = {}

-- Size: Security Status
bse_bseindia_eobi_fbe_v1_4.security_status.size = 1

-- Display: Security Status
bse_bseindia_eobi_fbe_v1_4.security_status.display = function(value)
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
bse_bseindia_eobi_fbe_v1_4.security_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type = {}

-- Size: Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type.size = 4

-- Display: Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
bse_bseindia_eobi_fbe_v1_4.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eobi_fbe_v1_4.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status = {}

-- Size: Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status.size = 1

-- Display: Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status.display = function(value)
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

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
bse_bseindia_eobi_fbe_v1_4.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Side
bse_bseindia_eobi_fbe_v1_4.side = {}

-- Size: Side
bse_bseindia_eobi_fbe_v1_4.side.size = 1

-- Display: Side
bse_bseindia_eobi_fbe_v1_4.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bse_bseindia_eobi_fbe_v1_4.side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.side, range, value, display)

  return offset + length, value
end

-- Template Id
bse_bseindia_eobi_fbe_v1_4.template_id = {}

-- Size: Template Id
bse_bseindia_eobi_fbe_v1_4.template_id.size = 2

-- Display: Template Id
bse_bseindia_eobi_fbe_v1_4.template_id.display = function(value)
  if value == 13001 then
    return "Template Id: Heartbeat Message (13001)"
  end
  if value == 13600 then
    return "Template Id: Product Summary Message (13600)"
  end
  if value == 13602 then
    return "Template Id: Snapshot Order Message (13602)"
  end
  if value == 13601 then
    return "Template Id: Instrument Summary Message (13601)"
  end
  if value == 13500 then
    return "Template Id: Auction Best Bid Offer Message (13500)"
  end
  if value == 13501 then
    return "Template Id: Auction Clearing Price Message (13501)"
  end
  if value == 13504 then
    return "Template Id: Top Of Book Message (13504)"
  end
  if value == 13100 then
    return "Template Id: Order Add Message (13100)"
  end
  if value == 13101 then
    return "Template Id: Order Modify Message (13101)"
  end
  if value == 13106 then
    return "Template Id: Order Modify Same Priority Message (13106)"
  end
  if value == 13102 then
    return "Template Id: Order Delete Message (13102)"
  end
  if value == 13103 then
    return "Template Id: Order Mass Delete Message (13103)"
  end
  if value == 13105 then
    return "Template Id: Partial Order Execution Message (13105)"
  end
  if value == 13104 then
    return "Template Id: Full Order Execution Message (13104)"
  end
  if value == 13200 then
    return "Template Id: Trade Reversal Message (13200)"
  end
  if value == 13202 then
    return "Template Id: Execution Summary Message (13202)"
  end
  if value == 13203 then
    return "Template Id: Instrument Info Message (13203)"
  end
  if value == 13204 then
    return "Template Id: Lpp Range Message (13204)"
  end
  if value == 13300 then
    return "Template Id: Product State Change Message (13300)"
  end
  if value == 13301 then
    return "Template Id: Instrument State Change Message (13301)"
  end
  if value == 13400 then
    return "Template Id: Add Complex Instrument Message (13400)"
  end
  if value == 13002 then
    return "Template Id: Packet Header (13002)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
bse_bseindia_eobi_fbe_v1_4.template_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.template_id, range, value, display)

  return offset + length, value
end

-- Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders = {}

-- Size: Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders.size = 4

-- Display: Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders.display = function(value)
  return "Tot No Orders: "..value
end

-- Dissect: Tot No Orders
bse_bseindia_eobi_fbe_v1_4.tot_no_orders.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.tot_no_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.tot_no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.tot_no_orders, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status = {}

-- Size: Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size = 1

-- Display: Trad Ses Status
bse_bseindia_eobi_fbe_v1_4.trad_ses_status.display = function(value)
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
bse_bseindia_eobi_fbe_v1_4.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition = {}

-- Size: Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition.size = 1

-- Display: Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition.display = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end
  if value == 255 then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
bse_bseindia_eobi_fbe_v1_4.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trade_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume = {}

-- Size: Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume.size = 8

-- Display: Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
bse_bseindia_eobi_fbe_v1_4.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eobi_fbe_v1_4.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id = {}

-- Size: Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id.size = 1

-- Display: Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id.display = function(value)
  if value == 1 then
    return "Trading Session Id: Day (1)"
  end
  if value == 3 then
    return "Trading Session Id: Morning (3)"
  end
  if value == 5 then
    return "Trading Session Id: Evening (5)"
  end
  if value == 7 then
    return "Trading Session Id: Holiday (7)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
bse_bseindia_eobi_fbe_v1_4.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.display = function(value)
  if value == 1 then
    return "Trading Session Sub Id: Pre Trading (1)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Trading (3)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Post Trading (5)"
  end
  if value == 6 then
    return "Trading Session Sub Id: Post Closing (6)"
  end
  if value == 7 then
    return "Trading Session Sub Id: Quiescent (7)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time = {}

-- Size: Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time.size = 8

-- Display: Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
bse_bseindia_eobi_fbe_v1_4.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id = {}

-- Size: Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id.size = 4

-- Display: Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eobi_fbe_v1_4.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time = {}

-- Size: Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size = 8

-- Display: Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Execution Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Execution Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Execution Time
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority = {}

-- Size: Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.size = 8

-- Display: Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Prev Time Priority: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Prev Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_prev_time_priority, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in = {}

-- Size: Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size = 8

-- Display: Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time In: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Time In: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time In
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority = {}

-- Size: Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size = 8

-- Display: Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Time Priority: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Priority
bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit = {}

-- Size: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.size = 8

-- Display: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Upper Ckt Limit: No Value"
  end

  return "Upper Ckt Limit: "..value
end

-- Translate: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Upper Ckt Limit
bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_ckt_limit, range, value, display)

  return offset + length, value
end

-- Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit = {}

-- Size: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.size = 8

-- Display: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.display = function(value)
  return "Upper Exec Limit: "..value
end

-- Translate: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Upper Exec Limit
bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.translate(raw)
  local display = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.upper_exec_limit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bse BseIndia Eobi Fbe 1.4
-----------------------------------------------------------------------

-- Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp = {}

-- Size: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.size =
  bse_bseindia_eobi_fbe_v1_4.leg_security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.leg_side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_3.size

-- Display: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, instrmt_leg_grp_index)
  local index = offset

  -- Implicit Instrmt Leg Grp Index
  if instrmt_leg_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp_index, instrmt_leg_grp_index)
    iteration:set_generated()
  end

  -- Leg Security Id: signed int
  index, leg_security_id = bse_bseindia_eobi_fbe_v1_4.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: signed int
  index, leg_ratio_qty = bse_bseindia_eobi_fbe_v1_4.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: unsigned int
  index, leg_side = bse_bseindia_eobi_fbe_v1_4.leg_side.dissect(buffer, index, packet, parent)

  -- Pad 3: Fixed String
  index, pad_3 = bse_bseindia_eobi_fbe_v1_4.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp
bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, instrmt_leg_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrmt_leg_grp, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.fields(buffer, offset, packet, parent, instrmt_leg_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.fields(buffer, offset, packet, parent, instrmt_leg_grp_index)
  end
end

-- Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message = {}

-- Calculate size of: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.size = function(buffer, offset)
  local index = 0

  index = index + bse_bseindia_eobi_fbe_v1_4.security_id.size

  index = index + bse_bseindia_eobi_fbe_v1_4.transact_time.size

  index = index + bse_bseindia_eobi_fbe_v1_4.security_sub_type.size

  index = index + bse_bseindia_eobi_fbe_v1_4.product_complex.size

  index = index + bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.size

  index = index + bse_bseindia_eobi_fbe_v1_4.no_legs.size

  index = index + bse_bseindia_eobi_fbe_v1_4.pad_1.size

  -- Calculate field size from count
  local instrmt_leg_grp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + instrmt_leg_grp_count * 16

  return index
end

-- Display: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Sub Type: signed int
  index, security_sub_type = bse_bseindia_eobi_fbe_v1_4.security_sub_type.dissect(buffer, index, packet, parent)

  -- Product Complex: unsigned int
  index, product_complex = bse_bseindia_eobi_fbe_v1_4.product_complex.dissect(buffer, index, packet, parent)

  -- Implied Market Indicator: unsigned int
  index, implied_market_indicator = bse_bseindia_eobi_fbe_v1_4.implied_market_indicator.dissect(buffer, index, packet, parent)

  -- No Legs: Counter
  index, no_legs = bse_bseindia_eobi_fbe_v1_4.no_legs.dissect(buffer, index, packet, parent)

  -- Pad 1: Fixed String
  index, pad_1 = bse_bseindia_eobi_fbe_v1_4.pad_1.dissect(buffer, index, packet, parent)

  -- Repeating: Instrmt Leg Grp
  for instrmt_leg_grp_index = 1, no_legs do
    index, instrmt_leg_grp = bse_bseindia_eobi_fbe_v1_4.instrmt_leg_grp.dissect(buffer, index, packet, parent, instrmt_leg_grp_index)
  end

  return index
end

-- Dissect: Add Complex Instrument Message
bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.add_complex_instrument_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message = {}

-- Size: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.security_status.size + 
  bse_bseindia_eobi_fbe_v1_4.security_trading_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_5.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Security Status: unsigned int
  index, security_status = bse_bseindia_eobi_fbe_v1_4.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: unsigned int
  index, security_trading_status = bse_bseindia_eobi_fbe_v1_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Pad 5: Fixed String
  index, pad_5 = bse_bseindia_eobi_fbe_v1_4.pad_5.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change Message
bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_state_change_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message = {}

-- Size: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.size =
  bse_bseindia_eobi_fbe_v1_4.trading_session_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Id: unsigned int
  index, trading_session_id = bse_bseindia_eobi_fbe_v1_4.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: unsigned int
  index, trading_session_sub_id = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: unsigned int
  index, trad_ses_status = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product State Change Message
bse_bseindia_eobi_fbe_v1_4.product_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.product_state_change_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.product_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.product_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.product_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message = {}

-- Size: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.size + 
  bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.size

-- Display: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Upper Exec Limit: PriceType
  index, upper_exec_limit = bse_bseindia_eobi_fbe_v1_4.upper_exec_limit.dissect(buffer, index, packet, parent)

  -- Lower Exec Limit: PriceType
  index, lower_exec_limit = bse_bseindia_eobi_fbe_v1_4.lower_exec_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lpp Range Message
bse_bseindia_eobi_fbe_v1_4.lpp_range_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.lpp_range_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.lpp_range_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.lpp_range_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.lpp_range_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message = {}

-- Size: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.close_price.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_close_price.size + 
  bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.size + 
  bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.size

-- Display: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Close Price: PriceType
  index, close_price = bse_bseindia_eobi_fbe_v1_4.close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Price: PriceType
  index, prev_close_price = bse_bseindia_eobi_fbe_v1_4.prev_close_price.dissect(buffer, index, packet, parent)

  -- Upper Ckt Limit: PriceType
  index, upper_ckt_limit = bse_bseindia_eobi_fbe_v1_4.upper_ckt_limit.dissect(buffer, index, packet, parent)

  -- Lower Ckt Limit: PriceType
  index, lower_ckt_limit = bse_bseindia_eobi_fbe_v1_4.lower_ckt_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Message
bse_bseindia_eobi_fbe_v1_4.instrument_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_info_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrument_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrument_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrument_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message = {}

-- Size: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.size + 
  bse_bseindia_eobi_fbe_v1_4.exec_id.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.aggressor_side.size + 
  bse_bseindia_eobi_fbe_v1_4.trade_condition.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_6.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size + 
  bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.size

-- Display: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Aggressor Timestamp: UTCTimestamp
  index, aggressor_timestamp = bse_bseindia_eobi_fbe_v1_4.aggressor_timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: UTCTimestamp
  index, exec_id = bse_bseindia_eobi_fbe_v1_4.exec_id.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Aggressor Side: unsigned int
  index, aggressor_side = bse_bseindia_eobi_fbe_v1_4.aggressor_side.dissect(buffer, index, packet, parent)

  -- Trade Condition: unsigned int
  index, trade_condition = bse_bseindia_eobi_fbe_v1_4.trade_condition.dissect(buffer, index, packet, parent)

  -- Pad 6: Fixed String
  index, pad_6 = bse_bseindia_eobi_fbe_v1_4.pad_6.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  -- Resting Hidden Qty: signed int
  index, resting_hidden_qty = bse_bseindia_eobi_fbe_v1_4.resting_hidden_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary Message
bse_bseindia_eobi_fbe_v1_4.execution_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.execution_summary_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.execution_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.execution_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.execution_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp = {}

-- Size: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.size =
  bse_bseindia_eobi_fbe_v1_4.md_entry_px.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_size.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_type.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size

-- Display: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.fields = function(buffer, offset, packet, parent, md_trade_entry_grp_index)
  local index = offset

  -- Implicit Md Trade Entry Grp Index
  if md_trade_entry_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp_index, md_trade_entry_grp_index)
    iteration:set_generated()
  end

  -- Md Entry Px: PriceType
  index, md_entry_px = bse_bseindia_eobi_fbe_v1_4.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: signed int
  index, md_entry_size = bse_bseindia_eobi_fbe_v1_4.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Type: unsigned int
  index, md_entry_type = bse_bseindia_eobi_fbe_v1_4.md_entry_type.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Trade Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.dissect = function(buffer, offset, packet, parent, md_trade_entry_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_trade_entry_grp, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.fields(buffer, offset, packet, parent, md_trade_entry_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.fields(buffer, offset, packet, parent, md_trade_entry_grp_index)
  end
end

-- Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message = {}

-- Calculate size of: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.size = function(buffer, offset)
  local index = 0

  index = index + bse_bseindia_eobi_fbe_v1_4.security_id.size

  index = index + bse_bseindia_eobi_fbe_v1_4.transact_time.size

  index = index + bse_bseindia_eobi_fbe_v1_4.trd_match_id.size

  index = index + bse_bseindia_eobi_fbe_v1_4.pad_4.size

  index = index + bse_bseindia_eobi_fbe_v1_4.last_qty.size

  index = index + bse_bseindia_eobi_fbe_v1_4.last_px.size

  index = index + bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size

  index = index + bse_bseindia_eobi_fbe_v1_4.no_md_entries.size

  index = index + bse_bseindia_eobi_fbe_v1_4.pad_7.size

  -- Calculate field size from count
  local md_trade_entry_grp_count = buffer(offset + index - 8, 1):le_uint()
  index = index + md_trade_entry_grp_count * 24

  return index
end

-- Display: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Trd Match Id: unsigned int
  index, trd_match_id = bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: UTCTimestamp
  index, trd_reg_ts_execution_time = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.dissect(buffer, index, packet, parent)

  -- No Md Entries: Counter
  index, no_md_entries = bse_bseindia_eobi_fbe_v1_4.no_md_entries.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Md Trade Entry Grp
  for md_trade_entry_grp_index = 1, no_md_entries do
    index, md_trade_entry_grp = bse_bseindia_eobi_fbe_v1_4.md_trade_entry_grp.dissect(buffer, index, packet, parent, md_trade_entry_grp_index)
  end

  return index
end

-- Dissect: Trade Reversal Message
bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.trade_reversal_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message = {}

-- Size: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.size =
  bse_bseindia_eobi_fbe_v1_4.side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  bse_bseindia_eobi_fbe_v1_4.price.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_match_id.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size

-- Display: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: unsigned int
  index, side = bse_bseindia_eobi_fbe_v1_4.side.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = bse_bseindia_eobi_fbe_v1_4.price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: UTCTimestamp
  index, trd_reg_ts_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: unsigned int
  index, trd_match_id = bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Order Execution Message
bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.full_order_execution_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message = {}

-- Size: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.size =
  bse_bseindia_eobi_fbe_v1_4.side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  bse_bseindia_eobi_fbe_v1_4.price.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_match_id.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size

-- Display: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: unsigned int
  index, side = bse_bseindia_eobi_fbe_v1_4.side.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = bse_bseindia_eobi_fbe_v1_4.price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: UTCTimestamp
  index, trd_reg_ts_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: unsigned int
  index, trd_match_id = bse_bseindia_eobi_fbe_v1_4.trd_match_id.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Order Execution Message
bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.partial_order_execution_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message = {}

-- Size: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.size =
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Delete Message
bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_mass_delete_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Details
bse_bseindia_eobi_fbe_v1_4.order_details = {}

-- Size: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.display_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.side.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size + 
  bse_bseindia_eobi_fbe_v1_4.price.size

-- Display: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Priority: UTCTimestamp
  index, trd_reg_ts_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Display Qty: signed int
  index, display_qty = bse_bseindia_eobi_fbe_v1_4.display_qty.dissect(buffer, index, packet, parent)

  -- Side: unsigned int
  index, side = bse_bseindia_eobi_fbe_v1_4.side.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = bse_bseindia_eobi_fbe_v1_4.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Details
bse_bseindia_eobi_fbe_v1_4.order_details.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_details, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_details.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_details.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_details.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message = {}

-- Size: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
bse_bseindia_eobi_fbe_v1_4.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_delete_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message = {}

-- Size: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Prev Display Qty: signed int
  index, prev_display_qty = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Same Priority Message
bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_same_priority_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message = {}

-- Size: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_price.size + 
  bse_bseindia_eobi_fbe_v1_4.prev_display_qty.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Prev Time Priority: UTCTimestamp
  index, trd_reg_ts_prev_time_priority = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_prev_time_priority.dissect(buffer, index, packet, parent)

  -- Prev Price: PriceType
  index, prev_price = bse_bseindia_eobi_fbe_v1_4.prev_price.dissect(buffer, index, packet, parent)

  -- Prev Display Qty: signed int
  index, prev_display_qty = bse_bseindia_eobi_fbe_v1_4.prev_display_qty.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
bse_bseindia_eobi_fbe_v1_4.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_modify_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message = {}

-- Size: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.size =
  bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time In: UTCTimestamp
  index, trd_reg_ts_time_in = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
bse_bseindia_eobi_fbe_v1_4.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.order_add_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message = {}

-- Size: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.size =
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.bid_px.size + 
  bse_bseindia_eobi_fbe_v1_4.offer_px.size

-- Display: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: PriceType
  index, bid_px = bse_bseindia_eobi_fbe_v1_4.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: PriceType
  index, offer_px = bse_bseindia_eobi_fbe_v1_4.offer_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
bse_bseindia_eobi_fbe_v1_4.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.top_of_book_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message = {}

-- Size: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.size =
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.last_px.size + 
  bse_bseindia_eobi_fbe_v1_4.last_qty.size

-- Display: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = bse_bseindia_eobi_fbe_v1_4.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: signed int
  index, last_qty = bse_bseindia_eobi_fbe_v1_4.last_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Clearing Price Message
bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_clearing_price_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message = {}

-- Size: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.size =
  bse_bseindia_eobi_fbe_v1_4.transact_time.size + 
  bse_bseindia_eobi_fbe_v1_4.security_id.size + 
  bse_bseindia_eobi_fbe_v1_4.bid_px.size + 
  bse_bseindia_eobi_fbe_v1_4.offer_px.size

-- Display: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: PriceType
  index, bid_px = bse_bseindia_eobi_fbe_v1_4.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: PriceType
  index, offer_px = bse_bseindia_eobi_fbe_v1_4.offer_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Best Bid Offer Message
bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.auction_best_bid_offer_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp = {}

-- Size: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.size =
  bse_bseindia_eobi_fbe_v1_4.md_entry_px.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_size.size + 
  bse_bseindia_eobi_fbe_v1_4.md_entry_type.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_7.size

-- Display: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.fields = function(buffer, offset, packet, parent, md_instrument_entry_grp_index)
  local index = offset

  -- Implicit Md Instrument Entry Grp Index
  if md_instrument_entry_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp_index, md_instrument_entry_grp_index)
    iteration:set_generated()
  end

  -- Md Entry Px: PriceType
  index, md_entry_px = bse_bseindia_eobi_fbe_v1_4.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: signed int
  index, md_entry_size = bse_bseindia_eobi_fbe_v1_4.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Type: unsigned int
  index, md_entry_type = bse_bseindia_eobi_fbe_v1_4.md_entry_type.dissect(buffer, index, packet, parent)

  -- Pad 7: Fixed String
  index, pad_7 = bse_bseindia_eobi_fbe_v1_4.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Entry Grp
bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.dissect = function(buffer, offset, packet, parent, md_instrument_entry_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.md_instrument_entry_grp, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.fields(buffer, offset, packet, parent, md_instrument_entry_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.fields(buffer, offset, packet, parent, md_instrument_entry_grp_index)
  end
end

-- Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message = {}

-- Calculate size of: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + bse_bseindia_eobi_fbe_v1_4.security_id.size

  index = index + bse_bseindia_eobi_fbe_v1_4.last_update_time.size

  index = index + bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.size

  index = index + bse_bseindia_eobi_fbe_v1_4.tot_no_orders.size

  index = index + bse_bseindia_eobi_fbe_v1_4.security_status.size

  index = index + bse_bseindia_eobi_fbe_v1_4.security_trading_status.size

  index = index + bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size

  index = index + bse_bseindia_eobi_fbe_v1_4.no_md_entries.size

  index = index + bse_bseindia_eobi_fbe_v1_4.trade_volume.size

  index = index + bse_bseindia_eobi_fbe_v1_4.no_of_trades.size

  index = index + bse_bseindia_eobi_fbe_v1_4.pad_4.size

  -- Calculate field size from count
  local md_instrument_entry_grp_count = buffer(offset + index - 17, 1):le_uint()
  index = index + md_instrument_entry_grp_count * 24

  return index
end

-- Display: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: signed int
  index, security_id = bse_bseindia_eobi_fbe_v1_4.security_id.dissect(buffer, index, packet, parent)

  -- Last Update Time: UTCTimestamp
  index, last_update_time = bse_bseindia_eobi_fbe_v1_4.last_update_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: UTCTimestamp
  index, trd_reg_ts_execution_time = bse_bseindia_eobi_fbe_v1_4.trd_reg_ts_execution_time.dissect(buffer, index, packet, parent)

  -- Tot No Orders: unsigned int
  index, tot_no_orders = bse_bseindia_eobi_fbe_v1_4.tot_no_orders.dissect(buffer, index, packet, parent)

  -- Security Status: unsigned int
  index, security_status = bse_bseindia_eobi_fbe_v1_4.security_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status: unsigned int
  index, security_trading_status = bse_bseindia_eobi_fbe_v1_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  -- No Md Entries: Counter
  index, no_md_entries = bse_bseindia_eobi_fbe_v1_4.no_md_entries.dissect(buffer, index, packet, parent)

  -- Trade Volume: signed int
  index, trade_volume = bse_bseindia_eobi_fbe_v1_4.trade_volume.dissect(buffer, index, packet, parent)

  -- No Of Trades: unsigned int
  index, no_of_trades = bse_bseindia_eobi_fbe_v1_4.no_of_trades.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  -- Repeating: Md Instrument Entry Grp
  for md_instrument_entry_grp_index = 1, no_md_entries do
    index, md_instrument_entry_grp = bse_bseindia_eobi_fbe_v1_4.md_instrument_entry_grp.dissect(buffer, index, packet, parent, md_instrument_entry_grp_index)
  end

  return index
end

-- Dissect: Instrument Summary Message
bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.instrument_summary_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message = {}

-- Size: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.size =
  bse_bseindia_eobi_fbe_v1_4.order_details.size

-- Display: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details: Struct of 5 fields
  index, order_details = bse_bseindia_eobi_fbe_v1_4.order_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Order Message
bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.snapshot_order_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message = {}

-- Size: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.size =
  bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size + 
  bse_bseindia_eobi_fbe_v1_4.trading_session_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.size + 
  bse_bseindia_eobi_fbe_v1_4.trad_ses_status.size + 
  bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.size

-- Display: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: unsigned int
  index, last_msg_seq_num_processed = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Trading Session Id: unsigned int
  index, trading_session_id = bse_bseindia_eobi_fbe_v1_4.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: unsigned int
  index, trading_session_sub_id = bse_bseindia_eobi_fbe_v1_4.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: unsigned int
  index, trad_ses_status = bse_bseindia_eobi_fbe_v1_4.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Fast Market Indicator: unsigned int
  index, fast_market_indicator = bse_bseindia_eobi_fbe_v1_4.fast_market_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary Message
bse_bseindia_eobi_fbe_v1_4.product_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.product_summary_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.product_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.product_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.product_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message = {}

-- Size: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.size =
  bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_4.size

-- Display: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: unsigned int
  index, last_msg_seq_num_processed = bse_bseindia_eobi_fbe_v1_4.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Pad 4: Fixed String
  index, pad_4 = bse_bseindia_eobi_fbe_v1_4.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bse_bseindia_eobi_fbe_v1_4.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.heartbeat_message, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bse_bseindia_eobi_fbe_v1_4.payload = {}

-- Dissect: Payload
bse_bseindia_eobi_fbe_v1_4.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Heartbeat Message
  if template_id == 13001 then
    return bse_bseindia_eobi_fbe_v1_4.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Product Summary Message
  if template_id == 13600 then
    return bse_bseindia_eobi_fbe_v1_4.product_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Order Message
  if template_id == 13602 then
    return bse_bseindia_eobi_fbe_v1_4.snapshot_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Summary Message
  if template_id == 13601 then
    return bse_bseindia_eobi_fbe_v1_4.instrument_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Best Bid Offer Message
  if template_id == 13500 then
    return bse_bseindia_eobi_fbe_v1_4.auction_best_bid_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Clearing Price Message
  if template_id == 13501 then
    return bse_bseindia_eobi_fbe_v1_4.auction_clearing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if template_id == 13504 then
    return bse_bseindia_eobi_fbe_v1_4.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if template_id == 13100 then
    return bse_bseindia_eobi_fbe_v1_4.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if template_id == 13101 then
    return bse_bseindia_eobi_fbe_v1_4.order_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Same Priority Message
  if template_id == 13106 then
    return bse_bseindia_eobi_fbe_v1_4.order_modify_same_priority_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if template_id == 13102 then
    return bse_bseindia_eobi_fbe_v1_4.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Delete Message
  if template_id == 13103 then
    return bse_bseindia_eobi_fbe_v1_4.order_mass_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Partial Order Execution Message
  if template_id == 13105 then
    return bse_bseindia_eobi_fbe_v1_4.partial_order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Full Order Execution Message
  if template_id == 13104 then
    return bse_bseindia_eobi_fbe_v1_4.full_order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Reversal Message
  if template_id == 13200 then
    return bse_bseindia_eobi_fbe_v1_4.trade_reversal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary Message
  if template_id == 13202 then
    return bse_bseindia_eobi_fbe_v1_4.execution_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Message
  if template_id == 13203 then
    return bse_bseindia_eobi_fbe_v1_4.instrument_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Lpp Range Message
  if template_id == 13204 then
    return bse_bseindia_eobi_fbe_v1_4.lpp_range_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Product State Change Message
  if template_id == 13300 then
    return bse_bseindia_eobi_fbe_v1_4.product_state_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument State Change Message
  if template_id == 13301 then
    return bse_bseindia_eobi_fbe_v1_4.instrument_state_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Message
  if template_id == 13400 then
    return bse_bseindia_eobi_fbe_v1_4.add_complex_instrument_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bse_bseindia_eobi_fbe_v1_4.message_header = {}

-- Size: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.size =
  bse_bseindia_eobi_fbe_v1_4.body_len.size + 
  bse_bseindia_eobi_fbe_v1_4.template_id.size + 
  bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size

-- Display: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: unsigned int
  index, body_len = bse_bseindia_eobi_fbe_v1_4.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: unsigned int
  index, template_id = bse_bseindia_eobi_fbe_v1_4.template_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: unsigned int
  index, msg_seq_num = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bse_bseindia_eobi_fbe_v1_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.message_header, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bse_bseindia_eobi_fbe_v1_4.message = {}

-- Display: Message
bse_bseindia_eobi_fbe_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bse_bseindia_eobi_fbe_v1_4.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = bse_bseindia_eobi_fbe_v1_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = bse_bseindia_eobi_fbe_v1_4.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
bse_bseindia_eobi_fbe_v1_4.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.message, buffer(offset, 0))
    local current = bse_bseindia_eobi_fbe_v1_4.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bse_bseindia_eobi_fbe_v1_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eobi_fbe_v1_4.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header = {}

-- Size: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.size =
  bse_bseindia_eobi_fbe_v1_4.body_len.size + 
  bse_bseindia_eobi_fbe_v1_4.template_id.size + 
  bse_bseindia_eobi_fbe_v1_4.msg_seq_num.size

-- Display: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: unsigned int
  index, body_len = bse_bseindia_eobi_fbe_v1_4.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: unsigned int
  index, template_id = bse_bseindia_eobi_fbe_v1_4.template_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: unsigned int
  index, msg_seq_num = bse_bseindia_eobi_fbe_v1_4.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eobi Header
bse_bseindia_eobi_fbe_v1_4.eobi_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.eobi_header, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.eobi_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.eobi_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.eobi_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header = {}

-- Size: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.size =
  bse_bseindia_eobi_fbe_v1_4.eobi_header.size + 
  bse_bseindia_eobi_fbe_v1_4.appl_seq_num.size + 
  bse_bseindia_eobi_fbe_v1_4.market_segment_id.size + 
  bse_bseindia_eobi_fbe_v1_4.partition_id.size + 
  bse_bseindia_eobi_fbe_v1_4.completion_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.size + 
  bse_bseindia_eobi_fbe_v1_4.pad_5.size + 
  bse_bseindia_eobi_fbe_v1_4.transact_time.size

-- Display: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Eobi Header: Struct of 3 fields
  index, eobi_header = bse_bseindia_eobi_fbe_v1_4.eobi_header.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: unsigned int
  index, appl_seq_num = bse_bseindia_eobi_fbe_v1_4.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Market Segment Id: signed int
  index, market_segment_id = bse_bseindia_eobi_fbe_v1_4.market_segment_id.dissect(buffer, index, packet, parent)

  -- Partition Id: unsigned int
  index, partition_id = bse_bseindia_eobi_fbe_v1_4.partition_id.dissect(buffer, index, packet, parent)

  -- Completion Indicator: unsigned int
  index, completion_indicator = bse_bseindia_eobi_fbe_v1_4.completion_indicator.dissect(buffer, index, packet, parent)

  -- Appl Seq Reset Indicator: unsigned int
  index, appl_seq_reset_indicator = bse_bseindia_eobi_fbe_v1_4.appl_seq_reset_indicator.dissect(buffer, index, packet, parent)

  -- Pad 5: Fixed String
  index, pad_5 = bse_bseindia_eobi_fbe_v1_4.pad_5.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestamp
  index, transact_time = bse_bseindia_eobi_fbe_v1_4.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
bse_bseindia_eobi_fbe_v1_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eobi_fbe_v1_4.fields.packet_header, buffer(offset, 0))
    local index = bse_bseindia_eobi_fbe_v1_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eobi_fbe_v1_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eobi_fbe_v1_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bse_bseindia_eobi_fbe_v1_4.packet = {}

-- Verify required size of Udp packet
bse_bseindia_eobi_fbe_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= bse_bseindia_eobi_fbe_v1_4.packet_header.size + bse_bseindia_eobi_fbe_v1_4.message_header.size
end

-- Dissect Packet
bse_bseindia_eobi_fbe_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = bse_bseindia_eobi_fbe_v1_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Body Len
    local body_len = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = bse_bseindia_eobi_fbe_v1_4.message.dissect(buffer, index, packet, parent, body_len)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bse_bseindia_eobi_fbe_v1_4.init()
end

-- Dissector for Bse BseIndia Eobi Fbe 1.4
function omi_bse_bseindia_eobi_fbe_v1_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_bse_bseindia_eobi_fbe_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_bse_bseindia_eobi_fbe_v1_4, buffer(), omi_bse_bseindia_eobi_fbe_v1_4.description, "("..buffer:len().." Bytes)")
  return bse_bseindia_eobi_fbe_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bse BseIndia Eobi Fbe 1.4 (Udp)
local function omi_bse_bseindia_eobi_fbe_v1_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bse_bseindia_eobi_fbe_v1_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bse_bseindia_eobi_fbe_v1_4
  omi_bse_bseindia_eobi_fbe_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bse BseIndia Eobi Fbe 1.4
omi_bse_bseindia_eobi_fbe_v1_4:register_heuristic("udp", omi_bse_bseindia_eobi_fbe_v1_4_udp_heuristic)

-- Register Bse BseIndia Eobi Fbe 1.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bse_bseindia_eobi_fbe_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: BSE Limited
--   Version: 1.4
--   Date: Monday, July 14, 2025
--   Specification: EOBI_Data_Manual_V1.4.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
