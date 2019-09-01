-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options C1 AuctionFeed Pitch 1.1.1 Protocol
local cboe_options_c1_auctionfeed_pitch_v1_1_1 = Proto("Cboe.Options.C1.AuctionFeed.Pitch.v1.1.1.Lua", "Cboe Options C1 AuctionFeed Pitch 1.1.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options C1 AuctionFeed Pitch 1.1.1 Fields
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctioncancelmessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctionendoffset", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_id = ProtoField.new("Auction Id", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctionid", ftypes.UINT64)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctionnotificationmessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctiononlyprice", ftypes.UINT64)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctionsummarymessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctiontrademessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_type = ProtoField.new("Auction Type", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctiontype", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.auctionupdatemessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.options.c1.auctionfeed.pitch.v1.1.1.buycontracts", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.client_id = ProtoField.new("Client Id", "cboe.options.c1.auctionfeed.pitch.v1.1.1.clientid", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.contracts = ProtoField.new("Contracts", "cboe.options.c1.auctionfeed.pitch.v1.1.1.contracts", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.count = ProtoField.new("Count", "cboe.options.c1.auctionfeed.pitch.v1.1.1.count", ftypes.UINT8)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.options.c1.auctionfeed.pitch.v1.1.1.customerindicator", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.endofsessionmessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.execution_id = ProtoField.new("Execution Id", "cboe.options.c1.auctionfeed.pitch.v1.1.1.executionid", ftypes.UINT64)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.options.c1.auctionfeed.pitch.v1.1.1.feedsymbol", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.options.c1.auctionfeed.pitch.v1.1.1.indicativeprice", ftypes.UINT64)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.length = ProtoField.new("Length", "cboe.options.c1.auctionfeed.pitch.v1.1.1.length", ftypes.UINT16)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message = ProtoField.new("Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.message", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message_header = ProtoField.new("Message Header", "cboe.options.c1.auctionfeed.pitch.v1.1.1.messageheader", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message_length = ProtoField.new("Message Length", "cboe.options.c1.auctionfeed.pitch.v1.1.1.messagelength", ftypes.UINT8)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message_type = ProtoField.new("Message Type", "cboe.options.c1.auctionfeed.pitch.v1.1.1.messagetype", ftypes.UINT8)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.multiplier = ProtoField.new("Multiplier", "cboe.options.c1.auctionfeed.pitch.v1.1.1.multiplier", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.options.c1.auctionfeed.pitch.v1.1.1.openingcondition", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.opening_type = ProtoField.new("Opening Type", "cboe.options.c1.auctionfeed.pitch.v1.1.1.openingtype", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.options.c1.auctionfeed.pitch.v1.1.1.osisymbol", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.packet = ProtoField.new("Packet", "cboe.options.c1.auctionfeed.pitch.v1.1.1.packet", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.c1.auctionfeed.pitch.v1.1.1.packetheader", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.participant_id = ProtoField.new("Participant Id", "cboe.options.c1.auctionfeed.pitch.v1.1.1.participantid", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.payload = ProtoField.new("Payload", "cboe.options.c1.auctionfeed.pitch.v1.1.1.payload", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.price = ProtoField.new("Price", "cboe.options.c1.auctionfeed.pitch.v1.1.1.price", ftypes.UINT64)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.quantity = ProtoField.new("Quantity", "cboe.options.c1.auctionfeed.pitch.v1.1.1.quantity", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.reference_price = ProtoField.new("Reference Price", "cboe.options.c1.auctionfeed.pitch.v1.1.1.referenceprice", ftypes.UINT64)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.options.c1.auctionfeed.pitch.v1.1.1.sellcontracts", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.sequence = ProtoField.new("Sequence", "cboe.options.c1.auctionfeed.pitch.v1.1.1.sequence", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.side = ProtoField.new("Side", "cboe.options.c1.auctionfeed.pitch.v1.1.1.side", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_6 = ProtoField.new("Symbol 6", "cboe.options.c1.auctionfeed.pitch.v1.1.1.symbol6", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_8 = ProtoField.new("Symbol 8", "cboe.options.c1.auctionfeed.pitch.v1.1.1.symbol8", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.options.c1.auctionfeed.pitch.v1.1.1.symbolcondition", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.symbolmappingmessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.time = ProtoField.new("Time", "cboe.options.c1.auctionfeed.pitch.v1.1.1.time", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.time_message = ProtoField.new("Time Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.timemessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.time_offset = ProtoField.new("Time Offset", "cboe.options.c1.auctionfeed.pitch.v1.1.1.timeoffset", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.timestamp = ProtoField.new("Timestamp", "cboe.options.c1.auctionfeed.pitch.v1.1.1.timestamp", ftypes.UINT32)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.underlying = ProtoField.new("Underlying", "cboe.options.c1.auctionfeed.pitch.v1.1.1.underlying", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.unit = ProtoField.new("Unit", "cboe.options.c1.auctionfeed.pitch.v1.1.1.unit", ftypes.UINT8)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.unitclearmessage", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.width_type = ProtoField.new("Width Type", "cboe.options.c1.auctionfeed.pitch.v1.1.1.widthtype", ftypes.STRING)
cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.options.c1.auctionfeed.pitch.v1.1.1.widthupdatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Options C1 AuctionFeed Pitch 1.1.1 Element Dissection Options
show.auction_cancel_message = true
show.auction_notification_message = true
show.auction_summary_message = true
show.auction_trade_message = true
show.auction_update_message = true
show.end_of_session_message = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.symbol_mapping_message = true
show.time_message = true
show.unit_clear_message = true
show.width_update_message = true
show.payload = false

-- Register Cboe Options C1 AuctionFeed Pitch 1.1.1 Show Options
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_width_update_message = Pref.bool("Show Width Update Message", show.width_update_message, "Parse and add Width Update Message to protocol tree")
cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_cancel_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_update_message then
    show.auction_update_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_auction_update_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_message then
    show.message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_message_header then
    show.message_header = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_packet then
    show.packet = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_packet_header then
    show.packet_header = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_packet_header
    changed = true
  end
  if show.symbol_mapping_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_time_message then
    show.time_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_time_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message
    changed = true
  end
  if show.width_update_message ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_width_update_message then
    show.width_update_message = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_width_update_message
    changed = true
  end
  if show.payload ~= cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_payload then
    show.payload = cboe_options_c1_auctionfeed_pitch_v1_1_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options C1 AuctionFeed Pitch 1.1.1
-----------------------------------------------------------------------

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: End Of Session Message
display.end_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Session Message
dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
dissect.end_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_session_message then
    local range = buffer(offset, 4)
    local display = display.end_of_session_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.end_of_session_message, range, display)
  end

  return dissect.end_of_session_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying
size_of.underlying = 8

-- Display: Underlying
display.underlying = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
dissect.underlying = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying)
  local value = range:string()
  local display = display.underlying(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.underlying, range, value, display)

  return offset + size_of.underlying
end

-- Size: Symbol Condition
size_of.symbol_condition = 1

-- Display: Symbol Condition
display.symbol_condition = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
dissect.symbol_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_condition)
  local value = range:string()
  local display = display.symbol_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_condition, range, value, display)

  return offset + size_of.symbol_condition
end

-- Size: Osi Symbol
size_of.osi_symbol = 21

-- Display: Osi Symbol
display.osi_symbol = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
dissect.osi_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.osi_symbol)
  local value = range:string()
  local display = display.osi_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.osi_symbol, range, value, display)

  return offset + size_of.osi_symbol
end

-- Size: Feed Symbol
size_of.feed_symbol = 6

-- Display: Feed Symbol
display.feed_symbol = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
dissect.feed_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.feed_symbol)
  local value = range:string()
  local display = display.feed_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.feed_symbol, range, value, display)

  return offset + size_of.feed_symbol
end

-- Display: Symbol Mapping Message
display.symbol_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
dissect.symbol_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index = dissect.feed_symbol(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index = dissect.osi_symbol(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.symbol_condition(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index = dissect.underlying(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
dissect.symbol_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_mapping_message then
    local range = buffer(offset, 36)
    local display = display.symbol_mapping_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message, range, display)
  end

  return dissect.symbol_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Multiplier
size_of.multiplier = 4

-- Display: Multiplier
display.multiplier = function(value)
  return "Multiplier: "..value
end

-- Dissect: Multiplier
dissect.multiplier = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.multiplier)
  local value = range:le_uint()
  local display = display.multiplier(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.multiplier, range, value, display)

  return offset + size_of.multiplier
end

-- Size: Width Type
size_of.width_type = 1

-- Display: Width Type
display.width_type = function(value)
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
dissect.width_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.width_type)
  local value = range:string()
  local display = display.width_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.width_type, range, value, display)

  return offset + size_of.width_type
end

-- Size: Time Offset
size_of.time_offset = 4

-- Display: Time Offset
display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
dissect.time_offset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time_offset)
  local value = range:le_uint()
  local display = display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.time_offset, range, value, display)

  return offset + size_of.time_offset
