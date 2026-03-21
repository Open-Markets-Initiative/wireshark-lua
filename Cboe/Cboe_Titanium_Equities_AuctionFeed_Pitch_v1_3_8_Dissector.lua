-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Titanium Equities AuctionFeed Pitch 1.3.8 Protocol
local omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8 = Proto("Cboe.Titanium.Equities.AuctionFeed.Pitch.v1.3.8.Lua", "Cboe Titanium Equities AuctionFeed Pitch 1.3.8")

-- Protocol table
local cboe_titanium_equities_auctionfeed_pitch_v1_3_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Titanium Equities AuctionFeed Pitch 1.3.8 Fields
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_only_price_long_price_14 = ProtoField.new("Auction Only Price Long Price 14", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.auctiononlypricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_only_price_numeric_10 = ProtoField.new("Auction Only Price Numeric 10", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.auctiononlypricenumeric10", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_type = ProtoField.new("Auction Type", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.auctiontype", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.buyshares", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.debugpacket", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.indicative_price_long_price_14 = ProtoField.new("Indicative Price Long Price 14", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.indicativepricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.indicative_price_numeric_10 = ProtoField.new("Indicative Price Numeric 10", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.indicativepricenumeric10", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.loginacceptedpacket", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.loginrejectedpacket", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.loginrequestpacket", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.packet = ProtoField.new("Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.packet", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.packet_type = ProtoField.new("Packet Type", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.packettype", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.password = ProtoField.new("Password", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.password", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.price_long_price_14 = ProtoField.new("Price Long Price 14", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.pricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.price_numeric_10 = ProtoField.new("Price Numeric 10", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.pricenumeric10", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.reference_price_long_price_14 = ProtoField.new("Reference Price Long Price 14", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.referencepricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.reference_price_numeric_10 = ProtoField.new("Reference Price Numeric 10", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.referencepricenumeric10", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.rejectreasoncode", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.requestedsequencenumber", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.requested_session = ProtoField.new("Requested Session", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.requestedsession", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.sellshares", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.sequencenumber", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.sequenceddatapacket", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.sequencedmessageheader", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.sequencedmessagetype", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.session = ProtoField.new("Session", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.session", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.shares = ProtoField.new("Shares", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.shares", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.souplf", ftypes.INT8)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.stocksymbol", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.text = ProtoField.new("Text", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.text", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.timestamp = ProtoField.new("Timestamp", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.timestamp", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.unsequenceddatapacket", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.username = ProtoField.new("Username", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.username", ftypes.STRING)

-- Cboe Titanium Equities Pitch AuctionFeed 1.3.8 Application Messages
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.auctionsummarymessage", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.auctionupdatemessage", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.extended_auction_summary_message = ProtoField.new("Extended Auction Summary Message", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.extendedauctionsummarymessage", ftypes.STRING)
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.extended_auction_update_message = ProtoField.new("Extended Auction Update Message", "cboe.titanium.equities.auctionfeed.pitch.v1.3.8.extendedauctionupdatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Titanium Equities AuctionFeed Pitch 1.3.8 Element Dissection Options
show.application_messages = true
show.debug_packet = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true

-- Register Cboe Titanium Equities AuctionFeed Pitch 1.3.8 Show Options
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")

-- Handle changed preferences
function omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_application_messages then
    show.application_messages = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_application_messages
    changed = true
  end
  if show.debug_packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_debug_packet then
    show.debug_packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_debug_packet
    changed = true
  end
  if show.login_accepted_packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_request_packet then
    show.login_request_packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_login_request_packet
    changed = true
  end
  if show.packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_packet then
    show.packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_packet
    changed = true
  end
  if show.sequenced_data_packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sequenced_message_header ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_sequenced_message_header then
    show.sequenced_message_header = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_sequenced_message_header
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.prefs.show_unsequenced_data_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
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
-- Cboe Titanium Equities AuctionFeed Pitch 1.3.8 Fields
-----------------------------------------------------------------------

-- Auction Only Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14 = {}

-- Size: Auction Only Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.size = 14

-- Display: Auction Only Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.display = function(value)
  return "Auction Only Price Long Price 14: "..value
end

-- Dissect: Auction Only Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_only_price_long_price_14, range, value, display)

  return offset + length, value
end

-- Auction Only Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10 = {}

-- Size: Auction Only Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.size = 10

-- Display: Auction Only Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.display = function(value)
  return "Auction Only Price Numeric 10: "..value
end

-- Dissect: Auction Only Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_only_price_numeric_10, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type = {}

-- Size: Auction Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.size = 1

-- Display: Auction Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "M" then
    return "Auction Type: Cboe Market Close (M)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares = {}

-- Size: Buy Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.size = 10

-- Display: Buy Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Indicative Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14 = {}

-- Size: Indicative Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.size = 14

-- Display: Indicative Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.display = function(value)
  return "Indicative Price Long Price 14: "..value
end

-- Dissect: Indicative Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.indicative_price_long_price_14, range, value, display)

  return offset + length, value
end

-- Indicative Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10 = {}

-- Size: Indicative Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.size = 10

-- Display: Indicative Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.display = function(value)
  return "Indicative Price Numeric 10: "..value
end

-- Dissect: Indicative Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.indicative_price_numeric_10, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type = {}

-- Size: Packet Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type.size = 1

-- Display: Packet Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password = {}

-- Size: Password
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.size = 10

-- Display: Password
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14 = {}

-- Size: Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.size = 14

-- Display: Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.display = function(value)
  return "Price Long Price 14: "..value
end

-- Dissect: Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.price_long_price_14, range, value, display)

  return offset + length, value
end

-- Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10 = {}

-- Size: Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.size = 10

-- Display: Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.display = function(value)
  return "Price Numeric 10: "..value
end

-- Dissect: Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.price_numeric_10, range, value, display)

  return offset + length, value
end

-- Reference Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14 = {}

-- Size: Reference Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.size = 14

-- Display: Reference Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.display = function(value)
  return "Reference Price Long Price 14: "..value
end

-- Dissect: Reference Price Long Price 14
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.reference_price_long_price_14, range, value, display)

  return offset + length, value
end

-- Reference Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10 = {}

-- Size: Reference Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.size = 10

-- Display: Reference Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.display = function(value)
  return "Reference Price Numeric 10: "..value
end

-- Dissect: Reference Price Numeric 10
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.reference_price_numeric_10, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session = {}

-- Size: Requested Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.size = 10

-- Display: Requested Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares = {}

-- Size: Sell Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.size = 10

-- Display: Sell Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number = {}

-- Size: Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.size = 10

-- Display: Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.display = function(value)
  if value == "I" then
    return "Sequenced Message Type: Auction Update Message (I)"
  end
  if value == "3" then
    return "Sequenced Message Type: Extended Auction Update Message (3)"
  end
  if value == "J" then
    return "Sequenced Message Type: Auction Summary Message (J)"
  end
  if value == "4" then
    return "Sequenced Message Type: Extended Auction Summary Message (4)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session = {}

-- Size: Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.size = 10

-- Display: Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares = {}

-- Size: Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.size = 10

-- Display: Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf = {}

-- Size: Soup Lf
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.size = 1

-- Display: Soup Lf
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol = {}

-- Size: Stock Symbol
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text = {}

-- Size: Text
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.size = 1

-- Display: Text
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp = {}

-- Size: Timestamp
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.size = 8

-- Display: Timestamp
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Username
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username = {}

-- Size: Username
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.size = 6

-- Display: Username
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe Titanium Equities AuctionFeed Pitch 1.3.8
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_message.size

-- Display: Unsequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message
  index, unsequenced_message = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet = {}

-- Size: Login Request Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.size

-- Display: Login Request Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message = {}

-- Size: Extended Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.size

-- Display: Extended Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long Price 14: Long Price
  index, price_long_price_14 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_long_price_14.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.extended_auction_summary_message, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.size

-- Display: Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Price Numeric 10: Numeric
  index, price_numeric_10 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.price_numeric_10.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message = {}

-- Size: Extended Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.size

-- Display: Extended Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Long Price 14: Long Price
  index, reference_price_long_price_14 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_long_price_14.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Long Price 14: Long Price
  index, indicative_price_long_price_14 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_long_price_14.dissect(buffer, index, packet, parent)

  -- Auction Only Price Long Price 14: Long Price
  index, auction_only_price_long_price_14 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_long_price_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.extended_auction_update_message, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message = {}

-- Size: Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.size

-- Display: Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Numeric 10: Numeric
  index, reference_price_numeric_10 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reference_price_numeric_10.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Numeric 10: Numeric
  index, indicative_price_numeric_10 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.indicative_price_numeric_10.dissect(buffer, index, packet, parent)

  -- Auction Only Price Numeric 10: Numeric
  index, auction_only_price_numeric_10 = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_only_price_numeric_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Auction Update Message
  if sequenced_message_type == "I" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Auction Update Message
  if sequenced_message_type == "3" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if sequenced_message_type == "J" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Auction Summary Message
  if sequenced_message_type == "4" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.extended_auction_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: Alphanumeric
  index, sequenced_message_type = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 4 branches
  index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.size + 
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.size

-- Display: Login Accepted Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet = {}

-- Size: Debug Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.size =
  cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.size

-- Display: Debug Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.fields.debug_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.payload = {}

-- Dissect: Payload
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet = {}

-- Dissect Packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.payload.dissect(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.init()
end

-- Dissector for Cboe Titanium Equities AuctionFeed Pitch 1.3.8
function omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8, buffer(), omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.description, "("..buffer:len().." Bytes)")
  return cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet.requiredsize = function(buffer)

  return true
end

-- Verify Soup Lf Field
cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(260, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe Titanium Equities AuctionFeed Pitch 1.3.8
local function omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titanium_equities_auctionfeed_pitch_v1_3_8.packet.requiredsize(buffer) then return false end

  -- Verify Soup Lf
  if not cboe_titanium_equities_auctionfeed_pitch_v1_3_8.soup_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8
  omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Titanium Equities AuctionFeed Pitch 1.3.8
omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8:register_heuristic("tcp", omi_cboe_titanium_equities_auctionfeed_pitch_v1_3_8_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.8
--   Date: Monday, April 21, 2025
--   Specification: Cboe_US_Equities_Auction_Feed_Specification.pdf
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
