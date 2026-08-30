-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated Indices Cgif 1.4.13 Protocol
local omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13 = Proto("Omi.Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13", "Cboe TitaniumConsolidated Indices Cgif 1.4.13")

-- Protocol table
local cboe_titaniumconsolidated_indices_cgif_v1_4_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated Indices Cgif 1.4.13 Fields
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.agent_classification = ProtoField.new("Agent Classification", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.agentclassification", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.byte_length = ProtoField.new("Byte Length", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.bytelength", ftypes.INT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.channel = ProtoField.new("Channel", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.channel", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.channel_length = ProtoField.new("Channel Length", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.channellength", ftypes.UINT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.current_record_number = ProtoField.new("Current Record Number", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.currentrecordnumber", ftypes.UINT32)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.date = ProtoField.new("Date", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.date", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.date_chars = ProtoField.new("Date Chars", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.datechars", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.description = ProtoField.new("Description", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.description", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.description_length = ProtoField.new("Description Length", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.descriptionlength", ftypes.UINT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.effective_business_date = ProtoField.new("Effective Business Date", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.effectivebusinessdate", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.effective_business_date_chars = ProtoField.new("Effective Business Date Chars", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.effectivebusinessdatechars", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.exponent = ProtoField.new("Exponent", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.exponent", ftypes.INT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.first_msg_seq_num = ProtoField.new("First Msg Seq Num", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.firstmsgseqnum", ftypes.UINT32)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_status = ProtoField.new("Index Status", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.indexstatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.length = ProtoField.new("Length", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.length", ftypes.UINT16)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.mantissa = ProtoField.new("Mantissa", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.mantissa", ftypes.INT32)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entries = ProtoField.new("Md Entries", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.mdentries", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entry_px = ProtoField.new("Md Entry Px", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.mdentrypx", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entry_type = ProtoField.new("Md Entry Type", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.mdentrytype", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.messagelength", ftypes.UINT16)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.messagetype", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.msgseqnum", ftypes.UINT32)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.no_md_entries = ProtoField.new("No Md Entries", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.nomdentries", ftypes.UINT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.number_of_messages = ProtoField.new("Number Of Messages", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.numberofmessages", ftypes.UINT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.sending_time = ProtoField.new("Sending Time", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.sendingtime", ftypes.UINT64)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.status = ProtoField.new("Status", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.status", ftypes.UINT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.summary_type = ProtoField.new("Summary Type", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.summarytype", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.symbol = ProtoField.new("Symbol", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.symbol", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.symbol_chars = ProtoField.new("Symbol Chars", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.symbolchars", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.symbol_length = ProtoField.new("Symbol Length", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.symbollength", ftypes.INT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.template_id = ProtoField.new("Template ID", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.templateid", ftypes.UINT8)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.total_number_of_records = ProtoField.new("Total Number Of Records", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.totalnumberofrecords", ftypes.UINT32)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.transact_time = ProtoField.new("Transact Time", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.transacttime", ftypes.UINT64)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.version = ProtoField.new("Version", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.version", ftypes.UINT8)

-- Cboe TitaniumConsolidated Indices Cgif 1.4.13 Headers
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message = ProtoField.new("Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.message", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.messageheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.packet = ProtoField.new("Packet", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.packet", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.packetheader", ftypes.STRING)

-- Cboe TitaniumConsolidated Indices 1.4.13 Application Messages
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.contributor_value_message = ProtoField.new("Contributor Value Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.contributorvaluemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.heartbeatmessage", ftypes.BYTES)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_definition_message = ProtoField.new("Index Definition Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.indexdefinitionmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_summary_message = ProtoField.new("Index Summary Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.indexsummarymessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_value_message = ProtoField.new("Index Value Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.indexvaluemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_value_with_status_message = ProtoField.new("Index Value With Status Message", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.indexvaluewithstatusmessage", ftypes.STRING)

-- Cboe TitaniumConsolidated Indices Cgif 1.4.13 generated fields
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entries_index = ProtoField.new("Md Entries Index", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.mdentriesindex", ftypes.UINT16)
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumconsolidated.indices.cgif.v1.4.13.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumConsolidated Indices Cgif 1.4.13 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Cboe TitaniumConsolidated Indices Cgif 1.4.13 Show Options
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_headers then
    show.headers = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_structs then
    show.structs = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_indexes then
    show.indexes = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe TitaniumConsolidated Indices Cgif 1.4.13 Fields
-----------------------------------------------------------------------

-- Agent Classification
cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification = {}

-- Size: Agent Classification
cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.size = 2

-- Display: Agent Classification
cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.display = function(value)
  if value == " " then
    return "Agent Classification: Not Specified (<whitespace>)"
  end
  if value == "CO" then
    return "Agent Classification: Cboe (CO)"
  end
  if value == "CC" then
    return "Agent Classification: Cboe Custom (CC)"
  end
  if value == "MS" then
    return "Agent Classification: Morningstar (MS)"
  end
  if value == "TP" then
    return "Agent Classification: Thirdparty (TP)"
  end
  if value == "MC" then
    return "Agent Classification: Morningstar Customer (MC)"
  end

  return "Agent Classification: Unknown("..value..")"
end

-- Dissect: Agent Classification
cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.agent_classification, range, value, display)

  return offset + length, value
end

-- Byte Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length = {}

-- Size: Byte Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.size = 1

-- Display: Byte Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.display = function(value)
  return "Byte Length: "..value
end

-- Dissect: Byte Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.byte_length, range, value, display)

  return offset + length, value
end

-- Channel
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel = {}

-- Display: Channel
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel.display = function(value)
  return "Channel: "..value
end

-- Dissect runtime sized field: Channel
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel.display(value, packet, parent, size)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.channel, range, value, display)

  return offset + size, value
end

-- Channel Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length = {}

-- Size: Channel Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.size = 1

-- Display: Channel Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.display = function(value)
  return "Channel Length: "..value
end

-- Dissect: Channel Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.channel_length, range, value, display)

  return offset + length, value
end

-- Current Record Number
cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number = {}

-- Size: Current Record Number
cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.size = 4

-- Display: Current Record Number
cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.display = function(value)
  return "Current Record Number: "..value
end

-- Dissect: Current Record Number
cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.current_record_number, range, value, display)

  return offset + length, value
end

-- Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars = {}

-- Size: Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.size = 10

-- Display: Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.display = function(value)
  return "Date Chars: "..value
end

-- Dissect: Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.date_chars, range, value, display)

  return offset + length, value
end

-- Description
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description = {}

-- Display: Description
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description.display = function(value)
  return "Description: "..value
end

-- Dissect runtime sized field: Description
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.description.display(value, packet, parent, size)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.description, range, value, display)

  return offset + size, value
end

-- Description Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length = {}

-- Size: Description Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.size = 1

-- Display: Description Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.display = function(value)
  return "Description Length: "..value
end

-- Dissect: Description Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.description_length, range, value, display)

  return offset + length, value
end

-- Effective Business Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars = {}

-- Size: Effective Business Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.size = 8

-- Display: Effective Business Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.display = function(value)
  return "Effective Business Date Chars: "..value
end

-- Dissect: Effective Business Date Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.effective_business_date_chars, range, value, display)

  return offset + length, value
end

-- Exponent
cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent = {}

-- Size: Exponent
cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.size = 1

-- Display: Exponent
cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.display = function(value)
  return "Exponent: "..value
end

-- Dissect: Exponent
cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.exponent, range, value, display)

  return offset + length, value
end

-- First Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num = {}

-- Size: First Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.size = 4

-- Display: First Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.display = function(value)
  return "First Msg Seq Num: "..value
end

-- Dissect: First Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.first_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Index Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status = {}

-- Size: Index Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.size = 1

-- Display: Index Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.display = function(value)
  if value == "N" then
    return "Index Status: Normal (N)"
  end
  if value == "I" then
    return "Index Status: Indicative (I)"
  end

  return "Index Status: Unknown("..value..")"
end

-- Dissect: Index Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_status, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.length = {}

-- Size: Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.size = 2

-- Display: Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.length, range, value, display)

  return offset + length, value
end

-- Mantissa
cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa = {}

-- Size: Mantissa
cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.size = 4

-- Display: Mantissa
cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.display = function(value)
  return "Mantissa: "..value
end

-- Dissect: Mantissa
cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type = {}

-- Size: Md Entry Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.size = 1

-- Display: Md Entry Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.display = function(value)
  if value == "0" then
    return "Md Entry Type: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Ask (1)"
  end
  if value == "3" then
    return "Md Entry Type: Index Value (3)"
  end
  if value == "5" then
    return "Md Entry Type: Close (5)"
  end
  if value == "6" then
    return "Md Entry Type: Settlement (6)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length = {}

-- Size: Message Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.size = 2

-- Display: Message Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type = {}

-- Size: Message Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.size = 1

-- Display: Message Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.display = function(value)
  if value == "X" then
    return "Message Type: Market Data Incremental Refresh (X)"
  end
  if value == "D" then
    return "Message Type: Index Definition (D)"
  end
  if value == "0" then
    return "Message Type: Heartbeat (0)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num = {}

-- Size: Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.size = 4

-- Display: Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- No Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries = {}

-- Size: No Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.size = 1

-- Display: No Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- Number Of Messages
cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages = {}

-- Size: Number Of Messages
cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.size = 1

-- Display: Number Of Messages
cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.display = function(value)
  return "Number Of Messages: "..value
end

-- Dissect: Number Of Messages
cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.number_of_messages, range, value, display)

  return offset + length, value
end

-- Sending Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time = {}

-- Size: Sending Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.size = 8

-- Display: Sending Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Sending Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.status = {}

-- Size: Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.size = 1

-- Display: Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.display = function(value)
  if value == 1 then
    return "Status: Active (1)"
  end
  if value == 2 then
    return "Status: Inactive (2)"
  end
  if value == 3 then
    return "Status: Deleted (3)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.status, range, value, display)

  return offset + length, value
end

-- Summary Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type = {}

-- Size: Summary Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.size = 1

-- Display: Summary Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.display = function(value)
  if value == "1" then
    return "Summary Type: Sod (1)"
  end
  if value == "2" then
    return "Summary Type: Eod (2)"
  end

  return "Summary Type: Unknown("..value..")"
end

-- Dissect: Summary Type
cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.summary_type, range, value, display)

  return offset + length, value
end

-- Symbol Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_chars = {}

-- Display: Symbol Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_chars.display = function(value)
  return "Symbol Chars: "..value
end

-- Dissect runtime sized field: Symbol Chars
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_chars.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_chars.display(value, packet, parent, size)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.symbol_chars, range, value, display)

  return offset + size, value
