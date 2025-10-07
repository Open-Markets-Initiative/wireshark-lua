-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Currenex Forex Esp Cbp 9.0 Protocol
local omi_currenex_forex_esp_cbp_v9_0 = Proto("Currenex.Forex.Esp.Cbp.v9.0.Lua", "Currenex Forex Esp Cbp 9.0")

-- Protocol table
local currenex_forex_esp_cbp_v9_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Currenex Forex Esp Cbp 9.0 Fields
omi_currenex_forex_esp_cbp_v9_0.fields.attributed = ProtoField.new("Attributed", "currenex.forex.esp.cbp.v9.0.attributed", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.instrument_id = ProtoField.new("Instrument Id", "currenex.forex.esp.cbp.v9.0.instrumentid", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.instrument_index = ProtoField.new("Instrument Index", "currenex.forex.esp.cbp.v9.0.instrumentindex", ftypes.INT16)
omi_currenex_forex_esp_cbp_v9_0.fields.instrument_type = ProtoField.new("Instrument Type", "currenex.forex.esp.cbp.v9.0.instrumenttype", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.itch_etx = ProtoField.new("Itch Etx", "currenex.forex.esp.cbp.v9.0.itchetx", ftypes.INT8)
omi_currenex_forex_esp_cbp_v9_0.fields.itch_soh = ProtoField.new("Itch Soh", "currenex.forex.esp.cbp.v9.0.itchsoh", ftypes.INT8)
omi_currenex_forex_esp_cbp_v9_0.fields.max_amount = ProtoField.new("Max Amount", "currenex.forex.esp.cbp.v9.0.maxamount", ftypes.INT64)
omi_currenex_forex_esp_cbp_v9_0.fields.message_body = ProtoField.new("Message Body", "currenex.forex.esp.cbp.v9.0.messagebody", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.message_header = ProtoField.new("Message Header", "currenex.forex.esp.cbp.v9.0.messageheader", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.message_type = ProtoField.new("Message Type", "currenex.forex.esp.cbp.v9.0.messagetype", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.min_amount = ProtoField.new("Min Amount", "currenex.forex.esp.cbp.v9.0.minamount", ftypes.INT64)
omi_currenex_forex_esp_cbp_v9_0.fields.packet = ProtoField.new("Packet", "currenex.forex.esp.cbp.v9.0.packet", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.password = ProtoField.new("Password", "currenex.forex.esp.cbp.v9.0.password", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.price = ProtoField.new("Price", "currenex.forex.esp.cbp.v9.0.price", ftypes.INT32)
omi_currenex_forex_esp_cbp_v9_0.fields.price_id = ProtoField.new("Price Id", "currenex.forex.esp.cbp.v9.0.priceid", ftypes.INT8)
omi_currenex_forex_esp_cbp_v9_0.fields.price_provider = ProtoField.new("Price Provider", "currenex.forex.esp.cbp.v9.0.priceprovider", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.rate = ProtoField.new("Rate", "currenex.forex.esp.cbp.v9.0.rate", ftypes.INT32)
omi_currenex_forex_esp_cbp_v9_0.fields.reason = ProtoField.new("Reason", "currenex.forex.esp.cbp.v9.0.reason", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.reject_msg_type = ProtoField.new("Reject Msg Type", "currenex.forex.esp.cbp.v9.0.rejectmsgtype", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.reject_reason = ProtoField.new("Reject Reason", "currenex.forex.esp.cbp.v9.0.rejectreason", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.reply_type = ProtoField.new("Reply Type", "currenex.forex.esp.cbp.v9.0.replytype", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.sequence_number = ProtoField.new("Sequence Number", "currenex.forex.esp.cbp.v9.0.sequencenumber", ftypes.UINT32)
omi_currenex_forex_esp_cbp_v9_0.fields.session_id = ProtoField.new("Session Id", "currenex.forex.esp.cbp.v9.0.sessionid", ftypes.INT32)
omi_currenex_forex_esp_cbp_v9_0.fields.settlement_date = ProtoField.new("Settlement Date", "currenex.forex.esp.cbp.v9.0.settlementdate", ftypes.INT64)
omi_currenex_forex_esp_cbp_v9_0.fields.side = ProtoField.new("Side", "currenex.forex.esp.cbp.v9.0.side", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.subscribe_to_ticker = ProtoField.new("Subscribe To Ticker", "currenex.forex.esp.cbp.v9.0.subscribetoticker", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.subscription_type = ProtoField.new("Subscription Type", "currenex.forex.esp.cbp.v9.0.subscriptiontype", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.ticker_type = ProtoField.new("Ticker Type", "currenex.forex.esp.cbp.v9.0.tickertype", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.transact_time = ProtoField.new("Transact Time", "currenex.forex.esp.cbp.v9.0.transacttime", ftypes.INT64)
omi_currenex_forex_esp_cbp_v9_0.fields.user_id = ProtoField.new("User Id", "currenex.forex.esp.cbp.v9.0.userid", ftypes.STRING)

-- Currenex Forex Esp Cbp 9.0 messages
omi_currenex_forex_esp_cbp_v9_0.fields.heartbeat = ProtoField.new("Heartbeat", "currenex.forex.esp.cbp.v9.0.heartbeat", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.instrument_info = ProtoField.new("Instrument Info", "currenex.forex.esp.cbp.v9.0.instrumentinfo", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.logon = ProtoField.new("Logon", "currenex.forex.esp.cbp.v9.0.logon", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.logout = ProtoField.new("Logout", "currenex.forex.esp.cbp.v9.0.logout", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.price_cancel_message = ProtoField.new("Price Cancel Message", "currenex.forex.esp.cbp.v9.0.pricecancelmessage", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.price_message = ProtoField.new("Price Message", "currenex.forex.esp.cbp.v9.0.pricemessage", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.reject_message = ProtoField.new("Reject Message", "currenex.forex.esp.cbp.v9.0.rejectmessage", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.subscription_reply = ProtoField.new("Subscription Reply", "currenex.forex.esp.cbp.v9.0.subscriptionreply", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.subscription_request = ProtoField.new("Subscription Request", "currenex.forex.esp.cbp.v9.0.subscriptionrequest", ftypes.STRING)
omi_currenex_forex_esp_cbp_v9_0.fields.trade_ticker_message = ProtoField.new("Trade Ticker Message", "currenex.forex.esp.cbp.v9.0.tradetickermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_currenex_forex_esp_cbp_v9_0.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_instrument_info = Pref.bool("Show Instrument Info", show.instrument_info, "Parse and add Instrument Info to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_logon = Pref.bool("Show Logon", show.logon, "Parse and add Logon to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_logout = Pref.bool("Show Logout", show.logout, "Parse and add Logout to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_price_cancel_message = Pref.bool("Show Price Cancel Message", show.price_cancel_message, "Parse and add Price Cancel Message to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_price_message = Pref.bool("Show Price Message", show.price_message, "Parse and add Price Message to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_subscription_reply = Pref.bool("Show Subscription Reply", show.subscription_reply, "Parse and add Subscription Reply to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_subscription_request = Pref.bool("Show Subscription Request", show.subscription_request, "Parse and add Subscription Request to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_trade_ticker_message = Pref.bool("Show Trade Ticker Message", show.trade_ticker_message, "Parse and add Trade Ticker Message to protocol tree")
omi_currenex_forex_esp_cbp_v9_0.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function omi_currenex_forex_esp_cbp_v9_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_heartbeat then
    show.heartbeat = omi_currenex_forex_esp_cbp_v9_0.prefs.show_heartbeat
    changed = true
  end
  if show.instrument_info ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_instrument_info then
    show.instrument_info = omi_currenex_forex_esp_cbp_v9_0.prefs.show_instrument_info
    changed = true
  end
  if show.logon ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_logon then
    show.logon = omi_currenex_forex_esp_cbp_v9_0.prefs.show_logon
    changed = true
  end
  if show.logout ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_logout then
    show.logout = omi_currenex_forex_esp_cbp_v9_0.prefs.show_logout
    changed = true
  end
  if show.message_header ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_message_header then
    show.message_header = omi_currenex_forex_esp_cbp_v9_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_packet then
    show.packet = omi_currenex_forex_esp_cbp_v9_0.prefs.show_packet
    changed = true
  end
  if show.price_cancel_message ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_price_cancel_message then
    show.price_cancel_message = omi_currenex_forex_esp_cbp_v9_0.prefs.show_price_cancel_message
    changed = true
  end
  if show.price_message ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_price_message then
    show.price_message = omi_currenex_forex_esp_cbp_v9_0.prefs.show_price_message
    changed = true
  end
  if show.reject_message ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_reject_message then
    show.reject_message = omi_currenex_forex_esp_cbp_v9_0.prefs.show_reject_message
    changed = true
  end
  if show.subscription_reply ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_subscription_reply then
    show.subscription_reply = omi_currenex_forex_esp_cbp_v9_0.prefs.show_subscription_reply
    changed = true
  end
  if show.subscription_request ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_subscription_request then
    show.subscription_request = omi_currenex_forex_esp_cbp_v9_0.prefs.show_subscription_request
    changed = true
  end
  if show.trade_ticker_message ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_trade_ticker_message then
    show.trade_ticker_message = omi_currenex_forex_esp_cbp_v9_0.prefs.show_trade_ticker_message
    changed = true
  end
  if show.message_body ~= omi_currenex_forex_esp_cbp_v9_0.prefs.show_message_body then
    show.message_body = omi_currenex_forex_esp_cbp_v9_0.prefs.show_message_body
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

-- Itch Etx
currenex_forex_esp_cbp_v9_0.itch_etx = {}

-- Size: Itch Etx
currenex_forex_esp_cbp_v9_0.itch_etx.size = 1

-- Display: Itch Etx
currenex_forex_esp_cbp_v9_0.itch_etx.display = function(value)
  return "Itch Etx: "..value
end

-- Dissect: Itch Etx
currenex_forex_esp_cbp_v9_0.itch_etx.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.itch_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.itch_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.itch_etx, range, value, display)

  return offset + length, value
end

-- Reject Reason
currenex_forex_esp_cbp_v9_0.reject_reason = {}

-- Size: Reject Reason
currenex_forex_esp_cbp_v9_0.reject_reason.size = 50

-- Display: Reject Reason
currenex_forex_esp_cbp_v9_0.reject_reason.display = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
currenex_forex_esp_cbp_v9_0.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.reject_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reject Msg Type
currenex_forex_esp_cbp_v9_0.reject_msg_type = {}

-- Size: Reject Msg Type
currenex_forex_esp_cbp_v9_0.reject_msg_type.size = 1

-- Display: Reject Msg Type
currenex_forex_esp_cbp_v9_0.reject_msg_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Msg Type: No Value"
  end

  return "Reject Msg Type: "..value
end

-- Dissect: Reject Msg Type
currenex_forex_esp_cbp_v9_0.reject_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.reject_msg_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.reject_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.reject_msg_type, range, value, display)

  return offset + length, value
end

-- Session Id
currenex_forex_esp_cbp_v9_0.session_id = {}

-- Size: Session Id
currenex_forex_esp_cbp_v9_0.session_id.size = 4

-- Display: Session Id
currenex_forex_esp_cbp_v9_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
currenex_forex_esp_cbp_v9_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.session_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Reject Message
currenex_forex_esp_cbp_v9_0.reject_message = {}

-- Size: Reject Message
currenex_forex_esp_cbp_v9_0.reject_message.size =
  currenex_forex_esp_cbp_v9_0.session_id.size + 
  currenex_forex_esp_cbp_v9_0.reject_msg_type.size + 
  currenex_forex_esp_cbp_v9_0.reject_reason.size

-- Display: Reject Message
currenex_forex_esp_cbp_v9_0.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
currenex_forex_esp_cbp_v9_0.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  -- Reject Msg Type: Alpha
  index, reject_msg_type = currenex_forex_esp_cbp_v9_0.reject_msg_type.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = currenex_forex_esp_cbp_v9_0.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
currenex_forex_esp_cbp_v9_0.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.reject_message, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time
currenex_forex_esp_cbp_v9_0.transact_time = {}

-- Size: Transact Time
currenex_forex_esp_cbp_v9_0.transact_time.size = 8

-- Display: Transact Time
currenex_forex_esp_cbp_v9_0.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
currenex_forex_esp_cbp_v9_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Ticker Type
currenex_forex_esp_cbp_v9_0.ticker_type = {}

-- Size: Ticker Type
currenex_forex_esp_cbp_v9_0.ticker_type.size = 1

-- Display: Ticker Type
currenex_forex_esp_cbp_v9_0.ticker_type.display = function(value)
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
currenex_forex_esp_cbp_v9_0.ticker_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.ticker_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.ticker_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.ticker_type, range, value, display)

  return offset + length, value
end

-- Rate
currenex_forex_esp_cbp_v9_0.rate = {}

-- Size: Rate
currenex_forex_esp_cbp_v9_0.rate.size = 4

-- Display: Rate
currenex_forex_esp_cbp_v9_0.rate.display = function(value)
  return "Rate: "..value
end

-- Dissect: Rate
currenex_forex_esp_cbp_v9_0.rate.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.rate, range, value, display)

  return offset + length, value
end

-- Instrument Index
currenex_forex_esp_cbp_v9_0.instrument_index = {}

-- Size: Instrument Index
currenex_forex_esp_cbp_v9_0.instrument_index.size = 2

-- Display: Instrument Index
currenex_forex_esp_cbp_v9_0.instrument_index.display = function(value)
  return "Instrument Index: "..value
end

-- Dissect: Instrument Index
currenex_forex_esp_cbp_v9_0.instrument_index.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.instrument_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.instrument_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.instrument_index, range, value, display)

  return offset + length, value
end

-- Trade Ticker Message
currenex_forex_esp_cbp_v9_0.trade_ticker_message = {}

-- Size: Trade Ticker Message
currenex_forex_esp_cbp_v9_0.trade_ticker_message.size =
  currenex_forex_esp_cbp_v9_0.instrument_index.size + 
  currenex_forex_esp_cbp_v9_0.rate.size + 
  currenex_forex_esp_cbp_v9_0.ticker_type.size + 
  currenex_forex_esp_cbp_v9_0.transact_time.size

-- Display: Trade Ticker Message
currenex_forex_esp_cbp_v9_0.trade_ticker_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Ticker Message
currenex_forex_esp_cbp_v9_0.trade_ticker_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_esp_cbp_v9_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Rate: Rate
  index, rate = currenex_forex_esp_cbp_v9_0.rate.dissect(buffer, index, packet, parent)

  -- Ticker Type: Alpha
  index, ticker_type = currenex_forex_esp_cbp_v9_0.ticker_type.dissect(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_forex_esp_cbp_v9_0.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Ticker Message
currenex_forex_esp_cbp_v9_0.trade_ticker_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_ticker_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.trade_ticker_message, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.trade_ticker_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.trade_ticker_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.trade_ticker_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Id
currenex_forex_esp_cbp_v9_0.price_id = {}

-- Size: Price Id
currenex_forex_esp_cbp_v9_0.price_id.size = 1

-- Display: Price Id
currenex_forex_esp_cbp_v9_0.price_id.display = function(value)
  return "Price Id: "..value
end

-- Dissect: Price Id
currenex_forex_esp_cbp_v9_0.price_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.price_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.price_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.price_id, range, value, display)

  return offset + length, value
end

-- Price Cancel Message
currenex_forex_esp_cbp_v9_0.price_cancel_message = {}

-- Size: Price Cancel Message
currenex_forex_esp_cbp_v9_0.price_cancel_message.size =
  currenex_forex_esp_cbp_v9_0.instrument_index.size + 
  currenex_forex_esp_cbp_v9_0.price_id.size

-- Display: Price Cancel Message
currenex_forex_esp_cbp_v9_0.price_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Cancel Message
currenex_forex_esp_cbp_v9_0.price_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_esp_cbp_v9_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Price Id: Integer
  index, price_id = currenex_forex_esp_cbp_v9_0.price_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Cancel Message
currenex_forex_esp_cbp_v9_0.price_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.price_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.price_cancel_message, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.price_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.price_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.price_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Provider
currenex_forex_esp_cbp_v9_0.price_provider = {}

-- Size: Price Provider
currenex_forex_esp_cbp_v9_0.price_provider.size = 4

-- Display: Price Provider
currenex_forex_esp_cbp_v9_0.price_provider.display = function(value)
  return "Price Provider: "..value
end

-- Dissect: Price Provider
currenex_forex_esp_cbp_v9_0.price_provider.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.price_provider.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0.price_provider.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.price_provider, range, value, display)

  return offset + length, value
end

-- Attributed
currenex_forex_esp_cbp_v9_0.attributed = {}

-- Size: Attributed
currenex_forex_esp_cbp_v9_0.attributed.size = 1

-- Display: Attributed
currenex_forex_esp_cbp_v9_0.attributed.display = function(value)
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
currenex_forex_esp_cbp_v9_0.attributed.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.attributed.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.attributed.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.attributed, range, value, display)

  return offset + length, value
end

-- Price
currenex_forex_esp_cbp_v9_0.price = {}

-- Size: Price
currenex_forex_esp_cbp_v9_0.price.size = 4

-- Display: Price
currenex_forex_esp_cbp_v9_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
currenex_forex_esp_cbp_v9_0.price.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.price, range, value, display)

  return offset + length, value
end

-- Min Amount
currenex_forex_esp_cbp_v9_0.min_amount = {}

-- Size: Min Amount
currenex_forex_esp_cbp_v9_0.min_amount.size = 8

-- Display: Min Amount
currenex_forex_esp_cbp_v9_0.min_amount.display = function(value)
  return "Min Amount: "..value
end

-- Dissect: Min Amount
currenex_forex_esp_cbp_v9_0.min_amount.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.min_amount.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0.min_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.min_amount, range, value, display)

  return offset + length, value
end

-- Max Amount
currenex_forex_esp_cbp_v9_0.max_amount = {}

-- Size: Max Amount
currenex_forex_esp_cbp_v9_0.max_amount.size = 8

-- Display: Max Amount
currenex_forex_esp_cbp_v9_0.max_amount.display = function(value)
  return "Max Amount: "..value
end

-- Dissect: Max Amount
currenex_forex_esp_cbp_v9_0.max_amount.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.max_amount.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0.max_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.max_amount, range, value, display)

  return offset + length, value
end

-- Side
currenex_forex_esp_cbp_v9_0.side = {}

-- Size: Side
currenex_forex_esp_cbp_v9_0.side.size = 1

-- Display: Side
currenex_forex_esp_cbp_v9_0.side.display = function(value)
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
currenex_forex_esp_cbp_v9_0.side.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.side, range, value, display)

  return offset + length, value
end

-- Price Message
currenex_forex_esp_cbp_v9_0.price_message = {}

-- Size: Price Message
currenex_forex_esp_cbp_v9_0.price_message.size =
  currenex_forex_esp_cbp_v9_0.instrument_index.size + 
  currenex_forex_esp_cbp_v9_0.price_id.size + 
  currenex_forex_esp_cbp_v9_0.side.size + 
  currenex_forex_esp_cbp_v9_0.max_amount.size + 
  currenex_forex_esp_cbp_v9_0.min_amount.size + 
  currenex_forex_esp_cbp_v9_0.price.size + 
  currenex_forex_esp_cbp_v9_0.attributed.size + 
  currenex_forex_esp_cbp_v9_0.price_provider.size

-- Display: Price Message
currenex_forex_esp_cbp_v9_0.price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Message
currenex_forex_esp_cbp_v9_0.price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_esp_cbp_v9_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Price Id: Integer
  index, price_id = currenex_forex_esp_cbp_v9_0.price_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = currenex_forex_esp_cbp_v9_0.side.dissect(buffer, index, packet, parent)

  -- Max Amount: Amount
  index, max_amount = currenex_forex_esp_cbp_v9_0.max_amount.dissect(buffer, index, packet, parent)

  -- Min Amount: Amount
  index, min_amount = currenex_forex_esp_cbp_v9_0.min_amount.dissect(buffer, index, packet, parent)

  -- Price: Rate
  index, price = currenex_forex_esp_cbp_v9_0.price.dissect(buffer, index, packet, parent)

  -- Attributed: Alpha
  index, attributed = currenex_forex_esp_cbp_v9_0.attributed.dissect(buffer, index, packet, parent)

  -- Price Provider: Alpha
  index, price_provider = currenex_forex_esp_cbp_v9_0.price_provider.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Message
currenex_forex_esp_cbp_v9_0.price_message.dissect = function(buffer, offset, packet, parent)
  if show.price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.price_message, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.price_message.fields(buffer, offset, packet, parent)
  end
end

-- Reply Type
currenex_forex_esp_cbp_v9_0.reply_type = {}

-- Size: Reply Type
currenex_forex_esp_cbp_v9_0.reply_type.size = 1

-- Display: Reply Type
currenex_forex_esp_cbp_v9_0.reply_type.display = function(value)
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
currenex_forex_esp_cbp_v9_0.reply_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.reply_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.reply_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.reply_type, range, value, display)

  return offset + length, value
end

-- Subscription Reply
currenex_forex_esp_cbp_v9_0.subscription_reply = {}

-- Size: Subscription Reply
currenex_forex_esp_cbp_v9_0.subscription_reply.size =
  currenex_forex_esp_cbp_v9_0.session_id.size + 
  currenex_forex_esp_cbp_v9_0.instrument_index.size + 
  currenex_forex_esp_cbp_v9_0.reply_type.size + 
  currenex_forex_esp_cbp_v9_0.reject_reason.size

-- Display: Subscription Reply
currenex_forex_esp_cbp_v9_0.subscription_reply.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Reply
currenex_forex_esp_cbp_v9_0.subscription_reply.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_esp_cbp_v9_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Reply Type: Alpha
  index, reply_type = currenex_forex_esp_cbp_v9_0.reply_type.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = currenex_forex_esp_cbp_v9_0.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Reply
currenex_forex_esp_cbp_v9_0.subscription_reply.dissect = function(buffer, offset, packet, parent)
  if show.subscription_reply then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.subscription_reply, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.subscription_reply.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.subscription_reply.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.subscription_reply.fields(buffer, offset, packet, parent)
  end
end

-- Subscribe To Ticker
currenex_forex_esp_cbp_v9_0.subscribe_to_ticker = {}

-- Size: Subscribe To Ticker
currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.size = 1

-- Display: Subscribe To Ticker
currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.display = function(value)
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
currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.subscribe_to_ticker, range, value, display)

  return offset + length, value
end

-- Subscription Type
currenex_forex_esp_cbp_v9_0.subscription_type = {}

-- Size: Subscription Type
currenex_forex_esp_cbp_v9_0.subscription_type.size = 1

-- Display: Subscription Type
currenex_forex_esp_cbp_v9_0.subscription_type.display = function(value)
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
currenex_forex_esp_cbp_v9_0.subscription_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.subscription_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.subscription_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.subscription_type, range, value, display)

  return offset + length, value
end

-- Subscription Request
currenex_forex_esp_cbp_v9_0.subscription_request = {}

-- Size: Subscription Request
currenex_forex_esp_cbp_v9_0.subscription_request.size =
  currenex_forex_esp_cbp_v9_0.session_id.size + 
  currenex_forex_esp_cbp_v9_0.subscription_type.size + 
  currenex_forex_esp_cbp_v9_0.instrument_index.size + 
  currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.size

-- Display: Subscription Request
currenex_forex_esp_cbp_v9_0.subscription_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Request
currenex_forex_esp_cbp_v9_0.subscription_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  -- Subscription Type: Alpha
  index, subscription_type = currenex_forex_esp_cbp_v9_0.subscription_type.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_esp_cbp_v9_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Subscribe To Ticker: Alpha
  index, subscribe_to_ticker = currenex_forex_esp_cbp_v9_0.subscribe_to_ticker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Request
currenex_forex_esp_cbp_v9_0.subscription_request.dissect = function(buffer, offset, packet, parent)
  if show.subscription_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.subscription_request, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.subscription_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.subscription_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.subscription_request.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Date
currenex_forex_esp_cbp_v9_0.settlement_date = {}

-- Size: Settlement Date
currenex_forex_esp_cbp_v9_0.settlement_date.size = 8

-- Display: Settlement Date
currenex_forex_esp_cbp_v9_0.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
currenex_forex_esp_cbp_v9_0.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.settlement_date.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_esp_cbp_v9_0.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Instrument Id
currenex_forex_esp_cbp_v9_0.instrument_id = {}

-- Size: Instrument Id
currenex_forex_esp_cbp_v9_0.instrument_id.size = 20

-- Display: Instrument Id
currenex_forex_esp_cbp_v9_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
currenex_forex_esp_cbp_v9_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Type
currenex_forex_esp_cbp_v9_0.instrument_type = {}

-- Size: Instrument Type
currenex_forex_esp_cbp_v9_0.instrument_type.size = 1

-- Display: Instrument Type
currenex_forex_esp_cbp_v9_0.instrument_type.display = function(value)
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
currenex_forex_esp_cbp_v9_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.instrument_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_esp_cbp_v9_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Instrument Info
currenex_forex_esp_cbp_v9_0.instrument_info = {}

-- Size: Instrument Info
currenex_forex_esp_cbp_v9_0.instrument_info.size =
  currenex_forex_esp_cbp_v9_0.session_id.size + 
  currenex_forex_esp_cbp_v9_0.instrument_index.size + 
  currenex_forex_esp_cbp_v9_0.instrument_type.size + 
  currenex_forex_esp_cbp_v9_0.instrument_id.size + 
  currenex_forex_esp_cbp_v9_0.settlement_date.size

-- Display: Instrument Info
currenex_forex_esp_cbp_v9_0.instrument_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info
currenex_forex_esp_cbp_v9_0.instrument_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_esp_cbp_v9_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = currenex_forex_esp_cbp_v9_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = currenex_forex_esp_cbp_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Date: Long
  index, settlement_date = currenex_forex_esp_cbp_v9_0.settlement_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info
currenex_forex_esp_cbp_v9_0.instrument_info.dissect = function(buffer, offset, packet, parent)
  if show.instrument_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.instrument_info, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.instrument_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.instrument_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.instrument_info.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat
currenex_forex_esp_cbp_v9_0.heartbeat = {}

-- Size: Heartbeat
currenex_forex_esp_cbp_v9_0.heartbeat.size =
  currenex_forex_esp_cbp_v9_0.session_id.size

-- Display: Heartbeat
currenex_forex_esp_cbp_v9_0.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
currenex_forex_esp_cbp_v9_0.heartbeat.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
currenex_forex_esp_cbp_v9_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.heartbeat, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.heartbeat.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.heartbeat.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.heartbeat.fields(buffer, offset, packet, parent)
  end
end

-- Reason
currenex_forex_esp_cbp_v9_0.reason = {}

-- Size: Reason
currenex_forex_esp_cbp_v9_0.reason.size = 3

-- Display: Reason
currenex_forex_esp_cbp_v9_0.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
currenex_forex_esp_cbp_v9_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.reason, range, value, display)

  return offset + length, value
end

-- User Id
currenex_forex_esp_cbp_v9_0.user_id = {}

-- Size: User Id
currenex_forex_esp_cbp_v9_0.user_id.size = 20

-- Display: User Id
currenex_forex_esp_cbp_v9_0.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
currenex_forex_esp_cbp_v9_0.user_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.user_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Logout
currenex_forex_esp_cbp_v9_0.logout = {}

-- Size: Logout
currenex_forex_esp_cbp_v9_0.logout.size =
  currenex_forex_esp_cbp_v9_0.user_id.size + 
  currenex_forex_esp_cbp_v9_0.session_id.size + 
  currenex_forex_esp_cbp_v9_0.reason.size

-- Display: Logout
currenex_forex_esp_cbp_v9_0.logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout
currenex_forex_esp_cbp_v9_0.logout.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_esp_cbp_v9_0.user_id.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = currenex_forex_esp_cbp_v9_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout
currenex_forex_esp_cbp_v9_0.logout.dissect = function(buffer, offset, packet, parent)
  if show.logout then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.logout, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.logout.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.logout.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.logout.fields(buffer, offset, packet, parent)
  end
end

-- Password
currenex_forex_esp_cbp_v9_0.password = {}

-- Size: Password
currenex_forex_esp_cbp_v9_0.password.size = 20

-- Display: Password
currenex_forex_esp_cbp_v9_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
currenex_forex_esp_cbp_v9_0.password.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_esp_cbp_v9_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.password, range, value, display)

  return offset + length, value
end

-- Logon
currenex_forex_esp_cbp_v9_0.logon = {}

-- Size: Logon
currenex_forex_esp_cbp_v9_0.logon.size =
  currenex_forex_esp_cbp_v9_0.user_id.size + 
  currenex_forex_esp_cbp_v9_0.password.size + 
  currenex_forex_esp_cbp_v9_0.session_id.size

-- Display: Logon
currenex_forex_esp_cbp_v9_0.logon.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon
currenex_forex_esp_cbp_v9_0.logon.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_esp_cbp_v9_0.user_id.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = currenex_forex_esp_cbp_v9_0.password.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_esp_cbp_v9_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon
currenex_forex_esp_cbp_v9_0.logon.dissect = function(buffer, offset, packet, parent)
  if show.logon then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.logon, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.logon.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.logon.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.logon.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
currenex_forex_esp_cbp_v9_0.message_body = {}

-- Size: Message Body
currenex_forex_esp_cbp_v9_0.message_body.size = function(buffer, offset, message_type)
  -- Size of Logon
  if message_type == "A" then
    return currenex_forex_esp_cbp_v9_0.logon.size
  end
  -- Size of Logout
  if message_type == "B" then
    return currenex_forex_esp_cbp_v9_0.logout.size
  end
  -- Size of Heartbeat
  if message_type == "C" then
    return currenex_forex_esp_cbp_v9_0.heartbeat.size
  end
  -- Size of Instrument Info
  if message_type == "D" then
    return currenex_forex_esp_cbp_v9_0.instrument_info.size
  end
  -- Size of Subscription Request
  if message_type == "F" then
    return currenex_forex_esp_cbp_v9_0.subscription_request.size
  end
  -- Size of Subscription Reply
  if message_type == "G" then
    return currenex_forex_esp_cbp_v9_0.subscription_reply.size
  end
  -- Size of Price Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0.price_message.size
  end
  -- Size of Price Cancel Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0.price_cancel_message.size
  end
  -- Size of Trade Ticker Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0.trade_ticker_message.size
  end
  -- Size of Reject Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0.reject_message.size
  end

  return 0
end

-- Display: Message Body
currenex_forex_esp_cbp_v9_0.message_body.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
currenex_forex_esp_cbp_v9_0.message_body.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon
  if message_type == "A" then
    return currenex_forex_esp_cbp_v9_0.logon.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout
  if message_type == "B" then
    return currenex_forex_esp_cbp_v9_0.logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if message_type == "C" then
    return currenex_forex_esp_cbp_v9_0.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info
  if message_type == "D" then
    return currenex_forex_esp_cbp_v9_0.instrument_info.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Request
  if message_type == "F" then
    return currenex_forex_esp_cbp_v9_0.subscription_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Reply
  if message_type == "G" then
    return currenex_forex_esp_cbp_v9_0.subscription_reply.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0.price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Cancel Message
  if message_type == "H" then
    return currenex_forex_esp_cbp_v9_0.price_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Ticker Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0.trade_ticker_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if message_type == "J" then
    return currenex_forex_esp_cbp_v9_0.reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
currenex_forex_esp_cbp_v9_0.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return currenex_forex_esp_cbp_v9_0.message_body.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = currenex_forex_esp_cbp_v9_0.message_body.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = currenex_forex_esp_cbp_v9_0.message_body.display(buffer, packet, parent)
  local element = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.message_body, range, display)

  return currenex_forex_esp_cbp_v9_0.message_body.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
currenex_forex_esp_cbp_v9_0.message_type = {}

-- Size: Message Type
currenex_forex_esp_cbp_v9_0.message_type.size = 1

-- Display: Message Type
currenex_forex_esp_cbp_v9_0.message_type.display = function(value)
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
currenex_forex_esp_cbp_v9_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_esp_cbp_v9_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
currenex_forex_esp_cbp_v9_0.sequence_number = {}

-- Size: Sequence Number
currenex_forex_esp_cbp_v9_0.sequence_number.size = 4

-- Display: Sequence Number
currenex_forex_esp_cbp_v9_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
currenex_forex_esp_cbp_v9_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = currenex_forex_esp_cbp_v9_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Header
currenex_forex_esp_cbp_v9_0.message_header = {}

-- Size: Message Header
currenex_forex_esp_cbp_v9_0.message_header.size =
  currenex_forex_esp_cbp_v9_0.sequence_number.size + 
  currenex_forex_esp_cbp_v9_0.sequence_number.size + 
  currenex_forex_esp_cbp_v9_0.message_type.size

-- Display: Message Header
currenex_forex_esp_cbp_v9_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
currenex_forex_esp_cbp_v9_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_esp_cbp_v9_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_esp_cbp_v9_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = currenex_forex_esp_cbp_v9_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
currenex_forex_esp_cbp_v9_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.message_header, buffer(offset, 0))
    local index = currenex_forex_esp_cbp_v9_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_esp_cbp_v9_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_esp_cbp_v9_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Itch Soh
currenex_forex_esp_cbp_v9_0.itch_soh = {}

-- Size: Itch Soh
currenex_forex_esp_cbp_v9_0.itch_soh.size = 1

-- Display: Itch Soh
currenex_forex_esp_cbp_v9_0.itch_soh.display = function(value)
  return "Itch Soh: "..value
end

-- Dissect: Itch Soh
currenex_forex_esp_cbp_v9_0.itch_soh.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_esp_cbp_v9_0.itch_soh.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_esp_cbp_v9_0.itch_soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_esp_cbp_v9_0.fields.itch_soh, range, value, display)

  return offset + length, value
end

-- Packet
currenex_forex_esp_cbp_v9_0.packet = {}

-- Dissect Packet
currenex_forex_esp_cbp_v9_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Itch Soh: 1 Byte Fixed Width Integer Static
    index, itch_soh = currenex_forex_esp_cbp_v9_0.itch_soh.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = currenex_forex_esp_cbp_v9_0.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message Body: Runtime Type with 10 branches
    index = currenex_forex_esp_cbp_v9_0.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Itch Etx: 1 Byte Fixed Width Integer
    index, itch_etx = currenex_forex_esp_cbp_v9_0.itch_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_currenex_forex_esp_cbp_v9_0.init()
end

-- Dissector for Currenex Forex Esp Cbp 9.0
function omi_currenex_forex_esp_cbp_v9_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_currenex_forex_esp_cbp_v9_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_currenex_forex_esp_cbp_v9_0, buffer(), omi_currenex_forex_esp_cbp_v9_0.description, "("..buffer:len().." Bytes)")
  return currenex_forex_esp_cbp_v9_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_currenex_forex_esp_cbp_v9_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
currenex_forex_esp_cbp_v9_0.packet.requiredsize = function(buffer)

  return true
end

-- Verify Itch Soh Field
currenex_forex_esp_cbp_v9_0.itch_soh.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Currenex Forex Esp Cbp 9.0
local function omi_currenex_forex_esp_cbp_v9_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not currenex_forex_esp_cbp_v9_0.packet.requiredsize(buffer) then return false end

  -- Verify Itch Soh
  if not currenex_forex_esp_cbp_v9_0.itch_soh.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_currenex_forex_esp_cbp_v9_0
  omi_currenex_forex_esp_cbp_v9_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Currenex Forex Esp Cbp 9.0
omi_currenex_forex_esp_cbp_v9_0:register_heuristic("udp", omi_currenex_forex_esp_cbp_v9_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
