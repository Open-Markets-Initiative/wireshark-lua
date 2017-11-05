-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Eobi 3.0.71 Protocol
local eurex_t7_eobi_3_0_71 = Proto("Eurex.T7.Eobi.3.0.71.Lua", "Eurex T7 Eobi 3.0.71")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex T7 Eobi 3.0.71 Format Options
format.add_complex_instrument = true
format.auction_bbo = true
format.auction_clearing_price = true
format.cross_request = true
format.execution_summary = true
format.full_order_execution = true
format.heartbeat = true
format.instrmt_leg_grp = true
format.instrument_state_change = true
format.instrument_summary = true
format.md_instrument_entry_grp = true
format.md_trade_entry_grp = true
format.message = true
format.message_header = true
format.order_add = true
format.order_delete = true
format.order_details = true
format.order_mass_delete = true
format.order_modify = true
format.order_modify_same_prio = true
format.packet = true
format.packet_header = true
format.packet_info = true
format.partial_order_execution = true
format.product_state_change = true
format.product_summary = true
format.quote_request = true
format.snapshot_order = true
format.top_of_book = true
format.trade_report = true
format.trade_reversal = true
format.payload = true

-- Eurex T7 Eobi 3.0.71 Element Dissection Options
show.add_complex_instrument = true
show.auction_bbo = true
show.auction_clearing_price = true
show.cross_request = true
show.execution_summary = true
show.full_order_execution = true
show.heartbeat = true
show.instrmt_leg_grp = true
show.instrument_state_change = true
show.instrument_summary = true
show.md_instrument_entry_grp = true
show.md_trade_entry_grp = true
show.message = true
show.message_header = true
show.order_add = true
show.order_delete = true
show.order_details = true
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

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 Eobi 3.0.71 Fields
eurex_t7_eobi_3_0_71.fields.add_complex_instrument = ProtoField.new("Add Complex Instrument", "eurex.t7.eobi.addcomplexinstrument", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.aggressor_side = ProtoField.new("Aggressor Side", "eurex.t7.eobi.aggressorside", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.aggressor_timestamp = ProtoField.new("Aggressor Timestamp", "eurex.t7.eobi.aggressortimestamp", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.application_sequence_number = ProtoField.new("Application Sequence Number", "eurex.t7.eobi.applicationsequencenumber", ftypes.UINT32)
eurex_t7_eobi_3_0_71.fields.application_sequence_reset_indicator = ProtoField.new("Application Sequence Reset Indicator", "eurex.t7.eobi.applicationsequenceresetindicator", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.auction_bbo = ProtoField.new("Auction BBO", "eurex.t7.eobi.auctionbbo", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.auction_clearing_price = ProtoField.new("Auction Clearing Price", "eurex.t7.eobi.auctionclearingprice", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.bid_px = ProtoField.new("Bid Px", "eurex.t7.eobi.bidpx", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.body_len = ProtoField.new("Body Len", "eurex.t7.eobi.bodylen", ftypes.UINT16)
eurex_t7_eobi_3_0_71.fields.completion_indicator = ProtoField.new("Completion Indicator", "eurex.t7.eobi.completionindicator", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.cross_request = ProtoField.new("Cross Request", "eurex.t7.eobi.crossrequest", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.display_qty = ProtoField.new("Display Qty", "eurex.t7.eobi.displayqty", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.exec_id = ProtoField.new("Exec ID", "eurex.t7.eobi.execid", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.execution_summary = ProtoField.new("Execution Summary", "eurex.t7.eobi.executionsummary", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.t7.eobi.fastmarketindicator", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.full_order_execution = ProtoField.new("Full Order Execution", "eurex.t7.eobi.fullorderexecution", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.header_length = ProtoField.new("Header Length", "eurex.t7.eobi.headerlength", ftypes.UINT16)
eurex_t7_eobi_3_0_71.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.t7.eobi.heartbeat", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.t7.eobi.impliedmarketindicator", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.t7.eobi.instrmtleggrp", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.instrument_state_change = ProtoField.new("Instrument State Change", "eurex.t7.eobi.instrumentstatechange", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.instrument_summary = ProtoField.new("Instrument Summary", "eurex.t7.eobi.instrumentsummary", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.eobi.lastmsgseqnumprocessed", ftypes.UINT32)
eurex_t7_eobi_3_0_71.fields.last_px = ProtoField.new("Last Px", "eurex.t7.eobi.lastpx", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.last_qty = ProtoField.new("Last Qty", "eurex.t7.eobi.lastqty", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.t7.eobi.lastupdatetime", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.t7.eobi.legratioqty", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.leg_security_id = ProtoField.new("Leg Security ID", "eurex.t7.eobi.legsecurityid", ftypes.INT64)
eurex_t7_eobi_3_0_71.fields.leg_side = ProtoField.new("Leg Side", "eurex.t7.eobi.legside", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.t7.eobi.legsymbol", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.market_segment_id = ProtoField.new("Market Segment ID", "eurex.t7.eobi.marketsegmentid", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.t7.eobi.matchsubtype", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.match_type = ProtoField.new("Match Type", "eurex.t7.eobi.matchtype", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.md_entry_px = ProtoField.new("MD Entry Px", "eurex.t7.eobi.mdentrypx", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.md_entry_size = ProtoField.new("MD Entry Size", "eurex.t7.eobi.mdentrysize", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.md_entry_type = ProtoField.new("MD Entry Type", "eurex.t7.eobi.mdentrytype", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.md_instrument_entry_grp = ProtoField.new("MD Instrument Entry Grp", "eurex.t7.eobi.mdinstrumententrygrp", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.md_trade_entry_grp = ProtoField.new("MD Trade Entry Grp", "eurex.t7.eobi.mdtradeentrygrp", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.message = ProtoField.new("Message", "eurex.t7.eobi.message", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.message_header = ProtoField.new("Message Header", "eurex.t7.eobi.messageheader", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.eobi.msgseqnum", ftypes.UINT32)
eurex_t7_eobi_3_0_71.fields.no_legs = ProtoField.new("No Legs", "eurex.t7.eobi.nolegs", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.no_md_entries = ProtoField.new("No MD Entries", "eurex.t7.eobi.nomdentries", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.offer_px = ProtoField.new("Offer Px", "eurex.t7.eobi.offerpx", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.order_add = ProtoField.new("Order Add", "eurex.t7.eobi.orderadd", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.order_delete = ProtoField.new("Order Delete", "eurex.t7.eobi.orderdelete", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.order_details = ProtoField.new("Order Details", "eurex.t7.eobi.orderdetails", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.order_mass_delete = ProtoField.new("Order Mass Delete", "eurex.t7.eobi.ordermassdelete", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.order_modify = ProtoField.new("Order Modify", "eurex.t7.eobi.ordermodify", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.order_modify_same_prio = ProtoField.new("Order Modify Same Prio", "eurex.t7.eobi.ordermodifysameprio", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.packet = ProtoField.new("Packet", "eurex.t7.eobi.packet", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.packet_header = ProtoField.new("Packet Header", "eurex.t7.eobi.packetheader", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.packet_id = ProtoField.new("Packet Id", "eurex.t7.eobi.packetid", ftypes.UINT16)
eurex_t7_eobi_3_0_71.fields.packet_info = ProtoField.new("Packet Info", "eurex.t7.eobi.packetinfo", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.eobi.packetseqnum", ftypes.UINT32)
eurex_t7_eobi_3_0_71.fields.pad1 = ProtoField.new("Pad1", "eurex.t7.eobi.pad1", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.pad2 = ProtoField.new("Pad2", "eurex.t7.eobi.pad2", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.pad3 = ProtoField.new("Pad3", "eurex.t7.eobi.pad3", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.pad4 = ProtoField.new("Pad4", "eurex.t7.eobi.pad4", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.pad5 = ProtoField.new("Pad5", "eurex.t7.eobi.pad5", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.pad6 = ProtoField.new("Pad6", "eurex.t7.eobi.pad6", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.pad7 = ProtoField.new("Pad7", "eurex.t7.eobi.pad7", ftypes.BYTES)
eurex_t7_eobi_3_0_71.fields.partial_order_execution = ProtoField.new("Partial Order Execution", "eurex.t7.eobi.partialorderexecution", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.partition_id = ProtoField.new("Partition ID", "eurex.t7.eobi.partitionid", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.payload = ProtoField.new("Payload", "eurex.t7.eobi.payload", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "eurex.t7.eobi.prevdisplayqty", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.prev_price = ProtoField.new("Prev Price", "eurex.t7.eobi.prevprice", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.price = ProtoField.new("Price", "eurex.t7.eobi.price", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.product_complex = ProtoField.new("Product Complex", "eurex.t7.eobi.productcomplex", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.product_state_change = ProtoField.new("Product State Change", "eurex.t7.eobi.productstatechange", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.product_summary = ProtoField.new("Product Summary", "eurex.t7.eobi.productsummary", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.quote_request = ProtoField.new("Quote Request", "eurex.t7.eobi.quoterequest", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.request_time = ProtoField.new("Request Time", "eurex.t7.eobi.requesttime", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.resting_cxl_qty = ProtoField.new("Resting Cxl Qty", "eurex.t7.eobi.restingcxlqty", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "eurex.t7.eobi.restinghiddenqty", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.security_id = ProtoField.new("Security ID", "eurex.t7.eobi.securityid", ftypes.INT64)
eurex_t7_eobi_3_0_71.fields.security_status = ProtoField.new("Security Status", "eurex.t7.eobi.securitystatus", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.t7.eobi.securitysubtype", ftypes.INT32)
eurex_t7_eobi_3_0_71.fields.security_trading_status = ProtoField.new("Security Trading Status", "eurex.t7.eobi.securitytradingstatus", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.side = ProtoField.new("Side", "eurex.t7.eobi.side", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.snapshot_order = ProtoField.new("Snapshot Order", "eurex.t7.eobi.snapshotorder", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.template_id = ProtoField.new("Template ID", "eurex.t7.eobi.templateid", ftypes.UINT16)
eurex_t7_eobi_3_0_71.fields.top_of_book = ProtoField.new("Top Of Book", "eurex.t7.eobi.topofbook", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.tot_no_orders = ProtoField.new("Tot No Orders", "eurex.t7.eobi.totnoorders", ftypes.UINT16)
eurex_t7_eobi_3_0_71.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "eurex.t7.eobi.tradsesstatus", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.trade_condition = ProtoField.new("Trade Condition", "eurex.t7.eobi.tradecondition", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.trade_report = ProtoField.new("Trade Report", "eurex.t7.eobi.tradereport", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.trade_reversal = ProtoField.new("Trade Reversal", "eurex.t7.eobi.tradereversal", ftypes.STRING)
eurex_t7_eobi_3_0_71.fields.trading_session_id = ProtoField.new("Trading Session ID", "eurex.t7.eobi.tradingsessionid", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub ID", "eurex.t7.eobi.tradingsessionsubid", ftypes.UINT8)
eurex_t7_eobi_3_0_71.fields.transact_time = ProtoField.new("Transact Time", "eurex.t7.eobi.transacttime", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.trd_match_id = ProtoField.new("Trd Match ID", "eurex.t7.eobi.trdmatchid", ftypes.UINT32)
eurex_t7_eobi_3_0_71.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg TS Execution Time", "eurex.t7.eobi.trdregtsexecutiontime", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg TS Prev Time Priority", "eurex.t7.eobi.trdregtsprevtimepriority", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg TS Time In", "eurex.t7.eobi.trdregtstimein", ftypes.UINT64)
eurex_t7_eobi_3_0_71.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg TS Time Priority", "eurex.t7.eobi.trdregtstimepriority", ftypes.UINT64)

-----------------------------------------------------------------------
-- Dissect Eurex T7 Eobi 3.0.71
-----------------------------------------------------------------------

-- Display Pad3
display.pad3 = function(value)
  return "Pad3: "..value
end

-- Dissect: Pad3
dissect.pad3 = function(buffer, offset, packet, parent)
  local length = 3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad3(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad3, range, value, display)

  return offset + length
end

-- Display: MD Entry Type
display.md_entry_type = function(value)
  if value == 2 then
    return "MD Entry Type: Trade (2)"
  end
  if value == 4 then
    return "MD Entry Type: Opening Price (4)"
  end
  if value == 5 then
    return "MD Entry Type: Closing Price (5)"
  end
  if value == 7 then
    return "MD Entry Type: High Price (7)"
  end
  if value == 8 then
    return "MD Entry Type: Low Price (8)"
  end
  if value == 66 then
    return "MD Entry Type: Trade Volume (66)"
  end
  if value == 101 then
    return "MD Entry Type: Previous Closing Price (101)"
  end
  if value == 200 then
    return "MD Entry Type: Opening Auction (200)"
  end
  if value == 201 then
    return "MD Entry Type: Intraday Auction (201)"
  end
  if value == 202 then
    return "MD Entry Type: Circuit Breaker Auction (202)"
  end
  if value == 203 then
    return "MD Entry Type: Closing Auction (203)"
  end

  return "MD Entry Type: Unknown("..value..")"
end

-- Dissect: MD Entry Type
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.md_entry_type, range, value, display)

  return offset + length
end

-- Display MD Entry Size
display.md_entry_size = function(value)
  return "MD Entry Size: "..value
end

-- Dissect: MD Entry Size
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.md_entry_size, range, value, display)

  return offset + length
end

-- Display MD Entry Px
display.md_entry_px = function(value)
  local factor = 100000000
  return "MD Entry Px: "..value/factor
end

-- Dissect: MD Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.md_entry_px, range, value, display)

  return offset + length
end

-- Display: MD Trade Entry Grp
display.md_trade_entry_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Trade Entry Grp
dissect.md_trade_entry_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index = dissect.pad3(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Trade Entry Grp
dissect.md_trade_entry_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_trade_entry_grp then
    local range = buffer(offset, 16)
    local display = display.md_trade_entry_grp(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.md_trade_entry_grp, range, display)
  end

  return dissect.md_trade_entry_grp_fields(buffer, offset, packet, parent)
end

-- Display Pad7
display.pad7 = function(value)
  return "Pad7: "..value
end

-- Dissect: Pad7
dissect.pad7 = function(buffer, offset, packet, parent)
  local length = 7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad7(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad7, range, value, display)

  return offset + length
end

-- Display No MD Entries
display.no_md_entries = function(value)
  return "No MD Entries: "..value
end

-- Dissect: No MD Entries
dissect.no_md_entries = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_md_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- Display Trd Reg TS Execution Time
display.trd_reg_ts_execution_time = function(value)
  return "Trd Reg TS Execution Time: "..value
end

-- Dissect: Trd Reg TS Execution Time
dissect.trd_reg_ts_execution_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_execution_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length
end

-- Display Last Px
display.last_px = function(value)
  local factor = 100000000
  return "Last Px: "..value/factor
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.last_px, range, value, display)

  return offset + length
end

-- Display Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.last_qty, range, value, display)

  return offset + length
end

-- Display Trd Match ID
display.trd_match_id = function(value)
  return "Trd Match ID: "..value
end

-- Dissect: Trd Match ID
dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trd_match_id, range, value, display)

  return offset + length
end

-- Display Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.transact_time, range, value, display)

  return offset + length
end

-- Display Security ID
display.security_id = function(value)
  return "Security ID: "..value
end

-- Dissect: Security ID
dissect.security_id = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.security_id, range, value, display)

  return offset + length
end

-- Calculate runtime size: Trade Reversal
size_of.trade_reversal = function(buffer, offset)
  local index = 0

  index = index + 48

  -- Calculate field size from count
  local md_trade_entry_grp_count = buffer(offset + index - 8, 1):le_uint()
  index = index + md_trade_entry_grp_count * 16

  return index
end

-- Display: Trade Reversal
display.trade_reversal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Reversal
dissect.trade_reversal_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Trd Match ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Trd Reg TS Execution Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- No MD Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.no_md_entries(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index = dissect.pad7(buffer, index, packet, parent)

  -- MD Trade Entry Grp: Struct of 4 fields
  local md_trade_entry_grp_count = buffer(index - 8, 1):le_uint()
  for i = 1, md_trade_entry_grp_count do
    index = dissect.md_trade_entry_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.trade_reversal, range, display)
  end

  return dissect.trade_reversal_fields(buffer, offset, packet, parent)
end

-- Display Pad6
display.pad6 = function(value)
  return "Pad6: "..value
end

-- Dissect: Pad6
dissect.pad6 = function(buffer, offset, packet, parent)
  local length = 6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad6(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad6, range, value, display)

  return offset + length
end

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

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
dissect.match_sub_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.match_sub_type, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.match_type, range, value, display)

  return offset + length
end

-- Display: Trade Report
display.trade_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report
dissect.trade_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Trd Match ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.match_type(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.match_sub_type(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index = dissect.pad6(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report
dissect.trade_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report then
    local range = buffer(offset, 40)
    local display = display.trade_report(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.trade_report, range, display)
  end

  return dissect.trade_report_fields(buffer, offset, packet, parent)
end

-- Display Offer Px
display.offer_px = function(value)
  local factor = 100000000
  return "Offer Px: "..value/factor
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.offer_px, range, value, display)

  return offset + length
end

-- Display Bid Px
display.bid_px = function(value)
  local factor = 100000000
  return "Bid Px: "..value/factor
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.bid_px, range, value, display)

  return offset + length
end

-- Display: Top Of Book
display.top_of_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top Of Book
dissect.top_of_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.offer_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book
dissect.top_of_book = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_book then
    local range = buffer(offset, 32)
    local display = display.top_of_book(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.top_of_book, range, display)
  end

  return dissect.top_of_book_fields(buffer, offset, packet, parent)
end

-- Display Price
display.price = function(value)
  local factor = 100000000
  return "Price: "..value/factor
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.price, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.side, range, value, display)

  return offset + length
end

-- Display Display Qty
display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.display_qty, range, value, display)

  return offset + length
end

-- Display Trd Reg TS Time Priority
display.trd_reg_ts_time_priority = function(value)
  return "Trd Reg TS Time Priority: "..value
end

-- Dissect: Trd Reg TS Time Priority
dissect.trd_reg_ts_time_priority = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length
end

-- Display: Order Details
display.order_details = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Details
dissect.order_details_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg TS Time Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index = dissect.pad3(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Details
dissect.order_details = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_details then
    local range = buffer(offset, 24)
    local display = display.order_details(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.order_details, range, display)
  end

  return dissect.order_details_fields(buffer, offset, packet, parent)
end

-- Display: Snapshot Order
display.snapshot_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Order
dissect.snapshot_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details: Struct of 5 fields
  index = dissect.order_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Order
dissect.snapshot_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_order then
    local range = buffer(offset, 24)
    local display = display.snapshot_order(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.snapshot_order, range, display)
  end

  return dissect.snapshot_order_fields(buffer, offset, packet, parent)
end

-- Display: Quote Request
display.quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request
dissect.quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index = dissect.pad3(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_request then
    local range = buffer(offset, 24)
    local display = display.quote_request(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.quote_request, range, display)
  end

  return dissect.quote_request_fields(buffer, offset, packet, parent)
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fast_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.fast_market_indicator, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trad_ses_status(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trad_ses_status, range, value, display)

  return offset + length
end

-- Display: Trading Session Sub ID
display.trading_session_sub_id = function(value)
  if value == 1 then
    return "Trading Session Sub ID: Pre Trading (1)"
  end
  if value == 3 then
    return "Trading Session Sub ID: Trading (3)"
  end
  if value == 4 then
    return "Trading Session Sub ID: Closing (4)"
  end
  if value == 5 then
    return "Trading Session Sub ID: Post Trading (5)"
  end
  if value == 7 then
    return "Trading Session Sub ID: Quiescent (7)"
  end

  return "Trading Session Sub ID: Unknown("..value..")"
end

-- Dissect: Trading Session Sub ID
dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trading_session_sub_id, range, value, display)

  return offset + length
end

-- Display: Trading Session ID
display.trading_session_id = function(value)
  if value == 1 then
    return "Trading Session ID: Day (1)"
  end
  if value == 3 then
    return "Trading Session ID: Morning (3)"
  end
  if value == 5 then
    return "Trading Session ID: Evening (5)"
  end
  if value == 7 then
    return "Trading Session ID: Holiday (7)"
  end

  return "Trading Session ID: Unknown("..value..")"
end

-- Dissect: Trading Session ID
dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trading_session_id, range, value, display)

  return offset + length
end

-- Display Last Msg Seq Num Processed
display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length
end

-- Display: Product Summary
display.product_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Product Summary
dissect.product_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Trading Session ID: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub ID: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.trad_ses_status(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.fast_market_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary
dissect.product_summary = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.product_summary then
    local range = buffer(offset, 8)
    local display = display.product_summary(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.product_summary, range, display)
  end

  return dissect.product_summary_fields(buffer, offset, packet, parent)
end

-- Display Pad4
display.pad4 = function(value)
  return "Pad4: "..value
end

-- Dissect: Pad4
dissect.pad4 = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad4(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad4, range, value, display)

  return offset + length
end

-- Display: Product State Change
display.product_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Product State Change
dissect.product_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session ID: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub ID: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.trad_ses_status(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Product State Change
dissect.product_state_change = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.product_state_change then
    local range = buffer(offset, 16)
    local display = display.product_state_change(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.product_state_change, range, display)
  end

  return dissect.product_state_change_fields(buffer, offset, packet, parent)
end

-- Display: Partial Order Execution
display.partial_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Partial Order Execution
dissect.partial_order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index = dissect.pad7(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Trd Reg TS Time Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Trd Match ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Order Execution
dissect.partial_order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.partial_order_execution then
    local range = buffer(offset, 48)
    local display = display.partial_order_execution(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.partial_order_execution, range, display)
  end

  return dissect.partial_order_execution_fields(buffer, offset, packet, parent)
end

-- Display Pad5
display.pad5 = function(value)
  return "Pad5: "..value
end

-- Dissect: Pad5
dissect.pad5 = function(buffer, offset, packet, parent)
  local length = 5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad5(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad5, range, value, display)

  return offset + length
end

-- Display: Application Sequence Reset Indicator
display.application_sequence_reset_indicator = function(value)
  if value == 0 then
    return "Application Sequence Reset Indicator: No Reset (0)"
  end
  if value == 1 then
    return "Application Sequence Reset Indicator: Reset (1)"
  end

  return "Application Sequence Reset Indicator: Unknown("..value..")"
end

-- Dissect: Application Sequence Reset Indicator
dissect.application_sequence_reset_indicator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.application_sequence_reset_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.application_sequence_reset_indicator, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.completion_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.completion_indicator, range, value, display)

  return offset + length
end

-- Display Partition ID
display.partition_id = function(value)
  return "Partition ID: "..value
end

-- Dissect: Partition ID
dissect.partition_id = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.partition_id, range, value, display)

  return offset + length
end

-- Display Market Segment ID
display.market_segment_id = function(value)
  return "Market Segment ID: "..value
end

-- Dissect: Market Segment ID
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.market_segment_id, range, value, display)

  return offset + length
end

-- Display Application Sequence Number
display.application_sequence_number = function(value)
  return "Application Sequence Number: "..value
end

-- Dissect: Application Sequence Number
dissect.application_sequence_number = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.application_sequence_number(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.application_sequence_number, range, value, display)

  return offset + length
end

-- Display Packet Seq Num
display.packet_seq_num = function(value)
  return "Packet Seq Num: "..value
end

-- Dissect: Packet Seq Num
dissect.packet_seq_num = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.packet_seq_num, range, value, display)

  return offset + length
end

-- Display Packet Id
display.packet_id = function(value)
  return "Packet Id: "..value
end

-- Dissect: Packet Id
dissect.packet_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.packet_id, range, value, display)

  return offset + length
end

-- Display Header Length
display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
dissect.header_length = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.header_length(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.header_length, range, value, display)

  return offset + length
end

-- Display: Packet Info
display.packet_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Info
dissect.packet_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Header Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.header_length(buffer, index, packet, parent)

  -- Packet Id: 2 Byte Unsigned Fixed Width Integer Static
  index = dissect.packet_id(buffer, index, packet, parent)

  -- Packet Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.packet_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Info
dissect.packet_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_info then
    local range = buffer(offset, 8)
    local display = display.packet_info(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.packet_info, range, display)
  end

  return dissect.packet_info_fields(buffer, offset, packet, parent)
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Info: Struct of 3 fields
  index = dissect.packet_info(buffer, index, packet, parent)

  -- Application Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.application_sequence_number(buffer, index, packet, parent)

  -- Market Segment ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  -- Partition ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.partition_id(buffer, index, packet, parent)

  -- Completion Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.completion_indicator(buffer, index, packet, parent)

  -- Application Sequence Reset Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.application_sequence_reset_indicator(buffer, index, packet, parent)

  -- Pad5: 5 Byte
  index = dissect.pad5(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 32)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Display Prev Display Qty
display.prev_display_qty = function(value)
  return "Prev Display Qty: "..value
end

-- Dissect: Prev Display Qty
dissect.prev_display_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.prev_display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.prev_display_qty, range, value, display)

  return offset + length
end

-- Display Trd Reg TS Time In
display.trd_reg_ts_time_in = function(value)
  return "Trd Reg TS Time In: "..value
end

-- Dissect: Trd Reg TS Time In
dissect.trd_reg_ts_time_in = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_in(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length
end

-- Display: Order Modify Same Prio
display.order_modify_same_prio = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify Same Prio
dissect.order_modify_same_prio_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg TS Time In: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Prev Display Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.prev_display_qty(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index = dissect.order_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Same Prio
dissect.order_modify_same_prio = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify_same_prio then
    local range = buffer(offset, 56)
    local display = display.order_modify_same_prio(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.order_modify_same_prio, range, display)
  end

  return dissect.order_modify_same_prio_fields(buffer, offset, packet, parent)
end

-- Display Prev Price
display.prev_price = function(value)
  local factor = 100000000
  return "Prev Price: "..value/factor
end

-- Dissect: Prev Price
dissect.prev_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.prev_price(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.prev_price, range, value, display)

  return offset + length
end

-- Display Trd Reg TS Prev Time Priority
display.trd_reg_ts_prev_time_priority = function(value)
  return "Trd Reg TS Prev Time Priority: "..value
end

-- Dissect: Trd Reg TS Prev Time Priority
dissect.trd_reg_ts_prev_time_priority = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_prev_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trd_reg_ts_prev_time_priority, range, value, display)

  return offset + length
end

-- Display: Order Modify
display.order_modify = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify
dissect.order_modify_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg TS Time In: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Trd Reg TS Prev Time Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_prev_time_priority(buffer, index, packet, parent)

  -- Prev Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.prev_price(buffer, index, packet, parent)

  -- Prev Display Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.prev_display_qty(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index = dissect.order_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
dissect.order_modify = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify then
    local range = buffer(offset, 64)
    local display = display.order_modify(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.order_modify, range, display)
  end

  return dissect.order_modify_fields(buffer, offset, packet, parent)
end

-- Display: Order Mass Delete
display.order_mass_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Delete
dissect.order_mass_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Delete
dissect.order_mass_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_delete then
    local range = buffer(offset, 16)
    local display = display.order_mass_delete(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.order_mass_delete, range, display)
  end

  return dissect.order_mass_delete_fields(buffer, offset, packet, parent)
end

-- Display: Order Delete
display.order_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete
dissect.order_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg TS Time In: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index = dissect.order_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete
dissect.order_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete then
    local range = buffer(offset, 48)
    local display = display.order_delete(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.order_delete, range, display)
  end

  return dissect.order_delete_fields(buffer, offset, packet, parent)
end

-- Display: Order Add
display.order_add = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Add
dissect.order_add_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg TS Time In: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Details: Struct of 5 fields
  index = dissect.order_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
dissect.order_add = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_add then
    local range = buffer(offset, 40)
    local display = display.order_add(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.order_add, range, display)
  end

  return dissect.order_add_fields(buffer, offset, packet, parent)
end

-- Display: MD Instrument Entry Grp
display.md_instrument_entry_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Instrument Entry Grp
dissect.md_instrument_entry_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index = dissect.pad3(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Instrument Entry Grp
dissect.md_instrument_entry_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_instrument_entry_grp then
    local range = buffer(offset, 16)
    local display = display.md_instrument_entry_grp(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.md_instrument_entry_grp, range, display)
  end

  return dissect.md_instrument_entry_grp_fields(buffer, offset, packet, parent)
end

-- Display Pad2
display.pad2 = function(value)
  return "Pad2: "..value
end

-- Dissect: Pad2
dissect.pad2 = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad2(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad2, range, value, display)

  return offset + length
end

-- Display: Security Trading Status
display.security_trading_status = function(value)
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
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.security_trading_status, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.security_status, range, value, display)

  return offset + length
end

-- Display Tot No Orders
display.tot_no_orders = function(value)
  return "Tot No Orders: "..value
end

-- Dissect: Tot No Orders
dissect.tot_no_orders = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_no_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.tot_no_orders, range, value, display)

  return offset + length
end

-- Display Last Update Time
display.last_update_time = function(value)
  return "Last Update Time: "..value
end

-- Dissect: Last Update Time
dissect.last_update_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.last_update_time, range, value, display)

  return offset + length
end

-- Calculate runtime size: Instrument Summary
size_of.instrument_summary = function(buffer, offset)
  local index = 0

  index = index + 32

  -- Calculate field size from count
  local md_instrument_entry_grp_count = buffer(offset + index - 3, 1):le_uint()
  index = index + md_instrument_entry_grp_count * 16

  return index
end

-- Display: Instrument Summary
display.instrument_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Summary
dissect.instrument_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_update_time(buffer, index, packet, parent)

  -- Trd Reg TS Execution Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Tot No Orders: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tot_no_orders(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index = dissect.security_trading_status(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- No MD Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.no_md_entries(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index = dissect.pad2(buffer, index, packet, parent)

  -- MD Instrument Entry Grp: Struct of 4 fields
  local md_instrument_entry_grp_count = buffer(index - 3, 1):le_uint()
  for i = 1, md_instrument_entry_grp_count do
    index = dissect.md_instrument_entry_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.instrument_summary, range, display)
  end

  return dissect.instrument_summary_fields(buffer, offset, packet, parent)
end

-- Display: Instrument State Change
display.instrument_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument State Change
dissect.instrument_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index = dissect.security_trading_status(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Pad5: 5 Byte
  index = dissect.pad5(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change
dissect.instrument_state_change = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_state_change then
    local range = buffer(offset, 24)
    local display = display.instrument_state_change(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.instrument_state_change, range, display)
  end

  return dissect.instrument_state_change_fields(buffer, offset, packet, parent)
end

-- Display: Heartbeat
display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, 8)
    local display = display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.heartbeat, range, display)
  end

  return dissect.heartbeat_fields(buffer, offset, packet, parent)
end

-- Display: Full Order Execution
display.full_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Order Execution
dissect.full_order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index = dissect.pad7(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Trd Reg TS Time Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Trd Match ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Order Execution
dissect.full_order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.full_order_execution then
    local range = buffer(offset, 48)
    local display = display.full_order_execution(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.full_order_execution, range, display)
  end

  return dissect.full_order_execution_fields(buffer, offset, packet, parent)
end

-- Display Resting Cxl Qty
display.resting_cxl_qty = function(value)
  return "Resting Cxl Qty: "..value
end

-- Dissect: Resting Cxl Qty
dissect.resting_cxl_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.resting_cxl_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.resting_cxl_qty, range, value, display)

  return offset + length
end

-- Display Resting Hidden Qty
display.resting_hidden_qty = function(value)
  return "Resting Hidden Qty: "..value
end

-- Dissect: Resting Hidden Qty
dissect.resting_hidden_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.resting_hidden_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.resting_hidden_qty, range, value, display)

  return offset + length
end

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.trade_condition, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.aggressor_side, range, value, display)

  return offset + length
end

-- Display Exec ID
display.exec_id = function(value)
  return "Exec ID: "..value
end

-- Dissect: Exec ID
dissect.exec_id = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.exec_id, range, value, display)

  return offset + length
end

-- Display Request Time
display.request_time = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
dissect.request_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.request_time, range, value, display)

  return offset + length
end

-- Display Aggressor Timestamp
display.aggressor_timestamp = function(value)
  return "Aggressor Timestamp: "..value
end

-- Dissect: Aggressor Timestamp
dissect.aggressor_timestamp = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.aggressor_timestamp(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.aggressor_timestamp, range, value, display)

  return offset + length
end

-- Display: Execution Summary
display.execution_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Summary
dissect.execution_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Aggressor Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.aggressor_timestamp(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_time(buffer, index, packet, parent)

  -- Exec ID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index = dissect.pad2(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Resting Hidden Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.resting_hidden_qty(buffer, index, packet, parent)

  -- Resting Cxl Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.resting_cxl_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary
dissect.execution_summary = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_summary then
    local range = buffer(offset, 56)
    local display = display.execution_summary(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.execution_summary, range, display)
  end

  return dissect.execution_summary_fields(buffer, offset, packet, parent)
end

-- Display: Cross Request
display.cross_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request
dissect.cross_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
dissect.cross_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_request then
    local range = buffer(offset, 24)
    local display = display.cross_request(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.cross_request, range, display)
  end

  return dissect.cross_request_fields(buffer, offset, packet, parent)
end

-- Display: Auction Clearing Price
display.auction_clearing_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Clearing Price
dissect.auction_clearing_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Clearing Price
dissect.auction_clearing_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_clearing_price then
    local range = buffer(offset, 24)
    local display = display.auction_clearing_price(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.auction_clearing_price, range, display)
  end

  return dissect.auction_clearing_price_fields(buffer, offset, packet, parent)
end

-- Display: Auction BBO
display.auction_bbo = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction BBO
dissect.auction_bbo_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index = dissect.offer_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction BBO
dissect.auction_bbo = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_bbo then
    local range = buffer(offset, 32)
    local display = display.auction_bbo(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.auction_bbo, range, display)
  end

  return dissect.auction_bbo_fields(buffer, offset, packet, parent)
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.leg_side, range, value, display)

  return offset + length
end

-- Display Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.leg_ratio_qty, range, value, display)

  return offset + length
end

-- Display Leg Security ID
display.leg_security_id = function(value)
  return "Leg Security ID: "..value
end

-- Dissect: Leg Security ID
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.leg_security_id, range, value, display)

  return offset + length
end

-- Display Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.leg_symbol, range, value, display)

  return offset + length
end

-- Display: Instrmt Leg Grp
display.instrmt_leg_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp
dissect.instrmt_leg_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer
  index = dissect.leg_symbol(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  -- Leg Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.leg_side(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index = dissect.pad3(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp
dissect.instrmt_leg_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrmt_leg_grp then
    local range = buffer(offset, 24)
    local display = display.instrmt_leg_grp(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.instrmt_leg_grp, range, display)
  end

  return dissect.instrmt_leg_grp_fields(buffer, offset, packet, parent)
end

-- Display Pad1
display.pad1 = function(value)
  return "Pad1: "..value
end

-- Dissect: Pad1
dissect.pad1 = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad1(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.pad1, range, value, display)

  return offset + length
end

-- Display No Legs
display.no_legs = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
dissect.no_legs = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_legs(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.no_legs, range, value, display)

  return offset + length, value
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.implied_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.implied_market_indicator, range, value, display)

  return offset + length
end

-- Display: Product Complex
display.product_complex = function(value)
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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.product_complex, range, value, display)

  return offset + length
end

-- Display Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.security_sub_type, range, value, display)

  return offset + length
end

-- Calculate runtime size: Add Complex Instrument
size_of.add_complex_instrument = function(buffer, offset)
  local index = 0

  index = index + 24

  -- Calculate field size from count
  local instrmt_leg_grp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + instrmt_leg_grp_count * 24

  return index
end

-- Display: Add Complex Instrument
display.add_complex_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Complex Instrument
dissect.add_complex_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.product_complex(buffer, index, packet, parent)

  -- Implied Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.implied_market_indicator(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index = dissect.no_legs(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index = dissect.pad1(buffer, index, packet, parent)

  -- Instrmt Leg Grp: Struct of 6 fields
  local instrmt_leg_grp_count = buffer(index - 2, 1):le_uint()
  for i = 1, instrmt_leg_grp_count do
    index = dissect.instrmt_leg_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.add_complex_instrument, range, display)
  end

  return dissect.add_complex_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Add Complex Instrument
  if code == 13400 then
    return size_of.add_complex_instrument(buffer, offset)
  end
  -- Size of Auction BBO
  if code == 13500 then
    return 32
  end
  -- Size of Auction Clearing Price
  if code == 13501 then
    return 24
  end
  -- Size of Cross Request
  if code == 13502 then
    return 24
  end
  -- Size of Execution Summary
  if code == 13202 then
    return 56
  end
  -- Size of Full Order Execution
  if code == 13104 then
    return 48
  end
  -- Size of Heartbeat
  if code == 13001 then
    return 8
  end
  -- Size of Instrument State Change
  if code == 13301 then
    return 24
  end
  -- Size of Instrument Summary
  if code == 13601 then
    return size_of.instrument_summary(buffer, offset)
  end
  -- Size of Order Add
  if code == 13100 then
    return 40
  end
  -- Size of Order Delete
  if code == 13102 then
    return 48
  end
  -- Size of Order Mass Delete
  if code == 13103 then
    return 16
  end
  -- Size of Order Modify
  if code == 13101 then
    return 64
  end
  -- Size of Order Modify Same Prio
  if code == 13106 then
    return 56
  end
  -- Size of Packet Header
  if code == 13004 then
    return 32
  end
  -- Size of Partial Order Execution
  if code == 13105 then
    return 48
  end
  -- Size of Product State Change
  if code == 13300 then
    return 16
  end
  -- Size of Product Summary
  if code == 13600 then
    return 8
  end
  -- Size of Quote Request
  if code == 13503 then
    return 24
  end
  -- Size of Snapshot Order
  if code == 13602 then
    return 24
  end
  -- Size of Top Of Book
  if code == 13504 then
    return 32
  end
  -- Size of Trade Report
  if code == 13201 then
    return 40
  end
  -- Size of Trade Reversal
  if code == 13200 then
    return size_of.trade_reversal(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Add Complex Instrument
  if code == 13400 then
    return dissect.add_complex_instrument(buffer, offset, packet, parent)
  end
  -- Dissect Auction BBO
  if code == 13500 then
    return dissect.auction_bbo(buffer, offset, packet, parent)
  end
  -- Dissect Auction Clearing Price
  if code == 13501 then
    return dissect.auction_clearing_price(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if code == 13502 then
    return dissect.cross_request(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary
  if code == 13202 then
    return dissect.execution_summary(buffer, offset, packet, parent)
  end
  -- Dissect Full Order Execution
  if code == 13104 then
    return dissect.full_order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if code == 13001 then
    return dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Instrument State Change
  if code == 13301 then
    return dissect.instrument_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Summary
  if code == 13601 then
    return dissect.instrument_summary(buffer, offset, packet, parent)
  end
  -- Dissect Order Add
  if code == 13100 then
    return dissect.order_add(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete
  if code == 13102 then
    return dissect.order_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Delete
  if code == 13103 then
    return dissect.order_mass_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify
  if code == 13101 then
    return dissect.order_modify(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Same Prio
  if code == 13106 then
    return dissect.order_modify_same_prio(buffer, offset, packet, parent)
  end
  -- Dissect Packet Header
  if code == 13004 then
    return dissect.packet_header(buffer, offset, packet, parent)
  end
  -- Dissect Partial Order Execution
  if code == 13105 then
    return dissect.partial_order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Product State Change
  if code == 13300 then
    return dissect.product_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Product Summary
  if code == 13600 then
    return dissect.product_summary(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if code == 13503 then
    return dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Order
  if code == 13602 then
    return dissect.snapshot_order(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book
  if code == 13504 then
    return dissect.top_of_book(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report
  if code == 13201 then
    return dissect.trade_report(buffer, offset, packet, parent)
  end
  -- Dissect Trade Reversal
  if code == 13200 then
    return dissect.trade_reversal(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse Payload type dependency
  local code = buffer(offset - 6, 2):le_uint()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_3_0_71.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display Msg Seq Num
display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.msg_seq_num, range, value, display)

  return offset + length
end

-- Display Template ID
display.template_id = function(value)
  return "Template ID: "..value
end

-- Dissect: Template ID
dissect.template_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.template_id, range, value, display)

  return offset + length, value
end

-- Display Body Len
display.body_len = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
dissect.body_len = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_3_0_71.fields.body_len, range, value, display)

  return offset + length, value
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 2 Byte Unsigned Fixed Width Integer
  index = dissect.body_len(buffer, index, packet, parent)

  -- Template ID: 2 Byte Unsigned Fixed Width Integer
  index = dissect.template_id(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 8)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size Of: Message
size_of.message = function(buffer, offset)
  return buffer(offset + 0, 2):le_uint()
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 23 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Parse runtime struct size
  local length = size_of.message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(eurex_t7_eobi_3_0_71.fields.message, range, display)
  end

  dissect.message_fields(buffer, offset, packet, parent)
  return offset + length
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function eurex_t7_eobi_3_0_71.init()
end

-- Dissector for Eurex T7 Eobi 3.0.71
function eurex_t7_eobi_3_0_71.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_t7_eobi_3_0_71.name

  -- Dissect protocol
  local protocol = parent:add(eurex_t7_eobi_3_0_71, buffer(), eurex_t7_eobi_3_0_71.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, eurex_t7_eobi_3_0_71)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_t7_eobi_3_0_71_packet_size = function(buffer)

  return true
end

-- Verify Packet Id Field
verify.packet_id = function(buffer)
  if 13003 == buffer(2, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Eurex T7 Eobi 3.0.71
local function eurex_t7_eobi_3_0_71_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_t7_eobi_3_0_71_packet_size(buffer) then return false end

  -- Verify Packet Id
  if not verify.packet_id(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_t7_eobi_3_0_71
  eurex_t7_eobi_3_0_71.dissector(buffer, packet, parent)

  return true
end

-- Register Eurex T7 Eobi 3.0.71 Heuristic
eurex_t7_eobi_3_0_71:register_heuristic("udp", eurex_t7_eobi_3_0_71_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: 3.0.71
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
