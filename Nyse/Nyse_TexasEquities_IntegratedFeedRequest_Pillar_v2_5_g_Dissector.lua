-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g Protocol
local omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g = Proto("Omi.Nyse.TexasEquities.IntegratedFeedRequest.Pillar.v2.5.g", "Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g")

-- Protocol table
local nyse_texasequities_integratedfeedrequest_pillar_v2_5_g = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g Fields
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.beginseqnum", ftypes.UINT32)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.channel_id = ProtoField.new("Channel Id", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.channelid", ftypes.UINT8)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.deliveryflag", ftypes.UINT8)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.endseqnum", ftypes.UINT32)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_size = ProtoField.new("Message Size", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.messagesize", ftypes.UINT16)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_type = ProtoField.new("Message Type", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.messagetype", ftypes.UINT16)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.nanoseconds", ftypes.UINT32)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.numbermsgs", ftypes.UINT8)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.pktsize", ftypes.UINT16)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.product_id = ProtoField.new("Product Id", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.productid", ftypes.UINT8)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.requestseqnum", ftypes.UINT32)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.retransmitmethod", ftypes.UINT8)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.seconds = ProtoField.new("Seconds", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.seconds", ftypes.UINT32)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.seq_num = ProtoField.new("Seq Num", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.seqnum", ftypes.UINT32)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.source_id = ProtoField.new("Source Id", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.sourceid", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.status = ProtoField.new("Status", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.status", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.symbolindex", ftypes.UINT32)

-- Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g Headers
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message = ProtoField.new("Message", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.message", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_header = ProtoField.new("Message Header", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.messageheader", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.packet = ProtoField.new("Packet", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.packet", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.packet_header = ProtoField.new("Packet Header", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.packetheader", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.send_time = ProtoField.new("Send Time", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.sendtime", ftypes.STRING)

-- Nyse TexasEquities IntegratedFeedRequest 2.5.g Application Messages
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.refreshrequestmessage", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.requestresponsemessage", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.symbolindexmappingrequestmessage", ftypes.STRING)

-- Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g generated fields
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_index = ProtoField.new("Message Index", "nyse.texasequities.integratedfeedrequest.pillar.v2.5.g.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g Show Options
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_application_messages then
    show.application_messages = omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_headers then
    show.headers = omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_headers
  end
  if show.structs ~= omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_structs then
    show.structs = omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_indexes then
    show.indexes = omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g Fields
-----------------------------------------------------------------------

-- Begin Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id = {}

-- Size: Channel Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.size = 1

-- Display: Channel Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag = {}

-- Size: Delivery Flag
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Pillar Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num = {}

-- Size: End Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.size = 4

-- Display: End Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size = {}

-- Size: Message Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.size = 2

-- Display: Message Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type = {}

-- Size: Message Type
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.size = 2

-- Display: Message Type
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.display = function(value)
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
  end
  if value == 13 then
    return "Message Type: Symbol Index Mapping Request Message (13)"
  end
  if value == 15 then
    return "Message Type: Refresh Request Message (15)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds = {}

-- Size: Nanoseconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs = {}

-- Size: Number Msgs
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.size = 1

-- Display: Number Msgs
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size = {}

-- Size: Pkt Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.size = 2

-- Display: Pkt Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id = {}

-- Size: Product Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.size = 1

-- Display: Product Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.product_id, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num = {}

-- Size: Request Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method = {}

-- Size: Retransmit Method
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds = {}

-- Size: Seconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.size = 4

-- Display: Seconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.seconds, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num = {}

-- Size: Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.size = 4

-- Display: Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id = {}

-- Size: Source Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size = 10

-- Display: Source Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size
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

  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.source_id, range, value, display)

  return offset + length, value
end

-- Status
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status = {}

-- Size: Status
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.size = 1

-- Display: Status
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.display = function(value)
  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
  end
  if value == "3" then
    return "Status: Rejected Due To Maximum Sequence Range See Threshold Limits (3)"
  end
  if value == "4" then
    return "Status: Rejected Due To Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Rejected Due To Maximum Number Of Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Rejected Request Message Seq Num Ttl Time To Live Is Too Old Use Refresh To Recover Current State If Necessary (6)"
  end
  if value == "7" then
    return "Status: Rejected Due To An Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Rejected Due To An Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Rejected Due To 1 Invalid Msg Type Or 2 Mismatch Between Msg Type And Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index = {}

-- Size: Symbol Index
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.size = 4

-- Display: Symbol Index
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.symbol_index, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g
-----------------------------------------------------------------------

-- Refresh Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.size

-- Display: Refresh Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size

-- Display: Heartbeat Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message = {}

-- Size: Request Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.size

-- Display: Request Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.request_response_message, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.size

-- Display: Retransmission Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.payload = {}

-- Dissect: Payload
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.refresh_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header = {}

-- Size: Message Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.size

-- Display: Message Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, message_type = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_header, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message = {}

-- Display: Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 5 branches
  index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.message, buffer(offset, 0))
    local current = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time = {}

-- Size: Send Time
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.size

-- Display: Send Time
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.send_time, buffer(offset, 0))
    local index, value = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header = {}

-- Size: Packet Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.size =
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.size + 
  nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.size

-- Display: Packet Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.fields.packet_header, buffer(offset, 0))
    local index = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet = {}

-- Verify required size of Tcp packet
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.size
end

-- Dissect Packet
nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.init()
end

-- Dissector for Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g
function omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g, buffer(), omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.description, "("..buffer:len().." Bytes)")
  return nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g (Tcp)
local function omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g
  omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g
omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g:register_heuristic("tcp", omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g_tcp_heuristic)

-- Register Nyse TexasEquities IntegratedFeedRequest Pillar 2.5.g for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nyse_texasequities_integratedfeedrequest_pillar_v2_5_g)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5.g
--   Date: Thursday, October 23, 2025
--   Specification: NYSE_Pillar_Integrated_Feed_Client_Specification.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
