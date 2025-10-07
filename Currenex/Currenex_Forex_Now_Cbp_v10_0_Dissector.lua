-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Currenex Forex Now Cbp 10.0 Protocol
local omi_currenex_forex_now_cbp_v10_0 = Proto("Currenex.Forex.Now.Cbp.v10.0.Lua", "Currenex Forex Now Cbp 10.0")

-- Protocol table
local currenex_forex_now_cbp_v10_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Currenex Forex Now Cbp 10.0 Fields
omi_currenex_forex_now_cbp_v10_0.fields.activity_indicator = ProtoField.new("Activity Indicator", "currenex.forex.now.cbp.v10.0.activityindicator", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.amount = ProtoField.new("Amount", "currenex.forex.now.cbp.v10.0.amount", ftypes.INT64)
omi_currenex_forex_now_cbp_v10_0.fields.bid = ProtoField.new("Bid", "currenex.forex.now.cbp.v10.0.bid", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.bid_price = ProtoField.new("Bid Price", "currenex.forex.now.cbp.v10.0.bidprice", ftypes.DOUBLE)
omi_currenex_forex_now_cbp_v10_0.fields.conf_factor_25 = ProtoField.new("Conf Factor 25", "currenex.forex.now.cbp.v10.0.conffactor25", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.conf_factor_50 = ProtoField.new("Conf Factor 50", "currenex.forex.now.cbp.v10.0.conffactor50", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.conf_factor_75 = ProtoField.new("Conf Factor 75", "currenex.forex.now.cbp.v10.0.conffactor75", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_id = ProtoField.new("Instrument Id", "currenex.forex.now.cbp.v10.0.instrumentid", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_index = ProtoField.new("Instrument Index", "currenex.forex.now.cbp.v10.0.instrumentindex", ftypes.INT16)
omi_currenex_forex_now_cbp_v10_0.fields.instrument_type = ProtoField.new("Instrument Type", "currenex.forex.now.cbp.v10.0.instrumenttype", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.itch_etx = ProtoField.new("Itch Etx", "currenex.forex.now.cbp.v10.0.itchetx", ftypes.INT8)
omi_currenex_forex_now_cbp_v10_0.fields.itch_soh = ProtoField.new("Itch Soh", "currenex.forex.now.cbp.v10.0.itchsoh", ftypes.INT8)
omi_currenex_forex_now_cbp_v10_0.fields.level = ProtoField.new("Level", "currenex.forex.now.cbp.v10.0.level", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.message_body = ProtoField.new("Message Body", "currenex.forex.now.cbp.v10.0.messagebody", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.message_header = ProtoField.new("Message Header", "currenex.forex.now.cbp.v10.0.messageheader", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.message_type = ProtoField.new("Message Type", "currenex.forex.now.cbp.v10.0.messagetype", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.offer = ProtoField.new("Offer", "currenex.forex.now.cbp.v10.0.offer", ftypes.STRING)
omi_currenex_forex_now_cbp_v10_0.fields.offer_price = ProtoField.new("Offer Price", "currenex.forex.now.cbp.v10.0.offerprice", ftypes.DOUBLE)
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

local show = {}

-- Currenex Forex Now Cbp 10.0 Element Dissection Options
show.bid = true
show.conf_factor_25 = true
show.conf_factor_50 = true
show.conf_factor_75 = true
show.depth_of_book_message = true
show.heart_beat_message = true
show.instrument_info = true
show.instrument_info_ack_message = true
show.level = true
show.logon_message = true
show.logout_message = true
show.mass_subscription_reply_message = true
show.mass_subscription_request_message = true
show.message_header = true
show.mid_activity_indicator_message = true
show.offer = true
show.packet = true
show.paid_given_message = true
show.reject_message = true
show.subscription_reply_message = true
show.subscription_request_message = true
show.wamr_with_confidence_factor_message = true
show.message_body = false

-- Register Currenex Forex Now Cbp 10.0 Show Options
omi_currenex_forex_now_cbp_v10_0.prefs.show_bid = Pref.bool("Show Bid", show.bid, "Parse and add Bid to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_25 = Pref.bool("Show Conf Factor 25", show.conf_factor_25, "Parse and add Conf Factor 25 to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_50 = Pref.bool("Show Conf Factor 50", show.conf_factor_50, "Parse and add Conf Factor 50 to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_75 = Pref.bool("Show Conf Factor 75", show.conf_factor_75, "Parse and add Conf Factor 75 to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_depth_of_book_message = Pref.bool("Show Depth Of Book Message", show.depth_of_book_message, "Parse and add Depth Of Book Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_heart_beat_message = Pref.bool("Show Heart Beat Message", show.heart_beat_message, "Parse and add Heart Beat Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info = Pref.bool("Show Instrument Info", show.instrument_info, "Parse and add Instrument Info to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_instrument_info_ack_message = Pref.bool("Show Instrument Info Ack Message", show.instrument_info_ack_message, "Parse and add Instrument Info Ack Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_level = Pref.bool("Show Level", show.level, "Parse and add Level to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_reply_message = Pref.bool("Show Mass Subscription Reply Message", show.mass_subscription_reply_message, "Parse and add Mass Subscription Reply Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_mass_subscription_request_message = Pref.bool("Show Mass Subscription Request Message", show.mass_subscription_request_message, "Parse and add Mass Subscription Request Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_mid_activity_indicator_message = Pref.bool("Show Mid Activity Indicator Message", show.mid_activity_indicator_message, "Parse and add Mid Activity Indicator Message to protocol tree")
omi_currenex_forex_now_cbp_v10_0.prefs.show_offer = Pref.bool("Show Offer", show.offer, "Parse and add Offer to protocol tree")
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
  if show.bid ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_bid then
    show.bid = omi_currenex_forex_now_cbp_v10_0.prefs.show_bid
    changed = true
  end
  if show.conf_factor_25 ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_25 then
    show.conf_factor_25 = omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_25
    changed = true
  end
  if show.conf_factor_50 ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_50 then
    show.conf_factor_50 = omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_50
    changed = true
  end
  if show.conf_factor_75 ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_75 then
    show.conf_factor_75 = omi_currenex_forex_now_cbp_v10_0.prefs.show_conf_factor_75
    changed = true
  end
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
  if show.level ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_level then
    show.level = omi_currenex_forex_now_cbp_v10_0.prefs.show_level
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
  if show.offer ~= omi_currenex_forex_now_cbp_v10_0.prefs.show_offer then
    show.offer = omi_currenex_forex_now_cbp_v10_0.prefs.show_offer
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

-- Itch Etx
currenex_forex_now_cbp_v10_0.itch_etx = {}

-- Size: Itch Etx
currenex_forex_now_cbp_v10_0.itch_etx.size = 1

-- Display: Itch Etx
currenex_forex_now_cbp_v10_0.itch_etx.display = function(value)
  return "Itch Etx: "..value
end

-- Dissect: Itch Etx
currenex_forex_now_cbp_v10_0.itch_etx.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.itch_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0.itch_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.itch_etx, range, value, display)

  return offset + length, value
end

-- Reason Alpha 50
currenex_forex_now_cbp_v10_0.reason_alpha_50 = {}

-- Size: Reason Alpha 50
currenex_forex_now_cbp_v10_0.reason_alpha_50.size = 50

-- Display: Reason Alpha 50
currenex_forex_now_cbp_v10_0.reason_alpha_50.display = function(value)
  return "Reason Alpha 50: "..value
end

-- Dissect: Reason Alpha 50
currenex_forex_now_cbp_v10_0.reason_alpha_50.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.reason_alpha_50.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0.reason_alpha_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reason_alpha_50, range, value, display)

  return offset + length, value
end

-- Reject Msg Type
currenex_forex_now_cbp_v10_0.reject_msg_type = {}

-- Size: Reject Msg Type
currenex_forex_now_cbp_v10_0.reject_msg_type.size = 1

-- Display: Reject Msg Type
currenex_forex_now_cbp_v10_0.reject_msg_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Msg Type: No Value"
  end

  return "Reject Msg Type: "..value
end

-- Dissect: Reject Msg Type
currenex_forex_now_cbp_v10_0.reject_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.reject_msg_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.reject_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reject_msg_type, range, value, display)

  return offset + length, value
end

-- Session Id
currenex_forex_now_cbp_v10_0.session_id = {}

-- Size: Session Id
currenex_forex_now_cbp_v10_0.session_id.size = 4

-- Display: Session Id
currenex_forex_now_cbp_v10_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
currenex_forex_now_cbp_v10_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.session_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Reject Message
currenex_forex_now_cbp_v10_0.reject_message = {}

-- Size: Reject Message
currenex_forex_now_cbp_v10_0.reject_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.reject_msg_type.size + 
  currenex_forex_now_cbp_v10_0.reason_alpha_50.size

-- Display: Reject Message
currenex_forex_now_cbp_v10_0.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
currenex_forex_now_cbp_v10_0.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Reject Msg Type: Alpha
  index, reject_msg_type = currenex_forex_now_cbp_v10_0.reject_msg_type.dissect(buffer, index, packet, parent)

  -- Reason Alpha 50: Alpha
  index, reason_alpha_50 = currenex_forex_now_cbp_v10_0.reason_alpha_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
currenex_forex_now_cbp_v10_0.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reject_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Activity Indicator
currenex_forex_now_cbp_v10_0.activity_indicator = {}

-- Size: Activity Indicator
currenex_forex_now_cbp_v10_0.activity_indicator.size = 1

-- Display: Activity Indicator
currenex_forex_now_cbp_v10_0.activity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Activity Indicator: No Value"
  end

  return "Activity Indicator: "..value
end

-- Dissect: Activity Indicator
currenex_forex_now_cbp_v10_0.activity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.activity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.activity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.activity_indicator, range, value, display)

  return offset + length, value
end

-- Instrument Index
currenex_forex_now_cbp_v10_0.instrument_index = {}

-- Size: Instrument Index
currenex_forex_now_cbp_v10_0.instrument_index.size = 2

-- Display: Instrument Index
currenex_forex_now_cbp_v10_0.instrument_index.display = function(value)
  return "Instrument Index: "..value
end

-- Dissect: Instrument Index
currenex_forex_now_cbp_v10_0.instrument_index.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.instrument_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0.instrument_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_index, range, value, display)

  return offset + length, value
end

-- Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0.mid_activity_indicator_message = {}

-- Size: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.size =
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.activity_indicator.size

-- Display: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Activity Indicator: Alpha
  index, activity_indicator = currenex_forex_now_cbp_v10_0.activity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mid Activity Indicator Message
currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.mid_activity_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.mid_activity_indicator_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
currenex_forex_now_cbp_v10_0.timestamp = {}

-- Size: Timestamp
currenex_forex_now_cbp_v10_0.timestamp.size = 8

-- Display: Timestamp
currenex_forex_now_cbp_v10_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
currenex_forex_now_cbp_v10_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Offer Price
currenex_forex_now_cbp_v10_0.offer_price = {}

-- Size: Offer Price
currenex_forex_now_cbp_v10_0.offer_price.size = 4

-- Display: Offer Price
currenex_forex_now_cbp_v10_0.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
currenex_forex_now_cbp_v10_0.offer_price.translate = function(raw)
  return raw/100000
end

-- Dissect: Offer Price
currenex_forex_now_cbp_v10_0.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.offer_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = currenex_forex_now_cbp_v10_0.offer_price.translate(raw)
  local display = currenex_forex_now_cbp_v10_0.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Bid Price
currenex_forex_now_cbp_v10_0.bid_price = {}

-- Size: Bid Price
currenex_forex_now_cbp_v10_0.bid_price.size = 4

-- Display: Bid Price
currenex_forex_now_cbp_v10_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
currenex_forex_now_cbp_v10_0.bid_price.translate = function(raw)
  return raw/100000
end

-- Dissect: Bid Price
currenex_forex_now_cbp_v10_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = currenex_forex_now_cbp_v10_0.bid_price.translate(raw)
  local display = currenex_forex_now_cbp_v10_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Conf Factor 25
currenex_forex_now_cbp_v10_0.conf_factor_25 = {}

-- Size: Conf Factor 25
currenex_forex_now_cbp_v10_0.conf_factor_25.size =
  currenex_forex_now_cbp_v10_0.bid_price.size + 
  currenex_forex_now_cbp_v10_0.offer_price.size

-- Display: Conf Factor 25
currenex_forex_now_cbp_v10_0.conf_factor_25.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Conf Factor 25
currenex_forex_now_cbp_v10_0.conf_factor_25.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price: Scale5_Rate
  index, bid_price = currenex_forex_now_cbp_v10_0.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: Scale5_Rate
  index, offer_price = currenex_forex_now_cbp_v10_0.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Conf Factor 25
currenex_forex_now_cbp_v10_0.conf_factor_25.dissect = function(buffer, offset, packet, parent)
  if show.conf_factor_25 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.conf_factor_25, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.conf_factor_25.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.conf_factor_25.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.conf_factor_25.fields(buffer, offset, packet, parent)
  end
end

-- Conf Factor 50
currenex_forex_now_cbp_v10_0.conf_factor_50 = {}

-- Size: Conf Factor 50
currenex_forex_now_cbp_v10_0.conf_factor_50.size =
  currenex_forex_now_cbp_v10_0.bid_price.size + 
  currenex_forex_now_cbp_v10_0.offer_price.size

-- Display: Conf Factor 50
currenex_forex_now_cbp_v10_0.conf_factor_50.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Conf Factor 50
currenex_forex_now_cbp_v10_0.conf_factor_50.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price: Scale5_Rate
  index, bid_price = currenex_forex_now_cbp_v10_0.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: Scale5_Rate
  index, offer_price = currenex_forex_now_cbp_v10_0.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Conf Factor 50
currenex_forex_now_cbp_v10_0.conf_factor_50.dissect = function(buffer, offset, packet, parent)
  if show.conf_factor_50 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.conf_factor_50, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.conf_factor_50.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.conf_factor_50.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.conf_factor_50.fields(buffer, offset, packet, parent)
  end
end

-- Conf Factor 75
currenex_forex_now_cbp_v10_0.conf_factor_75 = {}

-- Size: Conf Factor 75
currenex_forex_now_cbp_v10_0.conf_factor_75.size =
  currenex_forex_now_cbp_v10_0.bid_price.size + 
  currenex_forex_now_cbp_v10_0.offer_price.size

-- Display: Conf Factor 75
currenex_forex_now_cbp_v10_0.conf_factor_75.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Conf Factor 75
currenex_forex_now_cbp_v10_0.conf_factor_75.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price: Scale5_Rate
  index, bid_price = currenex_forex_now_cbp_v10_0.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: Scale5_Rate
  index, offer_price = currenex_forex_now_cbp_v10_0.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Conf Factor 75
currenex_forex_now_cbp_v10_0.conf_factor_75.dissect = function(buffer, offset, packet, parent)
  if show.conf_factor_75 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.conf_factor_75, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.conf_factor_75.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.conf_factor_75.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.conf_factor_75.fields(buffer, offset, packet, parent)
  end
end

-- Price
currenex_forex_now_cbp_v10_0.price = {}

-- Size: Price
currenex_forex_now_cbp_v10_0.price.size = 4

-- Display: Price
currenex_forex_now_cbp_v10_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
currenex_forex_now_cbp_v10_0.price.translate = function(raw)
  return raw/1000000
end

-- Dissect: Price
currenex_forex_now_cbp_v10_0.price.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = currenex_forex_now_cbp_v10_0.price.translate(raw)
  local display = currenex_forex_now_cbp_v10_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.price, range, value, display)

  return offset + length, value
end

-- Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message = {}

-- Size: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.size =
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.price.size + 
  currenex_forex_now_cbp_v10_0.conf_factor_75.size + 
  currenex_forex_now_cbp_v10_0.conf_factor_50.size + 
  currenex_forex_now_cbp_v10_0.conf_factor_25.size + 
  currenex_forex_now_cbp_v10_0.timestamp.size

-- Display: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Price: Scale6_Rate
  index, price = currenex_forex_now_cbp_v10_0.price.dissect(buffer, index, packet, parent)

  -- Conf Factor 75: Struct of 2 fields
  index, conf_factor_75 = currenex_forex_now_cbp_v10_0.conf_factor_75.dissect(buffer, index, packet, parent)

  -- Conf Factor 50: Struct of 2 fields
  index, conf_factor_50 = currenex_forex_now_cbp_v10_0.conf_factor_50.dissect(buffer, index, packet, parent)

  -- Conf Factor 25: Struct of 2 fields
  index, conf_factor_25 = currenex_forex_now_cbp_v10_0.conf_factor_25.dissect(buffer, index, packet, parent)

  -- Timestamp: Long
  index, timestamp = currenex_forex_now_cbp_v10_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wamr With Confidence Factor Message
currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.dissect = function(buffer, offset, packet, parent)
  if show.wamr_with_confidence_factor_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.wamr_with_confidence_factor_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time
currenex_forex_now_cbp_v10_0.transact_time = {}

-- Size: Transact Time
currenex_forex_now_cbp_v10_0.transact_time.size = 8

-- Display: Transact Time
currenex_forex_now_cbp_v10_0.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
currenex_forex_now_cbp_v10_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Paid Given Indicator
currenex_forex_now_cbp_v10_0.paid_given_indicator = {}

-- Size: Paid Given Indicator
currenex_forex_now_cbp_v10_0.paid_given_indicator.size = 1

-- Display: Paid Given Indicator
currenex_forex_now_cbp_v10_0.paid_given_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Paid Given Indicator: No Value"
  end

  return "Paid Given Indicator: "..value
end

-- Dissect: Paid Given Indicator
currenex_forex_now_cbp_v10_0.paid_given_indicator.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.paid_given_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.paid_given_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.paid_given_indicator, range, value, display)

  return offset + length, value
end

-- Size Indicator
currenex_forex_now_cbp_v10_0.size_indicator = {}

-- Size: Size Indicator
currenex_forex_now_cbp_v10_0.size_indicator.size = 1

-- Display: Size Indicator
currenex_forex_now_cbp_v10_0.size_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Size Indicator: No Value"
  end

  return "Size Indicator: "..value
end

-- Dissect: Size Indicator
currenex_forex_now_cbp_v10_0.size_indicator.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.size_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.size_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.size_indicator, range, value, display)

  return offset + length, value
end

-- Rate
currenex_forex_now_cbp_v10_0.rate = {}

-- Size: Rate
currenex_forex_now_cbp_v10_0.rate.size = 4

-- Display: Rate
currenex_forex_now_cbp_v10_0.rate.display = function(value)
  return "Rate: "..value
end

-- Translate: Rate
currenex_forex_now_cbp_v10_0.rate.translate = function(raw)
  return raw/100000
end

-- Dissect: Rate
currenex_forex_now_cbp_v10_0.rate.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.rate.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = currenex_forex_now_cbp_v10_0.rate.translate(raw)
  local display = currenex_forex_now_cbp_v10_0.rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.rate, range, value, display)

  return offset + length, value
end

-- Paid Given Message
currenex_forex_now_cbp_v10_0.paid_given_message = {}

-- Size: Paid Given Message
currenex_forex_now_cbp_v10_0.paid_given_message.size =
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.rate.size + 
  currenex_forex_now_cbp_v10_0.size_indicator.size + 
  currenex_forex_now_cbp_v10_0.paid_given_indicator.size + 
  currenex_forex_now_cbp_v10_0.transact_time.size

-- Display: Paid Given Message
currenex_forex_now_cbp_v10_0.paid_given_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Paid Given Message
currenex_forex_now_cbp_v10_0.paid_given_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Rate: Scale5_Rate
  index, rate = currenex_forex_now_cbp_v10_0.rate.dissect(buffer, index, packet, parent)

  -- Size Indicator: Alpha
  index, size_indicator = currenex_forex_now_cbp_v10_0.size_indicator.dissect(buffer, index, packet, parent)

  -- Paid Given Indicator: Alpha
  index, paid_given_indicator = currenex_forex_now_cbp_v10_0.paid_given_indicator.dissect(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_forex_now_cbp_v10_0.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Paid Given Message
currenex_forex_now_cbp_v10_0.paid_given_message.dissect = function(buffer, offset, packet, parent)
  if show.paid_given_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.paid_given_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.paid_given_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.paid_given_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.paid_given_message.fields(buffer, offset, packet, parent)
  end
end

-- Amount
currenex_forex_now_cbp_v10_0.amount = {}

-- Size: Amount
currenex_forex_now_cbp_v10_0.amount.size = 8

-- Display: Amount
currenex_forex_now_cbp_v10_0.amount.display = function(value)
  return "Amount: "..value
end

-- Dissect: Amount
currenex_forex_now_cbp_v10_0.amount.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.amount.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0.amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.amount, range, value, display)

  return offset + length, value
end

-- Offer
currenex_forex_now_cbp_v10_0.offer = {}

-- Size: Offer
currenex_forex_now_cbp_v10_0.offer.size =
  currenex_forex_now_cbp_v10_0.rate.size + 
  currenex_forex_now_cbp_v10_0.amount.size

-- Display: Offer
currenex_forex_now_cbp_v10_0.offer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Offer
currenex_forex_now_cbp_v10_0.offer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Rate: Scale5_Rate
  index, rate = currenex_forex_now_cbp_v10_0.rate.dissect(buffer, index, packet, parent)

  -- Amount: Amount
  index, amount = currenex_forex_now_cbp_v10_0.amount.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Offer
currenex_forex_now_cbp_v10_0.offer.dissect = function(buffer, offset, packet, parent)
  if show.offer then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.offer, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.offer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.offer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.offer.fields(buffer, offset, packet, parent)
  end
end

-- Bid
currenex_forex_now_cbp_v10_0.bid = {}

-- Size: Bid
currenex_forex_now_cbp_v10_0.bid.size =
  currenex_forex_now_cbp_v10_0.rate.size + 
  currenex_forex_now_cbp_v10_0.amount.size

-- Display: Bid
currenex_forex_now_cbp_v10_0.bid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid
currenex_forex_now_cbp_v10_0.bid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Rate: Scale5_Rate
  index, rate = currenex_forex_now_cbp_v10_0.rate.dissect(buffer, index, packet, parent)

  -- Amount: Amount
  index, amount = currenex_forex_now_cbp_v10_0.amount.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid
currenex_forex_now_cbp_v10_0.bid.dissect = function(buffer, offset, packet, parent)
  if show.bid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.bid, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.bid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.bid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.bid.fields(buffer, offset, packet, parent)
  end
end

-- Level
currenex_forex_now_cbp_v10_0.level = {}

-- Size: Level
currenex_forex_now_cbp_v10_0.level.size =
  currenex_forex_now_cbp_v10_0.bid.size + 
  currenex_forex_now_cbp_v10_0.offer.size

-- Display: Level
currenex_forex_now_cbp_v10_0.level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Level
currenex_forex_now_cbp_v10_0.level.fields = function(buffer, offset, packet, parent, level_index)
  local index = offset

  -- Implicit Level Index
  if level_index ~= nil then
    local iteration = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.level_index, level_index)
    iteration:set_generated()
  end

  -- Bid: Struct of 2 fields
  index, bid = currenex_forex_now_cbp_v10_0.bid.dissect(buffer, index, packet, parent)

  -- Offer: Struct of 2 fields
  index, offer = currenex_forex_now_cbp_v10_0.offer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Level
currenex_forex_now_cbp_v10_0.level.dissect = function(buffer, offset, packet, parent, level_index)
  if show.level then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.level, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.level.fields(buffer, offset, packet, parent, level_index)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.level.fields(buffer, offset, packet, parent, level_index)
  end
end

-- Depth Of Book Message
currenex_forex_now_cbp_v10_0.depth_of_book_message = {}

-- Size: Depth Of Book Message
currenex_forex_now_cbp_v10_0.depth_of_book_message.size =
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.level.size

-- Display: Depth Of Book Message
currenex_forex_now_cbp_v10_0.depth_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Of Book Message
currenex_forex_now_cbp_v10_0.depth_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Array Of: Level
  for level_index = 1, 20 do
    index, level = currenex_forex_now_cbp_v10_0.level.dissect(buffer, index, packet, parent, level_index)
  end

  return index
end

-- Dissect: Depth Of Book Message
currenex_forex_now_cbp_v10_0.depth_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.depth_of_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.depth_of_book_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.depth_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.depth_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.depth_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Type
currenex_forex_now_cbp_v10_0.type = {}

-- Size: Type
currenex_forex_now_cbp_v10_0.type.size = 1

-- Display: Type
currenex_forex_now_cbp_v10_0.type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Type: No Value"
  end

  return "Type: "..value
end

-- Dissect: Type
currenex_forex_now_cbp_v10_0.type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.type, range, value, display)

  return offset + length, value
end

-- Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0.mass_subscription_reply_message = {}

-- Size: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.type.size + 
  currenex_forex_now_cbp_v10_0.reason_alpha_50.size

-- Display: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Type: Alpha
  index, type = currenex_forex_now_cbp_v10_0.type.dissect(buffer, index, packet, parent)

  -- Reason Alpha 50: Alpha
  index, reason_alpha_50 = currenex_forex_now_cbp_v10_0.reason_alpha_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Subscription Reply Message
currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_subscription_reply_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.mass_subscription_reply_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscription Reply Message
currenex_forex_now_cbp_v10_0.subscription_reply_message = {}

-- Size: Subscription Reply Message
currenex_forex_now_cbp_v10_0.subscription_reply_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.type.size + 
  currenex_forex_now_cbp_v10_0.reason_alpha_50.size

-- Display: Subscription Reply Message
currenex_forex_now_cbp_v10_0.subscription_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Reply Message
currenex_forex_now_cbp_v10_0.subscription_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Type: Alpha
  index, type = currenex_forex_now_cbp_v10_0.type.dissect(buffer, index, packet, parent)

  -- Reason Alpha 50: Alpha
  index, reason_alpha_50 = currenex_forex_now_cbp_v10_0.reason_alpha_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Reply Message
currenex_forex_now_cbp_v10_0.subscription_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.subscription_reply_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscription_reply_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.subscription_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.subscription_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.subscription_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator = {}

-- Size: Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.size = 1

-- Display: Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Subscribe To Now Mid Activity Indicator: No Value"
  end

  return "Subscribe To Now Mid Activity Indicator: "..value
end

-- Dissect: Subscribe To Now Mid Activity Indicator
currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_mid_activity_indicator, range, value, display)

  return offset + length, value
end

-- Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor = {}

-- Size: Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.size = 1

-- Display: Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Subscribe To Nowwamr With Confidence Factor: No Value"
  end

  return "Subscribe To Nowwamr With Confidence Factor: "..value
end

-- Dissect: Subscribe To Nowwamr With Confidence Factor
currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_nowwamr_with_confidence_factor, range, value, display)

  return offset + length, value
end

-- Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size = {}

-- Size: Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.size = 0

-- Display: Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.display = function(value)
  return "Subscribe To Now Paid Given With Bucketed Size: "..value
end

-- Dissect: Subscribe To Now Paid Given With Bucketed Size
currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_paid_given_with_bucketed_size, range, value, display)

  return offset + length, value
end

-- Subscribe To Now Depth Of Book
currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book = {}

-- Size: Subscribe To Now Depth Of Book
currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.size = 1

-- Display: Subscribe To Now Depth Of Book
currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.display = function(value)
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
currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscribe_to_now_depth_of_book, range, value, display)

  return offset + length, value
end

-- Subscription Type
currenex_forex_now_cbp_v10_0.subscription_type = {}

-- Size: Subscription Type
currenex_forex_now_cbp_v10_0.subscription_type.size = 1

-- Display: Subscription Type
currenex_forex_now_cbp_v10_0.subscription_type.display = function(value)
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
currenex_forex_now_cbp_v10_0.subscription_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.subscription_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.subscription_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscription_type, range, value, display)

  return offset + length, value
end

-- Mass Subscription Request Message
currenex_forex_now_cbp_v10_0.mass_subscription_request_message = {}

-- Size: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0.mass_subscription_request_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.subscription_type.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.size

-- Display: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0.mass_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0.mass_subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Subscription Type: Alpha
  index, subscription_type = currenex_forex_now_cbp_v10_0.subscription_type.dissect(buffer, index, packet, parent)

  -- Subscribe To Now Depth Of Book: Alpha
  index, subscribe_to_now_depth_of_book = currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.dissect(buffer, index, packet, parent)

  -- Subscribe To Now Paid Given With Bucketed Size: Alpha
  index, subscribe_to_now_paid_given_with_bucketed_size = currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.dissect(buffer, index, packet, parent)

  -- Subscribe To Nowwamr With Confidence Factor: Alpha
  index, subscribe_to_nowwamr_with_confidence_factor = currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.dissect(buffer, index, packet, parent)

  -- Subscribe To Now Mid Activity Indicator: Alpha
  index, subscribe_to_now_mid_activity_indicator = currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Subscription Request Message
currenex_forex_now_cbp_v10_0.mass_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_subscription_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.mass_subscription_request_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.mass_subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.mass_subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.mass_subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscription Request Message
currenex_forex_now_cbp_v10_0.subscription_request_message = {}

-- Size: Subscription Request Message
currenex_forex_now_cbp_v10_0.subscription_request_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.subscription_type.size + 
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.size + 
  currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.size

-- Display: Subscription Request Message
currenex_forex_now_cbp_v10_0.subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Request Message
currenex_forex_now_cbp_v10_0.subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Subscription Type: Alpha
  index, subscription_type = currenex_forex_now_cbp_v10_0.subscription_type.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Subscribe To Now Depth Of Book: Alpha
  index, subscribe_to_now_depth_of_book = currenex_forex_now_cbp_v10_0.subscribe_to_now_depth_of_book.dissect(buffer, index, packet, parent)

  -- Subscribe To Now Paid Given With Bucketed Size: Alpha
  index, subscribe_to_now_paid_given_with_bucketed_size = currenex_forex_now_cbp_v10_0.subscribe_to_now_paid_given_with_bucketed_size.dissect(buffer, index, packet, parent)

  -- Subscribe To Nowwamr With Confidence Factor: Alpha
  index, subscribe_to_nowwamr_with_confidence_factor = currenex_forex_now_cbp_v10_0.subscribe_to_nowwamr_with_confidence_factor.dissect(buffer, index, packet, parent)

  -- Subscribe To Now Mid Activity Indicator: Alpha
  index, subscribe_to_now_mid_activity_indicator = currenex_forex_now_cbp_v10_0.subscribe_to_now_mid_activity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Request Message
currenex_forex_now_cbp_v10_0.subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.subscription_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.subscription_request_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Ack Message
currenex_forex_now_cbp_v10_0.instrument_info_ack_message = {}

-- Size: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0.instrument_info_ack_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.instrument_index.size

-- Display: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0.instrument_info_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0.instrument_info_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Ack Message
currenex_forex_now_cbp_v10_0.instrument_info_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_info_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_info_ack_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.instrument_info_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.instrument_info_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.instrument_info_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Date
currenex_forex_now_cbp_v10_0.settlement_date = {}

-- Size: Settlement Date
currenex_forex_now_cbp_v10_0.settlement_date.size = 8

-- Display: Settlement Date
currenex_forex_now_cbp_v10_0.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
currenex_forex_now_cbp_v10_0.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.settlement_date.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_now_cbp_v10_0.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Instrument Id
currenex_forex_now_cbp_v10_0.instrument_id = {}

-- Size: Instrument Id
currenex_forex_now_cbp_v10_0.instrument_id.size = 20

-- Display: Instrument Id
currenex_forex_now_cbp_v10_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
currenex_forex_now_cbp_v10_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Type
currenex_forex_now_cbp_v10_0.instrument_type = {}

-- Size: Instrument Type
currenex_forex_now_cbp_v10_0.instrument_type.size = 1

-- Display: Instrument Type
currenex_forex_now_cbp_v10_0.instrument_type.display = function(value)
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
currenex_forex_now_cbp_v10_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.instrument_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_now_cbp_v10_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Instrument Info
currenex_forex_now_cbp_v10_0.instrument_info = {}

-- Size: Instrument Info
currenex_forex_now_cbp_v10_0.instrument_info.size =
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.instrument_index.size + 
  currenex_forex_now_cbp_v10_0.instrument_type.size + 
  currenex_forex_now_cbp_v10_0.instrument_id.size + 
  currenex_forex_now_cbp_v10_0.settlement_date.size

-- Display: Instrument Info
currenex_forex_now_cbp_v10_0.instrument_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info
currenex_forex_now_cbp_v10_0.instrument_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_now_cbp_v10_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = currenex_forex_now_cbp_v10_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = currenex_forex_now_cbp_v10_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Date: Long
  index, settlement_date = currenex_forex_now_cbp_v10_0.settlement_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info
currenex_forex_now_cbp_v10_0.instrument_info.dissect = function(buffer, offset, packet, parent)
  if show.instrument_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.instrument_info, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.instrument_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.instrument_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.instrument_info.fields(buffer, offset, packet, parent)
  end
end

-- Heart Beat Message
currenex_forex_now_cbp_v10_0.heart_beat_message = {}

-- Size: Heart Beat Message
currenex_forex_now_cbp_v10_0.heart_beat_message.size =
  currenex_forex_now_cbp_v10_0.session_id.size

-- Display: Heart Beat Message
currenex_forex_now_cbp_v10_0.heart_beat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heart Beat Message
currenex_forex_now_cbp_v10_0.heart_beat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heart Beat Message
currenex_forex_now_cbp_v10_0.heart_beat_message.dissect = function(buffer, offset, packet, parent)
  if show.heart_beat_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.heart_beat_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.heart_beat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.heart_beat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.heart_beat_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason Alpha 3
currenex_forex_now_cbp_v10_0.reason_alpha_3 = {}

-- Size: Reason Alpha 3
currenex_forex_now_cbp_v10_0.reason_alpha_3.size = 3

-- Display: Reason Alpha 3
currenex_forex_now_cbp_v10_0.reason_alpha_3.display = function(value)
  return "Reason Alpha 3: "..value
end

-- Dissect: Reason Alpha 3
currenex_forex_now_cbp_v10_0.reason_alpha_3.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.reason_alpha_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0.reason_alpha_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.reason_alpha_3, range, value, display)

  return offset + length, value
