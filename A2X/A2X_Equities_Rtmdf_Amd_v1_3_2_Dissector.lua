-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X Equities Rtmdf Amd 1.3.2 Protocol
local a2x_equities_rtmdf_amd_v1_3_2 = Proto("A2X.Equities.Rtmdf.Amd.v1.3.2.Lua", "A2X Equities Rtmdf Amd 1.3.2")

-- Component Tables
local show = {}
local format = {}
local a2x_equities_rtmdf_amd_v1_3_2_display = {}
local a2x_equities_rtmdf_amd_v1_3_2_dissect = {}
local a2x_equities_rtmdf_amd_v1_3_2_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X Equities Rtmdf Amd 1.3.2 Fields
a2x_equities_rtmdf_amd_v1_3_2.fields.aod_enabled = ProtoField.new("Aod Enabled", "a2x.equities.rtmdf.amd.v1.3.2.aodenabled", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x001000)
a2x_equities_rtmdf_amd_v1_3_2.fields.auction_on_demand_message = ProtoField.new("Auction On Demand Message", "a2x.equities.rtmdf.amd.v1.3.2.auctionondemandmessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "a2x.equities.rtmdf.amd.v1.3.2.closingbuyqty", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "a2x.equities.rtmdf.amd.v1.3.2.closingsellqty", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.currency = ProtoField.new("Currency", "a2x.equities.rtmdf.amd.v1.3.2.currency", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.illiquid = ProtoField.new("Illiquid", "a2x.equities.rtmdf.amd.v1.3.2.illiquid", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x000400)
a2x_equities_rtmdf_amd_v1_3_2.fields.indicative_price = ProtoField.new("Indicative Price", "a2x.equities.rtmdf.amd.v1.3.2.indicativeprice", ftypes.UINT64)
a2x_equities_rtmdf_amd_v1_3_2.fields.isin = ProtoField.new("Isin", "a2x.equities.rtmdf.amd.v1.3.2.isin", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.mac_enabled = ProtoField.new("Mac Enabled", "a2x.equities.rtmdf.amd.v1.3.2.macenabled", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x000080)
a2x_equities_rtmdf_amd_v1_3_2.fields.mac_open = ProtoField.new("Mac Open", "a2x.equities.rtmdf.amd.v1.3.2.macopen", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
a2x_equities_rtmdf_amd_v1_3_2.fields.mac_run = ProtoField.new("Mac Run", "a2x.equities.rtmdf.amd.v1.3.2.macrun", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
a2x_equities_rtmdf_amd_v1_3_2.fields.market_at_close = ProtoField.new("Market At Close", "a2x.equities.rtmdf.amd.v1.3.2.marketatclose", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.market_flags = ProtoField.new("Market Flags", "a2x.equities.rtmdf.amd.v1.3.2.marketflags", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.match_vol = ProtoField.new("Match Vol", "a2x.equities.rtmdf.amd.v1.3.2.matchvol", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.message = ProtoField.new("Message", "a2x.equities.rtmdf.amd.v1.3.2.message", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.message_count = ProtoField.new("Message Count", "a2x.equities.rtmdf.amd.v1.3.2.messagecount", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.message_header = ProtoField.new("Message Header", "a2x.equities.rtmdf.amd.v1.3.2.messageheader", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.mic = ProtoField.new("Mic", "a2x.equities.rtmdf.amd.v1.3.2.mic", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.msg_length = ProtoField.new("Msg Length", "a2x.equities.rtmdf.amd.v1.3.2.msglength", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.msg_type = ProtoField.new("Msg Type", "a2x.equities.rtmdf.amd.v1.3.2.msgtype", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.name = ProtoField.new("Name", "a2x.equities.rtmdf.amd.v1.3.2.name", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.order_add_message = ProtoField.new("Order Add Message", "a2x.equities.rtmdf.amd.v1.3.2.orderaddmessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "a2x.equities.rtmdf.amd.v1.3.2.ordercancelmessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.order_modify_message = ProtoField.new("Order Modify Message", "a2x.equities.rtmdf.amd.v1.3.2.ordermodifymessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.order_ref = ProtoField.new("Order Ref", "a2x.equities.rtmdf.amd.v1.3.2.orderref", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.packet = ProtoField.new("Packet", "a2x.equities.rtmdf.amd.v1.3.2.packet", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.payload = ProtoField.new("Payload", "a2x.equities.rtmdf.amd.v1.3.2.payload", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.price = ProtoField.new("Price", "a2x.equities.rtmdf.amd.v1.3.2.price", ftypes.UINT64)
a2x_equities_rtmdf_amd_v1_3_2.fields.quantity = ProtoField.new("Quantity", "a2x.equities.rtmdf.amd.v1.3.2.quantity", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.security_definition_message = ProtoField.new("Security Definition Message", "a2x.equities.rtmdf.amd.v1.3.2.securitydefinitionmessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.security_flags = ProtoField.new("Security Flags", "a2x.equities.rtmdf.amd.v1.3.2.securityflags", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.security_id = ProtoField.new("Security Id", "a2x.equities.rtmdf.amd.v1.3.2.securityid", ftypes.UINT16)
a2x_equities_rtmdf_amd_v1_3_2.fields.security_status_message = ProtoField.new("Security Status Message", "a2x.equities.rtmdf.amd.v1.3.2.securitystatusmessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.seq_no = ProtoField.new("Seq No", "a2x.equities.rtmdf.amd.v1.3.2.seqno", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.side = ProtoField.new("Side", "a2x.equities.rtmdf.amd.v1.3.2.side", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.test_stock = ProtoField.new("Test Stock", "a2x.equities.rtmdf.amd.v1.3.2.teststock", ftypes.UINT16, nil, base.DEC, 0x000300)
a2x_equities_rtmdf_amd_v1_3_2.fields.threshold = ProtoField.new("Threshold", "a2x.equities.rtmdf.amd.v1.3.2.threshold", ftypes.UINT64)
a2x_equities_rtmdf_amd_v1_3_2.fields.tick_size = ProtoField.new("Tick Size", "a2x.equities.rtmdf.amd.v1.3.2.ticksize", ftypes.UINT64)
a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "a2x.equities.rtmdf.amd.v1.3.2.ticktabledatamessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_id = ProtoField.new("Tick Table Id", "a2x.equities.rtmdf.amd.v1.3.2.ticktableid", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.timestamp = ProtoField.new("Timestamp", "a2x.equities.rtmdf.amd.v1.3.2.timestamp", ftypes.UINT64)
a2x_equities_rtmdf_amd_v1_3_2.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "a2x.equities.rtmdf.amd.v1.3.2.tradebustmessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.trade_message = ProtoField.new("Trade Message", "a2x.equities.rtmdf.amd.v1.3.2.trademessage", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.trade_ref = ProtoField.new("Trade Ref", "a2x.equities.rtmdf.amd.v1.3.2.traderef", ftypes.UINT32)
a2x_equities_rtmdf_amd_v1_3_2.fields.trade_type = ProtoField.new("Trade Type", "a2x.equities.rtmdf.amd.v1.3.2.tradetype", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.trading = ProtoField.new("Trading", "a2x.equities.rtmdf.amd.v1.3.2.trading", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
a2x_equities_rtmdf_amd_v1_3_2.fields.trading_status = ProtoField.new("Trading Status", "a2x.equities.rtmdf.amd.v1.3.2.tradingstatus", ftypes.UINT8)
a2x_equities_rtmdf_amd_v1_3_2.fields.umtf = ProtoField.new("Umtf", "a2x.equities.rtmdf.amd.v1.3.2.umtf", ftypes.STRING)
a2x_equities_rtmdf_amd_v1_3_2.fields.unused_1 = ProtoField.new("Unused 1", "a2x.equities.rtmdf.amd.v1.3.2.unused1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x000800)
a2x_equities_rtmdf_amd_v1_3_2.fields.unused_11 = ProtoField.new("Unused 11", "a2x.equities.rtmdf.amd.v1.3.2.unused11", ftypes.UINT16, nil, base.DEC, 0xFFE000)
a2x_equities_rtmdf_amd_v1_3_2.fields.unused_5 = ProtoField.new("Unused 5", "a2x.equities.rtmdf.amd.v1.3.2.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- A2X Equities Rtmdf Amd 1.3.2 Element Dissection Options
show.auction_on_demand_message = true
show.market_at_close = true
show.market_flags = true
show.message = true
show.message_header = true
show.order_add_message = true
show.order_cancel_message = true
show.order_modify_message = true
show.packet = true
show.security_definition_message = true
show.security_flags = true
show.security_status_message = true
show.tick_table_data_message = true
show.trade_bust_message = true
show.trade_message = true
show.payload = false

-- Register A2X Equities Rtmdf Amd 1.3.2 Show Options
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_auction_on_demand_message = Pref.bool("Show Auction On Demand Message", show.auction_on_demand_message, "Parse and add Auction On Demand Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_at_close = Pref.bool("Show Market At Close", show.market_at_close, "Parse and add Market At Close to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_add_message = Pref.bool("Show Order Add Message", show.order_add_message, "Parse and add Order Add Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_modify_message = Pref.bool("Show Order Modify Message", show.order_modify_message, "Parse and add Order Modify Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_tick_table_data_message = Pref.bool("Show Tick Table Data Message", show.tick_table_data_message, "Parse and add Tick Table Data Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
a2x_equities_rtmdf_amd_v1_3_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function a2x_equities_rtmdf_amd_v1_3_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_on_demand_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_auction_on_demand_message then
    show.auction_on_demand_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_auction_on_demand_message
    changed = true
  end
  if show.market_at_close ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_at_close then
    show.market_at_close = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_at_close
    changed = true
  end
  if show.market_flags ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_flags then
    show.market_flags = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_flags
    changed = true
  end
  if show.message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message then
    show.message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message_header then
    show.message_header = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message_header
    changed = true
  end
  if show.order_add_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_add_message then
    show.order_add_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_add_message
    changed = true
  end
  if show.order_cancel_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_cancel_message then
    show.order_cancel_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_modify_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_modify_message then
    show.order_modify_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_modify_message
    changed = true
  end
  if show.packet ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_packet then
    show.packet = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_packet
    changed = true
  end
  if show.security_definition_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_definition_message then
    show.security_definition_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_definition_message
    changed = true
  end
  if show.security_flags ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_flags then
    show.security_flags = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_flags
    changed = true
  end
  if show.security_status_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_status_message then
    show.security_status_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_status_message
    changed = true
  end
  if show.tick_table_data_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_tick_table_data_message then
    show.tick_table_data_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_tick_table_data_message
    changed = true
  end
  if show.trade_bust_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_bust_message then
    show.trade_bust_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_message ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_message then
    show.trade_message = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= a2x_equities_rtmdf_amd_v1_3_2.prefs.show_payload then
    show.payload = a2x_equities_rtmdf_amd_v1_3_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect A2X Equities Rtmdf Amd 1.3.2
-----------------------------------------------------------------------

-- Size: Timestamp
a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp = 8

-- Display: Timestamp
a2x_equities_rtmdf_amd_v1_3_2_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2_size_of.closing_sell_qty = 4

-- Display: Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2_display.closing_sell_qty = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2_dissect.closing_sell_qty = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.closing_sell_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.closing_sell_qty(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Size: Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2_size_of.closing_buy_qty = 4

-- Display: Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2_display.closing_buy_qty = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2_dissect.closing_buy_qty = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.closing_buy_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.closing_buy_qty(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
a2x_equities_rtmdf_amd_v1_3_2_size_of.indicative_price = 8

-- Display: Indicative Price
a2x_equities_rtmdf_amd_v1_3_2_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
a2x_equities_rtmdf_amd_v1_3_2_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.indicative_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Security Id
a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id = 2

-- Display: Security Id
a2x_equities_rtmdf_amd_v1_3_2_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.security_id(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market At Close
a2x_equities_rtmdf_amd_v1_3_2_size_of.market_at_close = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.indicative_price

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.closing_buy_qty

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.closing_sell_qty

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Market At Close
a2x_equities_rtmdf_amd_v1_3_2_display.market_at_close = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market At Close
a2x_equities_rtmdf_amd_v1_3_2_dissect.market_at_close_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_equities_rtmdf_amd_v1_3_2_dissect.indicative_price(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = a2x_equities_rtmdf_amd_v1_3_2_dissect.closing_buy_qty(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = a2x_equities_rtmdf_amd_v1_3_2_dissect.closing_sell_qty(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Market At Close
a2x_equities_rtmdf_amd_v1_3_2_dissect.market_at_close = function(buffer, offset, packet, parent)
  if show.market_at_close then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.market_at_close, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.market_at_close_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.market_at_close(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.market_at_close_fields(buffer, offset, packet, parent)
  end
end

-- Size: Match Vol
a2x_equities_rtmdf_amd_v1_3_2_size_of.match_vol = 4

-- Display: Match Vol
a2x_equities_rtmdf_amd_v1_3_2_display.match_vol = function(value)
  return "Match Vol: "..value
end

-- Dissect: Match Vol
a2x_equities_rtmdf_amd_v1_3_2_dissect.match_vol = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.match_vol
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.match_vol(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.match_vol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.auction_on_demand_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.indicative_price

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.match_vol

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2_display.auction_on_demand_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.auction_on_demand_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_equities_rtmdf_amd_v1_3_2_dissect.indicative_price(buffer, index, packet, parent)

  -- Match Vol: u32
  index, match_vol = a2x_equities_rtmdf_amd_v1_3_2_dissect.match_vol(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.auction_on_demand_message = function(buffer, offset, packet, parent)
  if show.auction_on_demand_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.auction_on_demand_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.auction_on_demand_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.auction_on_demand_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.auction_on_demand_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Market Flags
a2x_equities_rtmdf_amd_v1_3_2_size_of.market_flags = 1

-- Display: Market Flags
a2x_equities_rtmdf_amd_v1_3_2_display.market_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Mac Run flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Mac Run|"
  end
  -- Is Mac Open flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Mac Open|"
  end
  -- Is Trading flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Trading|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Market Flags
a2x_equities_rtmdf_amd_v1_3_2_dissect.market_flags_bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.unused_5, buffer(offset, 1))

  -- Mac Run: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.mac_run, buffer(offset, 1))

  -- Mac Open: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.mac_open, buffer(offset, 1))

  -- Trading: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.trading, buffer(offset, 1))
end

-- Dissect: Market Flags
a2x_equities_rtmdf_amd_v1_3_2_dissect.market_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.market_flags(range, packet, parent)
  local element = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.market_flags, range, display)

  if show.market_flags then
    a2x_equities_rtmdf_amd_v1_3_2_dissect.market_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trading Status
a2x_equities_rtmdf_amd_v1_3_2_size_of.trading_status = 1

-- Display: Trading Status
a2x_equities_rtmdf_amd_v1_3_2_display.trading_status = function(value)
  if value == 1 then
    return "Trading Status: Active (1)"
  end
  if value == 2 then
    return "Trading Status: Halted (2)"
  end
  if value == 3 then
    return "Trading Status: Suspended (3)"
  end
  if value == 8 then
    return "Trading Status: Aod Start (8)"
  end
  if value == 24 then
    return "Trading Status: Aod End (24)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
a2x_equities_rtmdf_amd_v1_3_2_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.trading_status

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.market_flags

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2_display.security_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = a2x_equities_rtmdf_amd_v1_3_2_dissect.trading_status(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = a2x_equities_rtmdf_amd_v1_3_2_dissect.market_flags(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_status_message = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.security_status_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.security_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.security_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Security Flags
a2x_equities_rtmdf_amd_v1_3_2_size_of.security_flags = 2

-- Display: Security Flags
a2x_equities_rtmdf_amd_v1_3_2_display.security_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Aod Enabled flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Aod Enabled|"
  end
  -- Is Unused 1 flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Unused 1|"
  end
  -- Is Illiquid flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Illiquid|"
  end
  -- Is Mac Enabled flag set?
  if buffer:bitfield(16) > 0 then
    display = display.."Mac Enabled|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Security Flags
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_flags_bits = function(buffer, offset, packet, parent)

  -- Unused 11: 11 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.unused_11, buffer(offset, 2))

  -- Aod Enabled: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.aod_enabled, buffer(offset, 2))

  -- Unused 1: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.unused_1, buffer(offset, 2))

  -- Illiquid: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.illiquid, buffer(offset, 2))

  -- Test Stock: 2 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.test_stock, buffer(offset, 2))

  -- Mac Enabled: 1 Bit
  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.mac_enabled, buffer(offset, 2))
end

-- Dissect: Security Flags
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_flags = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.security_flags(range, packet, parent)
  local element = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.security_flags, range, display)

  if show.security_flags then
    a2x_equities_rtmdf_amd_v1_3_2_dissect.security_flags_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_table_id = 1

-- Display: Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2_display.tick_table_id = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_id = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_table_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.tick_table_id(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Size: Mic
a2x_equities_rtmdf_amd_v1_3_2_size_of.mic = 4

-- Display: Mic
a2x_equities_rtmdf_amd_v1_3_2_display.mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
a2x_equities_rtmdf_amd_v1_3_2_dissect.mic = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.mic
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

  local display = a2x_equities_rtmdf_amd_v1_3_2_display.mic(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.mic, range, value, display)

  return offset + length, value
end

-- Size: Currency
a2x_equities_rtmdf_amd_v1_3_2_size_of.currency = 3

-- Display: Currency
a2x_equities_rtmdf_amd_v1_3_2_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
a2x_equities_rtmdf_amd_v1_3_2_dissect.currency = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.currency
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

  local display = a2x_equities_rtmdf_amd_v1_3_2_display.currency(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Isin
a2x_equities_rtmdf_amd_v1_3_2_size_of.isin = 12

-- Display: Isin
a2x_equities_rtmdf_amd_v1_3_2_display.isin = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
a2x_equities_rtmdf_amd_v1_3_2_dissect.isin = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.isin
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

  local display = a2x_equities_rtmdf_amd_v1_3_2_display.isin(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.isin, range, value, display)

  return offset + length, value
end

-- Size: Umtf
a2x_equities_rtmdf_amd_v1_3_2_size_of.umtf = 6

-- Display: Umtf
a2x_equities_rtmdf_amd_v1_3_2_display.umtf = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
a2x_equities_rtmdf_amd_v1_3_2_dissect.umtf = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.umtf
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

  local display = a2x_equities_rtmdf_amd_v1_3_2_display.umtf(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.umtf, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.security_definition_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.umtf

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.isin

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.currency

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.mic

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_table_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_flags

  return index
end

-- Display: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2_display.security_definition_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = a2x_equities_rtmdf_amd_v1_3_2_dissect.umtf(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = a2x_equities_rtmdf_amd_v1_3_2_dissect.isin(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = a2x_equities_rtmdf_amd_v1_3_2_dissect.currency(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = a2x_equities_rtmdf_amd_v1_3_2_dissect.mic(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_id(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.security_definition_message = function(buffer, offset, packet, parent)
  if show.security_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.security_definition_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_definition_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.security_definition_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.security_definition_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Tick Size
a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_size = 8

-- Display: Tick Size
a2x_equities_rtmdf_amd_v1_3_2_display.tick_size = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_size = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.tick_size(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Size: Threshold
a2x_equities_rtmdf_amd_v1_3_2_size_of.threshold = 8

-- Display: Threshold
a2x_equities_rtmdf_amd_v1_3_2_display.threshold = function(value)
  return "Threshold: "..value
end

-- Dissect: Threshold
a2x_equities_rtmdf_amd_v1_3_2_dissect.threshold = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.threshold
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.threshold(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.threshold, range, value, display)

  return offset + length, value
end

-- Size: Name
a2x_equities_rtmdf_amd_v1_3_2_size_of.name = 10

-- Display: Name
a2x_equities_rtmdf_amd_v1_3_2_display.name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
a2x_equities_rtmdf_amd_v1_3_2_dissect.name = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.name
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

  local display = a2x_equities_rtmdf_amd_v1_3_2_display.name(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_table_data_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_table_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.name

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.threshold

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_size

  return index
end

-- Display: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2_display.tick_table_data_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_data_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_id(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = a2x_equities_rtmdf_amd_v1_3_2_dissect.name(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = a2x_equities_rtmdf_amd_v1_3_2_dissect.threshold(buffer, index, packet, parent)

  -- Tick Size: u64
  index, tick_size = a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_data_message = function(buffer, offset, packet, parent)
  if show.tick_table_data_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_data_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_data_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.tick_table_data_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_data_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Ref
a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_ref = 4

-- Display: Trade Ref
a2x_equities_rtmdf_amd_v1_3_2_display.trade_ref = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_ref = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_ref
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.trade_ref(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Size: Price
a2x_equities_rtmdf_amd_v1_3_2_size_of.price = 8

-- Display: Price
a2x_equities_rtmdf_amd_v1_3_2_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
a2x_equities_rtmdf_amd_v1_3_2_dissect.price = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.price(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
a2x_equities_rtmdf_amd_v1_3_2_size_of.quantity = 4

-- Display: Quantity
a2x_equities_rtmdf_amd_v1_3_2_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
a2x_equities_rtmdf_amd_v1_3_2_dissect.quantity = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.quantity(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_bust_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.quantity

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.price

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_ref

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2_display.trade_bust_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_bust_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_ref(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_bust_message = function(buffer, offset, packet, parent)
  if show.trade_bust_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.trade_bust_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_bust_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.trade_bust_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_bust_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Ref
a2x_equities_rtmdf_amd_v1_3_2_size_of.order_ref = 4

-- Display: Order Ref
a2x_equities_rtmdf_amd_v1_3_2_display.order_ref = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_ref = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.order_ref
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.order_ref(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_type = 1

-- Display: Trade Type
a2x_equities_rtmdf_amd_v1_3_2_display.trade_type = function(value)
  if value == 1 then
    return "Trade Type: Visible (1)"
  end
  if value == 2 then
    return "Trade Type: Hidden Or Reserve (2)"
  end
  if value == 3 then
    return "Trade Type: Market At Close (3)"
  end
  if value == 4 then
    return "Trade Type: Large In Scale Cross (4)"
  end
  if value == 5 then
    return "Trade Type: Benchmark Cross (5)"
  end
  if value == 6 then
    return "Trade Type: Auction On Demand (6)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_type

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.quantity

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.price

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.order_ref

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_ref

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Trade Message
a2x_equities_rtmdf_amd_v1_3_2_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_type(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_ref(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_ref(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.trade_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.order_modify_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.quantity

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.price

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.order_ref

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2_display.order_modify_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_modify_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_ref(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_modify_message = function(buffer, offset, packet, parent)
  if show.order_modify_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.order_modify_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_modify_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.order_modify_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.order_modify_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.order_cancel_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.order_ref

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2_display.order_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_ref(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_cancel_message = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.order_cancel_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.order_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.order_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Side
a2x_equities_rtmdf_amd_v1_3_2_size_of.side = 1

-- Display: Side
a2x_equities_rtmdf_amd_v1_3_2_display.side = function(value)
  if value == 1 then
    return "Side: Buy Order (1)"
  end
  if value == 2 then
    return "Side: Sell Order (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
a2x_equities_rtmdf_amd_v1_3_2_dissect.side = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.side(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2_size_of.order_add_message = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.security_id

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.side

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.quantity

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.price

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.order_ref

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.timestamp

  return index
end

-- Display: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2_display.order_add_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_add_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2_dissect.security_id(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_equities_rtmdf_amd_v1_3_2_dissect.side(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_ref(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.order_add_message = function(buffer, offset, packet, parent)
  if show.order_add_message then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.order_add_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.order_add_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.order_add_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.order_add_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
a2x_equities_rtmdf_amd_v1_3_2_size_of.payload = function(buffer, offset, msg_type)
  -- Size of Heartbeat Message
  if msg_type == 1 then
    return 0
  end
  -- Size of Order Add Message
  if msg_type == 2 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.order_add_message(buffer, offset)
  end
  -- Size of Order Cancel Message
  if msg_type == 3 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.order_cancel_message(buffer, offset)
  end
  -- Size of Order Modify Message
  if msg_type == 4 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.order_modify_message(buffer, offset)
  end
  -- Size of Trade Message
  if msg_type == 5 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Bust Message
  if msg_type == 6 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.trade_bust_message(buffer, offset)
  end
  -- Size of Tick Table Data Message
  if msg_type == 7 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.tick_table_data_message(buffer, offset)
  end
  -- Size of Security Definition Message
  if msg_type == 8 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.security_definition_message(buffer, offset)
  end
  -- Size of Security Status Message
  if msg_type == 9 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.security_status_message(buffer, offset)
  end
  -- Size of Auction On Demand Message
  if msg_type == 17 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.auction_on_demand_message(buffer, offset)
  end
  -- Size of Market At Close
  if msg_type == 16 then
    return a2x_equities_rtmdf_amd_v1_3_2_size_of.market_at_close(buffer, offset)
  end

  return 0
end

-- Display: Payload
a2x_equities_rtmdf_amd_v1_3_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
a2x_equities_rtmdf_amd_v1_3_2_dissect.payload_branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Heartbeat Message
  if msg_type == 1 then
  end
  -- Dissect Order Add Message
  if msg_type == 2 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.order_add_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if msg_type == 3 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if msg_type == 4 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.order_modify_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 5 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if msg_type == 6 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.trade_bust_message(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Data Message
  if msg_type == 7 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.tick_table_data_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Message
  if msg_type == 8 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.security_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if msg_type == 9 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction On Demand Message
  if msg_type == 17 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.auction_on_demand_message(buffer, offset, packet, parent)
  end
  -- Dissect Market At Close
  if msg_type == 16 then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.market_at_close(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
a2x_equities_rtmdf_amd_v1_3_2_dissect.payload = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.payload_branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = a2x_equities_rtmdf_amd_v1_3_2_size_of.payload(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.payload(buffer, packet, parent)
  local element = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.payload, range, display)

  return a2x_equities_rtmdf_amd_v1_3_2_dissect.payload_branches(buffer, offset, packet, parent, msg_type)
end

-- Size: Seq No
a2x_equities_rtmdf_amd_v1_3_2_size_of.seq_no = 4

-- Display: Seq No
a2x_equities_rtmdf_amd_v1_3_2_display.seq_no = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
a2x_equities_rtmdf_amd_v1_3_2_dissect.seq_no = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.seq_no
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.seq_no(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
a2x_equities_rtmdf_amd_v1_3_2_size_of.msg_length = 1

-- Display: Msg Length
a2x_equities_rtmdf_amd_v1_3_2_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
a2x_equities_rtmdf_amd_v1_3_2_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Size: Msg Type
a2x_equities_rtmdf_amd_v1_3_2_size_of.msg_type = 1

-- Display: Msg Type
a2x_equities_rtmdf_amd_v1_3_2_display.msg_type = function(value)
  if value == 1 then
    return "Msg Type: Heartbeat Message (1)"
  end
  if value == 2 then
    return "Msg Type: Order Add Message (2)"
  end
  if value == 3 then
    return "Msg Type: Order Cancel Message (3)"
  end
  if value == 4 then
    return "Msg Type: Order Modify Message (4)"
  end
  if value == 5 then
    return "Msg Type: Trade Message (5)"
  end
  if value == 6 then
    return "Msg Type: Trade Bust Message (6)"
  end
  if value == 7 then
    return "Msg Type: Tick Table Data Message (7)"
  end
  if value == 8 then
    return "Msg Type: Security Definition Message (8)"
  end
  if value == 9 then
    return "Msg Type: Security Status Message (9)"
  end
  if value == 17 then
    return "Msg Type: Auction On Demand Message (17)"
  end
  if value == 16 then
    return "Msg Type: Market At Close (16)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
a2x_equities_rtmdf_amd_v1_3_2_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
a2x_equities_rtmdf_amd_v1_3_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.msg_type

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.msg_length

  index = index + a2x_equities_rtmdf_amd_v1_3_2_size_of.seq_no

  return index
end

-- Display: Message Header
a2x_equities_rtmdf_amd_v1_3_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_equities_rtmdf_amd_v1_3_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, msg_type = a2x_equities_rtmdf_amd_v1_3_2_dissect.msg_type(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = a2x_equities_rtmdf_amd_v1_3_2_dissect.msg_length(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = a2x_equities_rtmdf_amd_v1_3_2_dissect.seq_no(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_equities_rtmdf_amd_v1_3_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.message_header, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
a2x_equities_rtmdf_amd_v1_3_2_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_equities_rtmdf_amd_v1_3_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = a2x_equities_rtmdf_amd_v1_3_2_dissect.payload(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
a2x_equities_rtmdf_amd_v1_3_2_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = a2x_equities_rtmdf_amd_v1_3_2_display.message(buffer, packet, parent)
    parent = parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.message, range, display)
  end

  a2x_equities_rtmdf_amd_v1_3_2_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Message Count
a2x_equities_rtmdf_amd_v1_3_2_size_of.message_count = 1

-- Display: Message Count
a2x_equities_rtmdf_amd_v1_3_2_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
a2x_equities_rtmdf_amd_v1_3_2_dissect.message_count = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2_display.message_count(value, buffer, offset, packet, parent)

  parent:add(a2x_equities_rtmdf_amd_v1_3_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Dissect Packet
a2x_equities_rtmdf_amd_v1_3_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = a2x_equities_rtmdf_amd_v1_3_2_dissect.message_count(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  for i = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Message: Struct of 2 fields
    index = a2x_equities_rtmdf_amd_v1_3_2_dissect.message(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function a2x_equities_rtmdf_amd_v1_3_2.init()
end

-- Dissector for A2X Equities Rtmdf Amd 1.3.2
function a2x_equities_rtmdf_amd_v1_3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = a2x_equities_rtmdf_amd_v1_3_2.name

  -- Dissect protocol
  local protocol = parent:add(a2x_equities_rtmdf_amd_v1_3_2, buffer(), a2x_equities_rtmdf_amd_v1_3_2.description, "("..buffer:len().." Bytes)")
  return a2x_equities_rtmdf_amd_v1_3_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, a2x_equities_rtmdf_amd_v1_3_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.a2x_equities_rtmdf_amd_v1_3_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for A2X Equities Rtmdf Amd 1.3.2
local function a2x_equities_rtmdf_amd_v1_3_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.a2x_equities_rtmdf_amd_v1_3_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = a2x_equities_rtmdf_amd_v1_3_2
  a2x_equities_rtmdf_amd_v1_3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X Equities Rtmdf Amd 1.3.2
a2x_equities_rtmdf_amd_v1_3_2:register_heuristic("udp", a2x_equities_rtmdf_amd_v1_3_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: A2X Markets
--   Version: 1.3.2
--   Date: Thursday, September 15, 2022
--   Specification: A2X712-Market-Data-Techincal-Specification-v1.3.2.pdf
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
