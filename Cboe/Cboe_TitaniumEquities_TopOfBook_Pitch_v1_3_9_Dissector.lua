-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumEquities TopOfBook Pitch 1.3.9 Protocol
local omi_cboe_titaniumequities_topofbook_pitch_v1_3_9 = Proto("Cboe.TitaniumEquities.TopOfBook.Pitch.v1.3.9.Lua", "Cboe TitaniumEquities TopOfBook Pitch 1.3.9")

-- Protocol table
local cboe_titaniumequities_topofbook_pitch_v1_3_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumEquities TopOfBook Pitch 1.3.9 Fields
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_price_price_10 = ProtoField.new("Ask Price Price 10", "cboe.titaniumequities.topofbook.pitch.v1.3.9.askpriceprice10", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_price_price_14 = ProtoField.new("Ask Price Price 14", "cboe.titaniumequities.topofbook.pitch.v1.3.9.askpriceprice14", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_price_price_5 = ProtoField.new("Ask Price Price 5", "cboe.titaniumequities.topofbook.pitch.v1.3.9.askpriceprice5", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_quantity_numeric_5 = ProtoField.new("Ask Quantity Numeric 5", "cboe.titaniumequities.topofbook.pitch.v1.3.9.askquantitynumeric5", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_quantity_numeric_6 = ProtoField.new("Ask Quantity Numeric 6", "cboe.titaniumequities.topofbook.pitch.v1.3.9.askquantitynumeric6", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_price_price_10 = ProtoField.new("Bid Price Price 10", "cboe.titaniumequities.topofbook.pitch.v1.3.9.bidpriceprice10", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_price_price_14 = ProtoField.new("Bid Price Price 14", "cboe.titaniumequities.topofbook.pitch.v1.3.9.bidpriceprice14", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_price_price_5 = ProtoField.new("Bid Price Price 5", "cboe.titaniumequities.topofbook.pitch.v1.3.9.bidpriceprice5", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_quantity_numeric_5 = ProtoField.new("Bid Quantity Numeric 5", "cboe.titaniumequities.topofbook.pitch.v1.3.9.bidquantitynumeric5", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_quantity_numeric_6 = ProtoField.new("Bid Quantity Numeric 6", "cboe.titaniumequities.topofbook.pitch.v1.3.9.bidquantitynumeric6", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.count = ProtoField.new("Count", "cboe.titaniumequities.topofbook.pitch.v1.3.9.count", ftypes.UINT8)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.cumulative_volume_numeric_7 = ProtoField.new("Cumulative Volume Numeric 7", "cboe.titaniumequities.topofbook.pitch.v1.3.9.cumulativevolumenumeric7", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.cumulative_volume_numeric_9 = ProtoField.new("Cumulative Volume Numeric 9", "cboe.titaniumequities.topofbook.pitch.v1.3.9.cumulativevolumenumeric9", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.halt_status = ProtoField.new("Halt Status", "cboe.titaniumequities.topofbook.pitch.v1.3.9.haltstatus", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_price_price_10 = ProtoField.new("Last Price Price 10", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lastpriceprice10", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_price_price_14 = ProtoField.new("Last Price Price 14", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lastpriceprice14", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_price_price_5 = ProtoField.new("Last Price Price 5", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lastpriceprice5", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_quantity_numeric_5 = ProtoField.new("Last Quantity Numeric 5", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lastquantitynumeric5", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_quantity_numeric_6 = ProtoField.new("Last Quantity Numeric 6", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lastquantitynumeric6", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_price_price_10 = ProtoField.new("Last Trade Price Price 10", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lasttradepriceprice10", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_price_price_14 = ProtoField.new("Last Trade Price Price 14", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lasttradepriceprice14", ftypes.DOUBLE)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_size = ProtoField.new("Last Trade Size", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lasttradesize", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_time = ProtoField.new("Last Trade Time", "cboe.titaniumequities.topofbook.pitch.v1.3.9.lasttradetime", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.length = ProtoField.new("Length", "cboe.titaniumequities.topofbook.pitch.v1.3.9.length", ftypes.UINT16)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message = ProtoField.new("Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.message", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumequities.topofbook.pitch.v1.3.9.messageheader", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumequities.topofbook.pitch.v1.3.9.messagelength", ftypes.UINT8)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumequities.topofbook.pitch.v1.3.9.messagetype", ftypes.UINT8)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.milliseconds = ProtoField.new("Milliseconds", "cboe.titaniumequities.topofbook.pitch.v1.3.9.milliseconds", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.packet = ProtoField.new("Packet", "cboe.titaniumequities.topofbook.pitch.v1.3.9.packet", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumequities.topofbook.pitch.v1.3.9.packetheader", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.password = ProtoField.new("Password", "cboe.titaniumequities.topofbook.pitch.v1.3.9.password", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reg_sho_action_alpha_1 = ProtoField.new("Reg Sho Action Alpha 1", "cboe.titaniumequities.topofbook.pitch.v1.3.9.regshoactionalpha1", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reg_sho_action_alphanumeric_1 = ProtoField.new("Reg Sho Action Alphanumeric 1", "cboe.titaniumequities.topofbook.pitch.v1.3.9.regshoactionalphanumeric1", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reject_reason = ProtoField.new("Reject Reason", "cboe.titaniumequities.topofbook.pitch.v1.3.9.rejectreason", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titaniumequities.topofbook.pitch.v1.3.9.reserved1", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titaniumequities.topofbook.pitch.v1.3.9.reserved2", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.seconds = ProtoField.new("Seconds", "cboe.titaniumequities.topofbook.pitch.v1.3.9.seconds", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumequities.topofbook.pitch.v1.3.9.sequence", ftypes.UINT32)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.spin_flag = ProtoField.new("Spin Flag", "cboe.titaniumequities.topofbook.pitch.v1.3.9.spinflag", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.symbol_alpha_4 = ProtoField.new("Symbol Alpha 4", "cboe.titaniumequities.topofbook.pitch.v1.3.9.symbolalpha4", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.symbol_alpha_6 = ProtoField.new("Symbol Alpha 6", "cboe.titaniumequities.topofbook.pitch.v1.3.9.symbolalpha6", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.symbol_alpha_8 = ProtoField.new("Symbol Alpha 8", "cboe.titaniumequities.topofbook.pitch.v1.3.9.symbolalpha8", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumequities.topofbook.pitch.v1.3.9.timestamp", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.unit = ProtoField.new("Unit", "cboe.titaniumequities.topofbook.pitch.v1.3.9.unit", ftypes.UINT8)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.username = ProtoField.new("Username", "cboe.titaniumequities.topofbook.pitch.v1.3.9.username", ftypes.STRING)

-- Cboe TitaniumEquities Pitch TopOfBook 1.3.9 Application Messages
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_ask_update_message = ProtoField.new("Expanded Ask Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.expandedaskupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_bid_update_message = ProtoField.new("Expanded Bid Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.expandedbidupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_spin_message = ProtoField.new("Expanded Spin Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.expandedspinmessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_trade_message = ProtoField.new("Expanded Trade Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.expandedtrademessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_two_sided_update_message = ProtoField.new("Expanded Two Sided Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.expandedtwosidedupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_ask_update_message = ProtoField.new("Extended Ask Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.extendedaskupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_bid_update_message = ProtoField.new("Extended Bid Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.extendedbidupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_spin_message = ProtoField.new("Extended Spin Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.extendedspinmessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_trade_message = ProtoField.new("Extended Trade Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.extendedtrademessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_two_sided_update_message = ProtoField.new("Extended Two Sided Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.extendedtwosidedupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.logon_message = ProtoField.new("Logon Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.logonmessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.logon_rejected_message = ProtoField.new("Logon Rejected Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.logonrejectedmessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_ask_update_message = ProtoField.new("Long Ask Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.longaskupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_bid_update_message = ProtoField.new("Long Bid Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.longbidupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_trade_message = ProtoField.new("Long Trade Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.longtrademessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_two_sided_update_message = ProtoField.new("Long Two Sided Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.longtwosidedupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.milliseconds_message = ProtoField.new("Milliseconds Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.millisecondsmessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.seconds_message = ProtoField.new("Seconds Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.secondsmessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_ask_update_message = ProtoField.new("Short Ask Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.shortaskupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_bid_update_message = ProtoField.new("Short Bid Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.shortbidupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_trade_message = ProtoField.new("Short Trade Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.shorttrademessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_two_sided_update_message = ProtoField.new("Short Two Sided Update Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.shorttwosidedupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titaniumequities.topofbook.pitch.v1.3.9.tradingstatusmessage", ftypes.STRING)

-- Cboe TitaniumEquities TopOfBook Pitch 1.3.9 generated fields
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumequities.topofbook.pitch.v1.3.9.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumEquities TopOfBook Pitch 1.3.9 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe TitaniumEquities TopOfBook Pitch 1.3.9 Show Options
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message then
    show.message = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_packet then
    show.packet = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.prefs.show_message_index
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
-- Cboe TitaniumEquities TopOfBook Pitch 1.3.9 Fields
-----------------------------------------------------------------------

-- Ask Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10 = {}

-- Size: Ask Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size = 10

-- Display: Ask Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.display = function(value)
  return "Ask Price Price 10: "..value
end

-- Dissect: Ask Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_price_price_10, range, value, display)

  return offset + length, value
end

-- Ask Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14 = {}

-- Size: Ask Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.size = 14

-- Display: Ask Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.display = function(value)
  return "Ask Price Price 14: "..value
end

-- Dissect: Ask Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_price_price_14, range, value, display)

  return offset + length, value
end

-- Ask Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5 = {}

-- Size: Ask Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.size = 5

-- Display: Ask Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.display = function(value)
  return "Ask Price Price 5: "..value
end

-- Dissect: Ask Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_price_price_5, range, value, display)

  return offset + length, value
end

-- Ask Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5 = {}

-- Size: Ask Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.size = 5

-- Display: Ask Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.display = function(value)
  return "Ask Quantity Numeric 5: "..value
end

-- Dissect: Ask Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_quantity_numeric_5, range, value, display)

  return offset + length, value
end

-- Ask Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6 = {}

-- Size: Ask Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size = 6

-- Display: Ask Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.display = function(value)
  return "Ask Quantity Numeric 6: "..value
end

-- Dissect: Ask Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.ask_quantity_numeric_6, range, value, display)

  return offset + length, value
end

-- Bid Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10 = {}

-- Size: Bid Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size = 10

-- Display: Bid Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.display = function(value)
  return "Bid Price Price 10: "..value
end

-- Dissect: Bid Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_price_price_10, range, value, display)

  return offset + length, value
end

-- Bid Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14 = {}

-- Size: Bid Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.size = 14

-- Display: Bid Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.display = function(value)
  return "Bid Price Price 14: "..value
end

-- Dissect: Bid Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_price_price_14, range, value, display)

  return offset + length, value
end

-- Bid Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5 = {}

-- Size: Bid Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.size = 5

-- Display: Bid Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.display = function(value)
  return "Bid Price Price 5: "..value
end

-- Dissect: Bid Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_price_price_5, range, value, display)

  return offset + length, value
end

-- Bid Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5 = {}

-- Size: Bid Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.size = 5

-- Display: Bid Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.display = function(value)
  return "Bid Quantity Numeric 5: "..value
end

-- Dissect: Bid Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_quantity_numeric_5, range, value, display)

  return offset + length, value
end

-- Bid Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6 = {}

-- Size: Bid Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size = 6

-- Display: Bid Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.display = function(value)
  return "Bid Quantity Numeric 6: "..value
end

-- Dissect: Bid Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.bid_quantity_numeric_6, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumequities_topofbook_pitch_v1_3_9.count = {}

-- Size: Count
cboe_titaniumequities_topofbook_pitch_v1_3_9.count.size = 1

-- Display: Count
cboe_titaniumequities_topofbook_pitch_v1_3_9.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumequities_topofbook_pitch_v1_3_9.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.count, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Numeric 7
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7 = {}

-- Size: Cumulative Volume Numeric 7
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.size = 7

-- Display: Cumulative Volume Numeric 7
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.display = function(value)
  return "Cumulative Volume Numeric 7: "..value
end

-- Dissect: Cumulative Volume Numeric 7
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.cumulative_volume_numeric_7, range, value, display)

  return offset + length, value
end

-- Cumulative Volume Numeric 9
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9 = {}

-- Size: Cumulative Volume Numeric 9
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size = 9

-- Display: Cumulative Volume Numeric 9
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.display = function(value)
  return "Cumulative Volume Numeric 9: "..value
end

-- Dissect: Cumulative Volume Numeric 9
cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.cumulative_volume_numeric_9, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status = {}

-- Size: Halt Status
cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.size = 1

-- Display: Halt Status
cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10 = {}

-- Size: Last Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.size = 10

-- Display: Last Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.display = function(value)
  return "Last Price Price 10: "..value
end

-- Dissect: Last Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_price_price_10, range, value, display)

  return offset + length, value
end

-- Last Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14 = {}

-- Size: Last Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.size = 14

-- Display: Last Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.display = function(value)
  return "Last Price Price 14: "..value
end

-- Dissect: Last Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_price_price_14, range, value, display)

  return offset + length, value
end

-- Last Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5 = {}

-- Size: Last Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.size = 5

-- Display: Last Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.display = function(value)
  return "Last Price Price 5: "..value
end

-- Dissect: Last Price Price 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_price_price_5, range, value, display)

  return offset + length, value
end

-- Last Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5 = {}

-- Size: Last Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.size = 5

-- Display: Last Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.display = function(value)
  return "Last Quantity Numeric 5: "..value
end

-- Dissect: Last Quantity Numeric 5
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_quantity_numeric_5, range, value, display)

  return offset + length, value
end

-- Last Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6 = {}

-- Size: Last Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.size = 6

-- Display: Last Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.display = function(value)
  return "Last Quantity Numeric 6: "..value
end

-- Dissect: Last Quantity Numeric 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_quantity_numeric_6, range, value, display)

  return offset + length, value
end

-- Last Trade Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10 = {}

-- Size: Last Trade Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.size = 10

-- Display: Last Trade Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.display = function(value)
  return "Last Trade Price Price 10: "..value
end

-- Dissect: Last Trade Price Price 10
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_price_price_10, range, value, display)

  return offset + length, value
end

-- Last Trade Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14 = {}

-- Size: Last Trade Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.size = 14

-- Display: Last Trade Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.display = function(value)
  return "Last Trade Price Price 14: "..value
end

-- Dissect: Last Trade Price Price 14
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_price_price_14, range, value, display)

  return offset + length, value
end

-- Last Trade Size
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size = {}

-- Size: Last Trade Size
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.size = 6

-- Display: Last Trade Size
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.display = function(value)
  return "Last Trade Size: "..value
end

-- Dissect: Last Trade Size
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_size, range, value, display)

  return offset + length, value
end

-- Last Trade Time
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time = {}

-- Size: Last Trade Time
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.size = 8

-- Display: Last Trade Time
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.display = function(value)
  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.length = {}

-- Size: Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.length.size = 2

-- Display: Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length = {}

-- Size: Message Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.size = 1

-- Display: Message Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type = {}

-- Size: Message Type
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.size = 1

-- Display: Message Type
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.display = function(value)
  if value == L then
    return "Message Type: Logon Message (L)"
  end
  if value == C then
    return "Message Type: Logon Accepted Message (C)"
  end
  if value == J then
    return "Message Type: Logon Rejected Message (J)"
  end
  if value == s then
    return "Message Type: Expanded Spin Message (s)"
  end
  if value == S then
    return "Message Type: Extended Spin Message (S)"
  end
  if value == D then
    return "Message Type: Spin Done Message (D)"
  end
  if value == H then
    return "Message Type: Server Heartbeat Message (H)"
  end
  if value == R then
    return "Message Type: Client Heartbeat Message (R)"
  end
  if value == T then
    return "Message Type: Seconds Message (T)"
  end
  if value == M then
    return "Message Type: Milliseconds Message (M)"
  end
  if value == E then
    return "Message Type: Expanded Bid Update Message (E)"
  end
  if value == B then
    return "Message Type: Long Bid Update Message (B)"
  end
  if value == b then
    return "Message Type: Short Bid Update Message (b)"
  end
  if value == N then
    return "Message Type: Extended Bid Update Message (N)"
  end
  if value == e then
    return "Message Type: Expanded Ask Update Message (e)"
  end
  if value == A then
    return "Message Type: Long Ask Update Message (A)"
  end
  if value == a then
    return "Message Type: Short Ask Update Message (a)"
  end
  if value == n then
    return "Message Type: Extended Ask Update Message (n)"
  end
  if value == F then
    return "Message Type: Expanded Two Sided Update Message (F)"
  end
  if value == U then
    return "Message Type: Long Two Sided Update Message (U)"
  end
  if value == u then
    return "Message Type: Short Two Sided Update Message (u)"
  end
  if value == d then
    return "Message Type: Extended Two Sided Update Message (d)"
  end
  if value == f then
    return "Message Type: Expanded Trade Message (f)"
  end
  if value == V then
    return "Message Type: Long Trade Message (V)"
  end
  if value == v then
    return "Message Type: Short Trade Message (v)"
  end
  if value == r then
    return "Message Type: Extended Trade Message (r)"
  end
  if value == t then
    return "Message Type: Trading Status Message (t)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Milliseconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds = {}

-- Size: Milliseconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.size = 3

-- Display: Milliseconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.display = function(value)
  return "Milliseconds: "..value
end

-- Dissect: Milliseconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.milliseconds, range, value, display)

  return offset + length, value
end

-- Password
cboe_titaniumequities_topofbook_pitch_v1_3_9.password = {}

-- Size: Password
cboe_titaniumequities_topofbook_pitch_v1_3_9.password.size = 10

-- Display: Password
cboe_titaniumequities_topofbook_pitch_v1_3_9.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titaniumequities_topofbook_pitch_v1_3_9.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.password, range, value, display)

  return offset + length, value
end

-- Reg Sho Action Alpha 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1 = {}

-- Size: Reg Sho Action Alpha 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.size = 1

-- Display: Reg Sho Action Alpha 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.display = function(value)
  return "Reg Sho Action Alpha 1: "..value
end

-- Dissect: Reg Sho Action Alpha 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reg_sho_action_alpha_1, range, value, display)

  return offset + length, value
end

-- Reg Sho Action Alphanumeric 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1 = {}

-- Size: Reg Sho Action Alphanumeric 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.size = 1

-- Display: Reg Sho Action Alphanumeric 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.display = function(value)
  return "Reg Sho Action Alphanumeric 1: "..value
end

-- Dissect: Reg Sho Action Alphanumeric 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reg_sho_action_alphanumeric_1, range, value, display)

  return offset + length, value
end

-- Reject Reason
cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason = {}

-- Size: Reject Reason
cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.size = 1

-- Display: Reject Reason
cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1 = {}

-- Size: Reserved 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.size = 1

-- Display: Reserved 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2 = {}

-- Size: Reserved 2
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.size = 1

-- Display: Reserved 2
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Seconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds = {}

-- Size: Seconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.size = 5

-- Display: Seconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence = {}

-- Size: Sequence
cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.size = 4

-- Display: Sequence
cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.sequence, range, value, display)

  return offset + length, value
end

-- Spin Flag
cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag = {}

-- Size: Spin Flag
cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.size = 1

-- Display: Spin Flag
cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.display = function(value)
  return "Spin Flag: "..value
end

-- Dissect: Spin Flag
cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.spin_flag, range, value, display)

  return offset + length, value
end

-- Symbol Alpha 4
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4 = {}

-- Size: Symbol Alpha 4
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.size = 4

-- Display: Symbol Alpha 4
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.display = function(value)
  return "Symbol Alpha 4: "..value
end

-- Dissect: Symbol Alpha 4
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.symbol_alpha_4, range, value, display)

  return offset + length, value
end

-- Symbol Alpha 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6 = {}

-- Size: Symbol Alpha 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.size = 6

-- Display: Symbol Alpha 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.display = function(value)
  return "Symbol Alpha 6: "..value
end

-- Dissect: Symbol Alpha 6
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.symbol_alpha_6, range, value, display)

  return offset + length, value
end

-- Symbol Alpha 8
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8 = {}

-- Size: Symbol Alpha 8
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size = 8

-- Display: Symbol Alpha 8
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.display = function(value)
  return "Symbol Alpha 8: "..value
end

-- Dissect: Symbol Alpha 8
cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.symbol_alpha_8, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp = {}

-- Size: Timestamp
cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.size = 8

-- Display: Timestamp
cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumequities_topofbook_pitch_v1_3_9.unit = {}

-- Size: Unit
cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.size = 1

-- Display: Unit
cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_titaniumequities_topofbook_pitch_v1_3_9.username = {}

-- Size: Username
cboe_titaniumequities_topofbook_pitch_v1_3_9.username.size = 6

-- Display: Username
cboe_titaniumequities_topofbook_pitch_v1_3_9.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titaniumequities_topofbook_pitch_v1_3_9.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_topofbook_pitch_v1_3_9.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumEquities TopOfBook Pitch 1.3.9
-----------------------------------------------------------------------

-- Trading Status Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message = {}

-- Size: Trading Status Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.size

-- Display: Trading Status Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action Alphanumeric 1: Alphanumeric
  index, reg_sho_action_alphanumeric_1 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message = {}

-- Size: Extended Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size

-- Display: Extended Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Last Price Price 14: Price
  index, last_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_14.dissect(buffer, index, packet, parent)

  -- Last Quantity Numeric 6: Numeric
  index, last_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Numeric 9: Numeric
  index, cumulative_volume_numeric_9 = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_trade_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message = {}

-- Size: Short Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.size

-- Display: Short Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 4: Alpha
  index, symbol_alpha_4 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.dissect(buffer, index, packet, parent)

  -- Last Price Price 5: Price
  index, last_price_price_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_5.dissect(buffer, index, packet, parent)

  -- Last Quantity Numeric 5: Numeric
  index, last_quantity_numeric_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_5.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Numeric 7: Numeric
  index, cumulative_volume_numeric_7 = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_trade_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message = {}

-- Size: Long Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size

-- Display: Long Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 6: Alpha
  index, symbol_alpha_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.dissect(buffer, index, packet, parent)

  -- Last Price Price 10: Price
  index, last_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.dissect(buffer, index, packet, parent)

  -- Last Quantity Numeric 6: Numeric
  index, last_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Numeric 9: Numeric
  index, cumulative_volume_numeric_9 = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_trade_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message = {}

-- Size: Expanded Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size

-- Display: Expanded Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Last Price Price 10: Price
  index, last_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_price_price_10.dissect(buffer, index, packet, parent)

  -- Last Quantity Numeric 6: Numeric
  index, last_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Numeric 9: Numeric
  index, cumulative_volume_numeric_9 = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Trade Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_trade_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message = {}

-- Size: Extended Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size

-- Display: Extended Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Bid Price Price 14: Price
  index, bid_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Ask Price Price 14: Price
  index, ask_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_two_sided_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message = {}

-- Size: Short Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.size

-- Display: Short Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 4: Alpha
  index, symbol_alpha_4 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.dissect(buffer, index, packet, parent)

  -- Bid Price Price 5: Price
  index, bid_price_price_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 5: Numeric
  index, bid_quantity_numeric_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.dissect(buffer, index, packet, parent)

  -- Ask Price Price 5: Price
  index, ask_price_price_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 5: Numeric
  index, ask_quantity_numeric_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_two_sided_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message = {}

-- Size: Long Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size

-- Display: Long Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 6: Alpha
  index, symbol_alpha_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.dissect(buffer, index, packet, parent)

  -- Bid Price Price 10: Price
  index, bid_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Ask Price Price 10: Price
  index, ask_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_two_sided_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message = {}

-- Size: Expanded Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size

-- Display: Expanded Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Bid Price Price 10: Price
  index, bid_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Ask Price Price 10: Price
  index, ask_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Two Sided Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_two_sided_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message = {}

-- Size: Extended Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size

-- Display: Extended Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Ask Price Price 14: Price
  index, ask_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_ask_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message = {}

-- Size: Short Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.size

-- Display: Short Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 4: Alpha
  index, symbol_alpha_4 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.dissect(buffer, index, packet, parent)

  -- Ask Price Price 5: Price
  index, ask_price_price_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_5.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 5: Numeric
  index, ask_quantity_numeric_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_ask_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message = {}

-- Size: Long Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size

-- Display: Long Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 6: Alpha
  index, symbol_alpha_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.dissect(buffer, index, packet, parent)

  -- Ask Price Price 10: Price
  index, ask_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_ask_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message = {}

-- Size: Expanded Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size

-- Display: Expanded Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Ask Price Price 10: Price
  index, ask_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Ask Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_ask_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message = {}

-- Size: Extended Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size

-- Display: Extended Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Bid Price Price 14: Price
  index, bid_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_bid_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message = {}

-- Size: Short Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.size

-- Display: Short Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 4: Alpha
  index, symbol_alpha_4 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_4.dissect(buffer, index, packet, parent)

  -- Bid Price Price 5: Price
  index, bid_price_price_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_5.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 5: Numeric
  index, bid_quantity_numeric_5 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.short_bid_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message = {}

-- Size: Long Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size

-- Display: Long Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 6: Alpha
  index, symbol_alpha_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_6.dissect(buffer, index, packet, parent)

  -- Bid Price Price 10: Price
  index, bid_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.long_bid_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message = {}

-- Size: Expanded Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size

-- Display: Expanded Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Bid Price Price 10: Price
  index, bid_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Bid Update Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_bid_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Milliseconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message = {}

-- Size: Milliseconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.size

-- Display: Milliseconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Milliseconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Milliseconds: Numeric
  index, milliseconds = cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Milliseconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.milliseconds_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message = {}

-- Size: Seconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.size

-- Display: Seconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.seconds_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message = {}

-- Size: Extended Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.size

-- Display: Extended Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Bid Price Price 14: Price
  index, bid_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_14.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Ask Price Price 14: Price
  index, ask_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_14.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Price 14: Price
  index, last_trade_price_price_14 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_14.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Numeric 9: Numeric
  index, cumulative_volume_numeric_9 = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action Alpha 1: Alpha
  index, reg_sho_action_alpha_1 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.extended_spin_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message = {}

-- Size: Expanded Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.size

-- Display: Expanded Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_titaniumequities_topofbook_pitch_v1_3_9.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alpha 8: Alpha
  index, symbol_alpha_8 = cboe_titaniumequities_topofbook_pitch_v1_3_9.symbol_alpha_8.dissect(buffer, index, packet, parent)

  -- Bid Price Price 10: Price
  index, bid_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_price_price_10.dissect(buffer, index, packet, parent)

  -- Bid Quantity Numeric 6: Numeric
  index, bid_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.bid_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Ask Price Price 10: Price
  index, ask_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_price_price_10.dissect(buffer, index, packet, parent)

  -- Ask Quantity Numeric 6: Numeric
  index, ask_quantity_numeric_6 = cboe_titaniumequities_topofbook_pitch_v1_3_9.ask_quantity_numeric_6.dissect(buffer, index, packet, parent)

  -- Last Trade Time: Timestamp
  index, last_trade_time = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_time.dissect(buffer, index, packet, parent)

  -- Last Trade Price Price 10: Price
  index, last_trade_price_price_10 = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_price_price_10.dissect(buffer, index, packet, parent)

  -- Last Trade Size: Numeric
  index, last_trade_size = cboe_titaniumequities_topofbook_pitch_v1_3_9.last_trade_size.dissect(buffer, index, packet, parent)

  -- Cumulative Volume Numeric 9: Numeric
  index, cumulative_volume_numeric_9 = cboe_titaniumequities_topofbook_pitch_v1_3_9.cumulative_volume_numeric_9.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_titaniumequities_topofbook_pitch_v1_3_9.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action Alpha 1: Alpha
  index, reg_sho_action_alpha_1 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reg_sho_action_alpha_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_titaniumequities_topofbook_pitch_v1_3_9.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Spin Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.expanded_spin_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Rejected Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message = {}

-- Size: Logon Rejected Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.size

-- Display: Logon Rejected Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Rejected Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason: Alpha
  index, reject_reason = cboe_titaniumequities_topofbook_pitch_v1_3_9.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Rejected Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.logon_rejected_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message = {}

-- Size: Logon Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.username.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.password.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.size

-- Display: Logon Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alphanumeric
  index, username = cboe_titaniumequities_topofbook_pitch_v1_3_9.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_titaniumequities_topofbook_pitch_v1_3_9.password.dissect(buffer, index, packet, parent)

  -- Spin Flag: Boolean
  index, spin_flag = cboe_titaniumequities_topofbook_pitch_v1_3_9.spin_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.logon_message, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumequities_topofbook_pitch_v1_3_9.payload = {}

-- Dissect: Payload
cboe_titaniumequities_topofbook_pitch_v1_3_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Message
  if message_type == L then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Accepted Message
  if message_type == C then
    return offset
  end
  -- Dissect Logon Rejected Message
  if message_type == J then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.logon_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Spin Message
  if message_type == s then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Spin Message
  if message_type == S then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Done Message
  if message_type == D then
    return offset
  end
  -- Dissect Server Heartbeat Message
  if message_type == H then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if message_type == R then
    return offset
  end
  -- Dissect Seconds Message
  if message_type == T then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Milliseconds Message
  if message_type == M then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.milliseconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Bid Update Message
  if message_type == E then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Bid Update Message
  if message_type == B then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Bid Update Message
  if message_type == b then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Bid Update Message
  if message_type == N then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Ask Update Message
  if message_type == e then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Ask Update Message
  if message_type == A then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Ask Update Message
  if message_type == a then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Ask Update Message
  if message_type == n then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Two Sided Update Message
  if message_type == F then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Two Sided Update Message
  if message_type == U then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Two Sided Update Message
  if message_type == u then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Two Sided Update Message
  if message_type == d then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_two_sided_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Trade Message
  if message_type == f then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.expanded_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if message_type == V then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if message_type == v then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Trade Message
  if message_type == r then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.extended_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == t then
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header = {}

-- Size: Message Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.size

-- Display: Message Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, message_type = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.message = {}

-- Display: Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumequities_topofbook_pitch_v1_3_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 27 branches
  index = cboe_titaniumequities_topofbook_pitch_v1_3_9.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumequities_topofbook_pitch_v1_3_9.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.message, buffer(offset, 0))
    local current = cboe_titaniumequities_topofbook_pitch_v1_3_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumequities_topofbook_pitch_v1_3_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header = {}

-- Size: Packet Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.size =
  cboe_titaniumequities_topofbook_pitch_v1_3_9.length.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.count.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.size + 
  cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.size

-- Display: Packet Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumequities_topofbook_pitch_v1_3_9.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumequities_topofbook_pitch_v1_3_9.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumequities_topofbook_pitch_v1_3_9.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumequities_topofbook_pitch_v1_3_9.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet = {}

-- Dissect Packet
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumequities_topofbook_pitch_v1_3_9.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumequities_topofbook_pitch_v1_3_9.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.init()
end

-- Dissector for Cboe TitaniumEquities TopOfBook Pitch 1.3.9
function omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumequities_topofbook_pitch_v1_3_9, buffer(), omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumequities_topofbook_pitch_v1_3_9.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumequities_topofbook_pitch_v1_3_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titaniumequities_topofbook_pitch_v1_3_9.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe TitaniumEquities TopOfBook Pitch 1.3.9
local function omi_cboe_titaniumequities_topofbook_pitch_v1_3_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumequities_topofbook_pitch_v1_3_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumequities_topofbook_pitch_v1_3_9
  omi_cboe_titaniumequities_topofbook_pitch_v1_3_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumEquities TopOfBook Pitch 1.3.9
omi_cboe_titaniumequities_topofbook_pitch_v1_3_9:register_heuristic("udp", omi_cboe_titaniumequities_topofbook_pitch_v1_3_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.9
--   Date: Wednesday, January 15, 2025
--   Specification: Cboe_US_Equities_Summary_Depth_Feed_Specification.pdf
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