end

-- User Id
currenex_forex_now_cbp_v10_0.user_id = {}

-- Size: User Id
currenex_forex_now_cbp_v10_0.user_id.size = 20

-- Display: User Id
currenex_forex_now_cbp_v10_0.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
currenex_forex_now_cbp_v10_0.user_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.user_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Logout Message
currenex_forex_now_cbp_v10_0.logout_message = {}

-- Size: Logout Message
currenex_forex_now_cbp_v10_0.logout_message.size =
  currenex_forex_now_cbp_v10_0.user_id.size + 
  currenex_forex_now_cbp_v10_0.session_id.size + 
  currenex_forex_now_cbp_v10_0.reason_alpha_3.size

-- Display: Logout Message
currenex_forex_now_cbp_v10_0.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
currenex_forex_now_cbp_v10_0.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_now_cbp_v10_0.user_id.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  -- Reason Alpha 3: Alpha
  index, reason_alpha_3 = currenex_forex_now_cbp_v10_0.reason_alpha_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
currenex_forex_now_cbp_v10_0.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.logout_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Password
currenex_forex_now_cbp_v10_0.password = {}

-- Size: Password
currenex_forex_now_cbp_v10_0.password.size = 20

-- Display: Password
currenex_forex_now_cbp_v10_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
currenex_forex_now_cbp_v10_0.password.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_now_cbp_v10_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.password, range, value, display)

  return offset + length, value