end

-- Symbol Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length = {}

-- Size: Symbol Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.size = 1

-- Display: Symbol Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.display = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Template ID
cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id = {}

-- Size: Template ID
cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.size = 1

-- Display: Template ID
cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.display = function(value)
  if value == 0x10 then
    return "Template ID: Heartbeat Message (0x10)"
  end
  if value == 0x16 then
    return "Template ID: Index Value Message (0x16)"
  end
  if value == 0x17 then
    return "Template ID: Contributor Value Message (0x17)"
  end
  if value == 0x18 then
    return "Template ID: Index Summary Message (0x18)"
  end
  if value == 0x19 then
    return "Template ID: Index Value With Status Message (0x19)"
  end
  if value == 0x1A then
    return "Template ID: Index Definition Message (0x1A)"
  end

  return "Template ID: Unknown("..value..")"
end

-- Dissect: Template ID
cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.template_id, range, value, display)

  return offset + length, value
end

-- Total Number Of Records
cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records = {}

-- Size: Total Number Of Records
cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.size = 4

-- Display: Total Number Of Records
cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.display = function(value)
  return "Total Number Of Records: "..value
end

-- Dissect: Total Number Of Records
cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.total_number_of_records, range, value, display)

  return offset + length, value
end

-- Transact Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time = {}

-- Size: Transact Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.size = 8

