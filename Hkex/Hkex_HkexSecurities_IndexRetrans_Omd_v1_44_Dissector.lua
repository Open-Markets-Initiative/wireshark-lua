-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexSecurities IndexRetrans Omd 1.44 Protocol
local omi_hkex_hkexsecurities_indexretrans_omd_v1_44 = Proto("Omi.Hkex.HkexSecurities.IndexRetrans.Omd.v1.44", "Hkex HkexSecurities IndexRetrans Omd 1.44")

-- Protocol table
local hkex_hkexsecurities_indexretrans_omd_v1_44 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexSecurities IndexRetrans Omd 1.44 Fields
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.44.beginseqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.channel_id = ProtoField.new("Channel Id", "hkex.hkexsecurities.indexretrans.omd.v1.44.channelid", ftypes.UINT16)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.closing_value = ProtoField.new("Closing Value", "hkex.hkexsecurities.indexretrans.omd.v1.44.closingvalue", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.currency_code = ProtoField.new("Currency Code", "hkex.hkexsecurities.indexretrans.omd.v1.44.currencycode", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.dr_status = ProtoField.new("Dr Status", "hkex.hkexsecurities.indexretrans.omd.v1.44.drstatus", ftypes.UINT32)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.eas_value = ProtoField.new("Eas Value", "hkex.hkexsecurities.indexretrans.omd.v1.44.easvalue", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.end_seq_num = ProtoField.new("End Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.44.endseqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.exception = ProtoField.new("Exception", "hkex.hkexsecurities.indexretrans.omd.v1.44.exception", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler = ProtoField.new("Filler", "hkex.hkexsecurities.indexretrans.omd.v1.44.filler", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler_1 = ProtoField.new("Filler 1", "hkex.hkexsecurities.indexretrans.omd.v1.44.filler1", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler_2 = ProtoField.new("Filler 2", "hkex.hkexsecurities.indexretrans.omd.v1.44.filler2", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler_3 = ProtoField.new("Filler 3", "hkex.hkexsecurities.indexretrans.omd.v1.44.filler3", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.high_value = ProtoField.new("High Value", "hkex.hkexsecurities.indexretrans.omd.v1.44.highvalue", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_code = ProtoField.new("Index Code", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexcode", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_source = ProtoField.new("Index Source", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexsource", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_status = ProtoField.new("Index Status", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexstatus", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_time = ProtoField.new("Index Time", "hkex.hkexsecurities.indexretrans.omd.v1.44.indextime", ftypes.INT64)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_turnover = ProtoField.new("Index Turnover", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexturnover", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_value = ProtoField.new("Index Value", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexvalue", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_volume = ProtoField.new("Index Volume", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexvolume", ftypes.INT64)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.44.lastseqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.low_value = ProtoField.new("Low Value", "hkex.hkexsecurities.indexretrans.omd.v1.44.lowvalue", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.message = ProtoField.new("Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.message", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_count = ProtoField.new("Msg Count", "hkex.hkexsecurities.indexretrans.omd.v1.44.msgcount", ftypes.UINT8)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_header = ProtoField.new("Msg Header", "hkex.hkexsecurities.indexretrans.omd.v1.44.msgheader", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexsecurities.indexretrans.omd.v1.44.msgsize", ftypes.UINT16)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexsecurities.indexretrans.omd.v1.44.msgtype", ftypes.UINT16)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "hkex.hkexsecurities.indexretrans.omd.v1.44.netchgprevday", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.net_chg_prev_day_pct = ProtoField.new("Net Chg Prev Day Pct", "hkex.hkexsecurities.indexretrans.omd.v1.44.netchgprevdaypct", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.hkexsecurities.indexretrans.omd.v1.44.newseqno", ftypes.UINT32)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.opening_value = ProtoField.new("Opening Value", "hkex.hkexsecurities.indexretrans.omd.v1.44.openingvalue", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.packet = ProtoField.new("Packet", "hkex.hkexsecurities.indexretrans.omd.v1.44.packet", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.packet_header = ProtoField.new("Packet Header", "hkex.hkexsecurities.indexretrans.omd.v1.44.packetheader", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.hkexsecurities.indexretrans.omd.v1.44.pktsize", ftypes.UINT16)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.previous_ses_close = ProtoField.new("Previous Ses Close", "hkex.hkexsecurities.indexretrans.omd.v1.44.previoussesclose", ftypes.DOUBLE)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.retrans_status = ProtoField.new("Retrans Status", "hkex.hkexsecurities.indexretrans.omd.v1.44.retransstatus", ftypes.UINT8)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.send_time = ProtoField.new("Send Time", "hkex.hkexsecurities.indexretrans.omd.v1.44.sendtime", ftypes.UINT64)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.44.seqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.session_status = ProtoField.new("Session Status", "hkex.hkexsecurities.indexretrans.omd.v1.44.sessionstatus", ftypes.UINT8)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.username = ProtoField.new("Username", "hkex.hkexsecurities.indexretrans.omd.v1.44.username", ftypes.STRING)

-- Hkex HkexSecurities Omd IndexRetrans 1.44 Application Messages
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_data_message = ProtoField.new("Index Data Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexdatamessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_definition_message = ProtoField.new("Index Definition Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.indexdefinitionmessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.logon_message = ProtoField.new("Logon Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.logonmessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.logon_response_message = ProtoField.new("Logon Response Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.logonresponsemessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.refreshcompletemessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.retransmissionrequestmessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.retransmissionresponsemessage", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "hkex.hkexsecurities.indexretrans.omd.v1.44.sequenceresetmessage", ftypes.STRING)

-- Hkex HkexSecurities IndexRetrans Omd 1.44 generated fields
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.message_index = ProtoField.new("Message Index", "hkex.hkexsecurities.indexretrans.omd.v1.44.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexSecurities IndexRetrans Omd 1.44 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Hkex HkexSecurities IndexRetrans Omd 1.44 Show Options
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_application_messages
  end
  if show.headers ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_headers then
    show.headers = omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_headers
  end
  if show.structs ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_structs then
    show.structs = omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_structs
  end
  if show.indexes ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_indexes then
    show.indexes = omi_hkex_hkexsecurities_indexretrans_omd_v1_44.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Hkex HkexSecurities IndexRetrans Omd 1.44 Fields
-----------------------------------------------------------------------

-- Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num = {}

-- Size: Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.size = 4

-- Display: Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id = {}

-- Size: Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.size = 2

-- Display: Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value = {}

-- Size: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.size = 8

-- Display: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.display = function(value)
  return "Closing Value: "..value
end

-- Translate: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.closing_value, range, value, display)

  return offset + length, value
end

-- Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code = {}

-- Size: Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.size = 3

-- Display: Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status = {}

-- Size: Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.size = 4

-- Display: Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.display = function(value)
  if value == 1 then
    return "Dr Status: Dr In Progress (1)"
  end
  if value == 2 then
    return "Dr Status: Dr Completed (2)"
  end

  return "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value = {}

-- Size: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.size = 8

-- Display: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.display = function(value)
  return "Eas Value: "..value
end

-- Translate: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.eas_value, range, value, display)

  return offset + length, value
end

-- End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num = {}

-- Size: End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.size = 4

-- Display: End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exception
hkex_hkexsecurities_indexretrans_omd_v1_44.exception = {}

-- Size: Exception
hkex_hkexsecurities_indexretrans_omd_v1_44.exception.size = 1

-- Display: Exception
hkex_hkexsecurities_indexretrans_omd_v1_44.exception.display = function(value)
  if value == "#" then
    return "Exception: Index With Hsil Defined Exceptional Rule Applied (#)"
  end
  if value == " " then
    return "Exception: Normal Index (<whitespace>)"
  end

  return "Exception: Unknown("..value..")"
end

-- Dissect: Exception
hkex_hkexsecurities_indexretrans_omd_v1_44.exception.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.exception.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.exception.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.exception, range, value, display)

  return offset + length, value
end

-- Filler
hkex_hkexsecurities_indexretrans_omd_v1_44.filler = {}

-- Size: Filler
hkex_hkexsecurities_indexretrans_omd_v1_44.filler.size = 1

-- Display: Filler
hkex_hkexsecurities_indexretrans_omd_v1_44.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_hkexsecurities_indexretrans_omd_v1_44.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1 = {}

-- Size: Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.size = 1

-- Display: Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2 = {}

-- Size: Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.size = 2

-- Display: Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3 = {}

-- Size: Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.size = 3

-- Display: Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.filler_3, range, value, display)

  return offset + length, value
end

-- High Value
hkex_hkexsecurities_indexretrans_omd_v1_44.high_value = {}

-- Size: High Value
hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.size = 8

-- Display: High Value
hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.display = function(value)
  return "High Value: "..value
end

-- Translate: High Value
hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Value
hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.high_value, range, value, display)

  return offset + length, value
end

-- Index Code
hkex_hkexsecurities_indexretrans_omd_v1_44.index_code = {}

-- Size: Index Code
hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.size = 11

-- Display: Index Code
hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.display = function(value)
  return "Index Code: "..value
end

-- Dissect: Index Code
hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_code, range, value, display)

  return offset + length, value
end

-- Index Source
hkex_hkexsecurities_indexretrans_omd_v1_44.index_source = {}

-- Size: Index Source
hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.size = 1

-- Display: Index Source
hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.display = function(value)
  if value == "C" then
    return "Index Source: Csi And Ces (C)"
  end
  if value == "H" then
    return "Index Source: Hsi (H)"
  end
  if value == "S" then
    return "Index Source: S And P (S)"
  end

  return "Index Source: Unknown("..value..")"
end

-- Dissect: Index Source
hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_source, range, value, display)

  return offset + length, value
end

-- Index Status
hkex_hkexsecurities_indexretrans_omd_v1_44.index_status = {}

-- Size: Index Status
hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.size = 1

-- Display: Index Status
hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.display = function(value)
  if value == "C" then
    return "Index Status: Closing Value (C)"
  end
  if value == "I" then
    return "Index Status: Indicative (I)"
  end
  if value == "O" then
    return "Index Status: Opening Index (O)"
  end
  if value == "P" then
    return "Index Status: Last Close Value Previous Session (P)"
  end
  if value == "R" then
    return "Index Status: Preliminary Close (R)"
  end
  if value == "S" then
    return "Index Status: Stop Loss Index (S)"
  end
  if value == "T" then
    return "Index Status: Realtime Index Value (T)"
  end

  return "Index Status: Unknown("..value..")"
end

-- Dissect: Index Status
hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_status, range, value, display)

  return offset + length, value
end

-- Index Time
hkex_hkexsecurities_indexretrans_omd_v1_44.index_time = {}

-- Size: Index Time
hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.size = 8

-- Display: Index Time
hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.display = function(value)
  return "Index Time: "..value
end

-- Dissect: Index Time
hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_time, range, value, display)

  return offset + length, value
end

-- Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover = {}

-- Size: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.size = 8

-- Display: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.display = function(value)
  return "Index Turnover: "..value
end

-- Translate: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_turnover, range, value, display)

  return offset + length, value
end

-- Index Value
hkex_hkexsecurities_indexretrans_omd_v1_44.index_value = {}

-- Size: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.size = 8

-- Display: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.display = function(value)
  return "Index Value: "..value
end

-- Translate: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_value, range, value, display)

  return offset + length, value