end

-- Logon Message
currenex_forex_now_cbp_v10_0.logon_message = {}

-- Size: Logon Message
currenex_forex_now_cbp_v10_0.logon_message.size =
  currenex_forex_now_cbp_v10_0.user_id.size + 
  currenex_forex_now_cbp_v10_0.password.size + 
  currenex_forex_now_cbp_v10_0.session_id.size

-- Display: Logon Message
currenex_forex_now_cbp_v10_0.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
currenex_forex_now_cbp_v10_0.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_now_cbp_v10_0.user_id.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = currenex_forex_now_cbp_v10_0.password.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_now_cbp_v10_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
currenex_forex_now_cbp_v10_0.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.logon_message, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
currenex_forex_now_cbp_v10_0.message_body = {}

-- Calculate runtime size of: Message Body
currenex_forex_now_cbp_v10_0.message_body.size = function(buffer, offset, message_type)
  -- Size of Logon Message
  if message_type == "A" then
    return currenex_forex_now_cbp_v10_0.logon_message.size(buffer, offset)
  end
  -- Size of Logout Message
  if message_type == "B" then
    return currenex_forex_now_cbp_v10_0.logout_message.size(buffer, offset)
  end
  -- Size of Heart Beat Message
  if message_type == "C" then
    return currenex_forex_now_cbp_v10_0.heart_beat_message.size(buffer, offset)
  end
  -- Size of Instrument Info
  if message_type == "D" then
    return currenex_forex_now_cbp_v10_0.instrument_info.size(buffer, offset)
  end
  -- Size of Instrument Info Ack Message
  if message_type == "E" then
    return currenex_forex_now_cbp_v10_0.instrument_info_ack_message.size(buffer, offset)
  end
  -- Size of Subscription Request Message
  if message_type == "X" then
    return currenex_forex_now_cbp_v10_0.subscription_request_message.size(buffer, offset)
  end
  -- Size of Mass Subscription Request Message
  if message_type == "Y" then
    return currenex_forex_now_cbp_v10_0.mass_subscription_request_message.size(buffer, offset)
  end
  -- Size of Subscription Reply Message
  if message_type == "G" then
    return currenex_forex_now_cbp_v10_0.subscription_reply_message.size(buffer, offset)
  end
  -- Size of Mass Subscription Reply Message
  if message_type == "Z" then
    return currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.size(buffer, offset)
  end
  -- Size of Depth Of Book Message
  if message_type == "d" then
    return currenex_forex_now_cbp_v10_0.depth_of_book_message.size(buffer, offset)
  end
  -- Size of Paid Given Message
  if message_type == "k" then
    return currenex_forex_now_cbp_v10_0.paid_given_message.size(buffer, offset)
  end
  -- Size of Wamr With Confidence Factor Message
  if message_type == "r" then
    return currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.size(buffer, offset)
  end
  -- Size of Mid Activity Indicator Message
  if message_type == "x" then
    return currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.size(buffer, offset)
  end
  -- Size of Reject Message
  if message_type == "K" then
    return currenex_forex_now_cbp_v10_0.reject_message.size(buffer, offset)
  end

  return 0
