-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Currenex Forex Esp Cbp 9.0 Protocol
local currenex_forex_esp_cbp_v9_0 = Proto("Currenex.Forex.Esp.Cbp.v9.0.Lua", "Currenex Forex Esp Cbp 9.0")

-- Component Tables
local show = {}
local format = {}
local currenex_forex_esp_cbp_v9_0_display = {}
local currenex_forex_esp_cbp_v9_0_dissect = {}
local currenex_forex_esp_cbp_v9_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Currenex Forex Esp Cbp 9.0 Fields
currenex_forex_esp_cbp_v9_0.fields.attributed = ProtoField.new("Attributed", "currenex.forex.esp.cbp.v9.0.attributed", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.heartbeat = ProtoField.new("Heartbeat", "currenex.forex.esp.cbp.v9.0.heartbeat", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.instrument_id = ProtoField.new("Instrument Id", "currenex.forex.esp.cbp.v9.0.instrumentid", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.instrument_index = ProtoField.new("Instrument Index", "currenex.forex.esp.cbp.v9.0.instrumentindex", ftypes.INT16)
currenex_forex_esp_cbp_v9_0.fields.instrument_info = ProtoField.new("Instrument Info", "currenex.forex.esp.cbp.v9.0.instrumentinfo", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.instrument_type = ProtoField.new("Instrument Type", "currenex.forex.esp.cbp.v9.0.instrumenttype", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.itch_etx = ProtoField.new("Itch Etx", "currenex.forex.esp.cbp.v9.0.itchetx", ftypes.INT8)
currenex_forex_esp_cbp_v9_0.fields.itch_soh = ProtoField.new("Itch Soh", "currenex.forex.esp.cbp.v9.0.itchsoh", ftypes.INT8)
currenex_forex_esp_cbp_v9_0.fields.logon = ProtoField.new("Logon", "currenex.forex.esp.cbp.v9.0.logon", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.logout = ProtoField.new("Logout", "currenex.forex.esp.cbp.v9.0.logout", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.max_amount = ProtoField.new("Max Amount", "currenex.forex.esp.cbp.v9.0.maxamount", ftypes.INT64)
currenex_forex_esp_cbp_v9_0.fields.message_body = ProtoField.new("Message Body", "currenex.forex.esp.cbp.v9.0.messagebody", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.message_header = ProtoField.new("Message Header", "currenex.forex.esp.cbp.v9.0.messageheader", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.message_type = ProtoField.new("Message Type", "currenex.forex.esp.cbp.v9.0.messagetype", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.min_amount = ProtoField.new("Min Amount", "currenex.forex.esp.cbp.v9.0.minamount", ftypes.INT64)
currenex_forex_esp_cbp_v9_0.fields.packet = ProtoField.new("Packet", "currenex.forex.esp.cbp.v9.0.packet", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.password = ProtoField.new("Password", "currenex.forex.esp.cbp.v9.0.password", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.price = ProtoField.new("Price", "currenex.forex.esp.cbp.v9.0.price", ftypes.INT32)
currenex_forex_esp_cbp_v9_0.fields.price_cancel_message = ProtoField.new("Price Cancel Message", "currenex.forex.esp.cbp.v9.0.pricecancelmessage", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.price_id = ProtoField.new("Price Id", "currenex.forex.esp.cbp.v9.0.priceid", ftypes.INT8)
currenex_forex_esp_cbp_v9_0.fields.price_message = ProtoField.new("Price Message", "currenex.forex.esp.cbp.v9.0.pricemessage", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.price_provider = ProtoField.new("Price Provider", "currenex.forex.esp.cbp.v9.0.priceprovider", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.rate = ProtoField.new("Rate", "currenex.forex.esp.cbp.v9.0.rate", ftypes.INT32)
currenex_forex_esp_cbp_v9_0.fields.reason = ProtoField.new("Reason", "currenex.forex.esp.cbp.v9.0.reason", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.reject_message = ProtoField.new("Reject Message", "currenex.forex.esp.cbp.v9.0.rejectmessage", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.reject_msg_type = ProtoField.new("Reject Msg Type", "currenex.forex.esp.cbp.v9.0.rejectmsgtype", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.reject_reason = ProtoField.new("Reject Reason", "currenex.forex.esp.cbp.v9.0.rejectreason", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.reply_type = ProtoField.new("Reply Type", "currenex.forex.esp.cbp.v9.0.replytype", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.sequence_number = ProtoField.new("Sequence Number", "currenex.forex.esp.cbp.v9.0.sequencenumber", ftypes.UINT32)
currenex_forex_esp_cbp_v9_0.fields.session_id = ProtoField.new("Session Id", "currenex.forex.esp.cbp.v9.0.sessionid", ftypes.INT32)
currenex_forex_esp_cbp_v9_0.fields.settlement_date = ProtoField.new("Settlement Date", "currenex.forex.esp.cbp.v9.0.settlementdate", ftypes.INT64)
currenex_forex_esp_cbp_v9_0.fields.side = ProtoField.new("Side", "currenex.forex.esp.cbp.v9.0.side", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.subscribe_to_ticker = ProtoField.new("Subscribe To Ticker", "currenex.forex.esp.cbp.v9.0.subscribetoticker", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.subscription_reply = ProtoField.new("Subscription Reply", "currenex.forex.esp.cbp.v9.0.subscriptionreply", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.subscription_request = ProtoField.new("Subscription Request", "currenex.forex.esp.cbp.v9.0.subscriptionrequest", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.subscription_type = ProtoField.new("Subscription Type", "currenex.forex.esp.cbp.v9.0.subscriptiontype", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.ticker_type = ProtoField.new("Ticker Type", "currenex.forex.esp.cbp.v9.0.tickertype", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.trade_ticker_message = ProtoField.new("Trade Ticker Message", "currenex.forex.esp.cbp.v9.0.tradetickermessage", ftypes.STRING)
currenex_forex_esp_cbp_v9_0.fields.transact_time = ProtoField.new("Transact Time", "currenex.forex.esp.cbp.v9.0.transacttime", ftypes.INT64)
currenex_forex_esp_cbp_v9_0.fields.user_id = ProtoField.new("User Id", "currenex.forex.esp.cbp.v9.0.userid", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Currenex Forex Esp Cbp 9.0 Element Dissection Options
show.heartbeat = true
show.instrument_info = true
show.logon = true
show.logout = true
show.message_header = true
show.packet = true
show.price_cancel_message = true
show.price_message = true
show.reject_message = true
show.subscription_reply = true
show.subscription_request = true
show.trade_ticker_message = true
show.message_body = false

-- Register Currenex Forex Esp Cbp 9.0 Show Options
currenex_forex_esp_cbp_v9_0.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_instrument_info = Pref.bool("Show Instrument Info", show.instrument_info, "Parse and add Instrument Info to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_logon = Pref.bool("Show Logon", show.logon, "Parse and add Logon to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_logout = Pref.bool("Show Logout", show.logout, "Parse and add Logout to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_price_cancel_message = Pref.bool("Show Price Cancel Message", show.price_cancel_message, "Parse and add Price Cancel Message to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_price_message = Pref.bool("Show Price Message", show.price_message, "Parse and add Price Message to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_subscription_reply = Pref.bool("Show Subscription Reply", show.subscription_reply, "Parse and add Subscription Reply to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_subscription_request = Pref.bool("Show Subscription Request", show.subscription_request, "Parse and add Subscription Request to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_trade_ticker_message = Pref.bool("Show Trade Ticker Message", show.trade_ticker_message, "Parse and add Trade Ticker Message to protocol tree")
currenex_forex_esp_cbp_v9_0.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function currenex_forex_esp_cbp_v9_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat ~= currenex_forex_esp_cbp_v9_0.prefs.show_heartbeat then
    show.heartbeat = currenex_forex_esp_cbp_v9_0.prefs.show_heartbeat
    changed = true
  end
  if show.instrument_info ~= currenex_forex_esp_cbp_v9_0.prefs.show_instrument_info then
    show.instrument_info = currenex_forex_esp_cbp_v9_0.prefs.show_instrument_info
    changed = true
  end
  if show.logon ~= currenex_forex_esp_cbp_v9_0.prefs.show_logon then
    show.logon = currenex_forex_esp_cbp_v9_0.prefs.show_logon
    changed = true
  end
  if show.logout ~= currenex_forex_esp_cbp_v9_0.prefs.show_logout then
    show.logout = currenex_forex_esp_cbp_v9_0.prefs.show_logout
    changed = true
  end
  if show.message_header ~= currenex_forex_esp_cbp_v9_0.prefs.show_message_header then
    show.message_header = currenex_forex_esp_cbp_v9_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= currenex_forex_esp_cbp_v9_0.prefs.show_packet then
    show.packet = currenex_forex_esp_cbp_v9_0.prefs.show_packet
    changed = true
  end
  if show.price_cancel_message ~= currenex_forex_esp_cbp_v9_0.prefs.show_price_cancel_message then
    show.price_cancel_message = currenex_forex_esp_cbp_v9_0.prefs.show_price_cancel_message
    changed = true
  end
  if show.price_message ~= currenex_forex_esp_cbp_v9_0.prefs.show_price_message then
    show.price_message = currenex_forex_esp_cbp_v9_0.prefs.show_price_message
    changed = true
  end
  if show.reject_message ~= currenex_forex_esp_cbp_v9_0.prefs.show_reject_message then
    show.reject_message = currenex_forex_esp_cbp_v9_0.prefs.show_reject_message
    changed = true
  end
  if show.subscription_reply ~= currenex_forex_esp_cbp_v9_0.prefs.show_subscription_reply then
    show.subscription_reply = currenex_forex_esp_cbp_v9_0.prefs.show_subscription_reply
    changed = true
  end
  if show.subscription_request ~= currenex_forex_esp_cbp_v9_0.prefs.show_subscription_request then
    show.subscription_request = currenex_forex_esp_cbp_v9_0.prefs.show_subscription_request
    changed = true
  end
  if show.trade_ticker_message ~= currenex_forex_esp_cbp_v9_0.prefs.show_trade_ticker_message then
    show.trade_ticker_message = currenex_forex_esp_cbp_v9_0.prefs.show_trade_ticker_message
    changed = true
  end
  if show.message_body ~= currenex_forex_esp_cbp_v9_0.prefs.show_message_body then
    show.message_body = currenex_forex_esp_cbp_v9_0.prefs.show_message_body
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
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
-- Dissect Currenex Forex Esp Cbp 9.0
-----------------------------------------------------------------------

-- Size: Itch Etx
currenex_forex_esp_cbp_v9_0_size_of.itch_etx = 1

-- Display: Itch Etx
currenex_forex_esp_cbp_v9_0_display.itch_etx = function(value)
  return "Itch Etx: "..value
end

-- Dissect: Itch Etx
currenex_forex_esp_cbp_v9_0_dissect.itch_etx = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.itch_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.itch_etx(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.itch_etx, range, value, display)

  return offset + length, value
end

-- Size: Reject Reason
currenex_forex_esp_cbp_v9_0_size_of.reject_reason = 50

-- Display: Reject Reason
currenex_forex_esp_cbp_v9_0_display.reject_reason = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
currenex_forex_esp_cbp_v9_0_dissect.reject_reason = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.reject_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0_display.reject_reason(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Reject Msg Type
currenex_forex_esp_cbp_v9_0_size_of.reject_msg_type = 1

-- Display: Reject Msg Type
currenex_forex_esp_cbp_v9_0_display.reject_msg_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Msg Type: No Value"
  end

  return "Reject Msg Type: "..value
end

-- Dissect: Reject Msg Type
currenex_forex_esp_cbp_v9_0_dissect.reject_msg_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.reject_msg_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.reject_msg_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.reject_msg_type, range, value, display)

  return offset + length, value
end

-- Size: Session Id
currenex_forex_esp_cbp_v9_0_size_of.session_id = 4

-- Display: Session Id
currenex_forex_esp_cbp_v9_0_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
currenex_forex_esp_cbp_v9_0_dissect.session_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.session_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.session_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reject Message
currenex_forex_esp_cbp_v9_0_size_of.reject_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.reject_msg_type

  index = index + currenex_forex_esp_cbp_v9_0_size_of.reject_reason

  return index
end

-- Display: Reject Message
currenex_forex_esp_cbp_v9_0_display.reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reject Message
currenex_forex_esp_cbp_v9_0_dissect.reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  -- Reject Msg Type: 1 Byte Ascii String
  index, reject_msg_type = currenex_forex_esp_cbp_v9_0_dissect.reject_msg_type(buffer, index, packet, parent)

  -- Reject Reason: 50 Byte Ascii String
  index, reject_reason = currenex_forex_esp_cbp_v9_0_dissect.reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
currenex_forex_esp_cbp_v9_0_dissect.reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reject_message then
    local length = currenex_forex_esp_cbp_v9_0_size_of.reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.reject_message(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.reject_message, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Transact Time
currenex_forex_esp_cbp_v9_0_size_of.transact_time = 8

-- Display: Transact Time
currenex_forex_esp_cbp_v9_0_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
currenex_forex_esp_cbp_v9_0_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Ticker Type
currenex_forex_esp_cbp_v9_0_size_of.ticker_type = 1

-- Display: Ticker Type
currenex_forex_esp_cbp_v9_0_display.ticker_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ticker Type: No Value"
  end

  if value == "1" then
    return "Ticker Type: Given (1)"
  end
  if value == "2" then
    return "Ticker Type: Paid (2)"
  end

  return "Ticker Type: Unknown("..value..")"
end

-- Dissect: Ticker Type
currenex_forex_esp_cbp_v9_0_dissect.ticker_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.ticker_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.ticker_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.ticker_type, range, value, display)

  return offset + length, value
end

-- Size: Rate
currenex_forex_esp_cbp_v9_0_size_of.rate = 4

-- Display: Rate
currenex_forex_esp_cbp_v9_0_display.rate = function(value)
  return "Rate: "..value
end

-- Dissect: Rate
currenex_forex_esp_cbp_v9_0_dissect.rate = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.rate
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.rate(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.rate, range, value, display)

  return offset + length, value
end

-- Size: Instrument Index
currenex_forex_esp_cbp_v9_0_size_of.instrument_index = 2

-- Display: Instrument Index
currenex_forex_esp_cbp_v9_0_display.instrument_index = function(value)
  return "Instrument Index: "..value
end

-- Dissect: Instrument Index
currenex_forex_esp_cbp_v9_0_dissect.instrument_index = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.instrument_index
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.instrument_index(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.instrument_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Ticker Message
currenex_forex_esp_cbp_v9_0_size_of.trade_ticker_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_index

  index = index + currenex_forex_esp_cbp_v9_0_size_of.rate

  index = index + currenex_forex_esp_cbp_v9_0_size_of.ticker_type

  index = index + currenex_forex_esp_cbp_v9_0_size_of.transact_time

  return index
end

-- Display: Trade Ticker Message
currenex_forex_esp_cbp_v9_0_display.trade_ticker_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Ticker Message
currenex_forex_esp_cbp_v9_0_dissect.trade_ticker_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: 2 Byte Signed Fixed Width Integer
  index, instrument_index = currenex_forex_esp_cbp_v9_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Rate: 4 Byte Signed Fixed Width Integer
  index, rate = currenex_forex_esp_cbp_v9_0_dissect.rate(buffer, index, packet, parent)

  -- Ticker Type: 1 Byte Ascii String Enum with 2 values
  index, ticker_type = currenex_forex_esp_cbp_v9_0_dissect.ticker_type(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Signed Fixed Width Integer
  index, transact_time = currenex_forex_esp_cbp_v9_0_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Ticker Message
currenex_forex_esp_cbp_v9_0_dissect.trade_ticker_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_ticker_message then
    local length = currenex_forex_esp_cbp_v9_0_size_of.trade_ticker_message(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.trade_ticker_message(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.trade_ticker_message, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.trade_ticker_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Id
currenex_forex_esp_cbp_v9_0_size_of.price_id = 1

-- Display: Price Id
currenex_forex_esp_cbp_v9_0_display.price_id = function(value)
  return "Price Id: "..value
end

-- Dissect: Price Id
currenex_forex_esp_cbp_v9_0_dissect.price_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.price_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.price_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.price_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Cancel Message
currenex_forex_esp_cbp_v9_0_size_of.price_cancel_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_index

  index = index + currenex_forex_esp_cbp_v9_0_size_of.price_id

  return index
end

-- Display: Price Cancel Message
currenex_forex_esp_cbp_v9_0_display.price_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Cancel Message
currenex_forex_esp_cbp_v9_0_dissect.price_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: 2 Byte Signed Fixed Width Integer
  index, instrument_index = currenex_forex_esp_cbp_v9_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Price Id: 1 Byte Signed Fixed Width Integer
  index, price_id = currenex_forex_esp_cbp_v9_0_dissect.price_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Cancel Message
currenex_forex_esp_cbp_v9_0_dissect.price_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.price_cancel_message then
    local length = currenex_forex_esp_cbp_v9_0_size_of.price_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.price_cancel_message(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.price_cancel_message, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.price_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Provider
currenex_forex_esp_cbp_v9_0_size_of.price_provider = 4

-- Display: Price Provider
currenex_forex_esp_cbp_v9_0_display.price_provider = function(value)
  return "Price Provider: "..value
end

-- Dissect: Price Provider
currenex_forex_esp_cbp_v9_0_dissect.price_provider = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.price_provider
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0_display.price_provider(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.price_provider, range, value, display)

  return offset + length, value
end

-- Size: Attributed
currenex_forex_esp_cbp_v9_0_size_of.attributed = 1

-- Display: Attributed
currenex_forex_esp_cbp_v9_0_display.attributed = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Attributed: No Value"
  end

  if value == "1" then
    return "Attributed: Attributed (1)"
  end
  if value == "2" then
    return "Attributed: Not Attributed (2)"
  end

  return "Attributed: Unknown("..value..")"
end

-- Dissect: Attributed
currenex_forex_esp_cbp_v9_0_dissect.attributed = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.attributed
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.attributed(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.attributed, range, value, display)

  return offset + length, value
end

-- Size: Price
currenex_forex_esp_cbp_v9_0_size_of.price = 4

-- Display: Price
currenex_forex_esp_cbp_v9_0_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
currenex_forex_esp_cbp_v9_0_dissect.price = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.price
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.price(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Min Amount
currenex_forex_esp_cbp_v9_0_size_of.min_amount = 8

-- Display: Min Amount
currenex_forex_esp_cbp_v9_0_display.min_amount = function(value)
  return "Min Amount: "..value
end

-- Dissect: Min Amount
currenex_forex_esp_cbp_v9_0_dissect.min_amount = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.min_amount
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0_display.min_amount(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.min_amount, range, value, display)

  return offset + length, value
end

-- Size: Max Amount
currenex_forex_esp_cbp_v9_0_size_of.max_amount = 8

-- Display: Max Amount
currenex_forex_esp_cbp_v9_0_display.max_amount = function(value)
  return "Max Amount: "..value
end

-- Dissect: Max Amount
currenex_forex_esp_cbp_v9_0_dissect.max_amount = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.max_amount
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0_display.max_amount(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.max_amount, range, value, display)

  return offset + length, value
end

-- Size: Side
currenex_forex_esp_cbp_v9_0_size_of.side = 1

-- Display: Side
currenex_forex_esp_cbp_v9_0_display.side = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "1" then
    return "Side: Bid (1)"
  end
  if value == "2" then
    return "Side: Offer (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
currenex_forex_esp_cbp_v9_0_dissect.side = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.side(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Message
currenex_forex_esp_cbp_v9_0_size_of.price_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_index

  index = index + currenex_forex_esp_cbp_v9_0_size_of.price_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.side

  index = index + currenex_forex_esp_cbp_v9_0_size_of.max_amount

  index = index + currenex_forex_esp_cbp_v9_0_size_of.min_amount

  index = index + currenex_forex_esp_cbp_v9_0_size_of.price

  index = index + currenex_forex_esp_cbp_v9_0_size_of.attributed

  index = index + currenex_forex_esp_cbp_v9_0_size_of.price_provider

  return index
end

-- Display: Price Message
currenex_forex_esp_cbp_v9_0_display.price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Message
currenex_forex_esp_cbp_v9_0_dissect.price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: 2 Byte Signed Fixed Width Integer
  index, instrument_index = currenex_forex_esp_cbp_v9_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Price Id: 1 Byte Signed Fixed Width Integer
  index, price_id = currenex_forex_esp_cbp_v9_0_dissect.price_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = currenex_forex_esp_cbp_v9_0_dissect.side(buffer, index, packet, parent)

  -- Max Amount: 8 Byte Signed Fixed Width Integer
  index, max_amount = currenex_forex_esp_cbp_v9_0_dissect.max_amount(buffer, index, packet, parent)

  -- Min Amount: 8 Byte Signed Fixed Width Integer
  index, min_amount = currenex_forex_esp_cbp_v9_0_dissect.min_amount(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = currenex_forex_esp_cbp_v9_0_dissect.price(buffer, index, packet, parent)

  -- Attributed: 1 Byte Ascii String Enum with 2 values
  index, attributed = currenex_forex_esp_cbp_v9_0_dissect.attributed(buffer, index, packet, parent)

  -- Price Provider: 4 Byte Ascii String
  index, price_provider = currenex_forex_esp_cbp_v9_0_dissect.price_provider(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Message
currenex_forex_esp_cbp_v9_0_dissect.price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.price_message then
    local length = currenex_forex_esp_cbp_v9_0_size_of.price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.price_message(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.price_message, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.price_message_fields(buffer, offset, packet, parent)
end

-- Size: Reply Type
currenex_forex_esp_cbp_v9_0_size_of.reply_type = 1

-- Display: Reply Type
currenex_forex_esp_cbp_v9_0_display.reply_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Reply Type: No Value"
  end

  if value == "1" then
    return "Reply Type: Accepted (1)"
  end
  if value == "2" then
    return "Reply Type: Rejected (2)"
  end

  return "Reply Type: Unknown("..value..")"
end

-- Dissect: Reply Type
currenex_forex_esp_cbp_v9_0_dissect.reply_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.reply_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.reply_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.reply_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Subscription Reply
currenex_forex_esp_cbp_v9_0_size_of.subscription_reply = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_index

  index = index + currenex_forex_esp_cbp_v9_0_size_of.reply_type

  index = index + currenex_forex_esp_cbp_v9_0_size_of.reject_reason

  return index
end

-- Display: Subscription Reply
currenex_forex_esp_cbp_v9_0_display.subscription_reply = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Subscription Reply
currenex_forex_esp_cbp_v9_0_dissect.subscription_reply_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  -- Instrument Index: 2 Byte Signed Fixed Width Integer
  index, instrument_index = currenex_forex_esp_cbp_v9_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Reply Type: 1 Byte Ascii String Enum with 2 values
  index, reply_type = currenex_forex_esp_cbp_v9_0_dissect.reply_type(buffer, index, packet, parent)

  -- Reject Reason: 50 Byte Ascii String
  index, reject_reason = currenex_forex_esp_cbp_v9_0_dissect.reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Reply
currenex_forex_esp_cbp_v9_0_dissect.subscription_reply = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.subscription_reply then
    local length = currenex_forex_esp_cbp_v9_0_size_of.subscription_reply(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.subscription_reply(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.subscription_reply, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.subscription_reply_fields(buffer, offset, packet, parent)
end

-- Size: Subscribe To Ticker
currenex_forex_esp_cbp_v9_0_size_of.subscribe_to_ticker = 1

-- Display: Subscribe To Ticker
currenex_forex_esp_cbp_v9_0_display.subscribe_to_ticker = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Subscribe To Ticker: No Value"
  end

  if value == "0" then
    return "Subscribe To Ticker: Subscribe (0)"
  end
  if value == "1" then
    return "Subscribe To Ticker: Do Not Subscribe (1)"
  end

  return "Subscribe To Ticker: Unknown("..value..")"
end

-- Dissect: Subscribe To Ticker
currenex_forex_esp_cbp_v9_0_dissect.subscribe_to_ticker = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.subscribe_to_ticker
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.subscribe_to_ticker(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.subscribe_to_ticker, range, value, display)

  return offset + length, value
end

-- Size: Subscription Type
currenex_forex_esp_cbp_v9_0_size_of.subscription_type = 1

-- Display: Subscription Type
currenex_forex_esp_cbp_v9_0_display.subscription_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Subscription Type: No Value"
  end

  if value == "0" then
    return "Subscription Type: Subscribe (0)"
  end
  if value == "1" then
    return "Subscription Type: Unsubscribe (1)"
  end
  if value == "2" then
    return "Subscription Type: Resubscribe (2)"
  end

  return "Subscription Type: Unknown("..value..")"
end

-- Dissect: Subscription Type
currenex_forex_esp_cbp_v9_0_dissect.subscription_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.subscription_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.subscription_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.subscription_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Subscription Request
currenex_forex_esp_cbp_v9_0_size_of.subscription_request = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.subscription_type

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_index

  index = index + currenex_forex_esp_cbp_v9_0_size_of.subscribe_to_ticker

  return index
end

-- Display: Subscription Request
currenex_forex_esp_cbp_v9_0_display.subscription_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Subscription Request
currenex_forex_esp_cbp_v9_0_dissect.subscription_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  -- Subscription Type: 1 Byte Ascii String Enum with 3 values
  index, subscription_type = currenex_forex_esp_cbp_v9_0_dissect.subscription_type(buffer, index, packet, parent)

  -- Instrument Index: 2 Byte Signed Fixed Width Integer
  index, instrument_index = currenex_forex_esp_cbp_v9_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Subscribe To Ticker: 1 Byte Ascii String Enum with 2 values
  index, subscribe_to_ticker = currenex_forex_esp_cbp_v9_0_dissect.subscribe_to_ticker(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Request
currenex_forex_esp_cbp_v9_0_dissect.subscription_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.subscription_request then
    local length = currenex_forex_esp_cbp_v9_0_size_of.subscription_request(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.subscription_request(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.subscription_request, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.subscription_request_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Date
currenex_forex_esp_cbp_v9_0_size_of.settlement_date = 8

-- Display: Settlement Date
currenex_forex_esp_cbp_v9_0_display.settlement_date = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
currenex_forex_esp_cbp_v9_0_dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0_display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
currenex_forex_esp_cbp_v9_0_size_of.instrument_id = 20

-- Display: Instrument Id
currenex_forex_esp_cbp_v9_0_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
currenex_forex_esp_cbp_v9_0_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
currenex_forex_esp_cbp_v9_0_size_of.instrument_type = 1

-- Display: Instrument Type
currenex_forex_esp_cbp_v9_0_display.instrument_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Type: No Value"
  end

  if value == "1" then
    return "Instrument Type: Foreign Exchange (1)"
  end
  if value == "2" then
    return "Instrument Type: Cash Metals (2)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
currenex_forex_esp_cbp_v9_0_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.instrument_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Info
currenex_forex_esp_cbp_v9_0_size_of.instrument_info = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_index

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_type

  index = index + currenex_forex_esp_cbp_v9_0_size_of.instrument_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.settlement_date

  return index
end

-- Display: Instrument Info
currenex_forex_esp_cbp_v9_0_display.instrument_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Info
currenex_forex_esp_cbp_v9_0_dissect.instrument_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  -- Instrument Index: 2 Byte Signed Fixed Width Integer
  index, instrument_index = currenex_forex_esp_cbp_v9_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 2 values
  index, instrument_type = currenex_forex_esp_cbp_v9_0_dissect.instrument_type(buffer, index, packet, parent)

  -- Instrument Id: 20 Byte Ascii String
  index, instrument_id = currenex_forex_esp_cbp_v9_0_dissect.instrument_id(buffer, index, packet, parent)

  -- Settlement Date: 8 Byte Signed Fixed Width Integer
  index, settlement_date = currenex_forex_esp_cbp_v9_0_dissect.settlement_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info
currenex_forex_esp_cbp_v9_0_dissect.instrument_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_info then
    local length = currenex_forex_esp_cbp_v9_0_size_of.instrument_info(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.instrument_info(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.instrument_info, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.instrument_info_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat
currenex_forex_esp_cbp_v9_0_size_of.heartbeat = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  return index
end

-- Display: Heartbeat
currenex_forex_esp_cbp_v9_0_display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
currenex_forex_esp_cbp_v9_0_dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
currenex_forex_esp_cbp_v9_0_dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local length = currenex_forex_esp_cbp_v9_0_size_of.heartbeat(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.heartbeat(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.heartbeat, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.heartbeat_fields(buffer, offset, packet, parent)
end

-- Size: Reason
currenex_forex_esp_cbp_v9_0_size_of.reason = 3

-- Display: Reason
currenex_forex_esp_cbp_v9_0_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
currenex_forex_esp_cbp_v9_0_dissect.reason = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0_display.reason(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: User Id
currenex_forex_esp_cbp_v9_0_size_of.user_id = 20

-- Display: User Id
currenex_forex_esp_cbp_v9_0_display.user_id = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
currenex_forex_esp_cbp_v9_0_dissect.user_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.user_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0_display.user_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout
currenex_forex_esp_cbp_v9_0_size_of.logout = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.user_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.reason

  return index
end

-- Display: Logout
currenex_forex_esp_cbp_v9_0_display.logout = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout
currenex_forex_esp_cbp_v9_0_dissect.logout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: 20 Byte Ascii String
  index, user_id = currenex_forex_esp_cbp_v9_0_dissect.user_id(buffer, index, packet, parent)

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  -- Reason: 3 Byte Ascii String
  index, reason = currenex_forex_esp_cbp_v9_0_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout
currenex_forex_esp_cbp_v9_0_dissect.logout = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout then
    local length = currenex_forex_esp_cbp_v9_0_size_of.logout(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.logout(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.logout, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.logout_fields(buffer, offset, packet, parent)
end

-- Size: Password
currenex_forex_esp_cbp_v9_0_size_of.password = 20

-- Display: Password
currenex_forex_esp_cbp_v9_0_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
currenex_forex_esp_cbp_v9_0_dissect.password = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.password
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0_display.password(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.password, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon
currenex_forex_esp_cbp_v9_0_size_of.logon = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.user_id

  index = index + currenex_forex_esp_cbp_v9_0_size_of.password

  index = index + currenex_forex_esp_cbp_v9_0_size_of.session_id

  return index
end

-- Display: Logon
currenex_forex_esp_cbp_v9_0_display.logon = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon
currenex_forex_esp_cbp_v9_0_dissect.logon_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: 20 Byte Ascii String
  index, user_id = currenex_forex_esp_cbp_v9_0_dissect.user_id(buffer, index, packet, parent)

  -- Password: 20 Byte Ascii String
  index, password = currenex_forex_esp_cbp_v9_0_dissect.password(buffer, index, packet, parent)

  -- Session Id: 4 Byte Signed Fixed Width Integer
  index, session_id = currenex_forex_esp_cbp_v9_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon
currenex_forex_esp_cbp_v9_0_dissect.logon = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon then
    local length = currenex_forex_esp_cbp_v9_0_size_of.logon(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.logon(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.logon, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.logon_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Message Body
currenex_forex_esp_cbp_v9_0_size_of.message_body = function(buffer, offset, message_type)
  -- Size of Logon
  if message_type == "A" then
    return currenex_forex_esp_cbp_v9_0_size_of.logon(buffer, offset)
  end
  -- Size of Logout
  if message_type == "B" then
    return currenex_forex_esp_cbp_v9_0_size_of.logout(buffer, offset)
  end
  -- Size of Heartbeat
  if message_type == "C" then
    return currenex_forex_esp_cbp_v9_0_size_of.heartbeat(buffer, offset)
  end
  -- Size of Instrument Info
  if message_type == "D" then
    return currenex_forex_esp_cbp_v9_0_size_of.instrument_info(buffer, offset)
  end
  -- Size of Subscription Request
  if message_type == "F" then
    return currenex_forex_esp_cbp_v9_0_size_of.subscription_request(buffer, offset)
  end
  -- Size of Subscription Reply
  if message_type == "G" then
    return currenex_forex_esp_cbp_v9_0_size_of.subscription_reply(buffer, offset)
  end
  -- Size of Price Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0_size_of.price_message(buffer, offset)
  end
  -- Size of Price Cancel Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0_size_of.price_cancel_message(buffer, offset)
  end
  -- Size of Trade Ticker Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0_size_of.trade_ticker_message(buffer, offset)
  end
  -- Size of Reject Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0_size_of.reject_message(buffer, offset)
  end

  return 0
end

-- Display: Message Body
currenex_forex_esp_cbp_v9_0_display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
currenex_forex_esp_cbp_v9_0_dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon
  if message_type == "A" then
    return currenex_forex_esp_cbp_v9_0_dissect.logon(buffer, offset, packet, parent)
  end
  -- Dissect Logout
  if message_type == "B" then
    return currenex_forex_esp_cbp_v9_0_dissect.logout(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if message_type == "C" then
    return currenex_forex_esp_cbp_v9_0_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info
  if message_type == "D" then
    return currenex_forex_esp_cbp_v9_0_dissect.instrument_info(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Request
  if message_type == "F" then
    return currenex_forex_esp_cbp_v9_0_dissect.subscription_request(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Reply
  if message_type == "G" then
    return currenex_forex_esp_cbp_v9_0_dissect.subscription_reply(buffer, offset, packet, parent)
  end
  -- Dissect Price Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0_dissect.price_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Cancel Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0_dissect.price_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Ticker Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0_dissect.trade_ticker_message(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0_dissect.reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
currenex_forex_esp_cbp_v9_0_dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return currenex_forex_esp_cbp_v9_0_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = currenex_forex_esp_cbp_v9_0_size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = currenex_forex_esp_cbp_v9_0_display.message_body(buffer, packet, parent)
  local element = parent:add(currenex_forex_esp_cbp_v9_0.fields.message_body, range, display)

  return currenex_forex_esp_cbp_v9_0_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
currenex_forex_esp_cbp_v9_0_size_of.message_type = 1

-- Display: Message Type
currenex_forex_esp_cbp_v9_0_display.message_type = function(value)
  if value == "A" then
    return "Message Type: Logon (A)"
  end
  if value == "B" then
    return "Message Type: Logout (B)"
  end
  if value == "C" then
    return "Message Type: Heartbeat (C)"
  end
  if value == "D" then
    return "Message Type: Instrument Info (D)"
  end
  if value == "F" then
    return "Message Type: Subscription Request (F)"
  end
  if value == "G" then
    return "Message Type: Subscription Reply (G)"
  end
  if value == "H" then
    return "Message Type: Price Message (H)"
  end
  if value == "H" then
    return "Message Type: Price Cancel Message (H)"
  end
  if value == "J" then
    return "Message Type: Trade Ticker Message (J)"
  end
  if value == "J" then
    return "Message Type: Reject Message (J)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
currenex_forex_esp_cbp_v9_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_esp_cbp_v9_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
currenex_forex_esp_cbp_v9_0_size_of.sequence_number = 4

-- Display: Sequence Number
currenex_forex_esp_cbp_v9_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
currenex_forex_esp_cbp_v9_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = currenex_forex_esp_cbp_v9_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
currenex_forex_esp_cbp_v9_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_esp_cbp_v9_0_size_of.sequence_number

  index = index + currenex_forex_esp_cbp_v9_0_size_of.sequence_number

  index = index + currenex_forex_esp_cbp_v9_0_size_of.message_type

  return index
end

-- Display: Message Header
currenex_forex_esp_cbp_v9_0_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
currenex_forex_esp_cbp_v9_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_esp_cbp_v9_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_esp_cbp_v9_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = currenex_forex_esp_cbp_v9_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
currenex_forex_esp_cbp_v9_0_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = currenex_forex_esp_cbp_v9_0_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = currenex_forex_esp_cbp_v9_0_display.message_header(buffer, packet, parent)
    parent = parent:add(currenex_forex_esp_cbp_v9_0.fields.message_header, range, display)
  end

  return currenex_forex_esp_cbp_v9_0_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Itch Soh
currenex_forex_esp_cbp_v9_0_size_of.itch_soh = 1

-- Display: Itch Soh
currenex_forex_esp_cbp_v9_0_display.itch_soh = function(value)
  return "Itch Soh: "..value
end

-- Dissect: Itch Soh
currenex_forex_esp_cbp_v9_0_dissect.itch_soh = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0_size_of.itch_soh
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0_display.itch_soh(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_esp_cbp_v9_0.fields.itch_soh, range, value, display)

  return offset + length, value
end

-- Dissect Packet
currenex_forex_esp_cbp_v9_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Itch Soh: 1 Byte Fixed Width Integer Static
    index, itch_soh = currenex_forex_esp_cbp_v9_0_dissect.itch_soh(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = currenex_forex_esp_cbp_v9_0_dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message Body: Runtime Type with 10 branches
    index = currenex_forex_esp_cbp_v9_0_dissect.message_body(buffer, index, packet, parent, message_type)

    -- Itch Etx: 1 Byte Fixed Width Integer
    index, itch_etx = currenex_forex_esp_cbp_v9_0_dissect.itch_etx(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function currenex_forex_esp_cbp_v9_0.init()
end

-- Dissector for Currenex Forex Esp Cbp 9.0
function currenex_forex_esp_cbp_v9_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = currenex_forex_esp_cbp_v9_0.name

  -- Dissect protocol
  local protocol = parent:add(currenex_forex_esp_cbp_v9_0, buffer(), currenex_forex_esp_cbp_v9_0.description, "("..buffer:len().." Bytes)")
  return currenex_forex_esp_cbp_v9_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, currenex_forex_esp_cbp_v9_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.currenex_forex_esp_cbp_v9_0_packet_size = function(buffer)

  return true
end

-- Verify Itch Soh Field
verify.itch_soh = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Currenex Forex Esp Cbp 9.0
local function currenex_forex_esp_cbp_v9_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.currenex_forex_esp_cbp_v9_0_packet_size(buffer) then return false end

  -- Verify Itch Soh
  if not verify.itch_soh(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = currenex_forex_esp_cbp_v9_0
  currenex_forex_esp_cbp_v9_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Currenex Forex Esp Cbp 9.0
currenex_forex_esp_cbp_v9_0:register_heuristic("udp", currenex_forex_esp_cbp_v9_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Currenex
--   Version: 9.0
--   Date: Wednesday, March 24, 2021
--   Specification: ITCH-Spec.pdf
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