end

-- Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume = {}

-- Size: Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.size = 8

-- Display: Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.display = function(value)
  return "Index Volume: "..value
end

-- Dissect: Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_volume, range, value, display)

  return offset + length, value
end

-- Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num = {}

-- Size: Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Low Value
hkex_hkexsecurities_indexretrans_omd_v1_44.low_value = {}

-- Size: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.size = 8

-- Display: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.display = function(value)
  return "Low Value: "..value
end

-- Translate: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.low_value, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count = {}

-- Size: Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.size = 1

-- Display: Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size = {}

-- Size: Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.size = 2

-- Display: Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type = {}

-- Size: Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.size = 2

-- Display: Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end
  if value == 70 then
    return "Msg Type: Index Definition Message (70)"
  end
  if value == 71 then
    return "Msg Type: Index Data Message (71)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete Message (203)"
  end
  if value == 101 then
    return "Msg Type: Logon Message (101)"
  end
  if value == 102 then
    return "Msg Type: Logon Response Message (102)"
  end
  if value == 201 then
    return "Msg Type: Retransmission Request Message (201)"
  end
  if value == 202 then
    return "Msg Type: Retransmission Response Message (202)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day = {}

-- Size: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.size = 8

-- Display: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.display = function(value)
  return "Net Chg Prev Day: "..value
end

-- Translate: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.net_chg_prev_day, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct = {}

