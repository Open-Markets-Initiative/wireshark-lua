-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxOptions AuctionFeed Pitch 1.1.1 Protocol
local omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1 = Proto("Cboe.EdgxOptions.AuctionFeed.Pitch.v1.1.1.Lua", "Cboe EdgxOptions AuctionFeed Pitch 1.1.1")

-- Protocol table
local cboe_edgxoptions_auctionfeed_pitch_v1_1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxOptions AuctionFeed Pitch 1.1.1 Fields
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.auctionendoffset", ftypes.UINT32)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_id = ProtoField.new("Auction Id", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.auctionid", ftypes.UINT64)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_type = ProtoField.new("Auction Type", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.auctiontype", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.contracts = ProtoField.new("Contracts", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.contracts", ftypes.UINT32)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.count = ProtoField.new("Count", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.count", ftypes.UINT8)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.customerindicator", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.executionid", ftypes.UINT64)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.feedsymbol", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.length = ProtoField.new("Length", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.length", ftypes.UINT16)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message = ProtoField.new("Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.message", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_header = ProtoField.new("Message Header", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.messageheader", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_length = ProtoField.new("Message Length", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.messagelength", ftypes.UINT8)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_type = ProtoField.new("Message Type", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.messagetype", ftypes.UINT8)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.osisymbol", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.packet = ProtoField.new("Packet", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.packet", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.packetheader", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.participantid", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.price = ProtoField.new("Price", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.price", ftypes.DOUBLE)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.sequence = ProtoField.new("Sequence", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.sequence", ftypes.UINT32)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.side = ProtoField.new("Side", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.side", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.symbol = ProtoField.new("Symbol", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.symbol", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.symbolcondition", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.time = ProtoField.new("Time", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.time", ftypes.UINT32)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.timeoffset", ftypes.UINT32)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.timestamp", ftypes.UINT32)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.unit = ProtoField.new("Unit", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.unit", ftypes.UINT8)

-- Cboe EdgxOptions Pitch AuctionFeed 1.1.1 Application Messages
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.auctioncancelmessage", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.auctionnotificationmessage", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.auctiontrademessage", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.endofsessionmessage", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.symbolmappingmessage", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.time_message = ProtoField.new("Time Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.timemessage", ftypes.STRING)
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.unitclearmessage", ftypes.STRING)

-- Cboe EdgxOptions AuctionFeed Pitch 1.1.1 generated fields
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_index = ProtoField.new("Message Index", "cboe.edgxoptions.auctionfeed.pitch.v1.1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxOptions AuctionFeed Pitch 1.1.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe EdgxOptions AuctionFeed Pitch 1.1.1 Show Options
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message then
    show.message = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message
  end
  if show.message_header ~= omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message_header then
    show.message_header = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_packet then
    show.packet = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_packet_header then
    show.packet_header = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message_index then
    show.message_index = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.prefs.show_message_index
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
-- Cboe EdgxOptions AuctionFeed Pitch 1.1.1 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset = {}

-- Size: Auction End Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id = {}

-- Size: Auction Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.size = 8

-- Display: Auction Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type = {}

-- Size: Auction Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.size = 1

-- Display: Auction Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Bats Auction Mechanism (B)"
  end
  if value == "T" then
    return "Auction Type: Step Up Mechanism (T)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Contracts
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts = {}

-- Size: Contracts
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.size = 4

-- Display: Contracts
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.contracts, range, value, display)

  return offset + length, value
end

-- Count
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count = {}

-- Size: Count
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.size = 1

-- Display: Count
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator = {}

-- Size: Customer Indicator
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id = {}

-- Size: Execution Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.size = 8

-- Display: Execution Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol = {}

-- Size: Feed Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length = {}

-- Size: Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.size = 2

-- Display: Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length = {}

-- Size: Message Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.size = 1

-- Display: Message Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type = {}

-- Size: Message Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.size = 1

-- Display: Message Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Auction Trade Message (0xAF)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol = {}

-- Size: Osi Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id = {}

-- Size: Participant Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.size = 4

-- Display: Participant Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price = {}

-- Size: Price
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.size = 8

-- Display: Price
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.translate(raw)
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence = {}

-- Size: Sequence
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.size = 4

-- Display: Sequence
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side = {}

-- Size: Side
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.size = 1

-- Display: Side
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol = {}

-- Size: Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.size = 6

-- Display: Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition = {}

-- Size: Symbol Condition
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.display = function(value)
  return "Symbol Condition: "..value
end

-- Dissect: Symbol Condition
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time = {}

-- Size: Time
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.size = 4

-- Display: Time
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset = {}

-- Size: Time Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.size = 4

-- Display: Time Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp = {}

-- Size: Timestamp
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.size = 4

-- Display: Timestamp
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit = {}

-- Size: Unit
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.size = 1

-- Display: Unit
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxOptions AuctionFeed Pitch 1.1.1
-----------------------------------------------------------------------

-- End Of Session Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message = {}

-- Size: End Of Session Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.size

-- Display: End Of Session Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.size

-- Display: Symbol Mapping Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String
  index, symbol_condition = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.size

-- Display: Auction Trade Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.execution_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.dissect(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.size

-- Display: Auction Cancel Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.size

-- Display: Auction Notification Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index, auction_type = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.side.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.price.dissect(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.size

-- Display: Unit Clear Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message = {}

-- Size: Time Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.size

-- Display: Time Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.payload = {}

-- Dissect: Payload
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header = {}

-- Size: Message Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.size

-- Display: Message Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message = {}

-- Display: Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.message, buffer(offset, 0))
    local current = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header = {}

-- Size: Packet Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.size =
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.size + 
  cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.size

-- Display: Packet Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet = {}

-- Verify required size of Udp packet
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.size
end

-- Dissect Packet
cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_edgxoptions_auctionfeed_pitch_v1_1_1.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.init()
end

-- Dissector for Cboe EdgxOptions AuctionFeed Pitch 1.1.1
function omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1, buffer(), omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.description, "("..buffer:len().." Bytes)")
  return cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxOptions AuctionFeed Pitch 1.1.1 (Udp)
local function omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_auctionfeed_pitch_v1_1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1
  omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxOptions AuctionFeed Pitch 1.1.1
omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1:register_heuristic("udp", omi_cboe_edgxoptions_auctionfeed_pitch_v1_1_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.1
--   Date: Thursday, December 6, 2018
--   Specification: US_Options_Auction_Feed_Specification.pdf
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
