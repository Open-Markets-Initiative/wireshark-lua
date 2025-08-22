-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1 Options AuctionFeed Pitch 1.1.1 Protocol
local cboe_c1_options_auctionfeed_pitch_v1_1_1 = Proto("Cboe.C1.Options.AuctionFeed.Pitch.v1.1.1.Lua", "Cboe C1 Options AuctionFeed Pitch 1.1.1")

-- Component Tables
local show = {}
local format = {}
local cboe_c1_options_auctionfeed_pitch_v1_1_1_display = {}
local cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect = {}
local cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1 Options AuctionFeed Pitch 1.1.1 Fields
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctionendoffset", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctionid", ftypes.UINT64)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctiononlyprice", ftypes.DOUBLE)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctiontype", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.c1.options.auctionfeed.pitch.v1.1.1.buycontracts", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.client_id = ProtoField.new("Client Id", "cboe.c1.options.auctionfeed.pitch.v1.1.1.clientid", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.contracts = ProtoField.new("Contracts", "cboe.c1.options.auctionfeed.pitch.v1.1.1.contracts", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.count = ProtoField.new("Count", "cboe.c1.options.auctionfeed.pitch.v1.1.1.count", ftypes.UINT8)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c1.options.auctionfeed.pitch.v1.1.1.customerindicator", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.execution_id = ProtoField.new("Execution Id", "cboe.c1.options.auctionfeed.pitch.v1.1.1.executionid", ftypes.UINT64)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1.options.auctionfeed.pitch.v1.1.1.feedsymbol", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c1.options.auctionfeed.pitch.v1.1.1.indicativeprice", ftypes.DOUBLE)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.length = ProtoField.new("Length", "cboe.c1.options.auctionfeed.pitch.v1.1.1.length", ftypes.UINT16)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message = ProtoField.new("Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.message", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_header = ProtoField.new("Message Header", "cboe.c1.options.auctionfeed.pitch.v1.1.1.messageheader", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_length = ProtoField.new("Message Length", "cboe.c1.options.auctionfeed.pitch.v1.1.1.messagelength", ftypes.UINT8)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_type = ProtoField.new("Message Type", "cboe.c1.options.auctionfeed.pitch.v1.1.1.messagetype", ftypes.UINT8)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.multiplier = ProtoField.new("Multiplier", "cboe.c1.options.auctionfeed.pitch.v1.1.1.multiplier", ftypes.DOUBLE)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.c1.options.auctionfeed.pitch.v1.1.1.openingcondition", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.opening_type = ProtoField.new("Opening Type", "cboe.c1.options.auctionfeed.pitch.v1.1.1.openingtype", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1.options.auctionfeed.pitch.v1.1.1.osisymbol", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.packet = ProtoField.new("Packet", "cboe.c1.options.auctionfeed.pitch.v1.1.1.packet", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1.options.auctionfeed.pitch.v1.1.1.packetheader", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.participant_id = ProtoField.new("Participant Id", "cboe.c1.options.auctionfeed.pitch.v1.1.1.participantid", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.payload = ProtoField.new("Payload", "cboe.c1.options.auctionfeed.pitch.v1.1.1.payload", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.price = ProtoField.new("Price", "cboe.c1.options.auctionfeed.pitch.v1.1.1.price", ftypes.DOUBLE)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.quantity = ProtoField.new("Quantity", "cboe.c1.options.auctionfeed.pitch.v1.1.1.quantity", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.reference_price = ProtoField.new("Reference Price", "cboe.c1.options.auctionfeed.pitch.v1.1.1.referenceprice", ftypes.DOUBLE)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.c1.options.auctionfeed.pitch.v1.1.1.sellcontracts", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.sequence = ProtoField.new("Sequence", "cboe.c1.options.auctionfeed.pitch.v1.1.1.sequence", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.side = ProtoField.new("Side", "cboe.c1.options.auctionfeed.pitch.v1.1.1.side", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol = ProtoField.new("Symbol", "cboe.c1.options.auctionfeed.pitch.v1.1.1.symbol", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1.options.auctionfeed.pitch.v1.1.1.symbolcondition", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.c1.options.auctionfeed.pitch.v1.1.1.symbolextended", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.time = ProtoField.new("Time", "cboe.c1.options.auctionfeed.pitch.v1.1.1.time", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1.options.auctionfeed.pitch.v1.1.1.timeoffset", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1.options.auctionfeed.pitch.v1.1.1.timestamp", ftypes.UINT32)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.underlying = ProtoField.new("Underlying", "cboe.c1.options.auctionfeed.pitch.v1.1.1.underlying", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.unit = ProtoField.new("Unit", "cboe.c1.options.auctionfeed.pitch.v1.1.1.unit", ftypes.UINT8)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.width_type = ProtoField.new("Width Type", "cboe.c1.options.auctionfeed.pitch.v1.1.1.widthtype", ftypes.STRING)

-- Cboe C1 Options AuctionFeed Pitch 1.1.1 messages
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctioncancelmessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctionnotificationmessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctionsummarymessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctiontrademessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.auctionupdatemessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.endofsessionmessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.symbolmappingmessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.time_message = ProtoField.new("Time Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.timemessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.unitclearmessage", ftypes.STRING)
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.c1.options.auctionfeed.pitch.v1.1.1.widthupdatemessage", ftypes.STRING)

-- Cboe C1 Options AuctionFeed Pitch 1.1.1 generated fields
cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_index = ProtoField.new("Message Index", "cboe.c1.options.auctionfeed.pitch.v1.1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe C1 Options AuctionFeed Pitch 1.1.1 Element Dissection Options
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

-- Register Cboe C1 Options AuctionFeed Pitch 1.1.1 Show Options
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_width_update_message = Pref.bool("Show Width Update Message", show.width_update_message, "Parse and add Width Update Message to protocol tree")
cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_cancel_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_update_message then
    show.auction_update_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_auction_update_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_message then
    show.message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_message_header then
    show.message_header = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_packet then
    show.packet = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_packet_header then
    show.packet_header = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_packet_header
    changed = true
  end
  if show.symbol_mapping_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_time_message then
    show.time_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_time_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_unit_clear_message
    changed = true
  end
  if show.width_update_message ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_width_update_message then
    show.width_update_message = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_width_update_message
    changed = true
  end
  if show.payload ~= cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_payload then
    show.payload = cboe_c1_options_auctionfeed_pitch_v1_1_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe C1 Options AuctionFeed Pitch 1.1.1
-----------------------------------------------------------------------

-- Size: Timestamp
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.timestamp = 4

-- Display: Timestamp
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.end_of_session_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.timestamp

  return index
end

-- Display: End Of Session Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.end_of_session_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message = function(buffer, offset, packet, parent)
  if show.end_of_session_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.end_of_session_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Underlying
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.underlying = 8

-- Display: Underlying
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.underlying = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.underlying = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.underlying(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.underlying, range, value, display)

  return offset + length, value
end

-- Size: Symbol Condition
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_condition = 1

-- Display: Symbol Condition
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol_condition = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_condition = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Size: Osi Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.osi_symbol = 21

-- Display: Osi Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.osi_symbol = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.osi_symbol = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.osi_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.osi_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Size: Feed Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.feed_symbol = 6

-- Display: Feed Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.feed_symbol = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.feed_symbol = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.feed_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.feed_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Mapping Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_mapping_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.feed_symbol

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.osi_symbol

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_condition

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.underlying

  return index
end

-- Display: Symbol Mapping Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.feed_symbol(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.osi_symbol(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_condition(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.underlying(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message = function(buffer, offset, packet, parent)
  if show.symbol_mapping_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol_mapping_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Multiplier
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.multiplier = 4

-- Display: Multiplier
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.multiplier = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
translate.multiplier = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.multiplier = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.multiplier
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.multiplier(raw)
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.multiplier(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Size: Width Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.width_type = 1

-- Display: Width Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.width_type = function(value)
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_type = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.width_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.width_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.width_type, range, value, display)

  return offset + length, value
end

-- Size: Time Offset
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset = 4

-- Display: Time Offset
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Width Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.width_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.underlying

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.width_type

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.multiplier

  return index
end

-- Display: Width Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.width_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.underlying(buffer, index, packet, parent)

  -- Width Type: 1 Byte Ascii String Enum with 2 values
  index, width_type = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_type(buffer, index, packet, parent)

  -- Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, multiplier = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.multiplier(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_update_message = function(buffer, offset, packet, parent)
  if show.width_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.width_update_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.width_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_update_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Quantity
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.quantity = 4

-- Display: Quantity
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.quantity = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.price = 8

-- Display: Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Opening Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_type = 1

-- Display: Opening Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.opening_type = function(value)
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
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.opening_type = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.opening_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.opening_type, range, value, display)

  return offset + length, value
end

-- Size: Symbol Extended
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_extended = 8

-- Display: Symbol Extended
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol_extended = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_extended = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_extended
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol_extended(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Summary Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_extended

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_type

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.price

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.quantity

  return index
end

-- Display: Auction Summary Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_extended(buffer, index, packet, parent)

  -- Opening Type: 1 Byte Ascii String Enum with 4 values
  index, opening_type = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.opening_type(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_summary_message = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Opening Condition
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_condition = 1

-- Display: Opening Condition
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.opening_condition = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.opening_condition = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.opening_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Size: Auction Only Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_only_price = 8

-- Display: Auction Only Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
translate.auction_only_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_only_price = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_only_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.auction_only_price(raw)
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.indicative_price = 8

-- Display: Indicative Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
translate.indicative_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.indicative_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.indicative_price(raw)
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Sell Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.sell_contracts = 4

-- Display: Sell Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.sell_contracts = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.sell_contracts = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.sell_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.sell_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Size: Buy Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.buy_contracts = 4

-- Display: Buy Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.buy_contracts = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.buy_contracts = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.buy_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.buy_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.reference_price = 8

-- Display: Reference Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
translate.reference_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.reference_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.reference_price(raw)
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_extended

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_type

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.reference_price

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.buy_contracts

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.sell_contracts

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.indicative_price

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_only_price

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.opening_condition

  return index
end

-- Display: Auction Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_extended(buffer, index, packet, parent)

  -- Opening Type: 1 Byte Ascii String Enum with 4 values
  index, opening_type = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.opening_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.reference_price(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.buy_contracts(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.sell_contracts(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_only_price(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.opening_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_update_message = function(buffer, offset, packet, parent)
  if show.auction_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_update_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.contracts = 4

-- Display: Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.contracts = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.contracts = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.contracts, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.execution_id = 8

-- Display: Execution Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_id = 8

-- Display: Auction Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Trade Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_trade_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_id

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.execution_id

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.price

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.contracts

  return index
end

-- Display: Auction Trade Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message = function(buffer, offset, packet, parent)
  if show.auction_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Auction Cancel Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_cancel_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_id

  return index
end

-- Display: Auction Cancel Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  if show.auction_cancel_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_cancel_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Client Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.client_id = 4

-- Display: Client Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.client_id = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.client_id = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.client_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.client_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.client_id, range, value, display)

  return offset + length, value
end

-- Size: Auction End Offset
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_end_offset = 4

-- Display: Auction End Offset
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_end_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.participant_id = 4

-- Display: Participant Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.customer_indicator = 1

-- Display: Customer Indicator
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.customer_indicator = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Side
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.side = 1

-- Display: Side
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.side = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_type = 1

-- Display: Auction Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_type = function(value)
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
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol = 6

-- Display: Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_id

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_type

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.side

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.price

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.contracts

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.customer_indicator

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.participant_id

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_end_offset

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.client_id

  return index
end

-- Display: Auction Notification Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_notification_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.contracts(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_end_offset(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.auction_notification_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Unit Clear Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.unit_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.unit_clear_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Time
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time = 4

-- Display: Time
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time

  return index
end

-- Display: Time Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_message = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.time_message, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.time_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_notification_message(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_cancel_message(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_trade_message(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0xD1 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_update_message(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.auction_summary_message(buffer, offset)
  end
  -- Size of Width Update Message
  if message_type == 0xD2 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.width_update_message(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.symbol_mapping_message(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.end_of_session_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xD1 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.width_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.symbol_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.end_of_session_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.payload, range, display)

  return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_type = 1

-- Display: Message Type
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message_type = function(value)
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
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_length = 1

-- Display: Message Length
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_length

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.message_type

  return index
end

-- Display: Message Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_header, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 10 branches
  index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.message, buffer(offset, 0))
    local current = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Sequence
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.sequence = 4

-- Display: Sequence
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.unit = 1

-- Display: Unit
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.count = 1

-- Display: Count
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.length = 2

-- Display: Length
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.length

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.count

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.unit

  index = index + cboe_c1_options_auctionfeed_pitch_v1_1_1_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_c1_options_auctionfeed_pitch_v1_1_1_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_c1_options_auctionfeed_pitch_v1_1_1.init()
end

-- Dissector for Cboe C1 Options AuctionFeed Pitch 1.1.1
function cboe_c1_options_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_c1_options_auctionfeed_pitch_v1_1_1.name

  -- Dissect protocol
  local protocol = parent:add(cboe_c1_options_auctionfeed_pitch_v1_1_1, buffer(), cboe_c1_options_auctionfeed_pitch_v1_1_1.description, "("..buffer:len().." Bytes)")
  return cboe_c1_options_auctionfeed_pitch_v1_1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_c1_options_auctionfeed_pitch_v1_1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_c1_options_auctionfeed_pitch_v1_1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe C1 Options AuctionFeed Pitch 1.1.1
local function cboe_c1_options_auctionfeed_pitch_v1_1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_c1_options_auctionfeed_pitch_v1_1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_c1_options_auctionfeed_pitch_v1_1_1
  cboe_c1_options_auctionfeed_pitch_v1_1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1 Options AuctionFeed Pitch 1.1.1
cboe_c1_options_auctionfeed_pitch_v1_1_1:register_heuristic("udp", cboe_c1_options_auctionfeed_pitch_v1_1_1_heuristic)

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
