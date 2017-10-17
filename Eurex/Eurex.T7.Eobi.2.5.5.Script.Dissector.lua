-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Eobi 2.5.5 Protocol
local eurex_t7_eobi_2_5_5 = Proto("Eurex.T7.Eobi.2.5.5.Lua", "Eurex T7 Eobi 2.5.5")

-- Component Tables
local show = {}
local display = {}
local dissect = {}
local calculate = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex T7 Eobi 2.5.5 Element Dissection Options
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

-- Eurex T7 Eobi 2.5.5 Fields
eurex_t7_eobi_2_5_5.fields.add_complex_instrument = ProtoField.new("Add Complex Instrument", "Eurex.T7.Eobi.addcomplexinstrument", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.aggressor_side = ProtoField.new("Aggressor Side", "Eurex.T7.Eobi.aggressorside", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.aggressor_timestamp = ProtoField.new("Aggressor Timestamp", "Eurex.T7.Eobi.aggressortimestamp", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.application_sequence_number = ProtoField.new("Application Sequence Number", "Eurex.T7.Eobi.applicationsequencenumber", ftypes.UINT32)
eurex_t7_eobi_2_5_5.fields.application_sequence_reset_indicator = ProtoField.new("Application Sequence Reset Indicator", "Eurex.T7.Eobi.applicationsequenceresetindicator", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.auction_bbo = ProtoField.new("Auction BBO", "Eurex.T7.Eobi.auctionbbo", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.auction_clearing_price = ProtoField.new("Auction Clearing Price", "Eurex.T7.Eobi.auctionclearingprice", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.bid_px = ProtoField.new("Bid Px", "Eurex.T7.Eobi.bidpx", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.body_len = ProtoField.new("Body Len", "Eurex.T7.Eobi.bodylen", ftypes.UINT16)
eurex_t7_eobi_2_5_5.fields.completion_indicator = ProtoField.new("Completion Indicator", "Eurex.T7.Eobi.completionindicator", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.cross_request = ProtoField.new("Cross Request", "Eurex.T7.Eobi.crossrequest", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.display_qty = ProtoField.new("Display Qty", "Eurex.T7.Eobi.displayqty", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.exec_id = ProtoField.new("Exec ID", "Eurex.T7.Eobi.execid", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.execution_summary = ProtoField.new("Execution Summary", "Eurex.T7.Eobi.executionsummary", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "Eurex.T7.Eobi.fastmarketindicator", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.full_order_execution = ProtoField.new("Full Order Execution", "Eurex.T7.Eobi.fullorderexecution", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.header_length = ProtoField.new("Header Length", "Eurex.T7.Eobi.headerlength", ftypes.UINT16)
eurex_t7_eobi_2_5_5.fields.heartbeat = ProtoField.new("Heartbeat", "Eurex.T7.Eobi.heartbeat", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "Eurex.T7.Eobi.impliedmarketindicator", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "Eurex.T7.Eobi.instrmtleggrp", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.instrument_state_change = ProtoField.new("Instrument State Change", "Eurex.T7.Eobi.instrumentstatechange", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.instrument_summary = ProtoField.new("Instrument Summary", "Eurex.T7.Eobi.instrumentsummary", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "Eurex.T7.Eobi.lastmsgseqnumprocessed", ftypes.UINT32)
eurex_t7_eobi_2_5_5.fields.last_px = ProtoField.new("Last Px", "Eurex.T7.Eobi.lastpx", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.last_qty = ProtoField.new("Last Qty", "Eurex.T7.Eobi.lastqty", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.last_update_time = ProtoField.new("Last Update Time", "Eurex.T7.Eobi.lastupdatetime", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "Eurex.T7.Eobi.legratioqty", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.leg_security_id = ProtoField.new("Leg Security ID", "Eurex.T7.Eobi.legsecurityid", ftypes.INT64)
eurex_t7_eobi_2_5_5.fields.leg_side = ProtoField.new("Leg Side", "Eurex.T7.Eobi.legside", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.leg_symbol = ProtoField.new("Leg Symbol", "Eurex.T7.Eobi.legsymbol", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.market_segment_id = ProtoField.new("Market Segment ID", "Eurex.T7.Eobi.marketsegmentid", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.match_sub_type = ProtoField.new("Match Sub Type", "Eurex.T7.Eobi.matchsubtype", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.match_type = ProtoField.new("Match Type", "Eurex.T7.Eobi.matchtype", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.md_entry_px = ProtoField.new("MD Entry Px", "Eurex.T7.Eobi.mdentrypx", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.md_entry_size = ProtoField.new("MD Entry Size", "Eurex.T7.Eobi.mdentrysize", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.md_entry_type = ProtoField.new("MD Entry Type", "Eurex.T7.Eobi.mdentrytype", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.md_instrument_entry_grp = ProtoField.new("MD Instrument Entry Grp", "Eurex.T7.Eobi.mdinstrumententrygrp", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.md_trade_entry_grp = ProtoField.new("MD Trade Entry Grp", "Eurex.T7.Eobi.mdtradeentrygrp", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.message = ProtoField.new("Message", "Eurex.T7.Eobi.message", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.message_header = ProtoField.new("Message Header", "Eurex.T7.Eobi.messageheader", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "Eurex.T7.Eobi.msgseqnum", ftypes.UINT32)
eurex_t7_eobi_2_5_5.fields.no_legs = ProtoField.new("No Legs", "Eurex.T7.Eobi.nolegs", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.no_md_entries = ProtoField.new("No MD Entries", "Eurex.T7.Eobi.nomdentries", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.offer_px = ProtoField.new("Offer Px", "Eurex.T7.Eobi.offerpx", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.order_add = ProtoField.new("Order Add", "Eurex.T7.Eobi.orderadd", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.order_delete = ProtoField.new("Order Delete", "Eurex.T7.Eobi.orderdelete", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.order_details = ProtoField.new("Order Details", "Eurex.T7.Eobi.orderdetails", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.order_mass_delete = ProtoField.new("Order Mass Delete", "Eurex.T7.Eobi.ordermassdelete", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.order_modify = ProtoField.new("Order Modify", "Eurex.T7.Eobi.ordermodify", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.order_modify_same_prio = ProtoField.new("Order Modify Same Prio", "Eurex.T7.Eobi.ordermodifysameprio", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.packet = ProtoField.new("Packet", "Eurex.T7.Eobi.packet", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.packet_header = ProtoField.new("Packet Header", "Eurex.T7.Eobi.packetheader", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.packet_id = ProtoField.new("Packet Id", "Eurex.T7.Eobi.packetid", ftypes.UINT16)
eurex_t7_eobi_2_5_5.fields.packet_info = ProtoField.new("Packet Info", "Eurex.T7.Eobi.packetinfo", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "Eurex.T7.Eobi.packetseqnum", ftypes.UINT32)
eurex_t7_eobi_2_5_5.fields.pad1 = ProtoField.new("Pad1", "Eurex.T7.Eobi.pad1", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.pad2 = ProtoField.new("Pad2", "Eurex.T7.Eobi.pad2", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.pad3 = ProtoField.new("Pad3", "Eurex.T7.Eobi.pad3", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.pad4 = ProtoField.new("Pad4", "Eurex.T7.Eobi.pad4", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.pad5 = ProtoField.new("Pad5", "Eurex.T7.Eobi.pad5", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.pad6 = ProtoField.new("Pad6", "Eurex.T7.Eobi.pad6", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.pad7 = ProtoField.new("Pad7", "Eurex.T7.Eobi.pad7", ftypes.BYTES)
eurex_t7_eobi_2_5_5.fields.partial_order_execution = ProtoField.new("Partial Order Execution", "Eurex.T7.Eobi.partialorderexecution", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.partition_id = ProtoField.new("Partition ID", "Eurex.T7.Eobi.partitionid", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.payload = ProtoField.new("Payload", "Eurex.T7.Eobi.payload", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "Eurex.T7.Eobi.prevdisplayqty", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.prev_price = ProtoField.new("Prev Price", "Eurex.T7.Eobi.prevprice", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.price = ProtoField.new("Price", "Eurex.T7.Eobi.price", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.product_complex = ProtoField.new("Product Complex", "Eurex.T7.Eobi.productcomplex", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.product_state_change = ProtoField.new("Product State Change", "Eurex.T7.Eobi.productstatechange", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.product_summary = ProtoField.new("Product Summary", "Eurex.T7.Eobi.productsummary", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.quote_request = ProtoField.new("Quote Request", "Eurex.T7.Eobi.quoterequest", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.request_time = ProtoField.new("Request Time", "Eurex.T7.Eobi.requesttime", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "Eurex.T7.Eobi.restinghiddenqty", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.security_id = ProtoField.new("Security ID", "Eurex.T7.Eobi.securityid", ftypes.INT64)
eurex_t7_eobi_2_5_5.fields.security_status = ProtoField.new("Security Status", "Eurex.T7.Eobi.securitystatus", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.security_sub_type = ProtoField.new("Security Sub Type", "Eurex.T7.Eobi.securitysubtype", ftypes.INT32)
eurex_t7_eobi_2_5_5.fields.security_trading_status = ProtoField.new("Security Trading Status", "Eurex.T7.Eobi.securitytradingstatus", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.side = ProtoField.new("Side", "Eurex.T7.Eobi.side", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.snapshot_order = ProtoField.new("Snapshot Order", "Eurex.T7.Eobi.snapshotorder", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.template_id = ProtoField.new("Template ID", "Eurex.T7.Eobi.templateid", ftypes.UINT16)
eurex_t7_eobi_2_5_5.fields.top_of_book = ProtoField.new("Top Of Book", "Eurex.T7.Eobi.topofbook", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.tot_no_orders = ProtoField.new("Tot No Orders", "Eurex.T7.Eobi.totnoorders", ftypes.UINT16)
eurex_t7_eobi_2_5_5.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "Eurex.T7.Eobi.tradsesstatus", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.trade_condition = ProtoField.new("Trade Condition", "Eurex.T7.Eobi.tradecondition", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.trade_report = ProtoField.new("Trade Report", "Eurex.T7.Eobi.tradereport", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.trade_reversal = ProtoField.new("Trade Reversal", "Eurex.T7.Eobi.tradereversal", ftypes.STRING)
eurex_t7_eobi_2_5_5.fields.trading_session_id = ProtoField.new("Trading Session ID", "Eurex.T7.Eobi.tradingsessionid", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub ID", "Eurex.T7.Eobi.tradingsessionsubid", ftypes.UINT8)
eurex_t7_eobi_2_5_5.fields.transact_time = ProtoField.new("Transact Time", "Eurex.T7.Eobi.transacttime", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.trd_match_id = ProtoField.new("Trd Match ID", "Eurex.T7.Eobi.trdmatchid", ftypes.UINT32)
eurex_t7_eobi_2_5_5.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg TS Execution Time", "Eurex.T7.Eobi.trdregtsexecutiontime", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg TS Prev Time Priority", "Eurex.T7.Eobi.trdregtsprevtimepriority", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg TS Time In", "Eurex.T7.Eobi.trdregtstimein", ftypes.UINT64)
eurex_t7_eobi_2_5_5.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg TS Time Priority", "Eurex.T7.Eobi.trdregtstimepriority", ftypes.UINT64)

-----------------------------------------------------------------------
-- Dissect Eurex T7 Eobi 2.5.5
-----------------------------------------------------------------------

-- Display Pad3
display.pad3 = function(value)
  return "Pad3: "..value
end

-- Dissect Pad3 Field
dissect.pad3 = function(buffer, offset, packet, parent)
  local size = 3
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad3(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad3, range, value, display)

  return offset + size
end

-- Display Field: MD Entry Type
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

-- Dissect MD Entry Type Field
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.md_entry_type, range, value, display)

  return offset + size
end

-- Display MD Entry Size
display.md_entry_size = function(value)
  return "MD Entry Size: "..value
end

-- Dissect MD Entry Size Field
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.md_entry_size, range, value, display)

  return offset + size
end

-- Display MD Entry Px
display.md_entry_px = function(value)
  local precision = 8
  return "MD Entry Px: "..value/10^precision
end

-- Dissect MD Entry Px Field
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.md_entry_px, range, value, display)

  return offset + size
end

-- Display function for: MD Trade Entry Grp
display.md_trade_entry_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect MD Trade Entry Grp Fields
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

-- Dissect Struct: MD Trade Entry Grp
dissect.md_trade_entry_grp = function(buffer, offset, packet, parent)
  if not show.md_trade_entry_grp then
    return dissect.md_trade_entry_grp_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 16)
  local display = display.md_trade_entry_grp(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.md_trade_entry_grp, range, display)

  return dissect.md_trade_entry_grp_fields(buffer, offset, packet, element)
end

-- Display Pad7
display.pad7 = function(value)
  return "Pad7: "..value
end

-- Dissect Pad7 Field
dissect.pad7 = function(buffer, offset, packet, parent)
  local size = 7
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad7(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad7, range, value, display)

  return offset + size
end

-- Display No MD Entries
display.no_md_entries = function(value)
  return "No MD Entries: "..value
end

-- Dissect No MD Entries Field
dissect.no_md_entries = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.no_md_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.no_md_entries, range, value, display)

  return offset + size
end

-- Display Trd Reg TS Execution Time
display.trd_reg_ts_execution_time = function(value)
  return "Trd Reg TS Execution Time: "..value
end

-- Dissect Trd Reg TS Execution Time Field
dissect.trd_reg_ts_execution_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_execution_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + size
end

-- Display Last Px
display.last_px = function(value)
  local precision = 8
  return "Last Px: "..value/10^precision
end

-- Dissect Last Px Field
dissect.last_px = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.last_px, range, value, display)

  return offset + size
end

-- Display Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect Last Qty Field
dissect.last_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.last_qty, range, value, display)

  return offset + size
end

-- Display Trd Match ID
display.trd_match_id = function(value)
  return "Trd Match ID: "..value
end

-- Dissect Trd Match ID Field
dissect.trd_match_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trd_match_id, range, value, display)

  return offset + size
end

-- Display Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect Transact Time Field
dissect.transact_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.transact_time, range, value, display)

  return offset + size
end

-- Display Security ID
display.security_id = function(value)
  return "Security ID: "..value
end

-- Dissect Security ID Field
dissect.security_id = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_int64()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.security_id, range, value, display)

  return offset + size
end

-- Calculate runtime size: Trade Reversal
calculate.trade_reversal = function(buffer, offset)
  local index = 0

  index = index + 48

  -- Calculate field size from count
  local md_trade_entry_grp_count = buffer(offset + index - 8, 1):le_uint()
  index = index + md_trade_entry_grp_count * 16

  return index
end

-- Display function for: Trade Reversal
display.trade_reversal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Trade Reversal Fields
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

-- Dissect Struct: Trade Reversal
dissect.trade_reversal = function(buffer, offset, packet, parent)
  if not show.trade_reversal then
    return dissect.trade_reversal_fields(buffer, offset, packet, parent)
  end

  local size = calculate.trade_reversal(buffer, offset)
  local range = buffer(offset, size)
  local display = display.trade_reversal(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.trade_reversal, range, display)

  return dissect.trade_reversal_fields(buffer, offset, packet, element)
end

-- Display Pad6
display.pad6 = function(value)
  return "Pad6: "..value
end

-- Dissect Pad6 Field
dissect.pad6 = function(buffer, offset, packet, parent)
  local size = 6
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad6(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad6, range, value, display)

  return offset + size
end

-- Display Field: Match Sub Type
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

-- Dissect Match Sub Type Field
dissect.match_sub_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.match_sub_type, range, value, display)

  return offset + size
end

-- Display Field: Match Type
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

-- Dissect Match Type Field
dissect.match_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.match_type, range, value, display)

  return offset + size
end

-- Display function for: Trade Report
display.trade_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Trade Report Fields
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

-- Dissect Struct: Trade Report
dissect.trade_report = function(buffer, offset, packet, parent)
  if not show.trade_report then
    return dissect.trade_report_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 40)
  local display = display.trade_report(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.trade_report, range, display)

  return dissect.trade_report_fields(buffer, offset, packet, element)
end

-- Display Offer Px
display.offer_px = function(value)
  local precision = 8
  return "Offer Px: "..value/10^precision
end

-- Dissect Offer Px Field
dissect.offer_px = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.offer_px, range, value, display)

  return offset + size
end

-- Display Bid Px
display.bid_px = function(value)
  local precision = 8
  return "Bid Px: "..value/10^precision
end

-- Dissect Bid Px Field
dissect.bid_px = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.bid_px, range, value, display)

  return offset + size
end

-- Display function for: Top Of Book
display.top_of_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Top Of Book Fields
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

-- Dissect Struct: Top Of Book
dissect.top_of_book = function(buffer, offset, packet, parent)
  if not show.top_of_book then
    return dissect.top_of_book_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 32)
  local display = display.top_of_book(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.top_of_book, range, display)

  return dissect.top_of_book_fields(buffer, offset, packet, element)
end

-- Display Price
display.price = function(value)
  local precision = 8
  return "Price: "..value/10^precision
end

-- Dissect Price Field
dissect.price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.price, range, value, display)

  return offset + size
end

-- Display Field: Side
display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect Side Field
dissect.side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.side, range, value, display)

  return offset + size
end

-- Display Display Qty
display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect Display Qty Field
dissect.display_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.display_qty, range, value, display)

  return offset + size
end

-- Display Trd Reg TS Time Priority
display.trd_reg_ts_time_priority = function(value)
  return "Trd Reg TS Time Priority: "..value
end

-- Dissect Trd Reg TS Time Priority Field
dissect.trd_reg_ts_time_priority = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + size
end

-- Display function for: Order Details
display.order_details = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Order Details Fields
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

-- Dissect Struct: Order Details
dissect.order_details = function(buffer, offset, packet, parent)
  if not show.order_details then
    return dissect.order_details_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.order_details(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.order_details, range, display)

  return dissect.order_details_fields(buffer, offset, packet, element)
end

-- Display function for: Snapshot Order
display.snapshot_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Snapshot Order Fields
dissect.snapshot_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details: Struct of 5 fields
  index = dissect.order_details(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Snapshot Order
dissect.snapshot_order = function(buffer, offset, packet, parent)
  if not show.snapshot_order then
    return dissect.snapshot_order_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.snapshot_order(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.snapshot_order, range, display)

  return dissect.snapshot_order_fields(buffer, offset, packet, element)
end

-- Display function for: Quote Request
display.quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Quote Request Fields
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

-- Dissect Struct: Quote Request
dissect.quote_request = function(buffer, offset, packet, parent)
  if not show.quote_request then
    return dissect.quote_request_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.quote_request(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.quote_request, range, display)

  return dissect.quote_request_fields(buffer, offset, packet, element)
end

-- Display Field: Fast Market Indicator
display.fast_market_indicator = function(value)
  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect Fast Market Indicator Field
dissect.fast_market_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.fast_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.fast_market_indicator, range, value, display)

  return offset + size
end

-- Display Field: Trad Ses Status
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

-- Dissect Trad Ses Status Field
dissect.trad_ses_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trad_ses_status(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trad_ses_status, range, value, display)

  return offset + size
end

-- Display Field: Trading Session Sub ID
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

-- Dissect Trading Session Sub ID Field
dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trading_session_sub_id, range, value, display)

  return offset + size
end

-- Display Field: Trading Session ID
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

-- Dissect Trading Session ID Field
dissect.trading_session_id = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trading_session_id, range, value, display)

  return offset + size
end

-- Display Last Msg Seq Num Processed
display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect Last Msg Seq Num Processed Field
dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.last_msg_seq_num_processed, range, value, display)

  return offset + size
end

-- Display function for: Product Summary
display.product_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Product Summary Fields
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

-- Dissect Struct: Product Summary
dissect.product_summary = function(buffer, offset, packet, parent)
  if not show.product_summary then
    return dissect.product_summary_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 8)
  local display = display.product_summary(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.product_summary, range, display)

  return dissect.product_summary_fields(buffer, offset, packet, element)
end

-- Display Pad4
display.pad4 = function(value)
  return "Pad4: "..value
end

-- Dissect Pad4 Field
dissect.pad4 = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad4(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad4, range, value, display)

  return offset + size
end

-- Display function for: Product State Change
display.product_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Product State Change Fields
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

-- Dissect Struct: Product State Change
dissect.product_state_change = function(buffer, offset, packet, parent)
  if not show.product_state_change then
    return dissect.product_state_change_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 16)
  local display = display.product_state_change(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.product_state_change, range, display)

  return dissect.product_state_change_fields(buffer, offset, packet, element)
end

-- Display function for: Partial Order Execution
display.partial_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Partial Order Execution Fields
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

-- Dissect Struct: Partial Order Execution
dissect.partial_order_execution = function(buffer, offset, packet, parent)
  if not show.partial_order_execution then
    return dissect.partial_order_execution_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 48)
  local display = display.partial_order_execution(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.partial_order_execution, range, display)

  return dissect.partial_order_execution_fields(buffer, offset, packet, element)
end

-- Display Pad5
display.pad5 = function(value)
  return "Pad5: "..value
end

-- Dissect Pad5 Field
dissect.pad5 = function(buffer, offset, packet, parent)
  local size = 5
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad5(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad5, range, value, display)

  return offset + size
end

-- Display Field: Application Sequence Reset Indicator
display.application_sequence_reset_indicator = function(value)
  if value == 0 then
    return "Application Sequence Reset Indicator: No Reset (0)"
  end
  if value == 1 then
    return "Application Sequence Reset Indicator: Reset (1)"
  end

  return "Application Sequence Reset Indicator: Unknown("..value..")"
end

-- Dissect Application Sequence Reset Indicator Field
dissect.application_sequence_reset_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.application_sequence_reset_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.application_sequence_reset_indicator, range, value, display)

  return offset + size
end

-- Display Field: Completion Indicator
display.completion_indicator = function(value)
  if value == 0 then
    return "Completion Indicator: Incomplete (0)"
  end
  if value == 1 then
    return "Completion Indicator: Complete (1)"
  end

  return "Completion Indicator: Unknown("..value..")"
end

-- Dissect Completion Indicator Field
dissect.completion_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.completion_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.completion_indicator, range, value, display)

  return offset + size
end

-- Display Partition ID
display.partition_id = function(value)
  return "Partition ID: "..value
end

-- Dissect Partition ID Field
dissect.partition_id = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.partition_id, range, value, display)

  return offset + size
end

-- Display Market Segment ID
display.market_segment_id = function(value)
  return "Market Segment ID: "..value
end

-- Dissect Market Segment ID Field
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.market_segment_id, range, value, display)

  return offset + size
end

-- Display Application Sequence Number
display.application_sequence_number = function(value)
  return "Application Sequence Number: "..value
end

-- Dissect Application Sequence Number Field
dissect.application_sequence_number = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.application_sequence_number(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.application_sequence_number, range, value, display)

  return offset + size
end

-- Display Packet Seq Num
display.packet_seq_num = function(value)
  return "Packet Seq Num: "..value
end

-- Dissect Packet Seq Num Field
dissect.packet_seq_num = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.packet_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.packet_seq_num, range, value, display)

  return offset + size
end

-- Display Packet Id
display.packet_id = function(value)
  return "Packet Id: "..value
end

-- Dissect Packet Id Field
dissect.packet_id = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.packet_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.packet_id, range, value, display)

  return offset + size
end

-- Display Header Length
display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect Header Length Field
dissect.header_length = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.header_length(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.header_length, range, value, display)

  return offset + size
end

-- Display function for: Packet Info
display.packet_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Packet Info Fields
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

-- Dissect Struct: Packet Info
dissect.packet_info = function(buffer, offset, packet, parent)
  if not show.packet_info then
    return dissect.packet_info_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 8)
  local display = display.packet_info(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.packet_info, range, display)

  return dissect.packet_info_fields(buffer, offset, packet, element)
end

-- Display function for: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Packet Header Fields
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

-- Dissect Struct: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  if not show.packet_header then
    return dissect.packet_header_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 32)
  local display = display.packet_header(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.packet_header, range, display)

  return dissect.packet_header_fields(buffer, offset, packet, element)
end

-- Display Prev Display Qty
display.prev_display_qty = function(value)
  return "Prev Display Qty: "..value
end

-- Dissect Prev Display Qty Field
dissect.prev_display_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.prev_display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.prev_display_qty, range, value, display)

  return offset + size
end

-- Display Trd Reg TS Time In
display.trd_reg_ts_time_in = function(value)
  return "Trd Reg TS Time In: "..value
end

-- Dissect Trd Reg TS Time In Field
dissect.trd_reg_ts_time_in = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_in(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trd_reg_ts_time_in, range, value, display)

  return offset + size
end

-- Display function for: Order Modify Same Prio
display.order_modify_same_prio = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Order Modify Same Prio Fields
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

-- Dissect Struct: Order Modify Same Prio
dissect.order_modify_same_prio = function(buffer, offset, packet, parent)
  if not show.order_modify_same_prio then
    return dissect.order_modify_same_prio_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 56)
  local display = display.order_modify_same_prio(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.order_modify_same_prio, range, display)

  return dissect.order_modify_same_prio_fields(buffer, offset, packet, element)
end

-- Display Prev Price
display.prev_price = function(value)
  local precision = 8
  return "Prev Price: "..value/10^precision
end

-- Dissect Prev Price Field
dissect.prev_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.prev_price(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.prev_price, range, value, display)

  return offset + size
end

-- Display Trd Reg TS Prev Time Priority
display.trd_reg_ts_prev_time_priority = function(value)
  return "Trd Reg TS Prev Time Priority: "..value
end

-- Dissect Trd Reg TS Prev Time Priority Field
dissect.trd_reg_ts_prev_time_priority = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_prev_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trd_reg_ts_prev_time_priority, range, value, display)

  return offset + size
end

-- Display function for: Order Modify
display.order_modify = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Order Modify Fields
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

-- Dissect Struct: Order Modify
dissect.order_modify = function(buffer, offset, packet, parent)
  if not show.order_modify then
    return dissect.order_modify_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 64)
  local display = display.order_modify(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.order_modify, range, display)

  return dissect.order_modify_fields(buffer, offset, packet, element)
end

-- Display function for: Order Mass Delete
display.order_mass_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Order Mass Delete Fields
dissect.order_mass_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security ID: 8 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Order Mass Delete
dissect.order_mass_delete = function(buffer, offset, packet, parent)
  if not show.order_mass_delete then
    return dissect.order_mass_delete_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 16)
  local display = display.order_mass_delete(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.order_mass_delete, range, display)

  return dissect.order_mass_delete_fields(buffer, offset, packet, element)
end

-- Display function for: Order Delete
display.order_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Order Delete Fields
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

-- Dissect Struct: Order Delete
dissect.order_delete = function(buffer, offset, packet, parent)
  if not show.order_delete then
    return dissect.order_delete_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 48)
  local display = display.order_delete(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.order_delete, range, display)

  return dissect.order_delete_fields(buffer, offset, packet, element)
end

-- Display function for: Order Add
display.order_add = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Order Add Fields
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

-- Dissect Struct: Order Add
dissect.order_add = function(buffer, offset, packet, parent)
  if not show.order_add then
    return dissect.order_add_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 40)
  local display = display.order_add(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.order_add, range, display)

  return dissect.order_add_fields(buffer, offset, packet, element)
end

-- Display function for: MD Instrument Entry Grp
display.md_instrument_entry_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect MD Instrument Entry Grp Fields
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

-- Dissect Struct: MD Instrument Entry Grp
dissect.md_instrument_entry_grp = function(buffer, offset, packet, parent)
  if not show.md_instrument_entry_grp then
    return dissect.md_instrument_entry_grp_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 16)
  local display = display.md_instrument_entry_grp(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.md_instrument_entry_grp, range, display)

  return dissect.md_instrument_entry_grp_fields(buffer, offset, packet, element)
end

-- Display Pad2
display.pad2 = function(value)
  return "Pad2: "..value
end

-- Dissect Pad2 Field
dissect.pad2 = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad2(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad2, range, value, display)

  return offset + size
end

-- Display Field: Security Trading Status
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

-- Dissect Security Trading Status Field
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.security_trading_status, range, value, display)

  return offset + size
end

-- Display Field: Security Status
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

-- Dissect Security Status Field
dissect.security_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.security_status, range, value, display)

  return offset + size
end

-- Display Tot No Orders
display.tot_no_orders = function(value)
  return "Tot No Orders: "..value
end

-- Dissect Tot No Orders Field
dissect.tot_no_orders = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.tot_no_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.tot_no_orders, range, value, display)

  return offset + size
end

-- Display Last Update Time
display.last_update_time = function(value)
  return "Last Update Time: "..value
end

-- Dissect Last Update Time Field
dissect.last_update_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.last_update_time, range, value, display)

  return offset + size
end

-- Calculate runtime size: Instrument Summary
calculate.instrument_summary = function(buffer, offset)
  local index = 0

  index = index + 32

  -- Calculate field size from count
  local md_instrument_entry_grp_count = buffer(offset + index - 3, 1):le_uint()
  index = index + md_instrument_entry_grp_count * 16

  return index
end

-- Display function for: Instrument Summary
display.instrument_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Instrument Summary Fields
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

-- Dissect Struct: Instrument Summary
dissect.instrument_summary = function(buffer, offset, packet, parent)
  if not show.instrument_summary then
    return dissect.instrument_summary_fields(buffer, offset, packet, parent)
  end

  local size = calculate.instrument_summary(buffer, offset)
  local range = buffer(offset, size)
  local display = display.instrument_summary(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.instrument_summary, range, display)

  return dissect.instrument_summary_fields(buffer, offset, packet, element)
end

-- Display function for: Instrument State Change
display.instrument_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Instrument State Change Fields
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

-- Dissect Struct: Instrument State Change
dissect.instrument_state_change = function(buffer, offset, packet, parent)
  if not show.instrument_state_change then
    return dissect.instrument_state_change_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.instrument_state_change(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.instrument_state_change, range, display)

  return dissect.instrument_state_change_fields(buffer, offset, packet, element)
end

-- Display function for: Heartbeat
display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Heartbeat Fields
dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Heartbeat
dissect.heartbeat = function(buffer, offset, packet, parent)
  if not show.heartbeat then
    return dissect.heartbeat_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 8)
  local display = display.heartbeat(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.heartbeat, range, display)

  return dissect.heartbeat_fields(buffer, offset, packet, element)
end

-- Display function for: Full Order Execution
display.full_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Full Order Execution Fields
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

-- Dissect Struct: Full Order Execution
dissect.full_order_execution = function(buffer, offset, packet, parent)
  if not show.full_order_execution then
    return dissect.full_order_execution_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 48)
  local display = display.full_order_execution(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.full_order_execution, range, display)

  return dissect.full_order_execution_fields(buffer, offset, packet, element)
end

-- Display Resting Hidden Qty
display.resting_hidden_qty = function(value)
  return "Resting Hidden Qty: "..value
end

-- Dissect Resting Hidden Qty Field
dissect.resting_hidden_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.resting_hidden_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.resting_hidden_qty, range, value, display)

  return offset + size
end

-- Display Field: Trade Condition
display.trade_condition = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect Trade Condition Field
dissect.trade_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.trade_condition, range, value, display)

  return offset + size
end

-- Display Field: Aggressor Side
display.aggressor_side = function(value)
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect Aggressor Side Field
dissect.aggressor_side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.aggressor_side, range, value, display)

  return offset + size
end

-- Display Exec ID
display.exec_id = function(value)
  return "Exec ID: "..value
end

-- Dissect Exec ID Field
dissect.exec_id = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.exec_id, range, value, display)

  return offset + size
end

-- Display Request Time
display.request_time = function(value)
  return "Request Time: "..value
end

-- Dissect Request Time Field
dissect.request_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.request_time, range, value, display)

  return offset + size
end

-- Display Aggressor Timestamp
display.aggressor_timestamp = function(value)
  return "Aggressor Timestamp: "..value
end

-- Dissect Aggressor Timestamp Field
dissect.aggressor_timestamp = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.aggressor_timestamp(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.aggressor_timestamp, range, value, display)

  return offset + size
end

-- Display function for: Execution Summary
display.execution_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Execution Summary Fields
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

  -- Pad4: 4 Byte
  index = dissect.pad4(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Execution Summary
dissect.execution_summary = function(buffer, offset, packet, parent)
  if not show.execution_summary then
    return dissect.execution_summary_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 56)
  local display = display.execution_summary(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.execution_summary, range, display)

  return dissect.execution_summary_fields(buffer, offset, packet, element)
end

-- Display function for: Cross Request
display.cross_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Cross Request Fields
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

-- Dissect Struct: Cross Request
dissect.cross_request = function(buffer, offset, packet, parent)
  if not show.cross_request then
    return dissect.cross_request_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.cross_request(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.cross_request, range, display)

  return dissect.cross_request_fields(buffer, offset, packet, element)
end

-- Display function for: Auction Clearing Price
display.auction_clearing_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Auction Clearing Price Fields
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

-- Dissect Struct: Auction Clearing Price
dissect.auction_clearing_price = function(buffer, offset, packet, parent)
  if not show.auction_clearing_price then
    return dissect.auction_clearing_price_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.auction_clearing_price(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.auction_clearing_price, range, display)

  return dissect.auction_clearing_price_fields(buffer, offset, packet, element)
end

-- Display function for: Auction BBO
display.auction_bbo = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Auction BBO Fields
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

-- Dissect Struct: Auction BBO
dissect.auction_bbo = function(buffer, offset, packet, parent)
  if not show.auction_bbo then
    return dissect.auction_bbo_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 32)
  local display = display.auction_bbo(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.auction_bbo, range, display)

  return dissect.auction_bbo_fields(buffer, offset, packet, element)
end

-- Display Field: Leg Side
display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect Leg Side Field
dissect.leg_side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.leg_side, range, value, display)

  return offset + size
end

-- Display Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect Leg Ratio Qty Field
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.leg_ratio_qty, range, value, display)

  return offset + size
end

-- Display Leg Security ID
display.leg_security_id = function(value)
  return "Leg Security ID: "..value
end

-- Dissect Leg Security ID Field
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_int64()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.leg_security_id, range, value, display)

  return offset + size
end

-- Display Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect Leg Symbol Field
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.leg_symbol, range, value, display)

  return offset + size
end

-- Display function for: Instrmt Leg Grp
display.instrmt_leg_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Instrmt Leg Grp Fields
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

-- Dissect Struct: Instrmt Leg Grp
dissect.instrmt_leg_grp = function(buffer, offset, packet, parent)
  if not show.instrmt_leg_grp then
    return dissect.instrmt_leg_grp_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 24)
  local display = display.instrmt_leg_grp(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.instrmt_leg_grp, range, display)

  return dissect.instrmt_leg_grp_fields(buffer, offset, packet, element)
end

-- Display Pad1
display.pad1 = function(value)
  return "Pad1: "..value
end

-- Dissect Pad1 Field
dissect.pad1 = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad1(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.pad1, range, value, display)

  return offset + size
end

-- Display No Legs
display.no_legs = function(value)
  return "No Legs: "..value
end

-- Dissect No Legs Field
dissect.no_legs = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.no_legs(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.no_legs, range, value, display)

  return offset + size
end

-- Display Field: Implied Market Indicator
display.implied_market_indicator = function(value)
  if value == 0 then
    return "Implied Market Indicator: Not Implied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Implied In Out (3)"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect Implied Market Indicator Field
dissect.implied_market_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.implied_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.implied_market_indicator, range, value, display)

  return offset + size
end

-- Display Field: Product Complex
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

-- Dissect Product Complex Field
dissect.product_complex = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.product_complex, range, value, display)

  return offset + size
end

-- Display Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect Security Sub Type Field
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.security_sub_type, range, value, display)

  return offset + size
end

-- Calculate runtime size: Add Complex Instrument
calculate.add_complex_instrument = function(buffer, offset)
  local index = 0

  index = index + 24

  -- Calculate field size from count
  local instrmt_leg_grp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + instrmt_leg_grp_count * 24

  return index
end

-- Display function for: Add Complex Instrument
display.add_complex_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Add Complex Instrument Fields
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

-- Dissect Struct: Add Complex Instrument
dissect.add_complex_instrument = function(buffer, offset, packet, parent)
  if not show.add_complex_instrument then
    return dissect.add_complex_instrument_fields(buffer, offset, packet, parent)
  end

  local size = calculate.add_complex_instrument(buffer, offset)
  local range = buffer(offset, size)
  local display = display.add_complex_instrument(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.add_complex_instrument, range, display)

  return dissect.add_complex_instrument_fields(buffer, offset, packet, element)
end

-- Calculate runtime size of: Payload
calculate.payload = function(buffer, offset, code)
  -- Size of Add Complex Instrument
  if code == 13400 then
    return calculate.add_complex_instrument(buffer, offset)
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
    return calculate.instrument_summary(buffer, offset)
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
  if code == 13003 then
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
    return calculate.trade_reversal(buffer, offset)
  end

  return 0
end

-- Display function for Branch: Payload
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
  if code == 13003 then
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
  -- Parse payload type dependency
  local code = buffer(offset - 6, 2):le_uint()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = calculate.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display Msg Seq Num
display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect Msg Seq Num Field
dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.msg_seq_num, range, value, display)

  return offset + size
end

-- Display Template ID
display.template_id = function(value)
  return "Template ID: "..value
end

-- Dissect Template ID Field
dissect.template_id = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.template_id, range, value, display)

  return offset + size
end

-- Display Body Len
display.body_len = function(value)
  return "Body Len: "..value
end

-- Dissect Body Len Field
dissect.body_len = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_t7_eobi_2_5_5.fields.body_len, range, value, display)

  return offset + size
end

-- Display function for: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Message Header Fields
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

-- Dissect Struct: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  if not show.message_header then
    return dissect.message_header_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 8)
  local display = display.message_header(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.message_header, range, display)

  return dissect.message_header_fields(buffer, offset, packet, element)
