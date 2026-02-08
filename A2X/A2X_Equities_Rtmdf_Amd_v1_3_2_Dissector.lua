-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X Equities Rtmdf Amd 1.3.2 Protocol
local omi_a2x_equities_rtmdf_amd_v1_3_2 = Proto("A2X.Equities.Rtmdf.Amd.v1.3.2.Lua", "A2X Equities Rtmdf Amd 1.3.2")

-- Protocol table
local a2x_equities_rtmdf_amd_v1_3_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X Equities Rtmdf Amd 1.3.2 Fields
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.aod_enabled = ProtoField.new("Aod Enabled", "a2x.equities.rtmdf.amd.v1.3.2.aodenabled", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0400)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "a2x.equities.rtmdf.amd.v1.3.2.closingbuyqty", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "a2x.equities.rtmdf.amd.v1.3.2.closingsellqty", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.currency = ProtoField.new("Currency", "a2x.equities.rtmdf.amd.v1.3.2.currency", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.illiquid = ProtoField.new("Illiquid", "a2x.equities.rtmdf.amd.v1.3.2.illiquid", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x1000)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.indicative_price = ProtoField.new("Indicative Price", "a2x.equities.rtmdf.amd.v1.3.2.indicativeprice", ftypes.UINT64)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.isin = ProtoField.new("Isin", "a2x.equities.rtmdf.amd.v1.3.2.isin", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mac_enabled = ProtoField.new("Mac Enabled", "a2x.equities.rtmdf.amd.v1.3.2.macenabled", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x8000)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mac_open = ProtoField.new("Mac Open", "a2x.equities.rtmdf.amd.v1.3.2.macopen", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mac_run = ProtoField.new("Mac Run", "a2x.equities.rtmdf.amd.v1.3.2.macrun", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.market_flags = ProtoField.new("Market Flags", "a2x.equities.rtmdf.amd.v1.3.2.marketflags", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.match_vol = ProtoField.new("Match Vol", "a2x.equities.rtmdf.amd.v1.3.2.matchvol", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message = ProtoField.new("Message", "a2x.equities.rtmdf.amd.v1.3.2.message", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message_count = ProtoField.new("Message Count", "a2x.equities.rtmdf.amd.v1.3.2.messagecount", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message_header = ProtoField.new("Message Header", "a2x.equities.rtmdf.amd.v1.3.2.messageheader", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mic = ProtoField.new("Mic", "a2x.equities.rtmdf.amd.v1.3.2.mic", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.msg_length = ProtoField.new("Msg Length", "a2x.equities.rtmdf.amd.v1.3.2.msglength", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.msg_type = ProtoField.new("Msg Type", "a2x.equities.rtmdf.amd.v1.3.2.msgtype", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.name = ProtoField.new("Name", "a2x.equities.rtmdf.amd.v1.3.2.name", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_ref = ProtoField.new("Order Ref", "a2x.equities.rtmdf.amd.v1.3.2.orderref", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.packet = ProtoField.new("Packet", "a2x.equities.rtmdf.amd.v1.3.2.packet", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.payload = ProtoField.new("Payload", "a2x.equities.rtmdf.amd.v1.3.2.payload", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.price = ProtoField.new("Price", "a2x.equities.rtmdf.amd.v1.3.2.price", ftypes.UINT64)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.quantity = ProtoField.new("Quantity", "a2x.equities.rtmdf.amd.v1.3.2.quantity", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_flags = ProtoField.new("Security Flags", "a2x.equities.rtmdf.amd.v1.3.2.securityflags", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_id = ProtoField.new("Security Id", "a2x.equities.rtmdf.amd.v1.3.2.securityid", ftypes.UINT16)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.seq_no = ProtoField.new("Seq No", "a2x.equities.rtmdf.amd.v1.3.2.seqno", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.side = ProtoField.new("Side", "a2x.equities.rtmdf.amd.v1.3.2.side", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.test_stock = ProtoField.new("Test Stock", "a2x.equities.rtmdf.amd.v1.3.2.teststock", ftypes.UINT16, nil, base.DEC, 0x6000)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.threshold = ProtoField.new("Threshold", "a2x.equities.rtmdf.amd.v1.3.2.threshold", ftypes.UINT64)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.tick_size = ProtoField.new("Tick Size", "a2x.equities.rtmdf.amd.v1.3.2.ticksize", ftypes.UINT64)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_id = ProtoField.new("Tick Table Id", "a2x.equities.rtmdf.amd.v1.3.2.ticktableid", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.timestamp = ProtoField.new("Timestamp", "a2x.equities.rtmdf.amd.v1.3.2.timestamp", ftypes.UINT64)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_ref = ProtoField.new("Trade Ref", "a2x.equities.rtmdf.amd.v1.3.2.traderef", ftypes.UINT32)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_type = ProtoField.new("Trade Type", "a2x.equities.rtmdf.amd.v1.3.2.tradetype", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trading = ProtoField.new("Trading", "a2x.equities.rtmdf.amd.v1.3.2.trading", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trading_status = ProtoField.new("Trading Status", "a2x.equities.rtmdf.amd.v1.3.2.tradingstatus", ftypes.UINT8)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.umtf = ProtoField.new("Umtf", "a2x.equities.rtmdf.amd.v1.3.2.umtf", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.unused_1 = ProtoField.new("Unused 1", "a2x.equities.rtmdf.amd.v1.3.2.unused1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0800)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.unused_10 = ProtoField.new("Unused 10", "a2x.equities.rtmdf.amd.v1.3.2.unused10", ftypes.UINT16, nil, base.DEC, 0x03FF)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.unused_5 = ProtoField.new("Unused 5", "a2x.equities.rtmdf.amd.v1.3.2.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)

-- A2X Equities Amd Rtmdf 1.3.2 Application Messages
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.auction_on_demand_message = ProtoField.new("Auction On Demand Message", "a2x.equities.rtmdf.amd.v1.3.2.auctionondemandmessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.market_at_close = ProtoField.new("Market At Close", "a2x.equities.rtmdf.amd.v1.3.2.marketatclose", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_add_message = ProtoField.new("Order Add Message", "a2x.equities.rtmdf.amd.v1.3.2.orderaddmessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "a2x.equities.rtmdf.amd.v1.3.2.ordercancelmessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_modify_message = ProtoField.new("Order Modify Message", "a2x.equities.rtmdf.amd.v1.3.2.ordermodifymessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_definition_message = ProtoField.new("Security Definition Message", "a2x.equities.rtmdf.amd.v1.3.2.securitydefinitionmessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_status_message = ProtoField.new("Security Status Message", "a2x.equities.rtmdf.amd.v1.3.2.securitystatusmessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "a2x.equities.rtmdf.amd.v1.3.2.ticktabledatamessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "a2x.equities.rtmdf.amd.v1.3.2.tradebustmessage", ftypes.STRING)
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_message = ProtoField.new("Trade Message", "a2x.equities.rtmdf.amd.v1.3.2.trademessage", ftypes.STRING)

-- A2X Equities Rtmdf Amd 1.3.2 generated fields
omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message_index = ProtoField.new("Message Index", "a2x.equities.rtmdf.amd.v1.3.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_auction_on_demand_message = Pref.bool("Show Auction On Demand Message", show.auction_on_demand_message, "Parse and add Auction On Demand Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_at_close = Pref.bool("Show Market At Close", show.market_at_close, "Parse and add Market At Close to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_add_message = Pref.bool("Show Order Add Message", show.order_add_message, "Parse and add Order Add Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_modify_message = Pref.bool("Show Order Modify Message", show.order_modify_message, "Parse and add Order Modify Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_tick_table_data_message = Pref.bool("Show Tick Table Data Message", show.tick_table_data_message, "Parse and add Tick Table Data Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_a2x_equities_rtmdf_amd_v1_3_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_on_demand_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_auction_on_demand_message then
    show.auction_on_demand_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_auction_on_demand_message
    changed = true
  end
  if show.market_at_close ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_at_close then
    show.market_at_close = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_at_close
    changed = true
  end
  if show.market_flags ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_flags then
    show.market_flags = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_market_flags
    changed = true
  end
  if show.message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message then
    show.message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message_header then
    show.message_header = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_message_header
    changed = true
  end
  if show.order_add_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_add_message then
    show.order_add_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_add_message
    changed = true
  end
  if show.order_cancel_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_cancel_message then
    show.order_cancel_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_modify_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_modify_message then
    show.order_modify_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_order_modify_message
    changed = true
  end
  if show.packet ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_packet then
    show.packet = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_packet
    changed = true
  end
  if show.security_definition_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_definition_message then
    show.security_definition_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_definition_message
    changed = true
  end
  if show.security_flags ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_flags then
    show.security_flags = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_flags
    changed = true
  end
  if show.security_status_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_status_message then
    show.security_status_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_security_status_message
    changed = true
  end
  if show.tick_table_data_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_tick_table_data_message then
    show.tick_table_data_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_tick_table_data_message
    changed = true
  end
  if show.trade_bust_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_bust_message then
    show.trade_bust_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_message ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_message then
    show.trade_message = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_payload then
    show.payload = omi_a2x_equities_rtmdf_amd_v1_3_2.prefs.show_payload
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

-- Timestamp
a2x_equities_rtmdf_amd_v1_3_2.timestamp = {}

-- Size: Timestamp
a2x_equities_rtmdf_amd_v1_3_2.timestamp.size = 8

-- Display: Timestamp
a2x_equities_rtmdf_amd_v1_3_2.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty = {}

-- Size: Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.display = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty = {}

-- Size: Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.display = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Indicative Price
a2x_equities_rtmdf_amd_v1_3_2.indicative_price = {}

-- Size: Indicative Price
a2x_equities_rtmdf_amd_v1_3_2.indicative_price.size = 8

-- Display: Indicative Price
a2x_equities_rtmdf_amd_v1_3_2.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
a2x_equities_rtmdf_amd_v1_3_2.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Security Id
a2x_equities_rtmdf_amd_v1_3_2.security_id = {}

-- Size: Security Id
a2x_equities_rtmdf_amd_v1_3_2.security_id.size = 2

-- Display: Security Id
a2x_equities_rtmdf_amd_v1_3_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Market At Close
a2x_equities_rtmdf_amd_v1_3_2.market_at_close = {}

-- Size: Market At Close
a2x_equities_rtmdf_amd_v1_3_2.market_at_close.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.indicative_price.size + 
  a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.size + 
  a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Market At Close
a2x_equities_rtmdf_amd_v1_3_2.market_at_close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market At Close
a2x_equities_rtmdf_amd_v1_3_2.market_at_close.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_equities_rtmdf_amd_v1_3_2.indicative_price.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = a2x_equities_rtmdf_amd_v1_3_2.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = a2x_equities_rtmdf_amd_v1_3_2.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market At Close
a2x_equities_rtmdf_amd_v1_3_2.market_at_close.dissect = function(buffer, offset, packet, parent)
  if show.market_at_close then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.market_at_close, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.market_at_close.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.market_at_close.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.market_at_close.fields(buffer, offset, packet, parent)
  end
end

-- Match Vol
a2x_equities_rtmdf_amd_v1_3_2.match_vol = {}

-- Size: Match Vol
a2x_equities_rtmdf_amd_v1_3_2.match_vol.size = 4

-- Display: Match Vol
a2x_equities_rtmdf_amd_v1_3_2.match_vol.display = function(value)
  return "Match Vol: "..value
end

-- Dissect: Match Vol
a2x_equities_rtmdf_amd_v1_3_2.match_vol.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.match_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.match_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.match_vol, range, value, display)

  return offset + length, value
end

-- Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message = {}

-- Size: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.indicative_price.size + 
  a2x_equities_rtmdf_amd_v1_3_2.match_vol.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = a2x_equities_rtmdf_amd_v1_3_2.indicative_price.dissect(buffer, index, packet, parent)

  -- Match Vol: u32
  index, match_vol = a2x_equities_rtmdf_amd_v1_3_2.match_vol.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction On Demand Message
a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_on_demand_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.auction_on_demand_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flags
a2x_equities_rtmdf_amd_v1_3_2.market_flags = {}

-- Size: Market Flags
a2x_equities_rtmdf_amd_v1_3_2.market_flags.size = 1

-- Display: Market Flags
a2x_equities_rtmdf_amd_v1_3_2.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Mac Run flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Mac Run"
  end
  -- Is Mac Open flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Mac Open"
  end
  -- Is Trading flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trading"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
a2x_equities_rtmdf_amd_v1_3_2.market_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.unused_5, range, value)

  -- Mac Run: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mac_run, range, value)

  -- Mac Open: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mac_open, range, value)

  -- Trading: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trading, range, value)
end

-- Dissect: Market Flags
a2x_equities_rtmdf_amd_v1_3_2.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = a2x_equities_rtmdf_amd_v1_3_2.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.market_flags, range, display)

  if show.market_flags then
    a2x_equities_rtmdf_amd_v1_3_2.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Status
a2x_equities_rtmdf_amd_v1_3_2.trading_status = {}

-- Size: Trading Status
a2x_equities_rtmdf_amd_v1_3_2.trading_status.size = 1

-- Display: Trading Status
a2x_equities_rtmdf_amd_v1_3_2.trading_status.display = function(value)
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
a2x_equities_rtmdf_amd_v1_3_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Security Status Message
a2x_equities_rtmdf_amd_v1_3_2.security_status_message = {}

-- Size: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2.security_status_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.trading_status.size + 
  a2x_equities_rtmdf_amd_v1_3_2.market_flags.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = a2x_equities_rtmdf_amd_v1_3_2.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = a2x_equities_rtmdf_amd_v1_3_2.market_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
a2x_equities_rtmdf_amd_v1_3_2.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_status_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
a2x_equities_rtmdf_amd_v1_3_2.security_flags = {}

-- Size: Security Flags
a2x_equities_rtmdf_amd_v1_3_2.security_flags.size = 2

-- Display: Security Flags
a2x_equities_rtmdf_amd_v1_3_2.security_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aod Enabled flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Aod Enabled"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Illiquid flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Illiquid"
  end
  -- Is Mac Enabled flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Mac Enabled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Flags
a2x_equities_rtmdf_amd_v1_3_2.security_flags.bits = function(range, value, packet, parent)

  -- Unused 10: 10 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.unused_10, range, value)

  -- Aod Enabled: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.aod_enabled, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.unused_1, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.illiquid, range, value)

  -- Test Stock: 2 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.test_stock, range, value)

  -- Mac Enabled: 1 Bit
  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mac_enabled, range, value)
end

-- Dissect: Security Flags
a2x_equities_rtmdf_amd_v1_3_2.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = a2x_equities_rtmdf_amd_v1_3_2.security_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_flags, range, display)

  if show.security_flags then
    a2x_equities_rtmdf_amd_v1_3_2.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2.tick_table_id = {}

-- Size: Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.size = 1

-- Display: Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Mic
a2x_equities_rtmdf_amd_v1_3_2.mic = {}

-- Size: Mic
a2x_equities_rtmdf_amd_v1_3_2.mic.size = 4

-- Display: Mic
a2x_equities_rtmdf_amd_v1_3_2.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
a2x_equities_rtmdf_amd_v1_3_2.mic.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.mic.size
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

  local display = a2x_equities_rtmdf_amd_v1_3_2.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.mic, range, value, display)

  return offset + length, value
end

-- Currency
a2x_equities_rtmdf_amd_v1_3_2.currency = {}

-- Size: Currency
a2x_equities_rtmdf_amd_v1_3_2.currency.size = 3

-- Display: Currency
a2x_equities_rtmdf_amd_v1_3_2.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
a2x_equities_rtmdf_amd_v1_3_2.currency.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.currency.size
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

  local display = a2x_equities_rtmdf_amd_v1_3_2.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Isin
a2x_equities_rtmdf_amd_v1_3_2.isin = {}

-- Size: Isin
a2x_equities_rtmdf_amd_v1_3_2.isin.size = 12

-- Display: Isin
a2x_equities_rtmdf_amd_v1_3_2.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
a2x_equities_rtmdf_amd_v1_3_2.isin.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.isin.size
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

  local display = a2x_equities_rtmdf_amd_v1_3_2.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.isin, range, value, display)

  return offset + length, value
end

-- Umtf
a2x_equities_rtmdf_amd_v1_3_2.umtf = {}

-- Size: Umtf
a2x_equities_rtmdf_amd_v1_3_2.umtf.size = 6

-- Display: Umtf
a2x_equities_rtmdf_amd_v1_3_2.umtf.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
a2x_equities_rtmdf_amd_v1_3_2.umtf.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.umtf.size
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

  local display = a2x_equities_rtmdf_amd_v1_3_2.umtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.umtf, range, value, display)

  return offset + length, value
end

-- Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2.security_definition_message = {}

-- Size: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.umtf.size + 
  a2x_equities_rtmdf_amd_v1_3_2.isin.size + 
  a2x_equities_rtmdf_amd_v1_3_2.currency.size + 
  a2x_equities_rtmdf_amd_v1_3_2.mic.size + 
  a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.security_flags.size

-- Display: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = a2x_equities_rtmdf_amd_v1_3_2.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = a2x_equities_rtmdf_amd_v1_3_2.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = a2x_equities_rtmdf_amd_v1_3_2.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = a2x_equities_rtmdf_amd_v1_3_2.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = a2x_equities_rtmdf_amd_v1_3_2.security_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.security_definition_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size
a2x_equities_rtmdf_amd_v1_3_2.tick_size = {}

-- Size: Tick Size
a2x_equities_rtmdf_amd_v1_3_2.tick_size.size = 8

-- Display: Tick Size
a2x_equities_rtmdf_amd_v1_3_2.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
a2x_equities_rtmdf_amd_v1_3_2.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.tick_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Threshold
a2x_equities_rtmdf_amd_v1_3_2.threshold = {}

-- Size: Threshold
a2x_equities_rtmdf_amd_v1_3_2.threshold.size = 8

-- Display: Threshold
a2x_equities_rtmdf_amd_v1_3_2.threshold.display = function(value)
  return "Threshold: "..value
end

-- Dissect: Threshold
a2x_equities_rtmdf_amd_v1_3_2.threshold.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2.threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.threshold, range, value, display)

  return offset + length, value
end

-- Name
a2x_equities_rtmdf_amd_v1_3_2.name = {}

-- Size: Name
a2x_equities_rtmdf_amd_v1_3_2.name.size = 10

-- Display: Name
a2x_equities_rtmdf_amd_v1_3_2.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
a2x_equities_rtmdf_amd_v1_3_2.name.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.name.size
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

  local display = a2x_equities_rtmdf_amd_v1_3_2.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.name, range, value, display)

  return offset + length, value
end

-- Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message = {}

-- Size: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.name.size + 
  a2x_equities_rtmdf_amd_v1_3_2.threshold.size + 
  a2x_equities_rtmdf_amd_v1_3_2.tick_size.size

-- Display: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = a2x_equities_rtmdf_amd_v1_3_2.tick_table_id.dissect(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = a2x_equities_rtmdf_amd_v1_3_2.name.dissect(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = a2x_equities_rtmdf_amd_v1_3_2.threshold.dissect(buffer, index, packet, parent)

  -- Tick Size: u64
  index, tick_size = a2x_equities_rtmdf_amd_v1_3_2.tick_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.dissect = function(buffer, offset, packet, parent)
  if show.tick_table_data_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.tick_table_data_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Ref
a2x_equities_rtmdf_amd_v1_3_2.trade_ref = {}

-- Size: Trade Ref
a2x_equities_rtmdf_amd_v1_3_2.trade_ref.size = 4

-- Display: Trade Ref
a2x_equities_rtmdf_amd_v1_3_2.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
a2x_equities_rtmdf_amd_v1_3_2.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Price
a2x_equities_rtmdf_amd_v1_3_2.price = {}

-- Size: Price
a2x_equities_rtmdf_amd_v1_3_2.price.size = 8

-- Display: Price
a2x_equities_rtmdf_amd_v1_3_2.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
a2x_equities_rtmdf_amd_v1_3_2.price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_equities_rtmdf_amd_v1_3_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
a2x_equities_rtmdf_amd_v1_3_2.quantity = {}

-- Size: Quantity
a2x_equities_rtmdf_amd_v1_3_2.quantity.size = 4

-- Display: Quantity
a2x_equities_rtmdf_amd_v1_3_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
a2x_equities_rtmdf_amd_v1_3_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message = {}

-- Size: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.quantity.size + 
  a2x_equities_rtmdf_amd_v1_3_2.price.size + 
  a2x_equities_rtmdf_amd_v1_3_2.trade_ref.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2.price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_equities_rtmdf_amd_v1_3_2.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_bust_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Ref
a2x_equities_rtmdf_amd_v1_3_2.order_ref = {}

-- Size: Order Ref
a2x_equities_rtmdf_amd_v1_3_2.order_ref.size = 4

-- Display: Order Ref
a2x_equities_rtmdf_amd_v1_3_2.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
a2x_equities_rtmdf_amd_v1_3_2.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Trade Type
a2x_equities_rtmdf_amd_v1_3_2.trade_type = {}

-- Size: Trade Type
a2x_equities_rtmdf_amd_v1_3_2.trade_type.size = 1

-- Display: Trade Type
a2x_equities_rtmdf_amd_v1_3_2.trade_type.display = function(value)
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
a2x_equities_rtmdf_amd_v1_3_2.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trade Message
a2x_equities_rtmdf_amd_v1_3_2.trade_message = {}

-- Size: Trade Message
a2x_equities_rtmdf_amd_v1_3_2.trade_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.trade_type.size + 
  a2x_equities_rtmdf_amd_v1_3_2.quantity.size + 
  a2x_equities_rtmdf_amd_v1_3_2.price.size + 
  a2x_equities_rtmdf_amd_v1_3_2.order_ref.size + 
  a2x_equities_rtmdf_amd_v1_3_2.trade_ref.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Trade Message
a2x_equities_rtmdf_amd_v1_3_2.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
a2x_equities_rtmdf_amd_v1_3_2.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = a2x_equities_rtmdf_amd_v1_3_2.trade_type.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2.order_ref.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_equities_rtmdf_amd_v1_3_2.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
a2x_equities_rtmdf_amd_v1_3_2.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.trade_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2.order_modify_message = {}

-- Size: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.quantity.size + 
  a2x_equities_rtmdf_amd_v1_3_2.price.size + 
  a2x_equities_rtmdf_amd_v1_3_2.order_ref.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_modify_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message = {}

-- Size: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.order_ref.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_cancel_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Side
a2x_equities_rtmdf_amd_v1_3_2.side = {}

-- Size: Side
a2x_equities_rtmdf_amd_v1_3_2.side.size = 1

-- Display: Side
a2x_equities_rtmdf_amd_v1_3_2.side.display = function(value)
  if value == 1 then
    return "Side: Buy Order (1)"
  end
  if value == 2 then
    return "Side: Sell Order (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
a2x_equities_rtmdf_amd_v1_3_2.side.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.side, range, value, display)

  return offset + length, value
end

-- Order Add Message
a2x_equities_rtmdf_amd_v1_3_2.order_add_message = {}

-- Size: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2.order_add_message.size =
  a2x_equities_rtmdf_amd_v1_3_2.security_id.size + 
  a2x_equities_rtmdf_amd_v1_3_2.side.size + 
  a2x_equities_rtmdf_amd_v1_3_2.quantity.size + 
  a2x_equities_rtmdf_amd_v1_3_2.price.size + 
  a2x_equities_rtmdf_amd_v1_3_2.order_ref.size + 
  a2x_equities_rtmdf_amd_v1_3_2.timestamp.size

-- Display: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = a2x_equities_rtmdf_amd_v1_3_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_equities_rtmdf_amd_v1_3_2.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_equities_rtmdf_amd_v1_3_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_equities_rtmdf_amd_v1_3_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = a2x_equities_rtmdf_amd_v1_3_2.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_equities_rtmdf_amd_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
a2x_equities_rtmdf_amd_v1_3_2.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.order_add_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.order_add_message, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
a2x_equities_rtmdf_amd_v1_3_2.payload = {}

-- Size: Payload
a2x_equities_rtmdf_amd_v1_3_2.payload.size = function(buffer, offset, msg_type)
  -- Size of Heartbeat Message
  if msg_type == 1 then
    return 0
  end
  -- Size of Order Add Message
  if msg_type == 2 then
    return a2x_equities_rtmdf_amd_v1_3_2.order_add_message.size
  end
  -- Size of Order Cancel Message
  if msg_type == 3 then
    return a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.size
  end
  -- Size of Order Modify Message
  if msg_type == 4 then
    return a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.size
  end
  -- Size of Trade Message
  if msg_type == 5 then
    return a2x_equities_rtmdf_amd_v1_3_2.trade_message.size
  end
  -- Size of Trade Bust Message
  if msg_type == 6 then
    return a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.size
  end
  -- Size of Tick Table Data Message
  if msg_type == 7 then
    return a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.size
  end
  -- Size of Security Definition Message
  if msg_type == 8 then
    return a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.size
  end
  -- Size of Security Status Message
  if msg_type == 9 then
    return a2x_equities_rtmdf_amd_v1_3_2.security_status_message.size
  end
  -- Size of Auction On Demand Message
  if msg_type == 17 then
    return a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.size
  end
  -- Size of Market At Close
  if msg_type == 16 then
    return a2x_equities_rtmdf_amd_v1_3_2.market_at_close.size
  end

  return 0
end

-- Display: Payload
a2x_equities_rtmdf_amd_v1_3_2.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
a2x_equities_rtmdf_amd_v1_3_2.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Heartbeat Message
  if msg_type == 1 then
  end
  -- Dissect Order Add Message
  if msg_type == 2 then
    return a2x_equities_rtmdf_amd_v1_3_2.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if msg_type == 3 then
    return a2x_equities_rtmdf_amd_v1_3_2.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if msg_type == 4 then
    return a2x_equities_rtmdf_amd_v1_3_2.order_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 5 then
    return a2x_equities_rtmdf_amd_v1_3_2.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if msg_type == 6 then
    return a2x_equities_rtmdf_amd_v1_3_2.trade_bust_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Data Message
  if msg_type == 7 then
    return a2x_equities_rtmdf_amd_v1_3_2.tick_table_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Message
  if msg_type == 8 then
    return a2x_equities_rtmdf_amd_v1_3_2.security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if msg_type == 9 then
    return a2x_equities_rtmdf_amd_v1_3_2.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction On Demand Message
  if msg_type == 17 then
    return a2x_equities_rtmdf_amd_v1_3_2.auction_on_demand_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market At Close
  if msg_type == 16 then
    return a2x_equities_rtmdf_amd_v1_3_2.market_at_close.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
a2x_equities_rtmdf_amd_v1_3_2.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return a2x_equities_rtmdf_amd_v1_3_2.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = a2x_equities_rtmdf_amd_v1_3_2.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = a2x_equities_rtmdf_amd_v1_3_2.payload.display(buffer, packet, parent)
  local element = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.payload, range, display)

  return a2x_equities_rtmdf_amd_v1_3_2.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Seq No
a2x_equities_rtmdf_amd_v1_3_2.seq_no = {}

-- Size: Seq No
a2x_equities_rtmdf_amd_v1_3_2.seq_no.size = 4

-- Display: Seq No
a2x_equities_rtmdf_amd_v1_3_2.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
a2x_equities_rtmdf_amd_v1_3_2.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
a2x_equities_rtmdf_amd_v1_3_2.msg_length = {}

-- Size: Msg Length
a2x_equities_rtmdf_amd_v1_3_2.msg_length.size = 1

-- Display: Msg Length
a2x_equities_rtmdf_amd_v1_3_2.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
a2x_equities_rtmdf_amd_v1_3_2.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
a2x_equities_rtmdf_amd_v1_3_2.msg_type = {}

-- Size: Msg Type
a2x_equities_rtmdf_amd_v1_3_2.msg_type.size = 1

-- Display: Msg Type
a2x_equities_rtmdf_amd_v1_3_2.msg_type.display = function(value)
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
a2x_equities_rtmdf_amd_v1_3_2.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Message Header
a2x_equities_rtmdf_amd_v1_3_2.message_header = {}

-- Size: Message Header
a2x_equities_rtmdf_amd_v1_3_2.message_header.size =
  a2x_equities_rtmdf_amd_v1_3_2.msg_type.size + 
  a2x_equities_rtmdf_amd_v1_3_2.msg_length.size + 
  a2x_equities_rtmdf_amd_v1_3_2.seq_no.size

-- Display: Message Header
a2x_equities_rtmdf_amd_v1_3_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_equities_rtmdf_amd_v1_3_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, msg_type = a2x_equities_rtmdf_amd_v1_3_2.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = a2x_equities_rtmdf_amd_v1_3_2.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = a2x_equities_rtmdf_amd_v1_3_2.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_equities_rtmdf_amd_v1_3_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message_header, buffer(offset, 0))
    local index = a2x_equities_rtmdf_amd_v1_3_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_equities_rtmdf_amd_v1_3_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_equities_rtmdf_amd_v1_3_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
a2x_equities_rtmdf_amd_v1_3_2.message = {}

-- Display: Message
a2x_equities_rtmdf_amd_v1_3_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_equities_rtmdf_amd_v1_3_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_equities_rtmdf_amd_v1_3_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 11 branches
  index = a2x_equities_rtmdf_amd_v1_3_2.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
a2x_equities_rtmdf_amd_v1_3_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message, buffer(offset, 0))
    local current = a2x_equities_rtmdf_amd_v1_3_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = a2x_equities_rtmdf_amd_v1_3_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    a2x_equities_rtmdf_amd_v1_3_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
a2x_equities_rtmdf_amd_v1_3_2.message_count = {}

-- Size: Message Count
a2x_equities_rtmdf_amd_v1_3_2.message_count.size = 1

-- Display: Message Count
a2x_equities_rtmdf_amd_v1_3_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
a2x_equities_rtmdf_amd_v1_3_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = a2x_equities_rtmdf_amd_v1_3_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_equities_rtmdf_amd_v1_3_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Packet
a2x_equities_rtmdf_amd_v1_3_2.packet = {}

-- Dissect Packet
a2x_equities_rtmdf_amd_v1_3_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = a2x_equities_rtmdf_amd_v1_3_2.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = a2x_equities_rtmdf_amd_v1_3_2.message.dissect(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_a2x_equities_rtmdf_amd_v1_3_2.init()
end

-- Dissector for A2X Equities Rtmdf Amd 1.3.2
function omi_a2x_equities_rtmdf_amd_v1_3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_a2x_equities_rtmdf_amd_v1_3_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_a2x_equities_rtmdf_amd_v1_3_2, buffer(), omi_a2x_equities_rtmdf_amd_v1_3_2.description, "("..buffer:len().." Bytes)")
  return a2x_equities_rtmdf_amd_v1_3_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_a2x_equities_rtmdf_amd_v1_3_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
a2x_equities_rtmdf_amd_v1_3_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for A2X Equities Rtmdf Amd 1.3.2
local function omi_a2x_equities_rtmdf_amd_v1_3_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not a2x_equities_rtmdf_amd_v1_3_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_a2x_equities_rtmdf_amd_v1_3_2
  omi_a2x_equities_rtmdf_amd_v1_3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X Equities Rtmdf Amd 1.3.2
omi_a2x_equities_rtmdf_amd_v1_3_2:register_heuristic("udp", omi_a2x_equities_rtmdf_amd_v1_3_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
