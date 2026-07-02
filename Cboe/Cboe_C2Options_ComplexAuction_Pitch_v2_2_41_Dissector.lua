-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C2Options ComplexAuction Pitch 2.2.41 Protocol
local omi_cboe_c2options_complexauction_pitch_v2_2_41 = Proto("Omi.Cboe.C2Options.ComplexAuction.Pitch.v2.2.41", "Cboe C2Options ComplexAuction Pitch 2.2.41")

-- Protocol table
local cboe_c2options_complexauction_pitch_v2_2_41 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C2Options ComplexAuction Pitch 2.2.41 Fields
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c2options.complexauction.pitch.v2.2.41.auctionendoffset", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_id = ProtoField.new("Auction Id", "cboe.c2options.complexauction.pitch.v2.2.41.auctionid", ftypes.UINT64)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_notification_auction_type = ProtoField.new("Auction Notification Auction Type", "cboe.c2options.complexauction.pitch.v2.2.41.auctionnotificationauctiontype", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c2options.complexauction.pitch.v2.2.41.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_summary_auction_type = ProtoField.new("Auction Summary Auction Type", "cboe.c2options.complexauction.pitch.v2.2.41.auctionsummaryauctiontype", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.c2options.complexauction.pitch.v2.2.41.buycontracts", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.client_id = ProtoField.new("Client Id", "cboe.c2options.complexauction.pitch.v2.2.41.clientid", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_id_long = ProtoField.new("Complex Instrument Id Long", "cboe.c2options.complexauction.pitch.v2.2.41.complexinstrumentidlong", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_id_short = ProtoField.new("Complex Instrument Id Short", "cboe.c2options.complexauction.pitch.v2.2.41.complexinstrumentidshort", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.c2options.complexauction.pitch.v2.2.41.complexinstrumenttype", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.c2options.complexauction.pitch.v2.2.41.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.c2options.complexauction.pitch.v2.2.41.complexleg", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.c2options.complexauction.pitch.v2.2.41.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.c2options.complexauction.pitch.v2.2.41.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.count = ProtoField.new("Count", "cboe.c2options.complexauction.pitch.v2.2.41.count", ftypes.UINT8)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c2options.complexauction.pitch.v2.2.41.customerindicator", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.execution_id = ProtoField.new("Execution Id", "cboe.c2options.complexauction.pitch.v2.2.41.executionid", ftypes.UINT64)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c2options.complexauction.pitch.v2.2.41.feedsymbol", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c2options.complexauction.pitch.v2.2.41.indicativeprice", ftypes.DOUBLE)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_count = ProtoField.new("Leg Count", "cboe.c2options.complexauction.pitch.v2.2.41.legcount", ftypes.UINT8)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.c2options.complexauction.pitch.v2.2.41.legratio", ftypes.INT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.c2options.complexauction.pitch.v2.2.41.legsecuritytype", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.c2options.complexauction.pitch.v2.2.41.legsymbol", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.length = ProtoField.new("Length", "cboe.c2options.complexauction.pitch.v2.2.41.length", ftypes.UINT16)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message = ProtoField.new("Message", "cboe.c2options.complexauction.pitch.v2.2.41.message", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_header = ProtoField.new("Message Header", "cboe.c2options.complexauction.pitch.v2.2.41.messageheader", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_length = ProtoField.new("Message Length", "cboe.c2options.complexauction.pitch.v2.2.41.messagelength", ftypes.UINT8)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_type = ProtoField.new("Message Type", "cboe.c2options.complexauction.pitch.v2.2.41.messagetype", ftypes.UINT8)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.c2options.complexauction.pitch.v2.2.41.openingcondition", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.options_auction_update_auction_type = ProtoField.new("Options Auction Update Auction Type", "cboe.c2options.complexauction.pitch.v2.2.41.optionsauctionupdateauctiontype", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c2options.complexauction.pitch.v2.2.41.osisymbol", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.packet = ProtoField.new("Packet", "cboe.c2options.complexauction.pitch.v2.2.41.packet", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.packet_header = ProtoField.new("Packet Header", "cboe.c2options.complexauction.pitch.v2.2.41.packetheader", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.participant_id = ProtoField.new("Participant Id", "cboe.c2options.complexauction.pitch.v2.2.41.participantid", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.price = ProtoField.new("Price", "cboe.c2options.complexauction.pitch.v2.2.41.price", ftypes.DOUBLE)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.quantity = ProtoField.new("Quantity", "cboe.c2options.complexauction.pitch.v2.2.41.quantity", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.reference_price = ProtoField.new("Reference Price", "cboe.c2options.complexauction.pitch.v2.2.41.referenceprice", ftypes.DOUBLE)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.c2options.complexauction.pitch.v2.2.41.sellcontracts", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.sequence = ProtoField.new("Sequence", "cboe.c2options.complexauction.pitch.v2.2.41.sequence", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.side = ProtoField.new("Side", "cboe.c2options.complexauction.pitch.v2.2.41.side", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c2options.complexauction.pitch.v2.2.41.symbolcondition", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time = ProtoField.new("Time", "cboe.c2options.complexauction.pitch.v2.2.41.time", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time_offset = ProtoField.new("Time Offset", "cboe.c2options.complexauction.pitch.v2.2.41.timeoffset", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.timestamp = ProtoField.new("Timestamp", "cboe.c2options.complexauction.pitch.v2.2.41.timestamp", ftypes.UINT32)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.underlying = ProtoField.new("Underlying", "cboe.c2options.complexauction.pitch.v2.2.41.underlying", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.unit = ProtoField.new("Unit", "cboe.c2options.complexauction.pitch.v2.2.41.unit", ftypes.UINT8)

-- Cboe C2Options Pitch ComplexAuction 2.2.41 Application Messages
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c2options.complexauction.pitch.v2.2.41.auctioncancelmessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c2options.complexauction.pitch.v2.2.41.auctionnotificationmessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c2options.complexauction.pitch.v2.2.41.auctionsummarymessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c2options.complexauction.pitch.v2.2.41.auctiontrademessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.c2options.complexauction.pitch.v2.2.41.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c2options.complexauction.pitch.v2.2.41.endofsessionmessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.c2options.complexauction.pitch.v2.2.41.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c2options.complexauction.pitch.v2.2.41.symbolmappingmessage", ftypes.STRING)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time_message = ProtoField.new("Time Message", "cboe.c2options.complexauction.pitch.v2.2.41.timemessage", ftypes.STRING)

-- Cboe C2Options ComplexAuction Pitch 2.2.41 generated fields
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.c2options.complexauction.pitch.v2.2.41.complexlegindex", ftypes.UINT16)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_index = ProtoField.new("Message Index", "cboe.c2options.complexauction.pitch.v2.2.41.messageindex", ftypes.UINT16)
omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.timestamp = ProtoField.new("Timestamp", "cboe.c2options.complexauction.pitch.v2.2.41.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe C2Options ComplexAuction Pitch 2.2.41 Formatting
-----------------------------------------------------------------------

-- timestamp format
local time_offset_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_c2options_complexauction_pitch_v2_2_41.time_offset_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_c2options_complexauction_pitch_v2_2_41.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C2Options ComplexAuction Pitch 2.2.41 Element Dissection Options
show.application_messages = true
show.complex_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.complex_leg_index = true

-- Register Cboe C2Options ComplexAuction Pitch 2.2.41 Show Options
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_complex_leg_index = Pref.bool("Show Complex Leg Index", show.complex_leg_index, "Show generated complex leg index in protocol tree")

omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.time_offset_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", time_offset_format_enum, false)
omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_application_messages then
    show.application_messages = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_application_messages
  end
  if show.complex_leg ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_complex_leg then
    show.complex_leg = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_complex_leg
  end
  if show.message ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message then
    show.message = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message
  end
  if show.message_header ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message_header then
    show.message_header = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_packet then
    show.packet = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_packet_header then
    show.packet_header = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message_index then
    show.message_index = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_message_index
  end
  if show.complex_leg_index ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_complex_leg_index then
    show.complex_leg_index = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.show_complex_leg_index
  end
  if cboe_c2options_complexauction_pitch_v2_2_41.time_offset_format ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.time_offset_format then
    cboe_c2options_complexauction_pitch_v2_2_41.time_offset_format = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.time_offset_format
  end
  if cboe_c2options_complexauction_pitch_v2_2_41.utc_offset_hours ~= omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.utc_offset_hours then
    cboe_c2options_complexauction_pitch_v2_2_41.utc_offset_hours = omi_cboe_c2options_complexauction_pitch_v2_2_41.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_c2options_complexauction_pitch_v2_2_41.conversation = {}
cboe_c2options_complexauction_pitch_v2_2_41.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_c2options_complexauction_pitch_v2_2_41.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_c2options_complexauction_pitch_v2_2_41.conversation.data = function(packet)
  local key = cboe_c2options_complexauction_pitch_v2_2_41.conversation.key(packet)
  local data = cboe_c2options_complexauction_pitch_v2_2_41.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_c2options_complexauction_pitch_v2_2_41.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_c2options_complexauction_pitch_v2_2_41.conversation.current = nil


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
-- Cboe C2Options ComplexAuction Pitch 2.2.41 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset = {}

-- Size: Auction End Offset
cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c2options_complexauction_pitch_v2_2_41.auction_id = {}

-- Size: Auction Id
cboe_c2options_complexauction_pitch_v2_2_41.auction_id.size = 8

-- Display: Auction Id
cboe_c2options_complexauction_pitch_v2_2_41.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c2options_complexauction_pitch_v2_2_41.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Notification Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type = {}

-- Size: Auction Notification Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.size = 1

-- Display: Auction Notification Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.display = function(value)
  if value == "C" then
    return "Auction Notification Auction Type: Complex Order Auction Coa Or Stop Complex Order Auction Scoa Effective Tbd (C)"
  end
  if value == "S" then
    return "Auction Notification Auction Type: Complex Solicitation Auction Mechanism (S)"
  end
  if value == "B" then
    return "Auction Notification Auction Type: Complex Aim (B)"
  end
  if value == "O" then
    return "Auction Notification Auction Type: Coa All Or None (O)"
  end

  return "Auction Notification Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Notification Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_notification_auction_type, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price = {}

-- Size: Auction Only Price
cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.translate(raw)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Summary Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type = {}

-- Size: Auction Summary Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.size = 1

-- Display: Auction Summary Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.display = function(value)
  if value == "G" then
    return "Auction Summary Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Summary Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Summary Auction Type: Halt Re Opening (H)"
  end

  return "Auction Summary Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Summary Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_summary_auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts = {}

-- Size: Buy Contracts
cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_c2options_complexauction_pitch_v2_2_41.client_id = {}

-- Size: Client Id
cboe_c2options_complexauction_pitch_v2_2_41.client_id.size = 4

-- Display: Client Id
cboe_c2options_complexauction_pitch_v2_2_41.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_c2options_complexauction_pitch_v2_2_41.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.client_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Long
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long = {}

-- Size: Complex Instrument Id Long
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.size = 8

-- Display: Complex Instrument Id Long
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.display = function(value)
  return "Complex Instrument Id Long: "..value
end

-- Dissect: Complex Instrument Id Long
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_id_long, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Short
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short = {}

-- Size: Complex Instrument Id Short
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.size = 6

-- Display: Complex Instrument Id Short
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.display = function(value)
  return "Complex Instrument Id Short: "..value
end

-- Dissect: Complex Instrument Id Short
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_id_short, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.translate(raw)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.translate(raw)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Count
cboe_c2options_complexauction_pitch_v2_2_41.count = {}

-- Size: Count
cboe_c2options_complexauction_pitch_v2_2_41.count.size = 1

-- Display: Count
cboe_c2options_complexauction_pitch_v2_2_41.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c2options_complexauction_pitch_v2_2_41.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator = {}

-- Size: Customer Indicator
cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_c2options_complexauction_pitch_v2_2_41.execution_id = {}

-- Size: Execution Id
cboe_c2options_complexauction_pitch_v2_2_41.execution_id.size = 8

-- Display: Execution Id
cboe_c2options_complexauction_pitch_v2_2_41.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c2options_complexauction_pitch_v2_2_41.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol = {}

-- Size: Feed Symbol
cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c2options_complexauction_pitch_v2_2_41.indicative_price = {}

-- Size: Indicative Price
cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.size = 8

-- Display: Indicative Price
cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.translate(raw)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_c2options_complexauction_pitch_v2_2_41.leg_count = {}

-- Size: Leg Count
cboe_c2options_complexauction_pitch_v2_2_41.leg_count.size = 1

-- Display: Leg Count
cboe_c2options_complexauction_pitch_v2_2_41.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_c2options_complexauction_pitch_v2_2_41.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio = {}

-- Size: Leg Ratio
cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type = {}

-- Size: Leg Security Type
cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Leg Is An Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Leg Is An Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol = {}

-- Size: Leg Symbol
cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_c2options_complexauction_pitch_v2_2_41.length = {}

-- Size: Length
cboe_c2options_complexauction_pitch_v2_2_41.length.size = 2

-- Display: Length
cboe_c2options_complexauction_pitch_v2_2_41.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c2options_complexauction_pitch_v2_2_41.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c2options_complexauction_pitch_v2_2_41.message_length = {}

-- Size: Message Length
cboe_c2options_complexauction_pitch_v2_2_41.message_length.size = 1

-- Display: Message Length
cboe_c2options_complexauction_pitch_v2_2_41.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c2options_complexauction_pitch_v2_2_41.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c2options_complexauction_pitch_v2_2_41.message_type = {}

-- Size: Message Type
cboe_c2options_complexauction_pitch_v2_2_41.message_type.size = 1

-- Display: Message Type
cboe_c2options_complexauction_pitch_v2_2_41.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x9A then
    return "Message Type: Complex Instrument Definition Expanded Message (0x9A)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
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
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_c2options_complexauction_pitch_v2_2_41.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_type, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_c2options_complexauction_pitch_v2_2_41.opening_condition = {}

-- Size: Opening Condition
cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.size = 1

-- Display: Opening Condition
cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Options Auction Update Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type = {}

-- Size: Options Auction Update Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.size = 1

-- Display: Options Auction Update Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.display = function(value)
  if value == "G" then
    return "Options Auction Update Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Options Auction Update Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Options Auction Update Auction Type: Halt Re Opening (H)"
  end

  return "Options Auction Update Auction Type: Unknown("..value..")"
end

-- Dissect: Options Auction Update Auction Type
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.options_auction_update_auction_type, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol = {}

-- Size: Osi Symbol
cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c2options_complexauction_pitch_v2_2_41.participant_id = {}

-- Size: Participant Id
cboe_c2options_complexauction_pitch_v2_2_41.participant_id.size = 4

-- Display: Participant Id
cboe_c2options_complexauction_pitch_v2_2_41.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c2options_complexauction_pitch_v2_2_41.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
cboe_c2options_complexauction_pitch_v2_2_41.price = {}

-- Size: Price
cboe_c2options_complexauction_pitch_v2_2_41.price.size = 8

-- Display: Price
cboe_c2options_complexauction_pitch_v2_2_41.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_c2options_complexauction_pitch_v2_2_41.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_c2options_complexauction_pitch_v2_2_41.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.price.translate(raw)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_c2options_complexauction_pitch_v2_2_41.quantity = {}

-- Size: Quantity
cboe_c2options_complexauction_pitch_v2_2_41.quantity.size = 4

-- Display: Quantity
cboe_c2options_complexauction_pitch_v2_2_41.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_c2options_complexauction_pitch_v2_2_41.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c2options_complexauction_pitch_v2_2_41.reference_price = {}

-- Size: Reference Price
cboe_c2options_complexauction_pitch_v2_2_41.reference_price.size = 8

-- Display: Reference Price
cboe_c2options_complexauction_pitch_v2_2_41.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_c2options_complexauction_pitch_v2_2_41.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c2options_complexauction_pitch_v2_2_41.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.reference_price.translate(raw)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts = {}

-- Size: Sell Contracts
cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c2options_complexauction_pitch_v2_2_41.sequence = {}

-- Size: Sequence
cboe_c2options_complexauction_pitch_v2_2_41.sequence.size = 4

-- Display: Sequence
cboe_c2options_complexauction_pitch_v2_2_41.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c2options_complexauction_pitch_v2_2_41.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_c2options_complexauction_pitch_v2_2_41.side = {}

-- Size: Side
cboe_c2options_complexauction_pitch_v2_2_41.side.size = 1

-- Display: Side
cboe_c2options_complexauction_pitch_v2_2_41.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c2options_complexauction_pitch_v2_2_41.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition = {}

-- Size: Symbol Condition
cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c2options_complexauction_pitch_v2_2_41.time = {}

-- Size: Time
cboe_c2options_complexauction_pitch_v2_2_41.time.size = 4

-- Store: Time
cboe_c2options_complexauction_pitch_v2_2_41.time.current = nil

-- Generated: Time
cboe_c2options_complexauction_pitch_v2_2_41.time.generated = function(value, range, packet, parent)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.time.display(value)
  local time = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_c2options_complexauction_pitch_v2_2_41.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c2options_complexauction_pitch_v2_2_41.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c2options_complexauction_pitch_v2_2_41.time_offset = {}

-- Size: Time Offset
cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size = 4

-- Display: Time Offset
cboe_c2options_complexauction_pitch_v2_2_41.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c2options_complexauction_pitch_v2_2_41.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp = {}

-- Size: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.size = 4

-- Display: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_c2options_complexauction_pitch_v2_2_41.underlying = {}

-- Size: Underlying
cboe_c2options_complexauction_pitch_v2_2_41.underlying.size = 8

-- Display: Underlying
cboe_c2options_complexauction_pitch_v2_2_41.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c2options_complexauction_pitch_v2_2_41.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c2options_complexauction_pitch_v2_2_41.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c2options_complexauction_pitch_v2_2_41.unit = {}

-- Size: Unit
cboe_c2options_complexauction_pitch_v2_2_41.unit.size = 1

-- Display: Unit
cboe_c2options_complexauction_pitch_v2_2_41.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c2options_complexauction_pitch_v2_2_41.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2options_complexauction_pitch_v2_2_41.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp = {}

-- Translate: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_c2options_complexauction_pitch_v2_2_41.time_offset_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_c2options_complexauction_pitch_v2_2_41.time_offset_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_c2options_complexauction_pitch_v2_2_41.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.translate(time_offset, stored_time)
  local display = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.timestamp, range, value, display)

  cboe_c2options_complexauction_pitch_v2_2_41.time.generated(stored_time, range, packet, parent)

  display = cboe_c2options_complexauction_pitch_v2_2_41.time_offset.display(time_offset)
  parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_time = cboe_c2options_complexauction_pitch_v2_2_41.time.current

  if stored_time ~= nil then
    return cboe_c2options_complexauction_pitch_v2_2_41.timestamp.composite(buffer, offset, stored_time, packet, parent)
  end

  return cboe_c2options_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe C2Options ComplexAuction Pitch 2.2.41
-----------------------------------------------------------------------

-- End Of Session Message
cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.timestamp.size

-- Display: End Of Session Message
cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.quantity.size

-- Display: Auction Summary Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Summary Auction Type: Alphanumeric
  index, auction_summary_auction_type = cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_auction_type.dissect(buffer, index, packet, parent)

  -- Price: Binary Signed Long Price
  index, price = cboe_c2options_complexauction_pitch_v2_2_41.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_c2options_complexauction_pitch_v2_2_41.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.reference_price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Options Auction Update Auction Type: Alphanumeric
  index, options_auction_update_auction_type = cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_c2options_complexauction_pitch_v2_2_41.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_c2options_complexauction_pitch_v2_2_41.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_c2options_complexauction_pitch_v2_2_41.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_c2options_complexauction_pitch_v2_2_41.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_c2options_complexauction_pitch_v2_2_41.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_c2options_complexauction_pitch_v2_2_41.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_c2options_complexauction_pitch_v2_2_41.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_id.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.execution_id.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.quantity.size

-- Display: Auction Trade Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c2options_complexauction_pitch_v2_2_41.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c2options_complexauction_pitch_v2_2_41.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Signed Long Price
  index, price = cboe_c2options_complexauction_pitch_v2_2_41.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_c2options_complexauction_pitch_v2_2_41.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_id.size

-- Display: Auction Cancel Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c2options_complexauction_pitch_v2_2_41.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_id.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.side.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.price.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.quantity.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.participant_id.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.client_id.size

-- Display: Auction Notification Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c2options_complexauction_pitch_v2_2_41.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Notification Auction Type: Alphanumeric
  index, auction_notification_auction_type = cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c2options_complexauction_pitch_v2_2_41.side.dissect(buffer, index, packet, parent)

  -- Price: Binary Signed Long Price
  index, price = cboe_c2options_complexauction_pitch_v2_2_41.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_c2options_complexauction_pitch_v2_2_41.quantity.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c2options_complexauction_pitch_v2_2_41.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c2options_complexauction_pitch_v2_2_41.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_c2options_complexauction_pitch_v2_2_41.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_c2options_complexauction_pitch_v2_2_41.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.underlying.size

-- Display: Symbol Mapping Message
cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c2options_complexauction_pitch_v2_2_41.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c2options_complexauction_pitch_v2_2_41.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c2options_complexauction_pitch_v2_2_41.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_c2options_complexauction_pitch_v2_2_41.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
cboe_c2options_complexauction_pitch_v2_2_41.complex_leg = {}

-- Size: Complex Leg
cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.size =
  cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.size

-- Display: Complex Leg
cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.complex_leg_index then
    local iteration = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_c2options_complexauction_pitch_v2_2_41.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_c2options_complexauction_pitch_v2_2_41.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_c2options_complexauction_pitch_v2_2_41.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.complex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_leg, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c2options_complexauction_pitch_v2_2_41.time_offset.size

  index = index + cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.size

  index = index + cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.size

  index = index + cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.size

  index = index + cboe_c2options_complexauction_pitch_v2_2_41.leg_count.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_c2options_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_c2options_complexauction_pitch_v2_2_41.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_count do
    index, complex_leg = cboe_c2options_complexauction_pitch_v2_2_41.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c2options_complexauction_pitch_v2_2_41.time_message = {}

-- Size: Time Message
cboe_c2options_complexauction_pitch_v2_2_41.time_message.size =
  cboe_c2options_complexauction_pitch_v2_2_41.time.size

-- Display: Time Message
cboe_c2options_complexauction_pitch_v2_2_41.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c2options_complexauction_pitch_v2_2_41.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c2options_complexauction_pitch_v2_2_41.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_c2options_complexauction_pitch_v2_2_41.time.current = time

  if not packet.visited then
    cboe_c2options_complexauction_pitch_v2_2_41.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_c2options_complexauction_pitch_v2_2_41.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.time_message, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c2options_complexauction_pitch_v2_2_41.payload = {}

-- Dissect: Payload
cboe_c2options_complexauction_pitch_v2_2_41.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c2options_complexauction_pitch_v2_2_41.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_c2options_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c2options_complexauction_pitch_v2_2_41.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_c2options_complexauction_pitch_v2_2_41.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c2options_complexauction_pitch_v2_2_41.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c2options_complexauction_pitch_v2_2_41.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c2options_complexauction_pitch_v2_2_41.message_header = {}

-- Size: Message Header
cboe_c2options_complexauction_pitch_v2_2_41.message_header.size =
  cboe_c2options_complexauction_pitch_v2_2_41.message_length.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.message_type.size

-- Display: Message Header
cboe_c2options_complexauction_pitch_v2_2_41.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c2options_complexauction_pitch_v2_2_41.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c2options_complexauction_pitch_v2_2_41.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, message_type = cboe_c2options_complexauction_pitch_v2_2_41.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c2options_complexauction_pitch_v2_2_41.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_header, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c2options_complexauction_pitch_v2_2_41.message = {}

-- Read runtime size of: Message
cboe_c2options_complexauction_pitch_v2_2_41.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c2options_complexauction_pitch_v2_2_41.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c2options_complexauction_pitch_v2_2_41.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c2options_complexauction_pitch_v2_2_41.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 9 branches
  index = cboe_c2options_complexauction_pitch_v2_2_41.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c2options_complexauction_pitch_v2_2_41.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c2options_complexauction_pitch_v2_2_41.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.message, buffer(offset, 0))
    local current = cboe_c2options_complexauction_pitch_v2_2_41.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c2options_complexauction_pitch_v2_2_41.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_c2options_complexauction_pitch_v2_2_41.messages = {}

-- Dissect: Messages
cboe_c2options_complexauction_pitch_v2_2_41.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c2options_complexauction_pitch_v2_2_41.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_c2options_complexauction_pitch_v2_2_41.packet_header = {}

-- Size: Packet Header
cboe_c2options_complexauction_pitch_v2_2_41.packet_header.size =
  cboe_c2options_complexauction_pitch_v2_2_41.length.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.count.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.unit.size + 
  cboe_c2options_complexauction_pitch_v2_2_41.sequence.size

-- Display: Packet Header
cboe_c2options_complexauction_pitch_v2_2_41.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c2options_complexauction_pitch_v2_2_41.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c2options_complexauction_pitch_v2_2_41.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c2options_complexauction_pitch_v2_2_41.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c2options_complexauction_pitch_v2_2_41.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c2options_complexauction_pitch_v2_2_41.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c2options_complexauction_pitch_v2_2_41.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41.fields.packet_header, buffer(offset, 0))
    local index = cboe_c2options_complexauction_pitch_v2_2_41.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2options_complexauction_pitch_v2_2_41.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2options_complexauction_pitch_v2_2_41.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c2options_complexauction_pitch_v2_2_41.packet = {}

-- Verify required size of Udp packet
cboe_c2options_complexauction_pitch_v2_2_41.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c2options_complexauction_pitch_v2_2_41.packet_header.size
end

-- Dissect Packet
cboe_c2options_complexauction_pitch_v2_2_41.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_c2options_complexauction_pitch_v2_2_41.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_c2options_complexauction_pitch_v2_2_41.time.current = data.time.frames[packet.number]
  cboe_c2options_complexauction_pitch_v2_2_41.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c2options_complexauction_pitch_v2_2_41.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c2options_complexauction_pitch_v2_2_41.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c2options_complexauction_pitch_v2_2_41.init()
  cboe_c2options_complexauction_pitch_v2_2_41.time.current = nil
  cboe_c2options_complexauction_pitch_v2_2_41.conversation.current = nil
  cboe_c2options_complexauction_pitch_v2_2_41.conversation.flows = {}
end

-- Dissector for Cboe C2Options ComplexAuction Pitch 2.2.41
function omi_cboe_c2options_complexauction_pitch_v2_2_41.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c2options_complexauction_pitch_v2_2_41.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c2options_complexauction_pitch_v2_2_41, buffer(), omi_cboe_c2options_complexauction_pitch_v2_2_41.description, "("..buffer:len().." Bytes)")
  return cboe_c2options_complexauction_pitch_v2_2_41.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C2Options ComplexAuction Pitch 2.2.41 (Udp)
local function omi_cboe_c2options_complexauction_pitch_v2_2_41_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c2options_complexauction_pitch_v2_2_41.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c2options_complexauction_pitch_v2_2_41
  omi_cboe_c2options_complexauction_pitch_v2_2_41.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C2Options ComplexAuction Pitch 2.2.41
omi_cboe_c2options_complexauction_pitch_v2_2_41:register_heuristic("udp", omi_cboe_c2options_complexauction_pitch_v2_2_41_udp_heuristic)

-- Register Cboe C2Options ComplexAuction Pitch 2.2.41 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_c2options_complexauction_pitch_v2_2_41)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.2.41
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_AUCTION_MULTICAST_PITCH_SPECIFICATION.pdf
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