end

-- Display: Message Body
currenex_forex_now_cbp_v10_0.message_body.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
currenex_forex_now_cbp_v10_0.message_body.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Message
  if message_type == "A" then
    return currenex_forex_now_cbp_v10_0.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == "B" then
    return currenex_forex_now_cbp_v10_0.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heart Beat Message
  if message_type == "C" then
    return currenex_forex_now_cbp_v10_0.heart_beat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info
  if message_type == "D" then
    return currenex_forex_now_cbp_v10_0.instrument_info.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Ack Message
  if message_type == "E" then
    return currenex_forex_now_cbp_v10_0.instrument_info_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Request Message
  if message_type == "X" then
    return currenex_forex_now_cbp_v10_0.subscription_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Subscription Request Message
  if message_type == "Y" then
    return currenex_forex_now_cbp_v10_0.mass_subscription_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Reply Message
  if message_type == "G" then
    return currenex_forex_now_cbp_v10_0.subscription_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Subscription Reply Message
  if message_type == "Z" then
    return currenex_forex_now_cbp_v10_0.mass_subscription_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Depth Of Book Message
  if message_type == "d" then
    return currenex_forex_now_cbp_v10_0.depth_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Paid Given Message
  if message_type == "k" then
    return currenex_forex_now_cbp_v10_0.paid_given_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wamr With Confidence Factor Message
  if message_type == "r" then
    return currenex_forex_now_cbp_v10_0.wamr_with_confidence_factor_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mid Activity Indicator Message
  if message_type == "x" then
    return currenex_forex_now_cbp_v10_0.mid_activity_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if message_type == "K" then
    return currenex_forex_now_cbp_v10_0.reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
