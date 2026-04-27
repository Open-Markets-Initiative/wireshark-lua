-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 Protocol
local omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39 = Proto("Cboe.TitaniumOptions.AuctionFeed.Pitch.v1.1.39.Lua", "Cboe TitaniumOptions AuctionFeed Pitch 1.1.39")

-- Protocol table
local cboe_titaniumoptions_auctionfeed_pitch_v1_1_39 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 Fields
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctionendoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_id = ProtoField.new("Auction Id", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctionid", ftypes.UINT64)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_type = ProtoField.new("Auction Type", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctiontype", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.buycontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.client_id = ProtoField.new("Client Id", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.clientid", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.contracts = ProtoField.new("Contracts", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.contracts", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.count = ProtoField.new("Count", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.count", ftypes.UINT8)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.customerindicator", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.epochtime", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.execution_id = ProtoField.new("Execution Id", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.executionid", ftypes.UINT64)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.feedsymbol", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.indicativeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.length = ProtoField.new("Length", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.length", ftypes.UINT16)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.lower_strike_price = ProtoField.new("Lower Strike Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.lowerstrikeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message = ProtoField.new("Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.message", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.messageheader", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.messagelength", ftypes.UINT8)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.messagetype", ftypes.UINT8)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.midnightreference", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.multiplier = ProtoField.new("Multiplier", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.multiplier", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.openingcondition", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.osisymbol", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.packet = ProtoField.new("Packet", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.packet", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.packetheader", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.participant_id = ProtoField.new("Participant Id", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.participantid", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.price = ProtoField.new("Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.price", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.quantity = ProtoField.new("Quantity", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.quantity", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.reference_price = ProtoField.new("Reference Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.referenceprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.sellcontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.sequence", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.side = ProtoField.new("Side", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.side", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.soq_identifier = ProtoField.new("Soq Identifier", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.soqidentifier", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol = ProtoField.new("Symbol", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.symbol", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.symbolcondition", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.symbolextended", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time = ProtoField.new("Time", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.time", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time_offset = ProtoField.new("Time Offset", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.timeoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.timestamp", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.trade_date = ProtoField.new("Trade Date", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.tradedate", ftypes.UINT32)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.underlying = ProtoField.new("Underlying", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.underlying", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.unit = ProtoField.new("Unit", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.unit", ftypes.UINT8)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.upper_strike_price = ProtoField.new("Upper Strike Price", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.upperstrikeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.width_type = ProtoField.new("Width Type", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.widthtype", ftypes.STRING)

-- Cboe TitaniumOptions Pitch AuctionFeed 1.1.39 Application Messages
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctioncancelmessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctionnotificationmessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctionsummarymessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.auctiontrademessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.constituent_symbol_mapping_message = ProtoField.new("Constituent Symbol Mapping Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.constituentsymbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.endofsessionmessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.soq_strike_range_update_message = ProtoField.new("Soq Strike Range Update Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.soqstrikerangeupdatemessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.symbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time_message = ProtoField.new("Time Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.timemessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.timereferencemessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.unitclearmessage", ftypes.STRING)
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.widthupdatemessage", ftypes.STRING)

-- Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 generated fields
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumoptions.auctionfeed.pitch.v1.1.39.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 Show Options
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message then
    show.message = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_packet then
    show.packet = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.prefs.show_message_index
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
-- Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset = {}

-- Size: Auction End Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id = {}

-- Size: Auction Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.size = 8

-- Display: Auction Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price = {}

-- Size: Auction Only Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type = {}

-- Size: Auction Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.size = 1

-- Display: Auction Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Aim (B)"
  end
  if value == "S" then
    return "Auction Type: Solicitation Auction Mechanism (S)"
  end
  if value == "T" then
    return "Auction Type: Step Up Mechanism Sum (T)"
  end
  if value == "A" then
    return "Auction Type: Sum All Or None (A)"
  end
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Opening (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts = {}

-- Size: Buy Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id = {}

-- Size: Client Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.size = 4

-- Display: Client Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.client_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts = {}

-- Size: Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.size = 4

-- Display: Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.contracts, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count = {}

-- Size: Count
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.size = 1

-- Display: Count
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator = {}

-- Size: Customer Indicator
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time = {}

-- Size: Epoch Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.size = 4

-- Display: Epoch Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id = {}

-- Size: Execution Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.size = 8

-- Display: Execution Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol = {}

-- Size: Feed Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price = {}

-- Size: Indicative Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.size = 8

-- Display: Indicative Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length = {}

-- Size: Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.size = 2

-- Display: Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.length, range, value, display)

  return offset + length, value
end

-- Lower Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price = {}

-- Size: Lower Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.size = 8

-- Display: Lower Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.display = function(value)
  return "Lower Strike Price: "..value
end

-- Translate: Lower Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.lower_strike_price, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length = {}

-- Size: Message Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.size = 1

-- Display: Message Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type = {}

-- Size: Message Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.size = 1

-- Display: Message Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
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
    return "Message Type: Options Auction Update Message (0xD1)"
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
  if value == 0x9D then
    return "Message Type: Soq Strike Range Update Message (0x9D)"
  end
  if value == 0x9E then
    return "Message Type: Constituent Symbol Mapping Message (0x9E)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference = {}

-- Size: Midnight Reference
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Multiplier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier = {}

-- Size: Multiplier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.size = 4

-- Display: Multiplier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition = {}

-- Size: Opening Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.size = 1

-- Display: Opening Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.display = function(value)
  if value == "O" then
    return "Opening Condition: Would Open (O)"
  end
  if value == "Q" then
    return "Opening Condition: Need Quote To Open (Q)"
  end
  if value == "B" then
    return "Opening Condition: Need More Buyers (B)"
  end
  if value == "S" then
    return "Opening Condition: Need More Sellers (S)"
  end
  if value == "C" then
    return "Opening Condition: Crossed Composite Market (C)"
  end

  return "Opening Condition: Unknown("..value..")"
end

-- Dissect: Opening Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol = {}

-- Size: Osi Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id = {}

-- Size: Participant Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.size = 4

-- Display: Participant Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price = {}

-- Size: Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.size = 8

-- Display: Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity = {}

-- Size: Quantity
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.size = 4

-- Display: Quantity
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price = {}

-- Size: Reference Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.size = 8

-- Display: Reference Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts = {}

-- Size: Sell Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence = {}

-- Size: Sequence
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.size = 4

-- Display: Sequence
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side = {}

-- Size: Side
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.size = 1

-- Display: Side
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.side, range, value, display)

  return offset + length, value
end

-- Soq Identifier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier = {}

-- Size: Soq Identifier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.size = 20

-- Display: Soq Identifier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.display = function(value)
  return "Soq Identifier: "..value
end

-- Dissect: Soq Identifier
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.soq_identifier, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol = {}

-- Size: Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.size = 6

-- Display: Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition = {}

-- Size: Symbol Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended = {}

-- Size: Symbol Extended
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time = {}

-- Size: Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.size = 4

-- Display: Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset = {}

-- Size: Time Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size = 4

-- Display: Time Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp = {}

-- Size: Timestamp
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.size = 4

-- Display: Timestamp
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date = {}

-- Size: Trade Date
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.size = 4

-- Display: Trade Date
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying = {}

-- Size: Underlying
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.size = 8

-- Display: Underlying
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit = {}

-- Size: Unit
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.size = 1

-- Display: Unit
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.unit, range, value, display)

  return offset + length, value
end

-- Upper Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price = {}

-- Size: Upper Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.size = 8

-- Display: Upper Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.display = function(value)
  return "Upper Strike Price: "..value
end

-- Translate: Upper Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Strike Price
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.translate(raw)
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.upper_strike_price, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type = {}

-- Size: Width Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.size = 1

-- Display: Width Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.display = function(value)
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.width_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumOptions AuctionFeed Pitch 1.1.39
-----------------------------------------------------------------------

-- Constituent Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message = {}

-- Size: Constituent Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.size

-- Display: Constituent Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Constituent Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Constituent Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.constituent_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Soq Strike Range Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message = {}

-- Size: Soq Strike Range Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.size

-- Display: Soq Strike Range Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soq Strike Range Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_identifier.dissect(buffer, index, packet, parent)

  -- Lower Strike Price: Binary Long Price
  index, lower_strike_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.lower_strike_price.dissect(buffer, index, packet, parent)

  -- Upper Strike Price: Binary Long Price
  index, upper_strike_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.upper_strike_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Soq Strike Range Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.soq_strike_range_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message = {}

-- Size: End Of Session Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.size

-- Display: End Of Session Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.size

-- Display: Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Width Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message = {}

-- Size: Width Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.size

-- Display: Width Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.underlying.dissect(buffer, index, packet, parent)

  -- Width Type: Alphanumeric
  index, width_type = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: Multiplier
  index, multiplier = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.width_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.size

-- Display: Auction Summary Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_extended.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Long Price
  index, composite_market_bid_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Long Price
  index, composite_market_offer_price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.size

-- Display: Auction Trade Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.size

-- Display: Auction Cancel Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.size

-- Display: Auction Notification Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.side.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.price.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size

-- Display: Unit Clear Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message = {}

-- Size: Time Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.size

-- Display: Time Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message = {}

-- Size: Time Reference Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.size

-- Display: Time Reference Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.payload = {}

-- Dissect: Payload
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Soq Strike Range Update Message
  if message_type == 0x9D then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.soq_strike_range_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Constituent Symbol Mapping Message
  if message_type == 0x9E then
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.constituent_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header = {}

-- Size: Message Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.size

-- Display: Message Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message = {}

-- Display: Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.message, buffer(offset, 0))
    local current = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header = {}

-- Size: Packet Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.size =
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.size + 
  cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.size

-- Display: Packet Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet = {}

-- Verify size of Udp packet
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.init()
end

-- Dissector for Cboe TitaniumOptions AuctionFeed Pitch 1.1.39
function omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39, buffer(), omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumOptions AuctionFeed Pitch 1.1.39 (Udp)
local function omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39
  omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumOptions AuctionFeed Pitch 1.1.39
omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39:register_heuristic("udp", omi_cboe_titaniumoptions_auctionfeed_pitch_v1_1_39_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.39
--   Date: Wednesday, April 1, 2026
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