end

-- Display: Width Update Message
display.width_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Width Update Message
dissect.width_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index = dissect.underlying(buffer, index, packet, parent)

  -- Width Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.width_type(buffer, index, packet, parent)

  -- Multiplier: 4 Byte Unsigned Fixed Width Integer
  index = dissect.multiplier(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
dissect.width_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.width_update_message then
    local range = buffer(offset, 17)
    local display = display.width_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.width_update_message, range, display)
  end

  return dissect.width_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
size_of.quantity = 4

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quantity)
  local value = range:le_uint()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.quantity, range, value, display)

  return offset + size_of.quantity
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Opening Type
size_of.opening_type = 1

-- Display: Opening Type
display.opening_type = function(value)
  if value == "G" then
    return "Opening Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Opening Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Opening Type: Halt Reopening (H)"
  end
  if value == "V" then
    return "Opening Type: Volatility Opening (V)"
  end

  return "Opening Type: Unknown("..value..")"
end

-- Dissect: Opening Type
dissect.opening_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_type)
  local value = range:string()
  local display = display.opening_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.opening_type, range, value, display)

  return offset + size_of.opening_type
end

-- Size: Symbol 8
size_of.symbol_8 = 8

-- Display: Symbol 8
display.symbol_8 = function(value)
  return "Symbol 8: "..value