currenex_forex_now_cbp_v10_0.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return currenex_forex_now_cbp_v10_0.message_body.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = currenex_forex_now_cbp_v10_0.message_body.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = currenex_forex_now_cbp_v10_0.message_body.display(buffer, packet, parent)
  local element = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.message_body, range, display)

  return currenex_forex_now_cbp_v10_0.message_body.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
currenex_forex_now_cbp_v10_0.message_type = {}

-- Size: Message Type
currenex_forex_now_cbp_v10_0.message_type.size = 1

-- Display: Message Type
currenex_forex_now_cbp_v10_0.message_type.display = function(value)
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
currenex_forex_now_cbp_v10_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_now_cbp_v10_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
currenex_forex_now_cbp_v10_0.sequence_number = {}

-- Size: Sequence Number
currenex_forex_now_cbp_v10_0.sequence_number.size = 4

-- Display: Sequence Number
currenex_forex_now_cbp_v10_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
currenex_forex_now_cbp_v10_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = currenex_forex_now_cbp_v10_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Header
currenex_forex_now_cbp_v10_0.message_header = {}

-- Size: Message Header
currenex_forex_now_cbp_v10_0.message_header.size =
  currenex_forex_now_cbp_v10_0.sequence_number.size + 
  currenex_forex_now_cbp_v10_0.sequence_number.size + 
  currenex_forex_now_cbp_v10_0.message_type.size

