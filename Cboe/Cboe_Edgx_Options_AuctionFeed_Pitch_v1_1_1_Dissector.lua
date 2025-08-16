-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Edgx Options AuctionFeed Pitch 1.1.1 Protocol
local cboe_edgx_options_auctionfeed_pitch_v1_1_1 = Proto("Cboe.Edgx.Options.AuctionFeed.Pitch.v1.1.1.Lua", "Cboe Edgx Options AuctionFeed Pitch 1.1.1")

-- Component Tables
local show = {}
local format = {}
local cboe_edgx_options_auctionfeed_pitch_v1_1_1_display = {}
local cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect = {}
local cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Edgx Options AuctionFeed Pitch 1.1.1 Fields
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.auctionendoffset", ftypes.UINT32)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_id = ProtoField.new("Auction Id", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.auctionid", ftypes.UINT64)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_type = ProtoField.new("Auction Type", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.auctiontype", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.contracts = ProtoField.new("Contracts", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.contracts", ftypes.UINT32)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.count = ProtoField.new("Count", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.count", ftypes.UINT8)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.customerindicator", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.executionid", ftypes.UINT64)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.feedsymbol", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.length = ProtoField.new("Length", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.length", ftypes.UINT16)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message = ProtoField.new("Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.message", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message_header = ProtoField.new("Message Header", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.messageheader", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message_length = ProtoField.new("Message Length", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.messagelength", ftypes.UINT8)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message_type = ProtoField.new("Message Type", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.messagetype", ftypes.UINT8)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.osisymbol", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.packet = ProtoField.new("Packet", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.packet", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.packetheader", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.participantid", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.payload = ProtoField.new("Payload", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.payload", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.price = ProtoField.new("Price", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.price", ftypes.DOUBLE)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.sequence = ProtoField.new("Sequence", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.sequence", ftypes.UINT32)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.side = ProtoField.new("Side", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.side", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.symbol = ProtoField.new("Symbol", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.symbol", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.symbolcondition", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.time = ProtoField.new("Time", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.time", ftypes.UINT32)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.timeoffset", ftypes.UINT32)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.timestamp", ftypes.UINT32)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.unit = ProtoField.new("Unit", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.unit", ftypes.UINT8)

-- Cboe Edgx Options AuctionFeed Pitch 1.1.1 messages
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.auctioncancelmessage", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.auctionnotificationmessage", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.auctiontrademessage", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.endofsessionmessage", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.symbolmappingmessage", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.time_message = ProtoField.new("Time Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.timemessage", ftypes.STRING)
cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgx.options.auctionfeed.pitch.v1.1.1.unitclearmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Edgx Options AuctionFeed Pitch 1.1.1 Element Dissection Options
show.auction_cancel_message = true
show.auction_notification_message = true
show.auction_trade_message = true
show.end_of_session_message = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.symbol_mapping_message = true
show.time_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe Edgx Options AuctionFeed Pitch 1.1.1 Show Options
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_cancel_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_message then
    show.message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_message_header then
    show.message_header = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_packet then
    show.packet = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_packet_header then
    show.packet_header = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_packet_header
    changed = true
  end
  if show.symbol_mapping_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_time_message then
    show.time_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_time_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_payload then
    show.payload = cboe_edgx_options_auctionfeed_pitch_v1_1_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Edgx Options AuctionFeed Pitch 1.1.1
-----------------------------------------------------------------------

-- Size: Timestamp
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.timestamp = 4

-- Display: Timestamp
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.end_of_session_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.timestamp

  return index
end

-- Display: End Of Session Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.end_of_session_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message = function(buffer, offset, packet, parent)
  if show.end_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.end_of_session_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Symbol Condition
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol_condition = 1

-- Display: Symbol Condition
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.symbol_condition = function(value)
  return "Symbol Condition: "..value
end

-- Dissect: Symbol Condition
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_condition = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.symbol_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Size: Osi Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.osi_symbol = 21

-- Display: Osi Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.osi_symbol = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.osi_symbol = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.osi_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.osi_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Size: Feed Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.feed_symbol = 6

-- Display: Feed Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.feed_symbol = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.feed_symbol = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.feed_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.feed_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Mapping Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol_mapping_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.feed_symbol

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.osi_symbol

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol_condition

  return index
end

-- Display: Symbol Mapping Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.symbol_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.feed_symbol(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.osi_symbol(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String
  index, symbol_condition = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message = function(buffer, offset, packet, parent)
  if show.symbol_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.symbol_mapping_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Contracts
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.contracts = 4

-- Display: Contracts
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.contracts = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.contracts = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.contracts, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.price = 8

-- Display: Price
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.execution_id = 8

-- Display: Execution Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_id = 8

-- Display: Auction Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Time Offset
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_offset = 4

-- Display: Time Offset
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Trade Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_trade_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_id

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.execution_id

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.price

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.contracts

  return index
end

-- Display: Auction Trade Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message = function(buffer, offset, packet, parent)
  if show.auction_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Auction Cancel Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_cancel_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_id

  return index
end

-- Display: Auction Cancel Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  if show.auction_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Auction End Offset
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_end_offset = 4

-- Display: Auction End Offset
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_end_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.participant_id = 4

-- Display: Participant Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.customer_indicator = 1

-- Display: Customer Indicator
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.customer_indicator = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Side
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.side = 1

-- Display: Side
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.side = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_type = 1

-- Display: Auction Type
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_type = function(value)
  if value == "B" then
    return "Auction Type: Bats Auction Mechanism (B)"
  end
  if value == "T" then
    return "Auction Type: Step Up Mechanism (T)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol = 6

-- Display: Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_id

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_type

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.side

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.price

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.contracts

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.customer_indicator

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.participant_id

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_end_offset

  return index
end

-- Display: Auction Notification Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_notification_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index, auction_type = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.contracts(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_end_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.auction_notification_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Unit Clear Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.unit_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.unit_clear_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Time
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time = 4

-- Display: Time
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time

  return index
end

-- Display: Time Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_message = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.time_message, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.time_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_notification_message(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_cancel_message(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xAF then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.auction_trade_message(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.symbol_mapping_message(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.end_of_session_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.payload, range, display)

  return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_type = 1

-- Display: Message Type
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message_type = function(value)
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
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_length = 1

-- Display: Message Length
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_length

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.message_type

  return index
end

-- Display: Message Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message_header, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.message(buffer, packet, parent)
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.message, range, display)
  end

  cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Sequence
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.sequence = 4

-- Display: Sequence
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.unit = 1

-- Display: Unit
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.count = 1

-- Display: Count
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.length = 2

-- Display: Length
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.length

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.count

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.unit

  index = index + cboe_edgx_options_auctionfeed_pitch_v1_1_1_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_options_auctionfeed_pitch_v1_1_1_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Message: Struct of 2 fields
    index = cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_edgx_options_auctionfeed_pitch_v1_1_1.init()
end

-- Dissector for Cboe Edgx Options AuctionFeed Pitch 1.1.1
function cboe_edgx_options_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_edgx_options_auctionfeed_pitch_v1_1_1.name

  -- Dissect protocol
  local protocol = parent:add(cboe_edgx_options_auctionfeed_pitch_v1_1_1, buffer(), cboe_edgx_options_auctionfeed_pitch_v1_1_1.description, "("..buffer:len().." Bytes)")
  return cboe_edgx_options_auctionfeed_pitch_v1_1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_edgx_options_auctionfeed_pitch_v1_1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_edgx_options_auctionfeed_pitch_v1_1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Edgx Options AuctionFeed Pitch 1.1.1
local function cboe_edgx_options_auctionfeed_pitch_v1_1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_edgx_options_auctionfeed_pitch_v1_1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_edgx_options_auctionfeed_pitch_v1_1_1
  cboe_edgx_options_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Edgx Options AuctionFeed Pitch 1.1.1
cboe_edgx_options_auctionfeed_pitch_v1_1_1:register_heuristic("udp", cboe_edgx_options_auctionfeed_pitch_v1_1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
