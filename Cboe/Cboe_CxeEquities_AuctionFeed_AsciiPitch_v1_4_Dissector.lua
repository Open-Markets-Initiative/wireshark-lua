-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxeEquities AuctionFeed AsciiPitch 1.4 Protocol
local omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4 = Proto("Omi.Cboe.CxeEquities.AuctionFeed.AsciiPitch.v1.4", "Cboe CxeEquities AuctionFeed AsciiPitch 1.4")

-- Protocol table
local cboe_cxeequities_auctionfeed_asciipitch_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxeEquities AuctionFeed AsciiPitch 1.4 Fields
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.auction_type = ProtoField.new("Auction Type", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.auctiontype", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.debugpacket", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.includes_primary = ProtoField.new("Includes Primary", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.includesprimary", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.indicativeprice", ftypes.DOUBLE)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_shares = ProtoField.new("Indicative Shares", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.indicativeshares", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.loginacceptedpacket", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.loginrejectedpacket", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.loginrequestpacket", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.outside_tolerance = ProtoField.new("Outside Tolerance", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.outsidetolerance", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.packet = ProtoField.new("Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.packet", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.packet_type = ProtoField.new("Packet Type", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.packettype", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.password = ProtoField.new("Password", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.password", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.price = ProtoField.new("Price", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.price", ftypes.DOUBLE)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.reference_price = ProtoField.new("Reference Price", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.referenceprice", ftypes.DOUBLE)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.rejectreasoncode", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.requestedsequencenumber", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.requested_session = ProtoField.new("Requested Session", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.requestedsession", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.sequencenumber", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.sequenceddatapacket", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.sequencedmessageheader", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.sequencedmessagetype", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.session = ProtoField.new("Session", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.session", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.shares = ProtoField.new("Shares", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.shares", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.souplf", ftypes.INT8)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.symbol = ProtoField.new("Symbol", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.symbol", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.text = ProtoField.new("Text", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.text", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.timestamp", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.unsequenceddatapacket", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.unsequencedmessage", ftypes.BYTES)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.username = ProtoField.new("Username", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.username", ftypes.STRING)

-- Cboe CxeEquities AsciiPitch AuctionFeed 1.4 Application Messages
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.auctionsummarymessage", ftypes.STRING)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.cxeequities.auctionfeed.asciipitch.v1.4.auctionupdatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Cboe CxeEquities AuctionFeed AsciiPitch 1.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_cxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CxeEquities AuctionFeed AsciiPitch 1.4 Element Dissection Options
show.application_messages = true
show.debug_packet = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true

-- Register Cboe CxeEquities AuctionFeed AsciiPitch 1.4 Show Options
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")

omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_application_messages
  end
  if show.debug_packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_debug_packet then
    show.debug_packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_debug_packet
  end
  if show.login_accepted_packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_accepted_packet
  end
  if show.login_rejected_packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_rejected_packet
  end
  if show.login_request_packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_request_packet then
    show.login_request_packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_login_request_packet
  end
  if show.packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_packet then
    show.packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_packet
  end
  if show.sequenced_data_packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_sequenced_data_packet
  end
  if show.sequenced_message_header ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_sequenced_message_header then
    show.sequenced_message_header = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_sequenced_message_header
  end
  if show.unsequenced_data_packet ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.show_unsequenced_data_packet
  end
  if cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp_format ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.timestamp_format then
    cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp_format = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.timestamp_format
  end
  if cboe_cxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours ~= omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.utc_offset_hours then
    cboe_cxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.prefs.utc_offset_hours
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
-- Cboe CxeEquities AuctionFeed AsciiPitch 1.4 Fields
-----------------------------------------------------------------------

-- Auction Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type = {}

-- Size: Auction Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.size = 1

-- Display: Auction Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.display = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Includes Primary
cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary = {}

-- Size: Includes Primary
cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.size = 1

-- Display: Includes Primary
cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.display = function(value)
  return "Includes Primary: "..value
end

-- Dissect: Includes Primary
cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.includes_primary, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price = {}

-- Size: Indicative Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size = 19

-- Display: Indicative Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares = {}

-- Size: Indicative Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.size = 10

-- Display: Indicative Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.display = function(value)
  return "Indicative Shares: "..value
end

-- Dissect: Indicative Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.indicative_shares, range, value, display)

  return offset + length, value
end

-- Outside Tolerance
cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance = {}

-- Size: Outside Tolerance
cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.size = 1

-- Display: Outside Tolerance
cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.display = function(value)
  return "Outside Tolerance: "..value
end

-- Dissect: Outside Tolerance
cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.outside_tolerance, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type = {}

-- Size: Packet Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.size = 1

-- Display: Packet Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.display = function(value)
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
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_cxeequities_auctionfeed_asciipitch_v1_4.password = {}

-- Size: Password
cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.size = 10

-- Display: Password
cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.password, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.price = {}

-- Size: Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.size = 19

-- Display: Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price = {}

-- Size: Reference Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.size = 19

-- Display: Reference Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session = {}

-- Size: Requested Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.size = 10

-- Display: Requested Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number = {}

-- Size: Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.size = 10

-- Display: Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.display = function(value)
  if value == "l" then
    return "Sequenced Message Type: Auction Update Message (l)"
  end
  if value == "j" then
    return "Sequenced Message Type: Auction Summary Message (j)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.session = {}

-- Size: Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.size = 10

-- Display: Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares = {}

-- Size: Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.size = 10

-- Display: Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf = {}

-- Size: Soup Lf
cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.size = 1

-- Display: Soup Lf
cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol = {}

-- Size: Symbol
cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.size = 8

-- Display: Symbol
cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_cxeequities_auctionfeed_asciipitch_v1_4.text = {}

-- Size: Text
cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.size = 1

-- Display: Text
cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp = {}

-- Size: Timestamp
cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.size = 8

-- Display: Timestamp
cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_cxeequities_auctionfeed_asciipitch_v1_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message = {}

-- Size: Unsequenced Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.size = 0

-- Display: Unsequenced Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- Username
cboe_cxeequities_auctionfeed_asciipitch_v1_4.username = {}

-- Size: Username
cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.size = 6

-- Display: Username
cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxeEquities AuctionFeed AsciiPitch 1.4
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.size

-- Display: Unsequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet = {}

-- Size: Login Request Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.size

-- Display: Login Request Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_cxeequities_auctionfeed_asciipitch_v1_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_cxeequities_auctionfeed_asciipitch_v1_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_cxeequities_auctionfeed_asciipitch_v1_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.size

-- Display: Auction Summary Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Long Price
  index, price = cboe_cxeequities_auctionfeed_asciipitch_v1_4.price.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = cboe_cxeequities_auctionfeed_asciipitch_v1_4.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message = {}

-- Size: Auction Update Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.size

-- Display: Auction Update Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxeequities_auctionfeed_asciipitch_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Long Price
  index, reference_price = cboe_cxeequities_auctionfeed_asciipitch_v1_4.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Price: Long Price
  index, indicative_price = cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Shares: Numeric
  index, indicative_shares = cboe_cxeequities_auctionfeed_asciipitch_v1_4.indicative_shares.dissect(buffer, index, packet, parent)

  -- Outside Tolerance: Alphanumeric
  index, outside_tolerance = cboe_cxeequities_auctionfeed_asciipitch_v1_4.outside_tolerance.dissect(buffer, index, packet, parent)

  -- Includes Primary: Alphanumeric
  index, includes_primary = cboe_cxeequities_auctionfeed_asciipitch_v1_4.includes_primary.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Auction Update Message
  if sequenced_message_type == "l" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if sequenced_message_type == "j" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.auction_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = cboe_cxeequities_auctionfeed_asciipitch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 2 values
  index, sequenced_message_type = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 2 branches
  index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_cxeequities_auctionfeed_asciipitch_v1_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.size + 
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.size

-- Display: Login Accepted Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_cxeequities_auctionfeed_asciipitch_v1_4.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet = {}

-- Size: Debug Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.size =
  cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.size

-- Display: Debug Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_cxeequities_auctionfeed_asciipitch_v1_4.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.fields.debug_packet, buffer(offset, 0))
    local index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cxeequities_auctionfeed_asciipitch_v1_4.payload = {}

-- Dissect: Payload
cboe_cxeequities_auctionfeed_asciipitch_v1_4.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_cxeequities_auctionfeed_asciipitch_v1_4.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet = {}

-- Verify required size of Tcp packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.size
end

-- Dissect Packet
cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_cxeequities_auctionfeed_asciipitch_v1_4.payload.dissect(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.init()
end

-- Dissector for Cboe CxeEquities AuctionFeed AsciiPitch 1.4
function omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4, buffer(), omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.description, "("..buffer:len().." Bytes)")
  return cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Soup Lf Field
cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(165, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe CxeEquities AuctionFeed AsciiPitch 1.4 (Tcp)
local function omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxeequities_auctionfeed_asciipitch_v1_4.packet.requiredsize(buffer) then return false end

  -- Verify Soup Lf
  if not cboe_cxeequities_auctionfeed_asciipitch_v1_4.soup_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4
  omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CxeEquities AuctionFeed AsciiPitch 1.4
omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4:register_heuristic("tcp", omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4_tcp_heuristic)

-- Register Cboe CxeEquities AuctionFeed AsciiPitch 1.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cxeequities_auctionfeed_asciipitch_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4
--   Date: Thursday, February 6, 2025
--   Specification: BATS_Europe_Auction_Feed_Specification.pdf
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