end

-- Calculate runtime size: Message
calculate.message = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + calculate.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display function for: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Message Fields
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 23 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Message
dissect.message = function(buffer, offset, packet, parent)
  if not show.message then
    return dissect.message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.message(buffer, packet, parent)
  local element = parent:add(eurex_t7_eobi_2_5_5.fields.message, range, display)

  return dissect.message_fields(buffer, offset, packet, element)
end

-- Dissect Packet
function dissect.packet(buffer, packet, parent)
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
function eurex_t7_eobi_2_5_5.init()
end

-- Dissector for Eurex T7 Eobi 2.5.5
function eurex_t7_eobi_2_5_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_t7_eobi_2_5_5.name

  -- Dissect protocol
  local protocol = parent:add(eurex_t7_eobi_2_5_5, buffer(), eurex_t7_eobi_2_5_5.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, eurex_t7_eobi_2_5_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_t7_eobi_2_5_5_packet_size = function(buffer)

  return true
end

-- Verify Packet Id Field
verify.packet_id = function(buffer)
  if 13003 == buffer(2, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Eurex T7 Eobi 2.5.5
local function eurex_t7_eobi_2_5_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_t7_eobi_2_5_5_packet_size(buffer) then return false end

  -- Verify Packet Id
  if not verify.packet_id(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_t7_eobi_2_5_5
  eurex_t7_eobi_2_5_5.dissector(buffer, packet, parent)

  return true
end

-- Register Eurex T7 Eobi 2.5.5 Heuristic
eurex_t7_eobi_2_5_5:register_heuristic("udp", eurex_t7_eobi_2_5_5_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: 2.5.5
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