end

-- Dissect: Symbol 8
dissect.symbol_8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_8)
  local value = range:string()
  local display = display.symbol_8(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_8, range, value, display)

  return offset + size_of.symbol_8
end

-- Display: Auction Summary Message
display.auction_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Summary Message
dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Symbol 8: 8 Byte Ascii String
  index = dissect.symbol_8(buffer, index, packet, parent)

  -- Opening Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.opening_type(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
dissect.auction_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_summary_message then
    local range = buffer(offset, 25)
    local display = display.auction_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_summary_message, range, display)
  end

  return dissect.auction_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Opening Condition
size_of.opening_condition = 1

-- Display: Opening Condition
display.opening_condition = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
dissect.opening_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_condition)
  local value = range:string()
  local display = display.opening_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.opening_condition, range, value, display)

  return offset + size_of.opening_condition
end

-- Size: Auction Only Price
size_of.auction_only_price = 8

-- Display: Auction Only Price
display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Dissect: Auction Only Price
dissect.auction_only_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_only_price)
  local value = range:le_uint64()
  local display = display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_only_price, range, value, display)

  return offset + size_of.auction_only_price
end

-- Size: Indicative Price
size_of.indicative_price = 8

-- Display: Indicative Price
display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
dissect.indicative_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.indicative_price)
  local value = range:le_uint64()
  local display = display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.indicative_price, range, value, display)

  return offset + size_of.indicative_price
end

-- Size: Sell Contracts
size_of.sell_contracts = 4

-- Display: Sell Contracts
display.sell_contracts = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
dissect.sell_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sell_contracts)
  local value = range:le_uint()
  local display = display.sell_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.sell_contracts, range, value, display)

  return offset + size_of.sell_contracts
end

-- Size: Buy Contracts
size_of.buy_contracts = 4

