-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Protocol
local omi_nasdaq_mrxoptions_orderfeed_itch_v2_1 = Proto("Omi.Nasdaq.MrxOptions.OrderFeed.Itch.v2.1", "Nasdaq MrxOptions OrderFeed Itch 2.1")

-- Protocol table
local nasdaq_mrxoptions_orderfeed_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Fields
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.mrxoptions.orderfeed.itch.v2.1.acceptedsession", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.all_or_none = ProtoField.new("All Or None", "nasdaq.mrxoptions.orderfeed.itch.v2.1.allornone", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_duration = ProtoField.new("Auction Duration", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionduration", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionevent", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionid", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.clientpackettype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.closingtype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.cmta = ProtoField.new("Cmta", "nasdaq.mrxoptions.orderfeed.itch.v2.1.cmta", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.mrxoptions.orderfeed.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.end_of_replay_sequence_number = ProtoField.new("End Of Replay Sequence Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.endofreplaysequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.mrxoptions.orderfeed.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.mrxoptions.orderfeed.itch.v2.1.execflag", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.executable_order_volume = ProtoField.new("Executable Order Volume", "nasdaq.mrxoptions.orderfeed.itch.v2.1.executableordervolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.mrxoptions.orderfeed.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.mrxoptions.orderfeed.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.mrxoptions.orderfeed.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.mrxoptions.orderfeed.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.giveup = ProtoField.new("Giveup", "nasdaq.mrxoptions.orderfeed.itch.v2.1.giveup", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.mrxoptions.orderfeed.itch.v2.1.imbalancevolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.mrxoptions.orderfeed.itch.v2.1.instrumentid", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.limit_price = ProtoField.new("Limit Price", "nasdaq.mrxoptions.orderfeed.itch.v2.1.limitprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.mrxoptions.orderfeed.itch.v2.1.mpv", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nasdaq.mrxoptions.orderfeed.itch.v2.1.opencloseindicator", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.mrxoptions.orderfeed.itch.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_qualifier = ProtoField.new("Order Qualifier", "nasdaq.mrxoptions.orderfeed.itch.v2.1.orderqualifier", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_status = ProtoField.new("Order Status", "nasdaq.mrxoptions.orderfeed.itch.v2.1.orderstatus", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_type = ProtoField.new("Order Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.ordertype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.original_order_volume = ProtoField.new("Original Order Volume", "nasdaq.mrxoptions.orderfeed.itch.v2.1.originalordervolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.owner_id = ProtoField.new("Owner Id", "nasdaq.mrxoptions.orderfeed.itch.v2.1.ownerid", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.mrxoptions.orderfeed.itch.v2.1.packetlength", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.password = ProtoField.new("Password", "nasdaq.mrxoptions.orderfeed.itch.v2.1.password", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.price = ProtoField.new("Price", "nasdaq.mrxoptions.orderfeed.itch.v2.1.price", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.quantity = ProtoField.new("Quantity", "nasdaq.mrxoptions.orderfeed.itch.v2.1.quantity", ftypes.UINT32)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.mrxoptions.orderfeed.itch.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.mrxoptions.orderfeed.itch.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.mrxoptions.orderfeed.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.mrxoptions.orderfeed.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.serverpackettype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.mrxoptions.orderfeed.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.text = ProtoField.new("Text", "nasdaq.mrxoptions.orderfeed.itch.v2.1.text", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.mrxoptions.orderfeed.itch.v2.1.timeinforce", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.mrxoptions.orderfeed.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.mrxoptions.orderfeed.itch.v2.1.tradable", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.udp_sequence_number = ProtoField.new("Udp Sequence Number", "nasdaq.mrxoptions.orderfeed.itch.v2.1.udpsequencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.udp_session = ProtoField.new("Udp Session", "nasdaq.mrxoptions.orderfeed.itch.v2.1.udpsession", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.mrxoptions.orderfeed.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.mrxoptions.orderfeed.itch.v2.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.username = ProtoField.new("Username", "nasdaq.mrxoptions.orderfeed.itch.v2.1.username", ftypes.STRING)

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Headers
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_tcp_packet = ProtoField.new("Tcp Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.clienttcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.mrxoptions.orderfeed.itch.v2.1.clienttcppacketheader", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.mold_udp_64_packet = ProtoField.new("Mold Udp 64 Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.moldudp64packet", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.serversoupbintcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_tcp_packet = ProtoField.new("Tcp Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.servertcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.mrxoptions.orderfeed.itch.v2.1.servertcppacketheader", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.udp_packet_header = ProtoField.new("Udp Packet Header", "nasdaq.mrxoptions.orderfeed.itch.v2.1.udppacketheader", ftypes.STRING)

-- Nasdaq MrxOptions OrderFeed 2.1 Application Messages
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.addordermessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_message = ProtoField.new("Auction Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.auctionmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.end_of_replay_sequence_message = ProtoField.new("End Of Replay Sequence Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.endofreplaysequencemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.mrxoptions.orderfeed.itch.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq MrxOptions OrderFeed 2.1 Session Messages
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.serverheartbeatpacket", ftypes.BYTES)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.mrxoptions.orderfeed.itch.v2.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq MrxOptions OrderFeed Itch 2.1 generated fields
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.mrxoptions.orderfeed.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nasdaq MrxOptions OrderFeed Itch 2.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_mrxoptions_orderfeed_itch_v2_1.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq MrxOptions OrderFeed Itch 2.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true
show.headers = true
show.indexes = true

-- Register Nasdaq MrxOptions OrderFeed Itch 2.1 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_headers then
    show.headers = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_structs then
    show.structs = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_indexes then
    show.indexes = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.show_indexes
  end
  if nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp_format ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.timestamp_format then
    nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp_format = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.timestamp_format
  end
  if nasdaq_mrxoptions_orderfeed_itch_v2_1.utc_offset_hours ~= omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.utc_offset_hours then
    nasdaq_mrxoptions_orderfeed_itch_v2_1.utc_offset_hours = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.utc_offset_hours
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
-- Nasdaq MrxOptions OrderFeed Itch 2.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none = {}

-- Size: All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.size = 1

-- Display: All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.display = function(value)
  if value == "Y" then
    return "All Or None: All Or None Order (Y)"
  end
  if value == "N" then
    return "All Or None: Not All Or None Order (N)"
  end

  return "All Or None: Unknown("..value..")"
end

-- Dissect: All Or None
nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.all_or_none, range, value, display)

  return offset + length, value
end

-- Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration = {}

-- Size: Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.size = 4

-- Display: Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.display = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event = {}

-- Size: Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.size = 1

-- Display: Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.display = function(value)
  if value == "S" then
    return "Auction Event: Start Of Auction (S)"
  end
  if value == "E" then
    return "Auction Event: End Of Auction (E)"
  end
  if value == "U" then
    return "Auction Event: Auction Update (U)"
  end

  return "Auction Event: Unknown("..value..")"
end

-- Dissect: Auction Event
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id = {}

-- Size: Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.size = 4

-- Display: Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type = {}

-- Size: Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.size = 1

-- Display: Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Block Auction (B)"
  end
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "I" then
    return "Auction Type: Order Exposure (I)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement Auction (P)"
  end
  if value == "C" then
    return "Auction Type: Facilitation (C)"
  end
  if value == "S" then
    return "Auction Type: Solicitation (S)"
  end
  if value == "X" then
    return "Auction Type: Flex Auction (X)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
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

-- Dissect: Client Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type = {}

-- Size: Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.size = 1

-- Display: Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Closing Type: Wco Early Closing (W)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta = {}

-- Size: Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size = 6

-- Display: Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.display = function(value)
  if value == "B" then
    return "Current Trading State: Buy Side Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Suspended (S)"
  end
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Current Trading State: Pre Open (I)"
  end
  if value == "O" then
    return "Current Trading State: Opening Auction (O)"
  end
  if value == "R" then
    return "Current Trading State: Re Opening (R)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- End Of Replay Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number = {}

-- Size: End Of Replay Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.size = 20

-- Display: End Of Replay Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.display = function(value)
  return "End Of Replay Sequence Number: "..value
end

-- Dissect: End Of Replay Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.end_of_replay_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag = {}

-- Size: Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.display = function(value)
  if value == "N" then
    return "Exec Flag: None (N)"
  end
  if value == "A" then
    return "Exec Flag: Aon (A)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume = {}

-- Size: Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.size = 4

-- Display: Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.display = function(value)
  return "Executable Order Volume: "..value
end

-- Dissect: Executable Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.executable_order_volume, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup = {}

-- Size: Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size = 6

-- Display: Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.display = function(value)
  return "Giveup: "..value
end

-- Dissect: Giveup
nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.giveup, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id = {}

-- Size: Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price = {}

-- Size: Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.size = 4

-- Display: Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Dissect: Limit Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Add Order Message (O)"
  end
  if value == "J" then
    return "Message Type: Auction Message (J)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv = {}

-- Size: Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.size = 1

-- Display: Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator = {}

-- Size: Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.size = 1

-- Display: Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closes Position (C)"
  end
  if value == "" then
    return "Open Close Indicator: Na (<whitespace>)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "N" then
    return "Option Type: Not Applicable (N)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer Order (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm Order (F)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker Order (M)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Market Maker Order (O)"
  end
  if value == "J" then
    return "Order Capacity: Joint Back Office (J)"
  end
  if value == "" then
    return "Order Capacity: Na (<whitespace>)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier = {}

-- Size: Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.size = 1

-- Display: Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.display = function(value)
  if value == "O" then
    return "Order Qualifier: Opening Order (O)"
  end
  if value == "I" then
    return "Order Qualifier: Implied Order (I)"
  end
  if value == "" then
    return "Order Qualifier: Na (<whitespace>)"
  end

  return "Order Qualifier: Unknown("..value..")"
end

-- Dissect: Order Qualifier
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_qualifier, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status = {}

-- Size: Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.size = 1

-- Display: Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.display = function(value)
  if value == "O" then
    return "Order Status: Open (O)"
  end
  if value == "F" then
    return "Order Status: Filled (F)"
  end
  if value == "C" then
    return "Order Status: Cancelled (C)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type = {}

-- Size: Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.size = 1

-- Display: Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume = {}

-- Size: Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.size = 4

-- Display: Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.display = function(value)
  return "Original Order Volume: "..value
end

-- Dissect: Original Order Volume
nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.original_order_volume, range, value, display)

  return offset + length, value
end

-- Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id = {}

-- Size: Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size = 6

-- Display: Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.display = function(value)
  return "Owner Id: "..value
end

-- Dissect: Owner Id
nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.owner_id, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length = {}

-- Size: Packet Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_mrxoptions_orderfeed_itch_v2_1.password = {}

-- Size: Password
nasdaq_mrxoptions_orderfeed_itch_v2_1.password.size = 10

-- Display: Password
nasdaq_mrxoptions_orderfeed_itch_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_mrxoptions_orderfeed_itch_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price = {}

-- Size: Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price.size = 4

-- Display: Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_mrxoptions_orderfeed_itch_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity = {}

-- Size: Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.size = 4

-- Display: Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Sequenced Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Sequenced Message Type: Add Order Message (O)"
  end
  if value == "J" then
    return "Sequenced Message Type: Auction Message (J)"
  end
  if value == "M" then
    return "Sequenced Message Type: End Of Replay Sequence Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.display = function(value)
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
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side = {}

-- Size: Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_mrxoptions_orderfeed_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_mrxoptions_orderfeed_itch_v2_1.text = {}

-- Size: Text
nasdaq_mrxoptions_orderfeed_itch_v2_1.text.size = 1

-- Display: Text
nasdaq_mrxoptions_orderfeed_itch_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_mrxoptions_orderfeed_itch_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force = {}

-- Size: Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.size = 1

-- Display: Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.display = function(value)
  if value == "D" then
    return "Time In Force: Day Order (D)"
  end
  if value == "G" then
    return "Time In Force: Good Till Cancelled (G)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_mrxoptions_orderfeed_itch_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable = {}

-- Size: Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.size = 1

-- Display: Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Udp Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number = {}

-- Size: Udp Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.size = 8

-- Display: Udp Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.display = function(value)
  return "Udp Sequence Number: "..value
end

-- Dissect: Udp Sequence Number
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.udp_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session = {}

-- Size: Udp Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.size = 10

-- Display: Udp Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Udp Session: No Value"
  end

  return "Udp Session: "..value
end

-- Dissect: Udp Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.udp_session, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_mrxoptions_orderfeed_itch_v2_1.username = {}

-- Size: Username
nasdaq_mrxoptions_orderfeed_itch_v2_1.username.size = 6

-- Display: Username
nasdaq_mrxoptions_orderfeed_itch_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_mrxoptions_orderfeed_itch_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_orderfeed_itch_v2_1.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq MrxOptions OrderFeed Itch 2.1
-----------------------------------------------------------------------

-- Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message = {}

-- Size: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.price.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size

-- Display: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_duration.dissect(buffer, index, packet, parent)

  -- Auction Event: Alpha
  index, auction_event = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_event.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_mrxoptions_orderfeed_itch_v2_1.quantity.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_mrxoptions_orderfeed_itch_v2_1.price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_mrxoptions_orderfeed_itch_v2_1.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Exec Flag: Alpha
  index, exec_flag = nasdaq_mrxoptions_orderfeed_itch_v2_1.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.auction_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message = {}

-- Size: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.side.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.size

-- Display: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_orderfeed_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_mrxoptions_orderfeed_itch_v2_1.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_mrxoptions_orderfeed_itch_v2_1.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_type.dissect(buffer, index, packet, parent)

  -- Order Qualifier: Alpha
  index, order_qualifier = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_qualifier.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_mrxoptions_orderfeed_itch_v2_1.limit_price.dissect(buffer, index, packet, parent)

  -- All Or None: Alpha
  index, all_or_none = nasdaq_mrxoptions_orderfeed_itch_v2_1.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_mrxoptions_orderfeed_itch_v2_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_orderfeed_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alpha
  index, open_close_indicator = nasdaq_mrxoptions_orderfeed_itch_v2_1.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Owner Id: Alpha
  index, owner_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.owner_id.dissect(buffer, index, packet, parent)

  -- Giveup: Alpha
  index, giveup = nasdaq_mrxoptions_orderfeed_itch_v2_1.giveup.dissect(buffer, index, packet, parent)

  -- Cmta: Alpha
  index, cmta = nasdaq_mrxoptions_orderfeed_itch_v2_1.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.size

-- Display: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_mrxoptions_orderfeed_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.size

-- Display: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_orderfeed_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_mrxoptions_orderfeed_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_mrxoptions_orderfeed_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_mrxoptions_orderfeed_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_mrxoptions_orderfeed_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_mrxoptions_orderfeed_itch_v2_1.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_mrxoptions_orderfeed_itch_v2_1.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_orderfeed_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_orderfeed_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_mrxoptions_orderfeed_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_payload = {}

-- Dissect: Udp Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if message_type == "m" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "O" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Message
  if message_type == "J" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Udp Payload: Runtime Type with 5 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_orderfeed_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_session = {}

-- Display: End Of Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_mrxoptions_orderfeed_itch_v2_1.heartbeat = {}

-- Display: Heartbeat
nasdaq_mrxoptions_orderfeed_itch_v2_1.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_mrxoptions_orderfeed_itch_v2_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_mrxoptions_orderfeed_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_mrxoptions_orderfeed_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_mrxoptions_orderfeed_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Udp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header = {}

-- Size: Udp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.size

-- Display: Udp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Udp Session: 10 Byte Ascii String
  index, udp_session = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_session.dissect(buffer, index, packet, parent)

  -- Udp Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, udp_sequence_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_mrxoptions_orderfeed_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.udp_packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mold Udp 64 Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.mold_udp_64_packet = {}

-- Verify required size of Udp packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.mold_udp_64_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.size
end

-- Dissect Mold Udp 64 Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.mold_udp_64_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Packet Header: Struct of 3 fields
  index, udp_packet_header = nasdaq_mrxoptions_orderfeed_itch_v2_1.udp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- End Of Replay Sequence Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message = {}

-- Size: End Of Replay Sequence Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.size

-- Display: End Of Replay Sequence Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Replay Sequence Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- End Of Replay Sequence Number: Alphanumeric
  index, end_of_replay_sequence_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Replay Sequence Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.end_of_replay_sequence_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if sequenced_message_type == "m" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "O" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Message
  if sequenced_message_type == "J" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.auction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Replay Sequence Message
  if sequenced_message_type == "M" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.end_of_replay_sequence_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, sequenced_message_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 6 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_mrxoptions_orderfeed_itch_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.text.size

-- Display: Debug Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_mrxoptions_orderfeed_itch_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Tcp Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_payload = {}

-- Dissect: Server Tcp Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if server_packet_type == "H" then
    return offset
  end
  -- Dissect End Of Session Packet
  if server_packet_type == "Z" then
    return offset
  end

  return offset
end

-- Server Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header = {}

-- Size: Server Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.size

-- Display: Server Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Tcp Packet Header: Struct of 2 fields
  index, server_tcp_packet_header = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Tcp Payload: Runtime Type with 6 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet = {}

-- Verify required size of Tcp packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet_header.size
end

-- Dissect Server Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_mrxoptions_orderfeed_itch_v2_1.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Unsequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.username.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.password.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_mrxoptions_orderfeed_itch_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_mrxoptions_orderfeed_itch_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_mrxoptions_orderfeed_itch_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Tcp Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_payload = {}

-- Dissect: Client Tcp Payload
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Packet
  if client_packet_type == "R" then
    return offset
  end
  -- Dissect Logout Request Packet
  if client_packet_type == "O" then
    return offset
  end

  return offset
end

-- Client Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header = {}

-- Size: Client Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.size =
  nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.size + 
  nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.size

-- Display: Client Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_mrxoptions_orderfeed_itch_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Tcp Packet Header
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Tcp Packet Header: Struct of 2 fields
  index, client_tcp_packet_header = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Tcp Payload: Runtime Type with 5 branches
  index = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet = {}

-- Verify required size of Tcp packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet_header.size
end

-- Dissect Client Tcp Packet
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_mrxoptions_orderfeed_itch_v2_1.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.init()
end

-- Connection roles for Nasdaq MrxOptions OrderFeed Itch 2.1: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
nasdaq_mrxoptions_orderfeed_itch_v2_1.role = function(packet)
  if omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_mrxoptions_orderfeed_itch_v2_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq MrxOptions OrderFeed Itch 2.1
function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_mrxoptions_orderfeed_itch_v2_1, buffer(), omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    local role = nasdaq_mrxoptions_orderfeed_itch_v2_1.role(packet)
    if role == "initiator" then
      return nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet.dissect(buffer, packet, protocol)
    end
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return nasdaq_mrxoptions_orderfeed_itch_v2_1.mold_udp_64_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Tcp Packet: would its message dispatch accept this frame?
nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat Packet
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request Packet
  if client_packet_type == "O" then
    return true
  end

  return false
end


-- Fingerprint of Server Tcp Packet: would its message dispatch accept this frame?
nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat Packet
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session Packet
  if server_packet_type == "Z" then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq MrxOptions OrderFeed Itch 2.1 (Tcp)
local function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_mrxoptions_orderfeed_itch_v2_1.client_tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1
  omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq MrxOptions OrderFeed Itch 2.1 (Tcp)
local function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_mrxoptions_orderfeed_itch_v2_1.server_tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1
  omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq MrxOptions OrderFeed Itch 2.1 (Udp)
local function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_orderfeed_itch_v2_1.mold_udp_64_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1
  omi_nasdaq_mrxoptions_orderfeed_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq MrxOptions OrderFeed Itch 2.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_mrxoptions_orderfeed_itch_v2_1.role(packet)
  local first, second = omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_tcp_initiator_heuristic, omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_mrxoptions_orderfeed_itch_v2_1.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  nasdaq_mrxoptions_orderfeed_itch_v2_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq MrxOptions OrderFeed Itch 2.1
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1:register_heuristic("tcp", omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_tcp_heuristic)
omi_nasdaq_mrxoptions_orderfeed_itch_v2_1:register_heuristic("udp", omi_nasdaq_mrxoptions_orderfeed_itch_v2_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Order_Feed_2.1.pdf
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