-- Display: Message Header
currenex_forex_now_cbp_v10_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
currenex_forex_now_cbp_v10_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_now_cbp_v10_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_now_cbp_v10_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = currenex_forex_now_cbp_v10_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
currenex_forex_now_cbp_v10_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_forex_now_cbp_v10_0.fields.message_header, buffer(offset, 0))
    local index = currenex_forex_now_cbp_v10_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_now_cbp_v10_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_forex_now_cbp_v10_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Itch Soh
currenex_forex_now_cbp_v10_0.itch_soh = {}

-- Size: Itch Soh
currenex_forex_now_cbp_v10_0.itch_soh.size = 1

-- Display: Itch Soh
currenex_forex_now_cbp_v10_0.itch_soh.display = function(value)
  return "Itch Soh: "..value
end

-- Dissect: Itch Soh
currenex_forex_now_cbp_v10_0.itch_soh.dissect = function(buffer, offset, packet, parent)
  local length = currenex_forex_now_cbp_v10_0.itch_soh.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_now_cbp_v10_0.itch_soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_forex_now_cbp_v10_0.fields.itch_soh, range, value, display)

  return offset + length, value
end

-- Packet
currenex_forex_now_cbp_v10_0.packet = {}

-- Dissect Packet
currenex_forex_now_cbp_v10_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Itch Soh: 1 Byte Fixed Width Integer Static
    index, itch_soh = currenex_forex_now_cbp_v10_0.itch_soh.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = currenex_forex_now_cbp_v10_0.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message Body: Runtime Type with 14 branches
    index = currenex_forex_now_cbp_v10_0.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Itch Etx: 1 Byte Fixed Width Integer
    index, itch_etx = currenex_forex_now_cbp_v10_0.itch_etx.dissect(buffer, index, packet, parent)
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
  return currenex_forex_now_cbp_v10_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_currenex_forex_now_cbp_v10_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
currenex_forex_now_cbp_v10_0.packet.requiredsize = function(buffer)

  return true
end

-- Verify Itch Soh Field
currenex_forex_now_cbp_v10_0.itch_soh.verify = function(buffer)
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
  if not currenex_forex_now_cbp_v10_0.packet.requiredsize(buffer) then return false end

  -- Verify Itch Soh
  if not currenex_forex_now_cbp_v10_0.itch_soh.verify(buffer) then return false end

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