-- Display: Buy Contracts
display.buy_contracts = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
dissect.buy_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buy_contracts)
  local value = range:le_uint()
  local display = display.buy_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.buy_contracts, range, value, display)

  return offset + size_of.buy_contracts
end

-- Size: Reference Price
size_of.reference_price = 8

-- Display: Reference Price
display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
dissect.reference_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_price)
  local value = range:le_uint64()
  local display = display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.reference_price, range, value, display)

  return offset + size_of.reference_price
end

-- Display: Auction Update Message
display.auction_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Update Message
dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Symbol 8: 8 Byte Ascii String
  index = dissect.symbol_8(buffer, index, packet, parent)

  -- Opening Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.opening_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reference_price(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.buy_contracts(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sell_contracts(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_only_price(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index = dissect.opening_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
dissect.auction_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_update_message then
    local range = buffer(offset, 46)
    local display = display.auction_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_update_message, range, display)
  end

  return dissect.auction_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Contracts
size_of.contracts = 4

-- Display: Contracts
display.contracts = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
dissect.contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contracts)
  local value = range:le_uint()
  local display = display.contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.contracts, range, value, display)

  return offset + size_of.contracts
end

-- Size: Execution Id
size_of.execution_id = 8

-- Display: Execution Id
display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
dissect.execution_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.execution_id)
  local value = range:le_uint64()
  local display = display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.execution_id, range, value, display)

  return offset + size_of.execution_id
end

-- Size: Auction Id
size_of.auction_id = 8

-- Display: Auction Id
display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
dissect.auction_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_id)
  local value = range:le_uint64()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_id, range, value, display)

  return offset + size_of.auction_id
end

-- Display: Auction Trade Message
display.auction_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Trade Message
dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
dissect.auction_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_trade_message then
    local range = buffer(offset, 32)
    local display = display.auction_trade_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_trade_message, range, display)
  end

  return dissect.auction_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Auction Cancel Message
display.auction_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Cancel Message
dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_cancel_message then
    local range = buffer(offset, 12)
    local display = display.auction_cancel_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message, range, display)
  end

  return dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Client Id
size_of.client_id = 4

-- Display: Client Id
display.client_id = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
dissect.client_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.client_id)
  local value = range:string()
  local display = display.client_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.client_id, range, value, display)

  return offset + size_of.client_id
end

-- Size: Auction End Offset
size_of.auction_end_offset = 4

-- Display: Auction End Offset
display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_end_offset)
  local value = range:le_uint()
  local display = display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_end_offset, range, value, display)

  return offset + size_of.auction_end_offset
end

-- Size: Participant Id
size_of.participant_id = 4

-- Display: Participant Id
display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.participant_id)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.participant_id, range, value, display)

  return offset + size_of.participant_id
end

-- Size: Customer Indicator
size_of.customer_indicator = 1

-- Display: Customer Indicator
display.customer_indicator = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
dissect.customer_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.customer_indicator)
  local value = range:string()
  local display = display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.customer_indicator, range, value, display)

  return offset + size_of.customer_indicator
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
  if value == "B" then
    return "Auction Type: Auction Instruction Mechanism (B)"
  end
  if value == "S" then
    return "Auction Type: Solicitation Auction Mechanism (S)"
  end
  if value == "T" then
    return "Auction Type: Step Up Mechanism (T)"
  end
  if value == "A" then
    return "Auction Type: All Or None (A)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_type, range, value, display)

  return offset + size_of.auction_type
end

-- Size: Symbol 6
size_of.symbol_6 = 6

-- Display: Symbol 6
display.symbol_6 = function(value)
  return "Symbol 6: "..value
end

-- Dissect: Symbol 6
dissect.symbol_6 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_6)
  local value = range:string()
  local display = display.symbol_6(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.symbol_6, range, value, display)

  return offset + size_of.symbol_6
end

