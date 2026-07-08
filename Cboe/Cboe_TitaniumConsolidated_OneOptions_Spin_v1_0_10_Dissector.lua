-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated OneOptions Spin 1.0.10 Protocol
local omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10 = Proto("Omi.Cboe.TitaniumConsolidated.OneOptions.Spin.v1.0.10", "Cboe TitaniumConsolidated OneOptions Spin 1.0.10")

-- Protocol table
local cboe_titaniumconsolidated_oneoptions_spin_v1_0_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated OneOptions Spin 1.0.10 Fields
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.count = ProtoField.new("Count", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.count", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.feedsymbol", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.filler = ProtoField.new("Filler", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.filler", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.instrumentcount", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.instrumentdefinitionresponsestatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.length = ProtoField.new("Length", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.length", ftypes.UINT16)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.loginresponsestatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message = ProtoField.new("Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.message", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_count = ProtoField.new("Message Count", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.messagecount", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.messageheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.messagelength", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.messagetype", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.order_count = ProtoField.new("Order Count", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.ordercount", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.osisymbol", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.packet = ProtoField.new("Packet", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.packet", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.packetheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.password = ProtoField.new("Password", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.password", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.sequence", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.sessionsubid", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.spinresponsestatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.symbolcondition", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_response_status = ProtoField.new("Trade Replay Response Status", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.tradereplayresponsestatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.underlying = ProtoField.new("Underlying", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.underlying", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.unit = ProtoField.new("Unit", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.unit", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.username = ProtoField.new("Username", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.username", ftypes.STRING)

-- Cboe TitaniumConsolidated Spin OneOptions 1.0.10 Application Messages
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.instrumentdefinitionfinishedmessage", ftypes.BYTES)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.login_message = ProtoField.new("Login Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.loginmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.loginresponsemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.spinfinishedmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.spinimageavailablemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.spinrequestmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.spinresponsemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.symbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_finished_message = ProtoField.new("Trade Replay Finished Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.tradereplayfinishedmessage", ftypes.BYTES)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_request_message = ProtoField.new("Trade Replay Request Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.tradereplayrequestmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_response_message = ProtoField.new("Trade Replay Response Message", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.tradereplayresponsemessage", ftypes.STRING)

-- Cboe TitaniumConsolidated OneOptions Spin 1.0.10 generated fields
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumconsolidated.oneoptions.spin.v1.0.10.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumConsolidated OneOptions Spin 1.0.10 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe TitaniumConsolidated OneOptions Spin 1.0.10 Show Options
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message then
    show.message = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_packet then
    show.packet = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.prefs.show_message_index
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
-- Cboe TitaniumConsolidated OneOptions Spin 1.0.10 Fields
-----------------------------------------------------------------------

-- Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count = {}

-- Size: Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.size = 1

-- Display: Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.count, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol = {}

-- Size: Feed Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler = {}

-- Size: Filler
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.size = 2

-- Display: Filler
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.filler, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count = {}

-- Size: Instrument Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.size = 4

-- Display: Instrument Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.display = function(value)
  if value == "A" then
    return "Instrument Definition Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Instrument Definition Response Status: Out Of Range Sequence Must Be 0 (O)"
  end
  if value == "S" then
    return "Instrument Definition Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Instrument Definition Response Status: Unknown("..value..")"
end

-- Dissect: Instrument Definition Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length = {}

-- Size: Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.size = 2

-- Display: Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status = {}

-- Size: Login Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.size = 1

-- Display: Login Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Username Password (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count = {}

-- Size: Message Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.size = 8

-- Display: Message Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length = {}

-- Size: Message Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.size = 1

-- Display: Message Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type = {}

-- Size: Message Type
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.size = 1

-- Display: Message Type
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x80 then
    return "Message Type: Spin Image Available Message (0x80)"
  end
  if value == 0x81 then
    return "Message Type: Spin Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Spin Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Spin Finished Message (0x83)"
  end
  if value == 0x84 then
    return "Message Type: Instrument Definition Request Message (0x84)"
  end
  if value == 0x85 then
    return "Message Type: Instrument Definition Response Message (0x85)"
  end
  if value == 0x86 then
    return "Message Type: Instrument Definition Finished Message (0x86)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x87 then
    return "Message Type: Trade Replay Request Message (0x87)"
  end
  if value == 0x88 then
    return "Message Type: Trade Replay Response Message (0x88)"
  end
  if value == 0x89 then
    return "Message Type: Trade Replay Finished Message (0x89)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count = {}

-- Size: Order Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.size = 4

-- Display: Order Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.order_count, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol = {}

-- Size: Osi Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Password
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password = {}

-- Size: Password
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.size = 10

-- Display: Password
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.password, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence = {}

-- Size: Sequence
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size = 4

-- Display: Sequence
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id = {}

-- Size: Session Sub Id
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status = {}

-- Size: Spin Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.display = function(value)
  if value == "A" then
    return "Spin Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Spin Response Status: Out Of Range Sequence Requested Is Greater Than Sequence Available By The Next Spin (O)"
  end
  if value == "S" then
    return "Spin Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition = {}

-- Size: Symbol Condition
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Trade Replay Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status = {}

-- Size: Trade Replay Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.size = 1

-- Display: Trade Replay Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.display = function(value)
  if value == "A" then
    return "Trade Replay Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Trade Replay Response Status: Out Of Range Sequence Must Be 0 (O)"
  end
  if value == "U" then
    return "Trade Replay Response Status: Trade Replay Functionality Is Not Available On This Unit (U)"
  end
  if value == "S" then
    return "Trade Replay Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Trade Replay Response Status: Unknown("..value..")"
end

-- Dissect: Trade Replay Response Status
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_response_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying = {}

-- Size: Underlying
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.size = 8

-- Display: Underlying
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit = {}

-- Size: Unit
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.size = 1

-- Display: Unit
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username = {}

-- Size: Username
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.size = 4

-- Display: Username
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumConsolidated OneOptions Spin 1.0.10
-----------------------------------------------------------------------

-- Trade Replay Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message = {}

-- Size: Trade Replay Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.size

-- Display: Trade Replay Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Replay Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  -- Message Count: Binary
  index, message_count = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_count.dissect(buffer, index, packet, parent)

  -- Trade Replay Response Status: Alphanumeric
  index, trade_replay_response_status = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Replay Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_response_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Replay Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message = {}

-- Size: Trade Replay Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size

-- Display: Trade Replay Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Replay Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Replay Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.trade_replay_request_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.size

-- Display: Symbol Mapping Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size

-- Display: Instrument Definition Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size

-- Display: Spin Finished Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message = {}

-- Size: Spin Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.size

-- Display: Spin Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message = {}

-- Size: Spin Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size

-- Display: Spin Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size

-- Display: Spin Image Available Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message = {}

-- Size: Login Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.size

-- Display: Login Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.login_response_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message = {}

-- Size: Login Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.size

-- Display: Login Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.login_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.payload = {}

-- Dissect: Payload
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return offset
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Replay Request Message
  if message_type == 0x87 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Replay Response Message
  if message_type == 0x88 then
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.trade_replay_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Replay Finished Message
  if message_type == 0x89 then
    return offset
  end

  return offset
end

-- Message Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header = {}

-- Size: Message Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.size

-- Display: Message Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message = {}

-- Read runtime size of: Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.message, buffer(offset, 0))
    local current = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.messages = {}

-- Dissect: Messages
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header = {}

-- Size: Packet Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.size =
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.size + 
  cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.size

-- Display: Packet Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet = {}

-- Verify required size of Tcp packet
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.size
end

-- Dissect Packet
cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.init()
end

-- Dissector for Cboe TitaniumConsolidated OneOptions Spin 1.0.10
function omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10, buffer(), omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumConsolidated OneOptions Spin 1.0.10 (Tcp)
local function omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10
  omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumConsolidated OneOptions Spin 1.0.10
omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10:register_heuristic("tcp", omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10_tcp_heuristic)

-- Register Cboe TitaniumConsolidated OneOptions Spin 1.0.10 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_titaniumconsolidated_oneoptions_spin_v1_0_10)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.10
--   Date: Wednesday, April 1, 2026
--   Specification: Cboe_Options_One_Feed_Specification.pdf
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