-- Size: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.size = 4

-- Display: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.display = function(value)
  return "Net Chg Prev Day Pct: "..value
end

-- Translate: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.translate = function(raw)
  return raw/10000
end

-- Dissect: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.net_chg_prev_day_pct, range, value, display)

  return offset + length, value
end

-- New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no = {}

-- Size: New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.size = 4

-- Display: New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value = {}

-- Size: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.size = 8

-- Display: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.display = function(value)
  return "Opening Value: "..value
end

-- Translate: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.opening_value, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size = {}

-- Size: Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.size = 2

-- Display: Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close = {}

-- Size: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.size = 8

-- Display: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.display = function(value)
  return "Previous Ses Close: "..value
end

-- Translate: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.previous_ses_close, range, value, display)

  return offset + length, value
end

-- Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status = {}

-- Size: Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.size = 1

-- Display: Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.display = function(value)
  if value == 0 then
    return "Retrans Status: Request Accepted (0)"
  end
  if value == 1 then
    return "Retrans Status: Unknown Or Unauthorized Channel Id (1)"
  end
  if value == 2 then
    return "Retrans Status: Messages Not Available (2)"
  end
  if value == 100 then
    return "Retrans Status: Exceeds Maximum Sequence Range (100)"
  end
  if value == 101 then
    return "Retrans Status: Exceeds Maximum Requests In A Day (101)"
  end

  return "Retrans Status: Unknown("..value..")"
