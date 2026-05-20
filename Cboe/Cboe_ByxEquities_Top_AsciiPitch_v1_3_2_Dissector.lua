-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe ByxEquities Top AsciiPitch 1.3.2 Protocol
local omi_cboe_byxequities_top_asciipitch_v1_3_2 = Proto("Cboe.ByxEquities.Top.AsciiPitch.v1.3.2.Lua", "Cboe ByxEquities Top AsciiPitch 1.3.2")

-- Protocol table
local cboe_byxequities_top_asciipitch_v1_3_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe ByxEquities Top AsciiPitch 1.3.2 Fields
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.byxequities.top.asciipitch.v1.3.2.askpricelong", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.byxequities.top.asciipitch.v1.3.2.askpriceshort", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.byxequities.top.asciipitch.v1.3.2.askquantitylong", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.byxequities.top.asciipitch.v1.3.2.askquantityshort", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.byxequities.top.asciipitch.v1.3.2.bidpricelong", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.byxequities.top.asciipitch.v1.3.2.bidpriceshort", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.byxequities.top.asciipitch.v1.3.2.bidquantitylong", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.byxequities.top.asciipitch.v1.3.2.bidquantityshort", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.cumulative_volume_long = ProtoField.new("Cumulative Volume Long", "cboe.byxequities.top.asciipitch.v1.3.2.cumulativevolumelong", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.cumulative_volume_short = ProtoField.new("Cumulative Volume Short", "cboe.byxequities.top.asciipitch.v1.3.2.cumulativevolumeshort", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.halt_status = ProtoField.new("Halt Status", "cboe.byxequities.top.asciipitch.v1.3.2.haltstatus", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_price_long = ProtoField.new("Last Price Long", "cboe.byxequities.top.asciipitch.v1.3.2.lastpricelong", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_price_short = ProtoField.new("Last Price Short", "cboe.byxequities.top.asciipitch.v1.3.2.lastpriceshort", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_quantity_long = ProtoField.new("Last Quantity Long", "cboe.byxequities.top.asciipitch.v1.3.2.lastquantitylong", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_quantity_short = ProtoField.new("Last Quantity Short", "cboe.byxequities.top.asciipitch.v1.3.2.lastquantityshort", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_trade_price = ProtoField.new("Last Trade Price", "cboe.byxequities.top.asciipitch.v1.3.2.lasttradeprice", ftypes.DOUBLE)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_trade_size = ProtoField.new("Last Trade Size", "cboe.byxequities.top.asciipitch.v1.3.2.lasttradesize", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_trade_time = ProtoField.new("Last Trade Time", "cboe.byxequities.top.asciipitch.v1.3.2.lasttradetime", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_rejected_packet = ProtoField.new("Logon Rejected Packet", "cboe.byxequities.top.asciipitch.v1.3.2.logonrejectedpacket", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_request_packet = ProtoField.new("Logon Request Packet", "cboe.byxequities.top.asciipitch.v1.3.2.logonrequestpacket", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.message_type = ProtoField.new("Message Type", "cboe.byxequities.top.asciipitch.v1.3.2.messagetype", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.milliseconds = ProtoField.new("Milliseconds", "cboe.byxequities.top.asciipitch.v1.3.2.milliseconds", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.milliseconds_packet = ProtoField.new("Milliseconds Packet", "cboe.byxequities.top.asciipitch.v1.3.2.millisecondspacket", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.packet = ProtoField.new("Packet", "cboe.byxequities.top.asciipitch.v1.3.2.packet", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.password = ProtoField.new("Password", "cboe.byxequities.top.asciipitch.v1.3.2.password", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.byxequities.top.asciipitch.v1.3.2.regshoaction", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reject_reason = ProtoField.new("Reject Reason", "cboe.byxequities.top.asciipitch.v1.3.2.rejectreason", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.byxequities.top.asciipitch.v1.3.2.rejectreasoncode", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.byxequities.top.asciipitch.v1.3.2.reserved1", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.byxequities.top.asciipitch.v1.3.2.reserved2", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.seconds = ProtoField.new("Seconds", "cboe.byxequities.top.asciipitch.v1.3.2.seconds", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.seconds_packet = ProtoField.new("Seconds Packet", "cboe.byxequities.top.asciipitch.v1.3.2.secondspacket", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.spin_flag = ProtoField.new("Spin Flag", "cboe.byxequities.top.asciipitch.v1.3.2.spinflag", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.symbol_expanded = ProtoField.new("Symbol Expanded", "cboe.byxequities.top.asciipitch.v1.3.2.symbolexpanded", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.byxequities.top.asciipitch.v1.3.2.symbollong", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.byxequities.top.asciipitch.v1.3.2.symbolshort", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.timestamp = ProtoField.new("Timestamp", "cboe.byxequities.top.asciipitch.v1.3.2.timestamp", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.top_lf = ProtoField.new("Top Lf", "cboe.byxequities.top.asciipitch.v1.3.2.toplf", ftypes.INT8)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.username = ProtoField.new("Username", "cboe.byxequities.top.asciipitch.v1.3.2.username", ftypes.STRING)

-- Cboe ByxEquities AsciiPitch Top 1.3.2 Application Messages
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.byxequities.top.asciipitch.v1.3.2.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_ask_update_message = ProtoField.new("Expanded Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.expandedaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_bid_update_message = ProtoField.new("Expanded Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.expandedbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_spin_message = ProtoField.new("Expanded Spin Message", "cboe.byxequities.top.asciipitch.v1.3.2.expandedspinmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_trade_message = ProtoField.new("Expanded Trade Message", "cboe.byxequities.top.asciipitch.v1.3.2.expandedtrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_two_sided_update_message = ProtoField.new("Expanded Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.expandedtwosidedupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_accepted_message = ProtoField.new("Logon Accepted Message", "cboe.byxequities.top.asciipitch.v1.3.2.logonacceptedmessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_message = ProtoField.new("Logon Message", "cboe.byxequities.top.asciipitch.v1.3.2.logonmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_rejected_message = ProtoField.new("Logon Rejected Message", "cboe.byxequities.top.asciipitch.v1.3.2.logonrejectedmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_ask_update_message = ProtoField.new("Long Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.longaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_bid_update_message = ProtoField.new("Long Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.longbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_trade_message = ProtoField.new("Long Trade Message", "cboe.byxequities.top.asciipitch.v1.3.2.longtrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_two_sided_update_message = ProtoField.new("Long Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.longtwosidedupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "cboe.byxequities.top.asciipitch.v1.3.2.millisecondsmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.seconds_message = ProtoField.new("Seconds Message", "cboe.byxequities.top.asciipitch.v1.3.2.secondsmessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.byxequities.top.asciipitch.v1.3.2.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_ask_update_message = ProtoField.new("Short Ask Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.shortaskupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_bid_update_message = ProtoField.new("Short Bid Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.shortbidupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_trade_message = ProtoField.new("Short Trade Message", "cboe.byxequities.top.asciipitch.v1.3.2.shorttrademessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_two_sided_update_message = ProtoField.new("Short Two Sided Update Message", "cboe.byxequities.top.asciipitch.v1.3.2.shorttwosidedupdatemessage", ftypes.STRING)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.spin_done_message = ProtoField.new("Spin Done Message", "cboe.byxequities.top.asciipitch.v1.3.2.spindonemessage", ftypes.BYTES)
omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.byxequities.top.asciipitch.v1.3.2.tradingstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe ByxEquities Top AsciiPitch 1.3.2 Element Dissection Options
show.application_messages = true
show.logon_rejected_packet = true
show.logon_request_packet = true
show.milliseconds_packet = true
show.packet = true
show.seconds_packet = true

-- Register Cboe ByxEquities Top AsciiPitch 1.3.2 Show Options
omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_logon_rejected_packet = Pref.bool("Show Logon Rejected Packet", show.logon_rejected_packet, "Parse and add Logon Rejected Packet to protocol tree")
omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_logon_request_packet = Pref.bool("Show Logon Request Packet", show.logon_request_packet, "Parse and add Logon Request Packet to protocol tree")
omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_milliseconds_packet = Pref.bool("Show Milliseconds Packet", show.milliseconds_packet, "Parse and add Milliseconds Packet to protocol tree")
omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_seconds_packet = Pref.bool("Show Seconds Packet", show.seconds_packet, "Parse and add Seconds Packet to protocol tree")


-- Handle changed preferences
function omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_application_messages then
    show.application_messages = omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_application_messages
  end
  if show.logon_rejected_packet ~= omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_logon_rejected_packet then
    show.logon_rejected_packet = omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_logon_rejected_packet
  end
  if show.logon_request_packet ~= omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_logon_request_packet then
    show.logon_request_packet = omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_logon_request_packet
  end
  if show.milliseconds_packet ~= omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_milliseconds_packet then
    show.milliseconds_packet = omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_milliseconds_packet
  end
  if show.packet ~= omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_packet then
    show.packet = omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_packet
  end
  if show.seconds_packet ~= omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_seconds_packet then
    show.seconds_packet = omi_cboe_byxequities_top_asciipitch_v1_3_2.prefs.show_seconds_packet
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Cboe ByxEquities Top AsciiPitch 1.3.2 Fields
-----------------------------------------------------------------------

-- Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long = {}

-- Size: Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size = 10

-- Display: Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short = {}

-- Size: Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.size = 5

-- Display: Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Dissect: Ask Price Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size = 6

-- Display: Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.size = 5

-- Display: Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long = {}

-- Size: Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size = 10

-- Display: Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short = {}

-- Size: Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.size = 5

-- Display: Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size = 6

-- Display: Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.size = 5

-- Display: Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long = {}

-- Size: Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.size = 9

-- Display: Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.display = function(value)
  return "Cumulative Volume Long: "..value
end

-- Dissect: Cumulative Volume Long
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.cumulative_volume_long, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short = {}

-- Size: Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.size = 7

-- Display: Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.display = function(value)
  return "Cumulative Volume Short: "..value
end

-- Dissect: Cumulative Volume Short
cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.cumulative_volume_short, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_byxequities_top_asciipitch_v1_3_2.halt_status = {}

-- Size: Halt Status
cboe_byxequities_top_asciipitch_v1_3_2.halt_status.size = 1

-- Display: Halt Status
cboe_byxequities_top_asciipitch_v1_3_2.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_byxequities_top_asciipitch_v1_3_2.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price Long
cboe_byxequities_top_asciipitch_v1_3_2.last_price_long = {}

-- Size: Last Price Long
cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.size = 10

-- Display: Last Price Long
cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.display = function(value)
  return "Last Price Long: "..value
end

-- Dissect: Last Price Long
cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_price_long, range, value, display)

  return offset + length, value
end

-- Last Price Short
cboe_byxequities_top_asciipitch_v1_3_2.last_price_short = {}

-- Size: Last Price Short
cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.size = 5

-- Display: Last Price Short
cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.display = function(value)
  return "Last Price Short: "..value
end

-- Dissect: Last Price Short
cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_price_short, range, value, display)

  return offset + length, value
end

-- Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long = {}

-- Size: Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.size = 6

-- Display: Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.display = function(value)
  return "Last Quantity Long: "..value
end

-- Dissect: Last Quantity Long
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_quantity_long, range, value, display)

  return offset + length, value
end

-- Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short = {}

-- Size: Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.size = 5

-- Display: Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.display = function(value)
  return "Last Quantity Short: "..value
end

-- Dissect: Last Quantity Short
cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_quantity_short, range, value, display)

  return offset + length, value
end

-- Last Trade Price
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price = {}

-- Size: Last Trade Price
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.size = 10

-- Display: Last Trade Price
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size = {}

-- Size: Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.size = 6

-- Display: Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.display = function(value)
  return "Last Trade Size: "..value
end

-- Dissect: Last Trade Size
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_trade_size, range, value, display)

  return offset + length, value
end

-- Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time = {}

-- Size: Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.size = 8

-- Display: Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.display = function(value)
  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_byxequities_top_asciipitch_v1_3_2.message_type = {}

-- Size: Message Type
cboe_byxequities_top_asciipitch_v1_3_2.message_type.size = 1

-- Display: Message Type
cboe_byxequities_top_asciipitch_v1_3_2.message_type.display = function(value)
  if value == "L" then
    return "Message Type: Logon Request Packet (L)"
  end
  if value == "C" then
    return "Message Type: Logon Accepted Packet (C)"
  end
  if value == "J" then
    return "Message Type: Logon Rejected Packet (J)"
  end
  if value == "D" then
    return "Message Type: Spin Done Packet (D)"
  end
  if value == "H" then
    return "Message Type: Server Heartbeat Packet (H)"
  end
  if value == "R" then
    return "Message Type: Client Heartbeat Packet (R)"
  end
  if value == "T" then
    return "Message Type: Seconds Packet (T)"
  end
  if value == "M" then
    return "Message Type: Milliseconds Packet (M)"
  end
  if value == "L" then
    return "Message Type: Logon Message (L)"
  end
  if value == "C" then
    return "Message Type: Logon Accepted Message (C)"
  end
  if value == "J" then
    return "Message Type: Logon Rejected Message (J)"
  end
  if value == "s" then
    return "Message Type: Expanded Spin Message (s)"
  end
  if value == "D" then
    return "Message Type: Spin Done Message (D)"
  end
  if value == "H" then
    return "Message Type: Server Heartbeat Message (H)"
  end
  if value == "R" then
    return "Message Type: Client Heartbeat Message (R)"
  end
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "J" then
    return "Message Type: Milliseconds Message (J)"
  end
  if value == "E" then
    return "Message Type: Expanded Bid Update Message (E)"
  end
  if value == "B" then
    return "Message Type: Long Bid Update Message (B)"
  end
  if value == "b" then
    return "Message Type: Short Bid Update Message (b)"
  end
  if value == "e" then
    return "Message Type: Expanded Ask Update Message (e)"
  end
  if value == "A" then
    return "Message Type: Long Ask Update Message (A)"
  end
  if value == "a" then
    return "Message Type: Short Ask Update Message (a)"
  end
  if value == "F" then
    return "Message Type: Expanded Two Sided Update Message (F)"
  end
  if value == "U" then
    return "Message Type: Long Two Sided Update Message (U)"
  end
  if value == "u" then
    return "Message Type: Short Two Sided Update Message (u)"
  end
  if value == "f" then
    return "Message Type: Expanded Trade Message (f)"
  end
  if value == "V" then
    return "Message Type: Long Trade Message (V)"
  end
  if value == "v" then
    return "Message Type: Short Trade Message (v)"
  end
  if value == "t" then
    return "Message Type: Trading Status Message (t)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_byxequities_top_asciipitch_v1_3_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Milliseconds
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds = {}

-- Size: Milliseconds
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.size = 3

-- Display: Milliseconds
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.display = function(value)
  return "Milliseconds: "..value
end

-- Dissect: Milliseconds
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.milliseconds, range, value, display)

  return offset + length, value
end

-- Password
cboe_byxequities_top_asciipitch_v1_3_2.password = {}

-- Size: Password
cboe_byxequities_top_asciipitch_v1_3_2.password.size = 10

-- Display: Password
cboe_byxequities_top_asciipitch_v1_3_2.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_byxequities_top_asciipitch_v1_3_2.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.password, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason = {}

-- Size: Reject Reason
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.size = 1

-- Display: Reject Reason
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_byxequities_top_asciipitch_v1_3_2.reserved_1 = {}

-- Size: Reserved 1
cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.size = 1

-- Display: Reserved 1
cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_byxequities_top_asciipitch_v1_3_2.reserved_2 = {}

-- Size: Reserved 2
cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.size = 1

-- Display: Reserved 2
cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Seconds
cboe_byxequities_top_asciipitch_v1_3_2.seconds = {}

-- Size: Seconds
cboe_byxequities_top_asciipitch_v1_3_2.seconds.size = 5

-- Display: Seconds
cboe_byxequities_top_asciipitch_v1_3_2.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
cboe_byxequities_top_asciipitch_v1_3_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.seconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Spin Flag
cboe_byxequities_top_asciipitch_v1_3_2.spin_flag = {}

-- Size: Spin Flag
cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.size = 1

-- Display: Spin Flag
cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.display = function(value)
  return "Spin Flag: "..value
end

-- Dissect: Spin Flag
cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.spin_flag, range, value, display)

  return offset + length, value
end

-- Symbol Expanded
cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded = {}

-- Size: Symbol Expanded
cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size = 8

-- Display: Symbol Expanded
cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.display = function(value)
  return "Symbol Expanded: "..value
end

-- Dissect: Symbol Expanded
cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.symbol_expanded, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_byxequities_top_asciipitch_v1_3_2.symbol_long = {}

-- Size: Symbol Long
cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.size = 6

-- Display: Symbol Long
cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_byxequities_top_asciipitch_v1_3_2.symbol_short = {}

-- Size: Symbol Short
cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.size = 4

-- Display: Symbol Short
cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_byxequities_top_asciipitch_v1_3_2.timestamp = {}

-- Size: Timestamp
cboe_byxequities_top_asciipitch_v1_3_2.timestamp.size = 8

-- Display: Timestamp
cboe_byxequities_top_asciipitch_v1_3_2.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_byxequities_top_asciipitch_v1_3_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_byxequities_top_asciipitch_v1_3_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Top Lf
cboe_byxequities_top_asciipitch_v1_3_2.top_lf = {}

-- Size: Top Lf
cboe_byxequities_top_asciipitch_v1_3_2.top_lf.size = 1

-- Display: Top Lf
cboe_byxequities_top_asciipitch_v1_3_2.top_lf.display = function(value)
  if value == 10 then
    return "Top Lf: Line Feed"
  end

  return "Top Lf: Unknown("..value..")"
end

-- Dissect: Top Lf
cboe_byxequities_top_asciipitch_v1_3_2.top_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.top_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_byxequities_top_asciipitch_v1_3_2.top_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.top_lf, range, value, display)

  return offset + length, value
end

-- Username
cboe_byxequities_top_asciipitch_v1_3_2.username = {}

-- Size: Username
cboe_byxequities_top_asciipitch_v1_3_2.username.size = 6

-- Display: Username
cboe_byxequities_top_asciipitch_v1_3_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_byxequities_top_asciipitch_v1_3_2.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_top_asciipitch_v1_3_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_top_asciipitch_v1_3_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe ByxEquities Top AsciiPitch 1.3.2
-----------------------------------------------------------------------

-- Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message = {}

-- Size: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.halt_status.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.size

-- Display: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Expanded: Alpha
  index, symbol_expanded = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_byxequities_top_asciipitch_v1_3_2.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message = {}

-- Size: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.size

-- Display: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Last Price Short: Price
  index, last_price_short = cboe_byxequities_top_asciipitch_v1_3_2.last_price_short.dissect(buffer, index, packet, parent)

  -- Last Quantity Short: Numeric
  index, last_quantity_short = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_short.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Short: Numeric
  index, cumulative_volume_short = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message = {}

-- Size: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.size

-- Display: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message = {}

-- Size: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.size

-- Display: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Expanded: Alpha
  index, symbol_expanded = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect(buffer, index, packet, parent)

  -- Last Price Long: Price
  index, last_price_long = cboe_byxequities_top_asciipitch_v1_3_2.last_price_long.dissect(buffer, index, packet, parent)

  -- Last Quantity Long: Numeric
  index, last_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.last_quantity_long.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Trade Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_trade_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message = {}

-- Size: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.size

-- Display: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message = {}

-- Size: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size

-- Display: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message = {}

-- Size: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size

-- Display: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Expanded: Alpha
  index, symbol_expanded = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Two Sided Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_two_sided_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message = {}

-- Size: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.size

-- Display: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Price
  index, ask_price_short = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Numeric
  index, ask_quantity_short = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message = {}

-- Size: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size

-- Display: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message = {}

-- Size: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size

-- Display: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Expanded: Alpha
  index, symbol_expanded = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Ask Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_ask_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message = {}

-- Size: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.size

-- Display: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Short: Alpha
  index, symbol_short = cboe_byxequities_top_asciipitch_v1_3_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Price
  index, bid_price_short = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Numeric
  index, bid_quantity_short = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.short_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message = {}

-- Size: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size

-- Display: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_byxequities_top_asciipitch_v1_3_2.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.long_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message = {}

-- Size: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size

-- Display: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Expanded: Alpha
  index, symbol_expanded = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Bid Update Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_bid_update_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message = {}

-- Size: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.size

-- Display: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Milliseconds: Numeric
  index, milliseconds = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.milliseconds_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
cboe_byxequities_top_asciipitch_v1_3_2.seconds_message = {}

-- Size: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.seconds.size

-- Display: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = cboe_byxequities_top_asciipitch_v1_3_2.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.seconds_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message = {}

-- Size: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.timestamp.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.halt_status.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.size

-- Display: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_byxequities_top_asciipitch_v1_3_2.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Expanded: Alpha
  index, symbol_expanded = cboe_byxequities_top_asciipitch_v1_3_2.symbol_expanded.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Price
  index, bid_price_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Numeric
  index, bid_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Price
  index, ask_price_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Numeric
  index, ask_quantity_long = cboe_byxequities_top_asciipitch_v1_3_2.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price: Price
  index, last_trade_price = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_byxequities_top_asciipitch_v1_3_2.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Long: Numeric
  index, cumulative_volume_long = cboe_byxequities_top_asciipitch_v1_3_2.cumulative_volume_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_byxequities_top_asciipitch_v1_3_2.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = cboe_byxequities_top_asciipitch_v1_3_2.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_byxequities_top_asciipitch_v1_3_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_byxequities_top_asciipitch_v1_3_2.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Spin Message
cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.expanded_spin_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message = {}

-- Size: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.size

-- Display: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason: Alpha
  index, reject_reason = cboe_byxequities_top_asciipitch_v1_3_2.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Rejected Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_rejected_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_message = {}

-- Size: Logon Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_message.size =
  cboe_byxequities_top_asciipitch_v1_3_2.username.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.password.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.size

-- Display: Logon Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alphanumeric
  index, username = cboe_byxequities_top_asciipitch_v1_3_2.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_byxequities_top_asciipitch_v1_3_2.password.dissect(buffer, index, packet, parent)

  -- Spin Flag: Boolean
  index, spin_flag = cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
cboe_byxequities_top_asciipitch_v1_3_2.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_message, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Milliseconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet = {}

-- Size: Milliseconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.size =
  cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.size

-- Display: Milliseconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Milliseconds: Numeric
  index, milliseconds = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.dissect = function(buffer, offset, packet, parent)
  if show.milliseconds_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.milliseconds_packet, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet = {}

-- Size: Seconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.size =
  cboe_byxequities_top_asciipitch_v1_3_2.seconds.size

-- Display: Seconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = cboe_byxequities_top_asciipitch_v1_3_2.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Packet
cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.dissect = function(buffer, offset, packet, parent)
  if show.seconds_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.seconds_packet, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logon Rejected Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet = {}

-- Size: Logon Rejected Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.size =
  cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.size

-- Display: Logon Rejected Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Rejected Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_byxequities_top_asciipitch_v1_3_2.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Rejected Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.logon_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_rejected_packet, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logon Request Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet = {}

-- Size: Logon Request Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.size =
  cboe_byxequities_top_asciipitch_v1_3_2.username.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.password.size + 
  cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.size

-- Display: Logon Request Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alphanumeric
  index, username = cboe_byxequities_top_asciipitch_v1_3_2.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_byxequities_top_asciipitch_v1_3_2.password.dissect(buffer, index, packet, parent)

  -- Spin Flag: Boolean
  index, spin_flag = cboe_byxequities_top_asciipitch_v1_3_2.spin_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Packet
cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.logon_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2.fields.logon_request_packet, buffer(offset, 0))
    local index = cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_byxequities_top_asciipitch_v1_3_2.payload = {}

-- Dissect: Payload
cboe_byxequities_top_asciipitch_v1_3_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Request Packet
  if message_type == "L" then
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Rejected Packet
  if message_type == "J" then
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Seconds Packet
  if message_type == "T" then
    return cboe_byxequities_top_asciipitch_v1_3_2.seconds_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Milliseconds Packet
  if message_type == "M" then
    return cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if message_type == "L" then
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Accepted Message
  if message_type == "C" then
    return offset
  end
  -- Dissect Logon Rejected Message
  if message_type == "J" then
    return cboe_byxequities_top_asciipitch_v1_3_2.logon_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Spin Message
  if message_type == "s" then
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Done Message
  if message_type == "D" then
    return offset
  end
  -- Dissect Server Heartbeat Message
  if message_type == "H" then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if message_type == "R" then
    return offset
  end
  -- Dissect Seconds Message
  if message_type == "T" then
    return cboe_byxequities_top_asciipitch_v1_3_2.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Milliseconds Message
  if message_type == "J" then
    return cboe_byxequities_top_asciipitch_v1_3_2.milliseconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Bid Update Message
  if message_type == "E" then
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Bid Update Message
  if message_type == "B" then
    return cboe_byxequities_top_asciipitch_v1_3_2.long_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Bid Update Message
  if message_type == "b" then
    return cboe_byxequities_top_asciipitch_v1_3_2.short_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Ask Update Message
  if message_type == "e" then
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Ask Update Message
  if message_type == "A" then
    return cboe_byxequities_top_asciipitch_v1_3_2.long_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Ask Update Message
  if message_type == "a" then
    return cboe_byxequities_top_asciipitch_v1_3_2.short_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Two Sided Update Message
  if message_type == "F" then
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Two Sided Update Message
  if message_type == "U" then
    return cboe_byxequities_top_asciipitch_v1_3_2.long_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Two Sided Update Message
  if message_type == "u" then
    return cboe_byxequities_top_asciipitch_v1_3_2.short_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Trade Message
  if message_type == "f" then
    return cboe_byxequities_top_asciipitch_v1_3_2.expanded_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if message_type == "V" then
    return cboe_byxequities_top_asciipitch_v1_3_2.long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if message_type == "v" then
    return cboe_byxequities_top_asciipitch_v1_3_2.short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == "t" then
    return cboe_byxequities_top_asciipitch_v1_3_2.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_byxequities_top_asciipitch_v1_3_2.packet = {}

-- Verify required size of Tcp packet
cboe_byxequities_top_asciipitch_v1_3_2.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_byxequities_top_asciipitch_v1_3_2.message_type.size
end

-- Dissect Packet
cboe_byxequities_top_asciipitch_v1_3_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Message Type: 1 Byte Ascii String Enum with 30 values
    index, message_type = cboe_byxequities_top_asciipitch_v1_3_2.message_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 26 branches
    index = cboe_byxequities_top_asciipitch_v1_3_2.payload.dissect(buffer, index, packet, parent, message_type)

    -- Top Lf: 1 Byte Fixed Width Integer Static
    index, top_lf = cboe_byxequities_top_asciipitch_v1_3_2.top_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_byxequities_top_asciipitch_v1_3_2.init()
end

-- Dissector for Cboe ByxEquities Top AsciiPitch 1.3.2
function omi_cboe_byxequities_top_asciipitch_v1_3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_byxequities_top_asciipitch_v1_3_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_byxequities_top_asciipitch_v1_3_2, buffer(), omi_cboe_byxequities_top_asciipitch_v1_3_2.description, "("..buffer:len().." Bytes)")
  return cboe_byxequities_top_asciipitch_v1_3_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Top Lf Field
cboe_byxequities_top_asciipitch_v1_3_2.top_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(457, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe ByxEquities Top AsciiPitch 1.3.2 (Tcp)
local function omi_cboe_byxequities_top_asciipitch_v1_3_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_byxequities_top_asciipitch_v1_3_2.packet.requiredsize(buffer) then return false end

  -- Verify Top Lf
  if not cboe_byxequities_top_asciipitch_v1_3_2.top_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_byxequities_top_asciipitch_v1_3_2
  omi_cboe_byxequities_top_asciipitch_v1_3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe ByxEquities Top AsciiPitch 1.3.2
omi_cboe_byxequities_top_asciipitch_v1_3_2:register_heuristic("tcp", omi_cboe_byxequities_top_asciipitch_v1_3_2_tcp_heuristic)

-- Register Cboe ByxEquities Top AsciiPitch 1.3.2 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_byxequities_top_asciipitch_v1_3_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.2
--   Date: Wednesday, July 14, 2021
--   Specification: Cboe_US_Equities_TOP_Specification.pdf
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