-- Display: Transact Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Version
cboe_titaniumconsolidated_indices_cgif_v1_4_13.version = {}

-- Size: Version
cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.size = 1

-- Display: Version
cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumConsolidated Indices Cgif 1.4.13
-----------------------------------------------------------------------

-- Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date = {}

-- Size: Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.size =
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.size

-- Display: Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Byte Length: int8
  index, byte_length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.dissect(buffer, index, packet, parent)

  -- Date Chars: string
  index, date_chars = cboe_titaniumconsolidated_indices_cgif_v1_4_13.date_chars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.date, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.fields(buffer, offset, packet, parent)
  end
end

-- Symbol
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol = {}

-- Calculate size of: Symbol
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.size

  -- Parse runtime size of: Symbol Chars
  index = index + buffer(offset + index - 1, 1):int()

  return index
end

-- Display: Symbol
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: int8
  index, symbol_length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Symbol Chars
  index, symbol_chars = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol_chars.dissect(buffer, index, packet, parent, symbol_length)

  return index
end

-- Dissect: Symbol
cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.symbol, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.fields(buffer, offset, packet, parent)
  end
end

-- Index Definition Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message = {}

-- Calculate size of: Index Definition Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.size(buffer, offset + index)

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.size

  -- Parse runtime size of: Description
  index = index + buffer(offset + index - 1, 1):uint()

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.size

  -- Parse runtime size of: Channel
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Index Definition Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Definition Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Record Number: uint32
  index, current_record_number = cboe_titaniumconsolidated_indices_cgif_v1_4_13.current_record_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Records: uint32
  index, total_number_of_records = cboe_titaniumconsolidated_indices_cgif_v1_4_13.total_number_of_records.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.dissect(buffer, index, packet, parent)

  -- Description Length: length
  index, description_length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.description_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Description
  index, description = cboe_titaniumconsolidated_indices_cgif_v1_4_13.description.dissect(buffer, index, packet, parent, description_length)

  -- Date: Struct of 2 fields
  index, date = cboe_titaniumconsolidated_indices_cgif_v1_4_13.date.dissect(buffer, index, packet, parent)

  -- Status: uint32
  index, status = cboe_titaniumconsolidated_indices_cgif_v1_4_13.status.dissect(buffer, index, packet, parent)

  -- Agent Classification: two byte string
  index, agent_classification = cboe_titaniumconsolidated_indices_cgif_v1_4_13.agent_classification.dissect(buffer, index, packet, parent)

  -- Channel Length: length
  index, channel_length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Channel
  index, channel = cboe_titaniumconsolidated_indices_cgif_v1_4_13.channel.dissect(buffer, index, packet, parent, channel_length)

  return index