end

-- Dissect: Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.retrans_status, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexsecurities_indexretrans_omd_v1_44.send_time = {}

-- Size: Send Time
hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.size = 8

-- Display: Send Time
hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num = {}

-- Size: Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.size = 4

-- Display: Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Status
hkex_hkexsecurities_indexretrans_omd_v1_44.session_status = {}

-- Size: Session Status
hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.size = 1

-- Display: Session Status
hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.display = function(value)
  if value == 0 then
    return "Session Status: Session Active (0)"
  end
  if value == 5 then
    return "Session Status: Invalid Username Or Ip Address (5)"
  end
  if value == 100 then
    return "Session Status: User Already Connected (100)"
  end

  return "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.session_status, range, value, display)

  return offset + length, value
end

-- Username
hkex_hkexsecurities_indexretrans_omd_v1_44.username = {}

-- Size: Username
hkex_hkexsecurities_indexretrans_omd_v1_44.username.size = 12

-- Display: Username
hkex_hkexsecurities_indexretrans_omd_v1_44.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
hkex_hkexsecurities_indexretrans_omd_v1_44.username.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_44.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_44.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexSecurities IndexRetrans Omd 1.44
-----------------------------------------------------------------------

-- Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message = {}

-- Size: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.size

-- Display: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.dissect(buffer, index, packet, parent)

  -- Retrans Status: Uint8
  index, retrans_status = hkex_hkexsecurities_indexretrans_omd_v1_44.retrans_status.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.retransmission_response_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message = {}

-- Size: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.size

-- Display: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_hkexsecurities_indexretrans_omd_v1_44.channel_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_2.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_44.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_44.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.retransmission_request_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message = {}

-- Size: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.size

-- Display: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Uint8
  index, session_status = hkex_hkexsecurities_indexretrans_omd_v1_44.session_status.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.logon_response_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message = {}

-- Size: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.username.size

-- Display: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String
  index, username = hkex_hkexsecurities_indexretrans_omd_v1_44.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.logon_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message = {}

-- Size: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.size

-- Display: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_44.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.refresh_complete_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message = {}

-- Size: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.exception.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.size

-- Display: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Code: String
  index, index_code = hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.dissect(buffer, index, packet, parent)

  -- Index Status: String
  index, index_status = hkex_hkexsecurities_indexretrans_omd_v1_44.index_status.dissect(buffer, index, packet, parent)

  -- Index Time: Int64
  index, index_time = hkex_hkexsecurities_indexretrans_omd_v1_44.index_time.dissect(buffer, index, packet, parent)

  -- Index Value: Int64
  index, index_value = hkex_hkexsecurities_indexretrans_omd_v1_44.index_value.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day: Int64
  index, net_chg_prev_day = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day.dissect(buffer, index, packet, parent)

  -- High Value: Int64
  index, high_value = hkex_hkexsecurities_indexretrans_omd_v1_44.high_value.dissect(buffer, index, packet, parent)

  -- Low Value: Int64
  index, low_value = hkex_hkexsecurities_indexretrans_omd_v1_44.low_value.dissect(buffer, index, packet, parent)

  -- Eas Value: Int64
  index, eas_value = hkex_hkexsecurities_indexretrans_omd_v1_44.eas_value.dissect(buffer, index, packet, parent)

  -- Index Turnover: Int64
  index, index_turnover = hkex_hkexsecurities_indexretrans_omd_v1_44.index_turnover.dissect(buffer, index, packet, parent)

  -- Opening Value: Int64
  index, opening_value = hkex_hkexsecurities_indexretrans_omd_v1_44.opening_value.dissect(buffer, index, packet, parent)

  -- Closing Value: Int64
  index, closing_value = hkex_hkexsecurities_indexretrans_omd_v1_44.closing_value.dissect(buffer, index, packet, parent)

  -- Previous Ses Close: Int64
  index, previous_ses_close = hkex_hkexsecurities_indexretrans_omd_v1_44.previous_ses_close.dissect(buffer, index, packet, parent)

  -- Index Volume: Int64
  index, index_volume = hkex_hkexsecurities_indexretrans_omd_v1_44.index_volume.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day Pct: Int32
  index, net_chg_prev_day_pct = hkex_hkexsecurities_indexretrans_omd_v1_44.net_chg_prev_day_pct.dissect(buffer, index, packet, parent)

  -- Exception: String
  index, exception = hkex_hkexsecurities_indexretrans_omd_v1_44.exception.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_data_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message = {}

