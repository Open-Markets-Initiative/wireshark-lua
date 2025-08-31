-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Currenex Forex Now Cbp 10.0 Protocol
local omi_currenex_forex_now_cbp_v10_0 = Proto("Currenex.Forex.Now.Cbp.v10.0.Lua", "Currenex Forex Now Cbp 10.0")

-- Component Tables
local show = {}
local format = {}
local currenex_forex_now_cbp_v10_0_display = {}
local currenex_forex_now_cbp_v10_0_dissect = {}
local currenex_forex_now_cbp_v10_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Currenex Forex Now Cbp 10.0 Fields
omi_currenex_forex_now_cbp_v10_0.fields.activity_indicator = ProtoField.new("Activity Indicator", "currenex.forex.now.cbp.v10.0.activityindicator", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_id = ProtoField.new("Instrument Id", "currenex.forex.now.cbp.v10.0.instrumentid", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_index = ProtoField.new("Instrument Index", "currenex.forex.now.cbp.v10.0.instrumentindex", ftypes.INT16)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_type = ProtoField.new("Instrument Type", "currenex.forex.now.cbp.v10.0.instrumenttype", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.itch_etx = ProtoField.new("Itch Etx", "currenex.forex.now.cbp.v10.0.itchetx", ftypes.INT8)
omi_currenex_forex_now_cbp_v10_0.fields.itch_soh = ProtoField.new("Itch Soh", "currenex.forex.now.cbp.v10.0.itchsoh", ftypes.INT8)
omi_currenex_forex_now_cbp_v10_0.fields.message_body = ProtoField.new("Message Body", "currenex.forex.now.cbp.v10.0.messagebody", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.message_header = ProtoField.new("Message Header", "currenex.forex.now.cbp.v10.0.messageheader", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.message_type = ProtoField.new("Message Type", "currenex.forex.now.cbp.v10.0.messagetype", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.packet = ProtoField.new("Packet", "currenex.forex.now.cbp.v10.0.packet", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.paid_given_indicator = ProtoField.new("Paid Given Indicator", "currenex.forex.now.cbp.v10.0.paidgivenindicator", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.password = ProtoField.new("Password", "currenex.forex.now.cbp.v10.0.password", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.price = ProtoField.new("Price", "currenex.forex.now.cbp.v10.0.price", ftypes.DOUBLE)
omi_currenex_forex_now_cbp_v10_0.fields.rate = ProtoField.new("Rate", "currenex.forex.now.cbp.v10.0.rate", ftypes.DOUBLE)
omi_currenex_forex_now_cbp_v10_0.fields.reason_alpha_3 = ProtoField.new("Reason Alpha 3", "currenex.forex.now.cbp.v10.0.reasonalpha3", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.reason_alpha_50 = ProtoField.new("Reason Alpha 50", "currenex.forex.now.cbp.v10.0.reasonalpha50", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.reject_msg_type = ProtoField.new("Reject Msg Type", "currenex.forex.now.cbp.v10.0.rejectmsgtype", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.sequence_number = ProtoField.new("Sequence Number", "currenex.forex.now.cbp.v10.0.sequencenumber", ftypes.UINT32)
omi_currenex_forex_now_cbp_v10_0.fields.session_id = ProtoField.new("Session Id", "currenex.forex.now.cbp.v10.0.sessionid", ftypes.INT32)
omi_currenex_forex_now_cbp_v10_0.fields.settlement_date = ProtoField.new("Settlement Date", "currenex.forex.now.cbp.v10.0.settlementdate", ftypes.INT64)
omi_currenex_forex_now_cbp_v10_0.fields.size_indicator = ProtoField.new("Size Indicator", "currenex.forex.now.cbp.v10.0.sizeindicator", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_depth_of_book = ProtoField.new("Subscribe To Now Depth Of Book", "currenex.forex.now.cbp.v10.0.subscribetonowdepthofbook", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_mid_activity_indicator = ProtoField.new("Subscribe To Now Mid Activity Indicator", "currenex.forex.now.cbp.v10.0.subscribetonowmidactivityindicator", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_paid_given_with_bucketed_size = ProtoField.new("Subscribe To Now Paid Given With Bucketed Size", "currenex.forex.now.cbp.v10.0.subscribetonowpaidgivenwithbucketedsize", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_nowwamr_with_confidence_factor = ProtoField.new("Subscribe To Nowwamr With Confidence Factor", "currenex.forex.now.cbp.v10.0.subscribetonowwamrwithconfidencefactor", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscription_type = ProtoField.new("Subscription Type", "currenex.forex.now.cbp.v10.0.subscriptiontype", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.timestamp = ProtoField.new("Timestamp", "currenex.forex.now.cbp.v10.0.timestamp", ftypes.INT64)
omi_currenex_forex_now_cbp_v10_0.fields.transact_time = ProtoField.new("Transact Time", "currenex.forex.now.cbp.v10.0.transacttime", ftypes.INT64)
omi_currenex_forex_now_cbp_v10_0.fields.type = ProtoField.new("Type", "currenex.forex.now.cbp.v10.0.type", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.user_id = ProtoField.new("User Id", "currenex.forex.now.cbp.v10.0.userid", ftypes.STRING)

-- Currenex Forex Now Cbp 10.0 messages
omi_currenex_forex_now_cbp_v10_0.fields.depth_of_book_message = ProtoField.new("Depth Of Book Message", "currenex.forex.now.cbp.v10.0.depthofbookmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.heart_beat_message = ProtoField.new("Heart Beat Message", "currenex.forex.now.cbp.v10.0.heartbeatmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_info = ProtoField.new("Instrument Info", "currenex.forex.now.cbp.v10.0.instrumentinfo", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_info_ack_message = ProtoField.new("Instrument Info Ack Message", "currenex.forex.now.cbp.v10.0.instrumentinfoackmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.logon_message = ProtoField.new("Logon Message", "currenex.forex.now.cbp.v10.0.logonmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.logout_message = ProtoField.new("Logout Message", "currenex.forex.now.cbp.v10.0.logoutmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.mass_subscription_reply_message = ProtoField.new("Mass Subscription Reply Message", "currenex.forex.now.cbp.v10.0.masssubscriptionreplymessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.mass_subscription_request_message = ProtoField.new("Mass Subscription Request Message", "currenex.forex.now.cbp.v10.0.masssubscriptionrequestmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.mid_activity_indicator_message = ProtoField.new("Mid Activity Indicator Message", "currenex.forex.now.cbp.v10.0.midactivityindicatormessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.paid_given_message = ProtoField.new("Paid Given Message", "currenex.forex.now.cbp.v10.0.paidgivenmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.reject_message = ProtoField.new("Reject Message", "currenex.forex.now.cbp.v10.0.rejectmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscription_reply_message = ProtoField.new("Subscription Reply Message", "currenex.forex.now.cbp.v10.0.subscriptionreplymessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.subscription_request_message = ProtoField.new("Subscription Request Message", "currenex.forex.now.cbp.v10.0.subscriptionrequestmessage", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.wamr_with_confidence_factor_message = ProtoField.new("Wamr With Confidence Factor Message", "currenex.forex.now.cbp.v10.0.wamrwithconfidencefactormessage", ftypes.STRING)

-- Currenex Forex Now Cbp 10.0 generated fields
omi_currenex_forex_now_cbp_v10_0.fields.level_index = ProtoField.new("Level Index", "currenex.forex.now.cbp.v10.0.levelindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Currenex Forex Now Cbp 10.0 Element Dissection Options
show.depth_of_book_message = true
show.heart_beat_message = true
show.instrument_info = true
show.instrument_info_ack_message = true
show.logon_message = true
show.logout_message = true
show.mass_subscription_reply_message = true
show.mass_subscription_request_message = true
show.message_header = true
show.mid_activity_indicator_message = true
show.packet = true
show.paid_given_message = true
show.reject_message = true
show.subscription_reply_message = true
show.subscription_request_message = true
show.wamr_with_confidence_factor_message = true
show.message_body = false

-- Register Currenex Forex Now Cbp 10.0 Show Options
omi_currenex_forex_now_cbp_v10_0.prefs.show_depth_of_book_message = Pref.bool("Show Depth Of Book Message", show.depth_of_book_message, "Parse and add Depth Of Book Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_heart_beat_message = Pref.bool("Show Heart Beat Message", show.heart_beat_message, "Parse and add Heart Beat Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info = Pref.bool("Show Instrument Info", show.instrument_info, "Parse and add Instrument Info to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info_ack_message = Pref.bool("Show Instrument Info Ack Message", show.instrument_info_ack_message, "Parse and add Instrument Info Ack Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_reply_message = Pref.bool("Show Mass Subscription Reply Message", show.mass_subscription_reply_message, "Parse and add Mass Subscription Reply Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_request_message = Pref.bool("Show Mass Subscription Request Message", show.mass_subscription_request_message, "Parse and add Mass Subscription Request Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_mid_activity_indicator_message = Pref.bool("Show Mid Activity Indicator Message", show.mid_activity_indicator_message, "Parse and add Mid Activity Indicator Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_paid_given_message = Pref.bool("Show Paid Given Message", show.paid_given_message, "Parse and add Paid Given Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_subscription_reply_message = Pref.bool("Show Subscription Reply Message", show.subscription_reply_message, "Parse and add Subscription Reply Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_subscription_request_message = Pref.bool("Show Subscription Request Message", show.subscription_request_message, "Parse and add Subscription Request Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_wamr_with_confidence_factor_message = Pref.bool("Show Wamr With Confidence Factor Message", show.wamr_with_confidence_factor_message, "Parse and add Wamr With Confidence Factor Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function omi_currenex_forex_now_cbp_v10_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.depth_of_book_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_depth_of_book_message then
    show.depth_of_book_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_depth_of_book_message
    changed = true
  end
  if show.heart_beat_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_heart_beat_message then
    show.heart_beat_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_heart_beat_message
    changed = true
  end
  if show.instrument_info ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info then
    show.instrument_info = omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info
    changed = true
  end
  if show.instrument_info_ack_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info_ack_message then
    show.instrument_info_ack_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info_ack_message
    changed = true
  end
  if show.logon_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_logon_message then
    show.logon_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_logon_message
    changed = true
  end
  if show.logout_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_logout_message then
    show.logout_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_logout_message
    changed = true
  end
  if show.mass_subscription_reply_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_reply_message then
    show.mass_subscription_reply_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_reply_message
    changed = true
  end
  if show.mass_subscription_request_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_request_message then
    show.mass_subscription_request_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_request_message
    changed = true
  end
  if show.message_header ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_message_header then
    show.message_header = omi_currenex_forex_now_cbp_v10_0.prefs.show_message_header
    changed = true
  end
  if show.mid_activity_indicator_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_mid_activity_indicator_message then
    show.mid_activity_indicator_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_mid_activity_indicator_message
    changed = true
  end
  if show.packet ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_packet then
    show.packet = omi_currenex_forex_now_cbp_v10_0.prefs.show_packet
    changed = true
  end
  if show.paid_given_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_paid_given_message then
    show.paid_given_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_paid_given_message
    changed = true
  end
  if show.reject_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_reject_message then
    show.reject_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_reject_message
    changed = true
  end
  if show.subscription_reply_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_subscription_reply_message then
    show.subscription_reply_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_subscription_reply_message
    changed = true
  end
  if show.subscription_request_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_subscription_request_message then
    show.subscription_request_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_subscription_request_message
    changed = true
  end
  if show.wamr_with_confidence_factor_message ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_wamr_with_confidence_factor_message then
    show.wamr_with_confidence_factor_message = omi_currenex_forex_now_cbp_v10_0.prefs.show_wamr_with_confidence_factor_message
    changed = true
  end
  if show.message_body ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_message_body then
    show.message_body = omi_currenex_forex_now_cbp_v10_0.prefs.show_message_body
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
-- Dissect Currenex Forex Now Cbp 10.0
-----------------------------------------------------------------------

-- Size: Itch Etx
currenex_forex_now_cbp_v10_0_size_of.itch_etx = 1

-- Display: Itch Etx
currenex_forex_now_cbp_v10_0_display.itch_etx = function(value)
  return "Itch Etx: "..value
end

-- Dissect: Itch Etx
currenex_forex_now_cbp_v10_0_dissect.itch_etx = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.itch_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0_display.itch_etx(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.itch_etx, range, value, display)

  return offset + length, value
end

-- Size: Reason Alpha 50
currenex_forex_now_cbp_v10_0_size_of.reason_alpha_50 = 50

-- Display: Reason Alpha 50
currenex_forex_now_cbp_v10_0_display.reason_alpha_50 = function(value)
  return "Reason Alpha 50: "..value
end

-- Dissect: Reason Alpha 50
currenex_forex_now_cbp_v10_0_dissect.reason_alpha_50 = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.reason_alpha_50
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0_display.reason_alpha_50(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reason_alpha_50, range, value, display)

  return offset + length, value
end

-- Size: Reject Msg Type
currenex_forex_now_cbp_v10_0_size_of.reject_msg_type = 1

-- Display: Reject Msg Type
currenex_forex_now_cbp_v10_0_display.reject_msg_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Msg Type: No Value"
  end

  return "Reject Msg Type: "..value
end

-- Dissect: Reject Msg Type
currenex_forex_now_cbp_v10_0_dissect.reject_msg_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.reject_msg_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.reject_msg_type(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reject_msg_type, range, value, display)

  return offset + length, value
end

-- Size: Session Id
currenex_forex_now_cbp_v10_0_size_of.session_id = 4

-- Display: Session Id
currenex_forex_now_cbp_v10_0_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
currenex_forex_now_cbp_v10_0_dissect.session_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.session_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0_display.session_id(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reject Message
currenex_forex_now_cbp_v10_0_size_of.reject_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.reject_msg_type

  index = index + currenex_forex_now_cbp_v10_0_size_of.reason_alpha_50

  return index
end

-- Display: Reject Message
currenex_forex_now_cbp_v10_0_display.reject_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
currenex_forex_now_cbp_v10_0_dissect.reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Reject Msg Type: Alpha
  index, reject_msg_type = currenex_forex_now_cbp_v10_0_dissect.reject_msg_type(buffer, index, packet, parent)

  -- Reason Alpha 50: Alpha
  index, reason_alpha_50 = currenex_forex_now_cbp_v10_0_dissect.reason_alpha_50(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
currenex_forex_now_cbp_v10_0_dissect.reject_message = function(buffer, offset, packet, parent)
  if show.reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reject_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.reject_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.reject_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.reject_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Activity Indicator
currenex_forex_now_cbp_v10_0_size_of.activity_indicator = 1

-- Display: Activity Indicator
currenex_forex_now_cbp_v10_0_display.activity_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Activity Indicator: No Value"
  end

  return "Activity Indicator: "..value
end

-- Dissect: Activity Indicator
currenex_forex_now_cbp_v10_0_dissect.activity_indicator = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.activity_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.activity_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.activity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Instrument Index
currenex_forex_now_cbp_v10_0_size_of.instrument_index = 2

-- Display: Instrument Index
currenex_forex_now_cbp_v10_0_display.instrument_index = function(value)
  return "Instrument Index: "..value
end

-- Dissect: Instrument Index
currenex_forex_now_cbp_v10_0_dissect.instrument_index = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.instrument_index
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0_display.instrument_index(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0_size_of.mid_activity_indicator_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + currenex_forex_now_cbp_v10_0_size_of.activity_indicator

  return index
end

-- Display: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0_display.mid_activity_indicator_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0_dissect.mid_activity_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Activity Indicator: Alpha
  index, activity_indicator = currenex_forex_now_cbp_v10_0_dissect.activity_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0_dissect.mid_activity_indicator_message = function(buffer, offset, packet, parent)
  if show.mid_activity_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.mid_activity_indicator_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.mid_activity_indicator_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.mid_activity_indicator_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.mid_activity_indicator_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Timestamp
currenex_forex_now_cbp_v10_0_size_of.timestamp = 8

-- Display: Timestamp
currenex_forex_now_cbp_v10_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
currenex_forex_now_cbp_v10_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Price
currenex_forex_now_cbp_v10_0_size_of.price = 4

-- Display: Price
currenex_forex_now_cbp_v10_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/1000000
end

-- Dissect: Price
currenex_forex_now_cbp_v10_0_dissect.price = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = currenex_forex_now_cbp_v10_0_display.price(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0_size_of.wamr_with_confidence_factor_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + currenex_forex_now_cbp_v10_0_size_of.price

  index = index + currenex_forex_now_cbp_v10_0_size_of.conf_factor_75

  index = index + currenex_forex_now_cbp_v10_0_size_of.conf_factor_50

  index = index + currenex_forex_now_cbp_v10_0_size_of.conf_factor_25

  index = index + currenex_forex_now_cbp_v10_0_size_of.timestamp

  return index
end

-- Display: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0_display.wamr_with_confidence_factor_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0_dissect.wamr_with_confidence_factor_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Price: Scale6_Rate
  index, price = currenex_forex_now_cbp_v10_0_dissect.price(buffer, index, packet, parent)

  -- Conf Factor 75
  index, conf_factor_75 = currenex_forex_now_cbp_v10_0_dissect.conf_factor_75(buffer, index, packet, parent)

  -- Conf Factor 50
  index, conf_factor_50 = currenex_forex_now_cbp_v10_0_dissect.conf_factor_50(buffer, index, packet, parent)

  -- Conf Factor 25
  index, conf_factor_25 = currenex_forex_now_cbp_v10_0_dissect.conf_factor_25(buffer, index, packet, parent)

  -- Timestamp: Long
  index, timestamp = currenex_forex_now_cbp_v10_0_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0_dissect.wamr_with_confidence_factor_message = function(buffer, offset, packet, parent)
  if show.wamr_with_confidence_factor_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.wamr_with_confidence_factor_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.wamr_with_confidence_factor_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.wamr_with_confidence_factor_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.wamr_with_confidence_factor_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Transact Time
currenex_forex_now_cbp_v10_0_size_of.transact_time = 8

-- Display: Transact Time
currenex_forex_now_cbp_v10_0_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
currenex_forex_now_cbp_v10_0_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Paid Given Indicator
currenex_forex_now_cbp_v10_0_size_of.paid_given_indicator = 1

-- Display: Paid Given Indicator
currenex_forex_now_cbp_v10_0_display.paid_given_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Paid Given Indicator: No Value"
  end

  return "Paid Given Indicator: "..value
end

-- Dissect: Paid Given Indicator
currenex_forex_now_cbp_v10_0_dissect.paid_given_indicator = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.paid_given_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.paid_given_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.paid_given_indicator, range, value, display)

  return offset + length, value
end

-- Size: Size Indicator
currenex_forex_now_cbp_v10_0_size_of.size_indicator = 1

-- Display: Size Indicator
currenex_forex_now_cbp_v10_0_display.size_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Size Indicator: No Value"
  end

  return "Size Indicator: "..value
end

-- Dissect: Size Indicator
currenex_forex_now_cbp_v10_0_dissect.size_indicator = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.size_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.size_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.size_indicator, range, value, display)

  return offset + length, value
end

-- Size: Rate
currenex_forex_now_cbp_v10_0_size_of.rate = 4

-- Display: Rate
currenex_forex_now_cbp_v10_0_display.rate = function(value)
  return "Rate: "..value
end

-- Translate: Rate
translate.rate = function(raw)
  return raw/100000
end

-- Dissect: Rate
currenex_forex_now_cbp_v10_0_dissect.rate = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.rate
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.rate(raw)
  local display = currenex_forex_now_cbp_v10_0_display.rate(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.rate, range, value, display)

  return offset + length, value
end

-- Calculate size of: Paid Given Message
currenex_forex_now_cbp_v10_0_size_of.paid_given_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + currenex_forex_now_cbp_v10_0_size_of.rate

  index = index + currenex_forex_now_cbp_v10_0_size_of.size_indicator

  index = index + currenex_forex_now_cbp_v10_0_size_of.paid_given_indicator

  index = index + currenex_forex_now_cbp_v10_0_size_of.transact_time

  return index
end

-- Display: Paid Given Message
currenex_forex_now_cbp_v10_0_display.paid_given_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Paid Given Message
currenex_forex_now_cbp_v10_0_dissect.paid_given_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Rate: Scale5_Rate
  index, rate = currenex_forex_now_cbp_v10_0_dissect.rate(buffer, index, packet, parent)

  -- Size Indicator: Alpha
  index, size_indicator = currenex_forex_now_cbp_v10_0_dissect.size_indicator(buffer, index, packet, parent)

  -- Paid Given Indicator: Alpha
  index, paid_given_indicator = currenex_forex_now_cbp_v10_0_dissect.paid_given_indicator(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_forex_now_cbp_v10_0_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Paid Given Message
currenex_forex_now_cbp_v10_0_dissect.paid_given_message = function(buffer, offset, packet, parent)
  if show.paid_given_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.paid_given_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.paid_given_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.paid_given_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.paid_given_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Depth Of Book Message
currenex_forex_now_cbp_v10_0_size_of.depth_of_book_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + 20 * currenex_forex_now_cbp_v10_0_size_of.level

  return index
end

-- Display: Depth Of Book Message
currenex_forex_now_cbp_v10_0_display.depth_of_book_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Of Book Message
currenex_forex_now_cbp_v10_0_dissect.depth_of_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Array Of: Level
  for level_index = 1, 20 do
    index, level = currenex_forex_now_cbp_v10_0_dissect.level(buffer, index, packet, parent, level_index)
  end

  return index
end

-- Dissect: Depth Of Book Message
currenex_forex_now_cbp_v10_0_dissect.depth_of_book_message = function(buffer, offset, packet, parent)
  if show.depth_of_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.depth_of_book_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.depth_of_book_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.depth_of_book_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.depth_of_book_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Type
currenex_forex_now_cbp_v10_0_size_of.type = 1

-- Display: Type
currenex_forex_now_cbp_v10_0_display.type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Type: No Value"
  end

  return "Type: "..value
end

-- Dissect: Type
currenex_forex_now_cbp_v10_0_dissect.type = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.type(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0_size_of.mass_subscription_reply_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.type

  index = index + currenex_forex_now_cbp_v10_0_size_of.reason_alpha_50

  return index
end

-- Display: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0_display.mass_subscription_reply_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0_dissect.mass_subscription_reply_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Type: Alpha
  index, type = currenex_forex_now_cbp_v10_0_dissect.type(buffer, index, packet, parent)

  -- Reason Alpha 50: Alpha
  index, reason_alpha_50 = currenex_forex_now_cbp_v10_0_dissect.reason_alpha_50(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0_dissect.mass_subscription_reply_message = function(buffer, offset, packet, parent)
  if show.mass_subscription_reply_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.mass_subscription_reply_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.mass_subscription_reply_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.mass_subscription_reply_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.mass_subscription_reply_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Subscription Reply Message
currenex_forex_now_cbp_v10_0_size_of.subscription_reply_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + currenex_forex_now_cbp_v10_0_size_of.type

  index = index + currenex_forex_now_cbp_v10_0_size_of.reason_alpha_50

  return index
end

-- Display: Subscription Reply Message
currenex_forex_now_cbp_v10_0_display.subscription_reply_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Reply Message
currenex_forex_now_cbp_v10_0_dissect.subscription_reply_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Type: Alpha
  index, type = currenex_forex_now_cbp_v10_0_dissect.type(buffer, index, packet, parent)

  -- Reason Alpha 50: Alpha
  index, reason_alpha_50 = currenex_forex_now_cbp_v10_0_dissect.reason_alpha_50(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Reply Message
currenex_forex_now_cbp_v10_0_dissect.subscription_reply_message = function(buffer, offset, packet, parent)
  if show.subscription_reply_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscription_reply_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.subscription_reply_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.subscription_reply_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.subscription_reply_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_mid_activity_indicator = 1

-- Display: Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0_display.subscribe_to_now_mid_activity_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Subscribe To Now Mid Activity Indicator: No Value"
  end

  return "Subscribe To Now Mid Activity Indicator: "..value
end

-- Dissect: Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_mid_activity_indicator = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_mid_activity_indicator
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.subscribe_to_now_mid_activity_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_mid_activity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0_size_of.subscribe_to_nowwamr_with_confidence_factor = 1

-- Display: Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0_display.subscribe_to_nowwamr_with_confidence_factor = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Subscribe To Nowwamr With Confidence Factor: No Value"
  end

  return "Subscribe To Nowwamr With Confidence Factor: "..value
end

-- Dissect: Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0_dissect.subscribe_to_nowwamr_with_confidence_factor = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.subscribe_to_nowwamr_with_confidence_factor
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.subscribe_to_nowwamr_with_confidence_factor(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_nowwamr_with_confidence_factor, range, value, display)

  return offset + length, value
end

-- Size: Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_paid_given_with_bucketed_size = 0

-- Display: Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0_display.subscribe_to_now_paid_given_with_bucketed_size = function(value)
  return "Subscribe To Now Paid Given With Bucketed Size: "..value
end

-- Dissect: Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_paid_given_with_bucketed_size = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_paid_given_with_bucketed_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_now_cbp_v10_0_display.subscribe_to_now_paid_given_with_bucketed_size(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_paid_given_with_bucketed_size, range, value, display)

  return offset + length, value
end

-- Size: Subscribe To Now Depth Of Book
currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_depth_of_book = 1

-- Display: Subscribe To Now Depth Of Book
currenex_forex_now_cbp_v10_0_display.subscribe_to_now_depth_of_book = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Subscribe To Now Depth Of Book: No Value"
  end

  if value == "0" then
    return "Subscribe To Now Depth Of Book: Subscribe (0)"
  end
  if value == "1" then
    return "Subscribe To Now Depth Of Book: Do Not Subscribe (1)"
  end

  return "Subscribe To Now Depth Of Book: Unknown("..value..")"
end

-- Dissect: Subscribe To Now Depth Of Book
currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_depth_of_book = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_depth_of_book
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.subscribe_to_now_depth_of_book(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_depth_of_book, range, value, display)

  return offset + length, value
end

-- Size: Subscription Type
currenex_forex_now_cbp_v10_0_size_of.subscription_type = 1

-- Display: Subscription Type
currenex_forex_now_cbp_v10_0_display.subscription_type = function(value)
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
currenex_forex_now_cbp_v10_0_dissect.subscription_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.subscription_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.subscription_type(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscription_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0_size_of.mass_subscription_request_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscription_type

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_depth_of_book

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_paid_given_with_bucketed_size

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_nowwamr_with_confidence_factor

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_mid_activity_indicator

  return index
end

-- Display: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0_display.mass_subscription_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0_dissect.mass_subscription_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Subscription Type: Alpha
  index, subscription_type = currenex_forex_now_cbp_v10_0_dissect.subscription_type(buffer, index, packet, parent)

  -- Subscribe To Now Depth Of Book: Alpha
  index, subscribe_to_now_depth_of_book = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_depth_of_book(buffer, index, packet, parent)

  -- Subscribe To Now Paid Given With Bucketed Size: Alpha
  index, subscribe_to_now_paid_given_with_bucketed_size = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_paid_given_with_bucketed_size(buffer, index, packet, parent)

  -- Subscribe To Nowwamr With Confidence Factor: Alpha
  index, subscribe_to_nowwamr_with_confidence_factor = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_nowwamr_with_confidence_factor(buffer, index, packet, parent)

  -- Subscribe To Now Mid Activity Indicator: Alpha
  index, subscribe_to_now_mid_activity_indicator = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_mid_activity_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0_dissect.mass_subscription_request_message = function(buffer, offset, packet, parent)
  if show.mass_subscription_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.mass_subscription_request_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.mass_subscription_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.mass_subscription_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.mass_subscription_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Subscription Request Message
currenex_forex_now_cbp_v10_0_size_of.subscription_request_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscription_type

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_depth_of_book

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_paid_given_with_bucketed_size

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_nowwamr_with_confidence_factor

  index = index + currenex_forex_now_cbp_v10_0_size_of.subscribe_to_now_mid_activity_indicator

  return index
end

-- Display: Subscription Request Message
currenex_forex_now_cbp_v10_0_display.subscription_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Request Message
currenex_forex_now_cbp_v10_0_dissect.subscription_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Subscription Type: Alpha
  index, subscription_type = currenex_forex_now_cbp_v10_0_dissect.subscription_type(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Subscribe To Now Depth Of Book: Alpha
  index, subscribe_to_now_depth_of_book = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_depth_of_book(buffer, index, packet, parent)

  -- Subscribe To Now Paid Given With Bucketed Size: Alpha
  index, subscribe_to_now_paid_given_with_bucketed_size = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_paid_given_with_bucketed_size(buffer, index, packet, parent)

  -- Subscribe To Nowwamr With Confidence Factor: Alpha
  index, subscribe_to_nowwamr_with_confidence_factor = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_nowwamr_with_confidence_factor(buffer, index, packet, parent)

  -- Subscribe To Now Mid Activity Indicator: Alpha
  index, subscribe_to_now_mid_activity_indicator = currenex_forex_now_cbp_v10_0_dissect.subscribe_to_now_mid_activity_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Request Message
currenex_forex_now_cbp_v10_0_dissect.subscription_request_message = function(buffer, offset, packet, parent)
  if show.subscription_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscription_request_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.subscription_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.subscription_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.subscription_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0_size_of.instrument_info_ack_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  return index
end

-- Display: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0_display.instrument_info_ack_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0_dissect.instrument_info_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0_dissect.instrument_info_ack_message = function(buffer, offset, packet, parent)
  if show.instrument_info_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_info_ack_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.instrument_info_ack_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.instrument_info_ack_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.instrument_info_ack_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Settlement Date
currenex_forex_now_cbp_v10_0_size_of.settlement_date = 8

-- Display: Settlement Date
currenex_forex_now_cbp_v10_0_display.settlement_date = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
currenex_forex_now_cbp_v10_0_dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0_display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
currenex_forex_now_cbp_v10_0_size_of.instrument_id = 20

-- Display: Instrument Id
currenex_forex_now_cbp_v10_0_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
currenex_forex_now_cbp_v10_0_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
currenex_forex_now_cbp_v10_0_size_of.instrument_type = 1

-- Display: Instrument Type
currenex_forex_now_cbp_v10_0_display.instrument_type = function(value)
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
currenex_forex_now_cbp_v10_0_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.instrument_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Info
currenex_forex_now_cbp_v10_0_size_of.instrument_info = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_index

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_type

  index = index + currenex_forex_now_cbp_v10_0_size_of.instrument_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.settlement_date

  return index
end

-- Display: Instrument Info
currenex_forex_now_cbp_v10_0_display.instrument_info = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info
currenex_forex_now_cbp_v10_0_dissect.instrument_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = currenex_forex_now_cbp_v10_0_dissect.instrument_type(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = currenex_forex_now_cbp_v10_0_dissect.instrument_id(buffer, index, packet, parent)

  -- Settlement Date: Long
  index, settlement_date = currenex_forex_now_cbp_v10_0_dissect.settlement_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info
currenex_forex_now_cbp_v10_0_dissect.instrument_info = function(buffer, offset, packet, parent)
  if show.instrument_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_info, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.instrument_info_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.instrument_info(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.instrument_info_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Heart Beat Message
currenex_forex_now_cbp_v10_0_size_of.heart_beat_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  return index
end

-- Display: Heart Beat Message
currenex_forex_now_cbp_v10_0_display.heart_beat_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heart Beat Message
currenex_forex_now_cbp_v10_0_dissect.heart_beat_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heart Beat Message
currenex_forex_now_cbp_v10_0_dissect.heart_beat_message = function(buffer, offset, packet, parent)
  if show.heart_beat_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.heart_beat_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.heart_beat_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.heart_beat_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.heart_beat_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reason Alpha 3
currenex_forex_now_cbp_v10_0_size_of.reason_alpha_3 = 3

-- Display: Reason Alpha 3
currenex_forex_now_cbp_v10_0_display.reason_alpha_3 = function(value)
  return "Reason Alpha 3: "..value
end

-- Dissect: Reason Alpha 3
currenex_forex_now_cbp_v10_0_dissect.reason_alpha_3 = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.reason_alpha_3
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0_display.reason_alpha_3(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reason_alpha_3, range, value, display)

  return offset + length, value
end

-- Size: User Id
currenex_forex_now_cbp_v10_0_size_of.user_id = 20

-- Display: User Id
currenex_forex_now_cbp_v10_0_display.user_id = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
currenex_forex_now_cbp_v10_0_dissect.user_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.user_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0_display.user_id(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout Message
currenex_forex_now_cbp_v10_0_size_of.logout_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.user_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.reason_alpha_3

  return index
end

-- Display: Logout Message
currenex_forex_now_cbp_v10_0_display.logout_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
currenex_forex_now_cbp_v10_0_dissect.logout_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_now_cbp_v10_0_dissect.user_id(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  -- Reason Alpha 3: Alpha
  index, reason_alpha_3 = currenex_forex_now_cbp_v10_0_dissect.reason_alpha_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
currenex_forex_now_cbp_v10_0_dissect.logout_message = function(buffer, offset, packet, parent)
  if show.logout_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.logout_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.logout_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.logout_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.logout_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Password
currenex_forex_now_cbp_v10_0_size_of.password = 20

-- Display: Password
currenex_forex_now_cbp_v10_0_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
currenex_forex_now_cbp_v10_0_dissect.password = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.password
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0_display.password(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.password, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Message
currenex_forex_now_cbp_v10_0_size_of.logon_message = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.user_id

  index = index + currenex_forex_now_cbp_v10_0_size_of.password

  index = index + currenex_forex_now_cbp_v10_0_size_of.session_id

  return index
end

-- Display: Logon Message
currenex_forex_now_cbp_v10_0_display.logon_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
currenex_forex_now_cbp_v10_0_dissect.logon_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_now_cbp_v10_0_dissect.user_id(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = currenex_forex_now_cbp_v10_0_dissect.password(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
currenex_forex_now_cbp_v10_0_dissect.logon_message = function(buffer, offset, packet, parent)
  if show.logon_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.logon_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.logon_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.logon_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.logon_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Message Body
currenex_forex_now_cbp_v10_0_size_of.message_body = function(buffer, offset, message_type)
  -- Size of Logon Message
  if message_type == "A" then
    return currenex_forex_now_cbp_v10_0_size_of.logon_message(buffer, offset)
  end
  -- Size of Logout Message
  if message_type == "B" then
    return currenex_forex_now_cbp_v10_0_size_of.logout_message(buffer, offset)
  end
  -- Size of Heart Beat Message
  if message_type == "C" then
    return currenex_forex_now_cbp_v10_0_size_of.heart_beat_message(buffer, offset)
  end
  -- Size of Instrument Info
  if message_type == "D" then
    return currenex_forex_now_cbp_v10_0_size_of.instrument_info(buffer, offset)
  end
  -- Size of Instrument Info Ack Message
  if message_type == "E" then
    return currenex_forex_now_cbp_v10_0_size_of.instrument_info_ack_message(buffer, offset)
  end
  -- Size of Subscription Request Message
  if message_type == "X" then
    return currenex_forex_now_cbp_v10_0_size_of.subscription_request_message(buffer, offset)
  end
  -- Size of Mass Subscription Request Message
  if message_type == "Y" then
    return currenex_forex_now_cbp_v10_0_size_of.mass_subscription_request_message(buffer, offset)
  end
  -- Size of Subscription Reply Message
  if message_type == "G" then
    return currenex_forex_now_cbp_v10_0_size_of.subscription_reply_message(buffer, offset)
  end
  -- Size of Mass Subscription Reply Message
  if message_type == "Z" then
    return currenex_forex_now_cbp_v10_0_size_of.mass_subscription_reply_message(buffer, offset)
  end
  -- Size of Depth Of Book Message
  if message_type == "d" then
    return currenex_forex_now_cbp_v10_0_size_of.depth_of_book_message(buffer, offset)
  end
  -- Size of Paid Given Message
  if message_type == "k" then
    return currenex_forex_now_cbp_v10_0_size_of.paid_given_message(buffer, offset)
  end
  -- Size of Wamr With Confidence Factor Message
  if message_type == "r" then
    return currenex_forex_now_cbp_v10_0_size_of.wamr_with_confidence_factor_message(buffer, offset)
  end
  -- Size of Mid Activity Indicator Message
  if message_type == "x" then
    return currenex_forex_now_cbp_v10_0_size_of.mid_activity_indicator_message(buffer, offset)
  end
  -- Size of Reject Message
  if message_type == "K" then
    return currenex_forex_now_cbp_v10_0_size_of.reject_message(buffer, offset)
  end

  return 0
end

-- Display: Message Body
currenex_forex_now_cbp_v10_0_display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
currenex_forex_now_cbp_v10_0_dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Message
  if message_type == "A" then
    return currenex_forex_now_cbp_v10_0_dissect.logon_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == "B" then
    return currenex_forex_now_cbp_v10_0_dissect.logout_message(buffer, offset, packet, parent)
  end
  -- Dissect Heart Beat Message
  if message_type == "C" then
    return currenex_forex_now_cbp_v10_0_dissect.heart_beat_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info
  if message_type == "D" then
    return currenex_forex_now_cbp_v10_0_dissect.instrument_info(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Ack Message
  if message_type == "E" then
    return currenex_forex_now_cbp_v10_0_dissect.instrument_info_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Request Message
  if message_type == "X" then
    return currenex_forex_now_cbp_v10_0_dissect.subscription_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Subscription Request Message
  if message_type == "Y" then
    return currenex_forex_now_cbp_v10_0_dissect.mass_subscription_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Reply Message
  if message_type == "G" then
    return currenex_forex_now_cbp_v10_0_dissect.subscription_reply_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Subscription Reply Message
  if message_type == "Z" then
    return currenex_forex_now_cbp_v10_0_dissect.mass_subscription_reply_message(buffer, offset, packet, parent)
  end
  -- Dissect Depth Of Book Message
  if message_type == "d" then
    return currenex_forex_now_cbp_v10_0_dissect.depth_of_book_message(buffer, offset, packet, parent)
  end
  -- Dissect Paid Given Message
  if message_type == "k" then
    return currenex_forex_now_cbp_v10_0_dissect.paid_given_message(buffer, offset, packet, parent)
  end
  -- Dissect Wamr With Confidence Factor Message
  if message_type == "r" then
    return currenex_forex_now_cbp_v10_0_dissect.wamr_with_confidence_factor_message(buffer, offset, packet, parent)
  end
  -- Dissect Mid Activity Indicator Message
  if message_type == "x" then
    return currenex_forex_now_cbp_v10_0_dissect.mid_activity_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if message_type == "K" then
    return currenex_forex_now_cbp_v10_0_dissect.reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
currenex_forex_now_cbp_v10_0_dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return currenex_forex_now_cbp_v10_0_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = currenex_forex_now_cbp_v10_0_size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = currenex_forex_now_cbp_v10_0_display.message_body(buffer, packet, parent)
  local element = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.message_body, range, display)

  return currenex_forex_now_cbp_v10_0_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
currenex_forex_now_cbp_v10_0_size_of.message_type = 1

-- Display: Message Type
currenex_forex_now_cbp_v10_0_display.message_type = function(value)
  if value == "A" then
    return "Message Type: Logon Message (A)"
  end
  if value == "B" then
    return "Message Type: Logout Message (B)"
  end
  if value == "C" then
    return "Message Type: Heart Beat Message (C)"
  end
  if value == "D" then
    return "Message Type: Instrument Info (D)"
  end
  if value == "E" then
    return "Message Type: Instrument Info Ack Message (E)"
  end
  if value == "X" then
    return "Message Type: Subscription Request Message (X)"
  end
  if value == "Y" then
    return "Message Type: Mass Subscription Request Message (Y)"
  end
  if value == "G" then
    return "Message Type: Subscription Reply Message (G)"
  end
  if value == "Z" then
    return "Message Type: Mass Subscription Reply Message (Z)"
  end
  if value == "d" then
    return "Message Type: Depth Of Book Message (d)"
  end
  if value == "k" then
    return "Message Type: Paid Given Message (k)"
  end
  if value == "r" then
    return "Message Type: Wamr With Confidence Factor Message (r)"
  end
  if value == "x" then
    return "Message Type: Mid Activity Indicator Message (x)"
  end
  if value == "K" then
    return "Message Type: Reject Message (K)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
currenex_forex_now_cbp_v10_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_now_cbp_v10_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
currenex_forex_now_cbp_v10_0_size_of.sequence_number = 4

-- Display: Sequence Number
currenex_forex_now_cbp_v10_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
currenex_forex_now_cbp_v10_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = currenex_forex_now_cbp_v10_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
currenex_forex_now_cbp_v10_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_now_cbp_v10_0_size_of.sequence_number

  index = index + currenex_forex_now_cbp_v10_0_size_of.sequence_number

  index = index + currenex_forex_now_cbp_v10_0_size_of.message_type

  return index
end

-- Display: Message Header
currenex_forex_now_cbp_v10_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
currenex_forex_now_cbp_v10_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_now_cbp_v10_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_now_cbp_v10_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = currenex_forex_now_cbp_v10_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
currenex_forex_now_cbp_v10_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.message_header, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Itch Soh
currenex_forex_now_cbp_v10_0_size_of.itch_soh = 1

-- Display: Itch Soh
currenex_forex_now_cbp_v10_0_display.itch_soh = function(value)
  return "Itch Soh: "..value
end

-- Dissect: Itch Soh
currenex_forex_now_cbp_v10_0_dissect.itch_soh = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0_size_of.itch_soh
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0_display.itch_soh(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.itch_soh, range, value, display)

  return offset + length, value
end

-- Dissect Packet
currenex_forex_now_cbp_v10_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Itch Soh: 1 Byte Fixed Width Integer Static
    index, itch_soh = currenex_forex_now_cbp_v10_0_dissect.itch_soh(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = currenex_forex_now_cbp_v10_0_dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message Body: Runtime Type with 14 branches
    index = currenex_forex_now_cbp_v10_0_dissect.message_body(buffer, index, packet, parent, message_type)

    -- Itch Etx: 1 Byte Fixed Width Integer
    index, itch_etx = currenex_forex_now_cbp_v10_0_dissect.itch_etx(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_currenex_forex_now_cbp_v10_0.init()
end

-- Dissector for Currenex Forex Now Cbp 10.0
function omi_currenex_forex_now_cbp_v10_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_currenex_forex_now_cbp_v10_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_currenex_forex_now_cbp_v10_0, buffer(), omi_currenex_forex_now_cbp_v10_0.description, "("..buffer:len().." Bytes)")
  return currenex_forex_now_cbp_v10_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_currenex_forex_now_cbp_v10_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_currenex_forex_now_cbp_v10_0_packet_size = function(buffer)

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

-- Dissector Heuristic for Currenex Forex Now Cbp 10.0
local function omi_currenex_forex_now_cbp_v10_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_currenex_forex_now_cbp_v10_0_packet_size(buffer) then return false end

  -- Verify Itch Soh
  if not verify.itch_soh(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_currenex_forex_now_cbp_v10_0
  omi_currenex_forex_now_cbp_v10_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Currenex Forex Now Cbp 10.0
omi_currenex_forex_now_cbp_v10_0:register_heuristic("udp", omi_currenex_forex_now_cbp_v10_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Currenex
--   Version: 10.0
--   Date: Monday, May 7, 2018
--   Specification: Currenex_NOW_Itch_Specification.pdf
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