end

-- Dissect: Index Definition Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_definition_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Px
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px = {}

-- Size: Md Entry Px
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.size =
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.size

-- Display: Md Entry Px
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exponent: int8
  index, exponent = cboe_titaniumconsolidated_indices_cgif_v1_4_13.exponent.dissect(buffer, index, packet, parent)

  -- Mantissa: int32
  index, mantissa = cboe_titaniumconsolidated_indices_cgif_v1_4_13.mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entry_px, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries = {}

-- Size: Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.size =
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.size

-- Display: Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.fields = function(buffer, offset, packet, parent, md_entries_index)
  local index = offset

  -- Implicit Md Entries Index
  if md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entries_index, md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: single byte string
  index, md_entry_type = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entries
cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.dissect = function(buffer, offset, packet, parent, md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.md_entries, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
  end
end

-- Index Value With Status Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message = {}

-- Calculate size of: Index Value With Status Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.size(buffer, offset + index)

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entries_count * 6

  return index
end

-- Display: Index Value With Status Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value With Status Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Status: single byte string
  index, index_status = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_status.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.dissect(buffer, index, packet, parent)

  -- No Md Entries: length
  index, no_md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Index Value With Status Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_value_with_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Effective Business Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date = {}

-- Size: Effective Business Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.size =
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.size

-- Display: Effective Business Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Effective Business Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Byte Length: int8
  index, byte_length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.byte_length.dissect(buffer, index, packet, parent)

  -- Effective Business Date Chars: string
  index, effective_business_date_chars = cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date_chars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Effective Business Date
cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.effective_business_date, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.fields(buffer, offset, packet, parent)
  end
end

-- Index Summary Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message = {}

-- Calculate size of: Index Summary Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.size(buffer, offset + index)

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entries_count * 6

  return index
end

-- Display: Index Summary Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Summary Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: Unit64
  index, transact_time = cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.dissect(buffer, index, packet, parent)

  -- Effective Business Date: Struct of 2 fields
  index, effective_business_date = cboe_titaniumconsolidated_indices_cgif_v1_4_13.effective_business_date.dissect(buffer, index, packet, parent)

  -- Summary Type: single byte string
  index, summary_type = cboe_titaniumconsolidated_indices_cgif_v1_4_13.summary_type.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.dissect(buffer, index, packet, parent)

  -- No Md Entries: length
  index, no_md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Index Summary Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Contributor Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message = {}

-- Calculate size of: Contributor Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.size

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.size(buffer, offset + index)

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entries_count * 6

  return index
end

-- Display: Contributor Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contributor Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: Unit64
  index, transact_time = cboe_titaniumconsolidated_indices_cgif_v1_4_13.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.dissect(buffer, index, packet, parent)

  -- No Md Entries: length
  index, no_md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Contributor Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.contributor_value_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message = {}

-- Calculate size of: Index Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.size(buffer, offset + index)

  index = index + cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entries_count * 6

  return index
end

-- Display: Index Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_titaniumconsolidated_indices_cgif_v1_4_13.symbol.dissect(buffer, index, packet, parent)

  -- No Md Entries: length
  index, no_md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = cboe_titaniumconsolidated_indices_cgif_v1_4_13.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Index Value Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.index_value_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumconsolidated_indices_cgif_v1_4_13.payload = {}

-- Dissect: Payload
cboe_titaniumconsolidated_indices_cgif_v1_4_13.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Heartbeat Message
  if template_id == 0x10 then
    return offset
  end
  -- Dissect Index Value Message
  if template_id == 0x16 then
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Contributor Value Message
  if template_id == 0x17 then
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.contributor_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary Message
  if template_id == 0x18 then
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Value With Status Message
  if template_id == 0x19 then
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_value_with_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Definition Message
  if template_id == 0x1A then
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.index_definition_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header = {}

-- Size: Message Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.size =
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.size

-- Display: Message Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_length.dissect(buffer, index, packet, parent)

  -- Template ID: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, template_id = cboe_titaniumconsolidated_indices_cgif_v1_4_13.template_id.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 3 values
  index, message_type = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_type.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = cboe_titaniumconsolidated_indices_cgif_v1_4_13.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message = {}

-- Display: Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template ID
  local template_id = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 6 branches
  index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.message, buffer(offset, 0))
    local current = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header = {}