-- Size: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.size

-- Display: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Code: String
  index, index_code = hkex_hkexsecurities_indexretrans_omd_v1_44.index_code.dissect(buffer, index, packet, parent)

  -- Index Source: String
  index, index_source = hkex_hkexsecurities_indexretrans_omd_v1_44.index_source.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_indexretrans_omd_v1_44.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_indexretrans_omd_v1_44.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.index_definition_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.size

-- Display: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = hkex_hkexsecurities_indexretrans_omd_v1_44.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message = {}

-- Size: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.size

-- Display: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_hkexsecurities_indexretrans_omd_v1_44.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.sequence_reset_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexsecurities_indexretrans_omd_v1_44.payload = {}

-- Dissect: Payload
hkex_hkexsecurities_indexretrans_omd_v1_44.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Definition Message
  if msg_type == 70 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.index_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Data Message
  if msg_type == 71 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.index_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete Message
  if msg_type == 203 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.refresh_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if msg_type == 101 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response Message
  if msg_type == 102 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if msg_type == 201 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response Message
  if msg_type == 202 then
    return hkex_hkexsecurities_indexretrans_omd_v1_44.retransmission_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header = {}

-- Size: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.size

-- Display: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.msg_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexsecurities_indexretrans_omd_v1_44.message = {}

-- Display: Message
hkex_hkexsecurities_indexretrans_omd_v1_44.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexsecurities_indexretrans_omd_v1_44.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 9 branches
  index = hkex_hkexsecurities_indexretrans_omd_v1_44.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexsecurities_indexretrans_omd_v1_44.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.message, buffer(offset, 0))
    local current = hkex_hkexsecurities_indexretrans_omd_v1_44.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexsecurities_indexretrans_omd_v1_44.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header = {}

-- Size: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.size =
  hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.filler.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.size

-- Display: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_hkexsecurities_indexretrans_omd_v1_44.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_hkexsecurities_indexretrans_omd_v1_44.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte Ascii String
  index, filler = hkex_hkexsecurities_indexretrans_omd_v1_44.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexsecurities_indexretrans_omd_v1_44.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexsecurities_indexretrans_omd_v1_44.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44.fields.packet_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_hkexsecurities_indexretrans_omd_v1_44.packet = {}

-- Verify required size of Tcp packet
hkex_hkexsecurities_indexretrans_omd_v1_44.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.size
end

-- Dissect Packet
hkex_hkexsecurities_indexretrans_omd_v1_44.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_hkexsecurities_indexretrans_omd_v1_44.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_hkexsecurities_indexretrans_omd_v1_44.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexsecurities_indexretrans_omd_v1_44.init()
end

-- Dissector for Hkex HkexSecurities IndexRetrans Omd 1.44
function omi_hkex_hkexsecurities_indexretrans_omd_v1_44.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexsecurities_indexretrans_omd_v1_44.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_44, buffer(), omi_hkex_hkexsecurities_indexretrans_omd_v1_44.description, "("..buffer:len().." Bytes)")
  return hkex_hkexsecurities_indexretrans_omd_v1_44.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexSecurities IndexRetrans Omd 1.44 (Tcp)
local function omi_hkex_hkexsecurities_indexretrans_omd_v1_44_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexsecurities_indexretrans_omd_v1_44.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexsecurities_indexretrans_omd_v1_44
  omi_hkex_hkexsecurities_indexretrans_omd_v1_44.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexSecurities IndexRetrans Omd 1.44
omi_hkex_hkexsecurities_indexretrans_omd_v1_44:register_heuristic("tcp", omi_hkex_hkexsecurities_indexretrans_omd_v1_44_tcp_heuristic)

-- Register Hkex HkexSecurities IndexRetrans Omd 1.44 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_hkex_hkexsecurities_indexretrans_omd_v1_44)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.44
--   Date: Monday, July 21, 2025
--   Specification: HKEX_OMDC_Binary_Interface_Specifications_v1_44.pdf
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