-- Display: Auction Notification Message
display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Symbol 6: 6 Byte Ascii String
  index = dissect.symbol_6(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contracts(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.auction_end_offset(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index = dissect.client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local range = buffer(offset, 45)
    local display = display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.auction_notification_message, range, display)
  end

  return dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Display: Unit Clear Message
display.unit_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Clear Message
dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
dissect.unit_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_clear_message then
    local range = buffer(offset, 4)
    local display = display.unit_clear_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.unit_clear_message, range, display)
  end

  return dissect.unit_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Time
size_of.time = 4

-- Display: Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time)
  local value = range:le_uint()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.time, range, value, display)

  return offset + size_of.time
end

-- Display: Time Message
display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local range = buffer(offset, 4)
    local display = display.time_message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.time_message, range, display)
  end

  return dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, messagetype)
  -- Size of Time Message
  if messagetype == 0x20 then
    return 4
  end
  -- Size of Unit Clear Message
  if messagetype == 0x97 then
    return 4
  end
  -- Size of Auction Notification Message
  if messagetype == 0xAD then
    return 45
  end
  -- Size of Auction Cancel Message
  if messagetype == 0xAE then
    return 12
  end
  -- Size of Auction Trade Message
  if messagetype == 0xAF then
    return 32
  end
  -- Size of Auction Update Message
  if messagetype == 0xD1 then
    return 46
  end
  -- Size of Auction Summary Message
  if messagetype == 0x96 then
    return 25
  end
  -- Size of Width Update Message
  if messagetype == 0xD2 then
    return 17
  end
  -- Size of Symbol Mapping Message
  if messagetype == 0x2E then
    return 36
  end
  -- Size of End Of Session Message
  if messagetype == 0x2D then
    return 4
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, messagetype)
  -- Dissect Time Message
  if messagetype == 0x20 then
    return dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if messagetype == 0x97 then
    return dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if messagetype == 0xAD then
    return dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if messagetype == 0xAE then
    return dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if messagetype == 0xAF then
    return dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if messagetype == 0xD1 then
    return dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if messagetype == 0x96 then
    return dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if messagetype == 0xD2 then
    return dissect.width_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if messagetype == 0x2E then
    return dissect.symbol_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if messagetype == 0x2D then
    return dissect.end_of_session_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
  if value == 0xD1 then
    return "Message Type: Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0xD2 then
    return "Message Type: Width Update Message (0xD2)"
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
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message_type, range, value, display)

  return offset + size_of.message_type
end

-- Size: Message Length
size_of.message_length = 1

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message_length, range, value, display)

  return offset + size_of.message_length
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index = dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 2)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 10 branches
  local code = buffer(index - 1, 1):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence
size_of.sequence = 4

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence)
  local value = range:le_uint()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.sequence, range, value, display)

  return offset + size_of.sequence
end

-- Size: Unit
size_of.unit = 1

-- Display: Unit
display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
dissect.unit = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit)
  local value = range:le_uint()
  local display = display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.unit, range, value, display)

  return offset + size_of.unit
end

-- Size: Count
size_of.count = 1

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.count)
  local value = range:le_uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.count, range, value, display)

  return offset + size_of.count
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.length)
  local value = range:le_uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.length, range, value, display)

  return offset + size_of.length
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index = dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 8)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  local end_of_payload = buffer:len()
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_options_c1_auctionfeed_pitch_v1_1_1.init()
end

-- Dissector for Cboe Options C1 AuctionFeed Pitch 1.1.1
function cboe_options_c1_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_options_c1_auctionfeed_pitch_v1_1_1.name

  -- Dissect protocol
  local protocol = parent:add(cboe_options_c1_auctionfeed_pitch_v1_1_1, buffer(), cboe_options_c1_auctionfeed_pitch_v1_1_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_options_c1_auctionfeed_pitch_v1_1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_options_c1_auctionfeed_pitch_v1_1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options C1 AuctionFeed Pitch 1.1.1
local function cboe_options_c1_auctionfeed_pitch_v1_1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_options_c1_auctionfeed_pitch_v1_1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_options_c1_auctionfeed_pitch_v1_1_1
  cboe_options_c1_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options C1 AuctionFeed Pitch 1.1.1
cboe_options_c1_auctionfeed_pitch_v1_1_1:register_heuristic("udp", cboe_options_c1_auctionfeed_pitch_v1_1_1_heuristic)

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