-- Size: Packet Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.size =
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.size + 
  cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.size

-- Display: Packet Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = cboe_titaniumconsolidated_indices_cgif_v1_4_13.version.dissect(buffer, index, packet, parent)

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumconsolidated_indices_cgif_v1_4_13.length.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cboe_titaniumconsolidated_indices_cgif_v1_4_13.sending_time.dissect(buffer, index, packet, parent)

  -- Number Of Messages: 1 Byte Unsigned Fixed Width Integer
  index, number_of_messages = cboe_titaniumconsolidated_indices_cgif_v1_4_13.number_of_messages.dissect(buffer, index, packet, parent)

  -- First Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, first_msg_seq_num = cboe_titaniumconsolidated_indices_cgif_v1_4_13.first_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet = {}

-- Verify required size of Udp packet
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.size
end

-- Dissect Packet
cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Number Of Messages
  local number_of_messages = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, number_of_messages do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumconsolidated_indices_cgif_v1_4_13.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.init()
end

-- Dissector for Cboe TitaniumConsolidated Indices Cgif 1.4.13
function omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13, buffer(), omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumConsolidated Indices Cgif 1.4.13 (Udp)
local function omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumconsolidated_indices_cgif_v1_4_13.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13
  omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumConsolidated Indices Cgif 1.4.13
omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13:register_heuristic("udp", omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13_udp_heuristic)

-- Register Cboe TitaniumConsolidated Indices Cgif 1.4.13 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_titaniumconsolidated_indices_cgif_v1_4_13)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4.13
--   Date: Friday, May 16, 2025
--   Specification: Cboe Titanium Cboe Global Indices Feed Specification _ Cboe.pdf
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
