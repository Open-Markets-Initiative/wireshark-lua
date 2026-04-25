-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumOptions ComplexAuction Pitch 2.2.41 Protocol
local omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41 = Proto("Cboe.TitaniumOptions.ComplexAuction.Pitch.v2.2.41.Lua", "Cboe TitaniumOptions ComplexAuction Pitch 2.2.41")

-- Protocol table
local cboe_titaniumoptions_complexauction_pitch_v2_2_41 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumOptions ComplexAuction Pitch 2.2.41 Fields
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctionendoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_id = ProtoField.new("Auction Id", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctionid", ftypes.UINT64)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_type = ProtoField.new("Auction Type", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctiontype", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.buycontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.client_id = ProtoField.new("Client Id", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.clientid", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.complexinstrumentid", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_id_expanded = ProtoField.new("Complex Instrument Id Expanded", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.complexinstrumentidexpanded", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.complexinstrumenttype", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.count = ProtoField.new("Count", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.count", ftypes.UINT8)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.customerindicator", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.epochtime", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.execution_id = ProtoField.new("Execution Id", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.executionid", ftypes.UINT64)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.feedsymbol", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.indicativeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg = ProtoField.new("Leg", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.leg", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_count = ProtoField.new("Leg Count", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.legcount", ftypes.UINT8)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.legratio", ftypes.INT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.legsecuritytype", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.legsymbol", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.length = ProtoField.new("Length", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.length", ftypes.UINT16)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message = ProtoField.new("Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.message", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.messageheader", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.messagelength", ftypes.UINT8)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.messagetype", ftypes.UINT8)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.midnightreference", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.openingcondition", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.osisymbol", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.packet = ProtoField.new("Packet", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.packet", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.packetheader", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.participant_id = ProtoField.new("Participant Id", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.participantid", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.price = ProtoField.new("Price", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.price", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.quantity = ProtoField.new("Quantity", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.quantity", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.reference_price = ProtoField.new("Reference Price", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.referenceprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.sellcontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.sequence", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.side = ProtoField.new("Side", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.side", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.symbolcondition", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time = ProtoField.new("Time", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.time", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time_offset = ProtoField.new("Time Offset", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.timeoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.timestamp", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.trade_date = ProtoField.new("Trade Date", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.tradedate", ftypes.UINT32)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.underlying = ProtoField.new("Underlying", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.underlying", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.unit = ProtoField.new("Unit", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.unit", ftypes.UINT8)

-- Cboe TitaniumOptions Pitch ComplexAuction 2.2.41 Application Messages
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctioncancelmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctionnotificationmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctionsummarymessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.auctiontrademessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.endofsessionmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.symbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time_message = ProtoField.new("Time Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.timemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.timereferencemessage", ftypes.STRING)

-- Cboe TitaniumOptions ComplexAuction Pitch 2.2.41 generated fields
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_index = ProtoField.new("Leg Index", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.legindex", ftypes.UINT16)
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumoptions.complexauction.pitch.v2.2.41.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumOptions ComplexAuction Pitch 2.2.41 Element Dissection Options
show.application_messages = true
show.leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.leg_index = true

-- Register Cboe TitaniumOptions ComplexAuction Pitch 2.2.41 Show Options
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_leg = Pref.bool("Show Leg", show.leg, "Parse and add Leg to protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_leg_index = Pref.bool("Show Leg Index", show.leg_index, "Show generated leg index in protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_application_messages
  end
  if show.leg ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_leg then
    show.leg = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_leg
  end
  if show.message ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message then
    show.message = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_packet then
    show.packet = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_message_index
  end
  if show.leg_index ~= omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_leg_index then
    show.leg_index = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.prefs.show_leg_index
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
-- Cboe TitaniumOptions ComplexAuction Pitch 2.2.41 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset = {}

-- Size: Auction End Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id = {}

-- Size: Auction Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.size = 8

-- Display: Auction Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price = {}

-- Size: Auction Only Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.translate(raw)
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type = {}

-- Size: Auction Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.size = 1

-- Display: Auction Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Complex Order Auction Coa (C)"
  end
  if value == "S" then
    return "Auction Type: Complex Solicitation Auction Mechanism (S)"
  end
  if value == "B" then
    return "Auction Type: Complex Aim (B)"
  end
  if value == "O" then
    return "Auction Type: Coa All Or None Rth Opening (O)"
  end
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts = {}

-- Size: Buy Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id = {}

-- Size: Client Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.size = 4

-- Display: Client Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.client_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Expanded
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded = {}

-- Size: Complex Instrument Id Expanded
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.size = 8

-- Display: Complex Instrument Id Expanded
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.display = function(value)
  return "Complex Instrument Id Expanded: "..value
end

-- Dissect: Complex Instrument Id Expanded
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_id_expanded, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.translate(raw)
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.translate(raw)
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.count = {}

-- Size: Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.size = 1

-- Display: Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator = {}

-- Size: Customer Indicator
cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time = {}

-- Size: Epoch Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.size = 4

-- Display: Epoch Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id = {}

-- Size: Execution Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.size = 8

-- Display: Execution Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol = {}

-- Size: Feed Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price = {}

-- Size: Indicative Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.size = 8

-- Display: Indicative Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.translate(raw)
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count = {}

-- Size: Leg Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.size = 1

-- Display: Leg Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio = {}

-- Size: Leg Ratio
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type = {}

-- Size: Leg Security Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol = {}

-- Size: Leg Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.length = {}

-- Size: Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.size = 2

-- Display: Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length = {}

-- Size: Message Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.size = 1

-- Display: Message Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type = {}

-- Size: Message Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.size = 1

-- Display: Message Type
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
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
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference = {}

-- Size: Midnight Reference
cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition = {}

-- Size: Opening Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.size = 1

-- Display: Opening Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol = {}

-- Size: Osi Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id = {}

-- Size: Participant Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.size = 4

-- Display: Participant Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.price = {}

-- Size: Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.size = 8

-- Display: Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.translate(raw)
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity = {}

-- Size: Quantity
cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.size = 4

-- Display: Quantity
cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price = {}

-- Size: Reference Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.size = 8

-- Display: Reference Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.translate(raw)
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts = {}

-- Size: Sell Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence = {}

-- Size: Sequence
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.size = 4

-- Display: Sequence
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_titaniumoptions_complexauction_pitch_v2_2_41.side = {}

-- Size: Side
cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.size = 1

-- Display: Side
cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition = {}

-- Size: Symbol Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time = {}

-- Size: Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.size = 4

-- Display: Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset = {}

-- Size: Time Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size = 4

-- Display: Time Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp = {}

-- Size: Timestamp
cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.size = 4

-- Display: Timestamp
cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date = {}

-- Size: Trade Date
cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.size = 4

-- Display: Trade Date
cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying = {}

-- Size: Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.size = 8

-- Display: Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit = {}

-- Size: Unit
cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.size = 1

-- Display: Unit
cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumOptions ComplexAuction Pitch 2.2.41
-----------------------------------------------------------------------

-- End Of Session Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message = {}

-- Size: End Of Session Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.size

-- Display: End Of Session Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumoptions_complexauction_pitch_v2_2_41.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.size

-- Display: Auction Summary Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Binary Signed Long Price
  index, price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_titaniumoptions_complexauction_pitch_v2_2_41.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_titaniumoptions_complexauction_pitch_v2_2_41.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_titaniumoptions_complexauction_pitch_v2_2_41.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.size

-- Display: Auction Trade Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Signed Long Price
  index, price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.size

-- Display: Auction Cancel Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.size

-- Display: Auction Notification Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumoptions_complexauction_pitch_v2_2_41.side.dissect(buffer, index, packet, parent)

  -- Price: Binary Signed Long Price
  index, price = cboe_titaniumoptions_complexauction_pitch_v2_2_41.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_titaniumoptions_complexauction_pitch_v2_2_41.quantity.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titaniumoptions_complexauction_pitch_v2_2_41.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.size

-- Display: Symbol Mapping Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumoptions_complexauction_pitch_v2_2_41.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumoptions_complexauction_pitch_v2_2_41.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_titaniumoptions_complexauction_pitch_v2_2_41.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg = {}

-- Size: Leg
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.size

-- Display: Leg
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.fields = function(buffer, offset, packet, parent, leg_index)
  local index = offset

  -- Implicit Leg Index
  if leg_index ~= nil and show.leg_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg_index, leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg
cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.dissect = function(buffer, offset, packet, parent, leg_index)
  if show.leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.leg, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.fields(buffer, offset, packet, parent, leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.fields(buffer, offset, packet, parent, leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size

  index = index + cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.size

  index = index + cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.size

  index = index + cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.size

  index = index + cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.size

  -- Calculate field size from count
  local leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Leg
  for leg_index = 1, leg_count do
    index, leg = cboe_titaniumoptions_complexauction_pitch_v2_2_41.leg.dissect(buffer, index, packet, parent, leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message = {}

-- Size: Time Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.size

-- Display: Time Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_titaniumoptions_complexauction_pitch_v2_2_41.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message = {}

-- Size: Time Reference Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.size

-- Display: Time Reference Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_titaniumoptions_complexauction_pitch_v2_2_41.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titaniumoptions_complexauction_pitch_v2_2_41.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumoptions_complexauction_pitch_v2_2_41.payload = {}

-- Dissect: Payload
cboe_titaniumoptions_complexauction_pitch_v2_2_41.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header = {}

-- Size: Message Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.size

-- Display: Message Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message = {}

-- Display: Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 10 branches
  index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.message, buffer(offset, 0))
    local current = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header = {}

-- Size: Packet Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.size =
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.size + 
  cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.size

-- Display: Packet Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumoptions_complexauction_pitch_v2_2_41.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumoptions_complexauction_pitch_v2_2_41.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumoptions_complexauction_pitch_v2_2_41.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumoptions_complexauction_pitch_v2_2_41.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet = {}

-- Dissect Packet
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumoptions_complexauction_pitch_v2_2_41.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.init()
end

-- Dissector for Cboe TitaniumOptions ComplexAuction Pitch 2.2.41
function omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41, buffer(), omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe TitaniumOptions ComplexAuction Pitch 2.2.41
local function omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumoptions_complexauction_pitch_v2_2_41.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41
  omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumOptions ComplexAuction Pitch 2.2.41
omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41:register_heuristic("udp", omi_cboe_titaniumoptions_complexauction_pitch_v2_2_41_heuristic)

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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
