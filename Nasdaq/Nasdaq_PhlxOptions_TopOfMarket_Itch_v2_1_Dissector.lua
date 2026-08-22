-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions TopOfMarket Itch 2.1 Protocol
local omi_nasdaq_phlxoptions_topofmarket_itch_v2_1 = Proto("Omi.Nasdaq.PhlxOptions.TopOfMarket.Itch.v2.1", "Nasdaq PhlxOptions TopOfMarket Itch 2.1")

-- Protocol table
local nasdaq_phlxoptions_topofmarket_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions TopOfMarket Itch 2.1 Fields
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v2.1.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.phlxoptions.topofmarket.itch.v2.1.acceptedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_long = ProtoField.new("Ask Cust Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askcustsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_short = ProtoField.new("Ask Cust Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askcustsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_long = ProtoField.new("Ask Market Order Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askmarketordersizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_short = ProtoField.new("Ask Market Order Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askmarketordersizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askpricelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askpriceshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_long = ProtoField.new("Ask ProCust Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askprocustsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_short = ProtoField.new("Ask ProCust Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.askprocustsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.asksizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.asksizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_long = ProtoField.new("Bid Cust Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidcustsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_short = ProtoField.new("Bid Cust Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidcustsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_long = ProtoField.new("Bid Market Order Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidmarketordersizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_short = ProtoField.new("Bid Market Order Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidmarketordersizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidpricelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidpriceshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_long = ProtoField.new("Bid ProCust Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidprocustsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_short = ProtoField.new("Bid ProCust Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidprocustsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bidsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.phlxoptions.topofmarket.itch.v2.1.closingtype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.topofmarket.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.cust_size_long = ProtoField.new("Cust Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.custsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.cust_size_short = ProtoField.new("Cust Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.custsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.end_of_replay_sequence_number = ProtoField.new("End Of Replay Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v2.1.endofreplaysequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.topofmarket.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.phlxoptions.topofmarket.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlxoptions.topofmarket.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlxoptions.topofmarket.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.topofmarket.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.phlxoptions.topofmarket.itch.v2.1.instrumentid", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.market_order_size_long = ProtoField.new("Market Order Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.marketordersizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.market_order_size_short = ProtoField.new("Market Order Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.marketordersizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.phlxoptions.topofmarket.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.topofmarket.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.phlxoptions.topofmarket.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.topofmarket.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.mold_udp_64_packet = ProtoField.new("Mold Udp 64 Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.moldudp64packet", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlxoptions.topofmarket.itch.v2.1.mpv", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.topofmarket.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.phlxoptions.topofmarket.itch.v2.1.packetlength", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.topofmarket.itch.v2.1.packettype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.password = ProtoField.new("Password", "nasdaq.phlxoptions.topofmarket.itch.v2.1.password", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.pricelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.priceshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.procust_size_long = ProtoField.new("ProCust Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.procustsizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.procust_size_short = ProtoField.new("ProCust Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.procustsizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.phlxoptions.topofmarket.itch.v2.1.quotecondition", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.phlxoptions.topofmarket.itch.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.phlxoptions.topofmarket.itch.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.phlxoptions.topofmarket.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.topofmarket.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.phlxoptions.topofmarket.itch.v2.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.size_long = ProtoField.new("Size Long", "nasdaq.phlxoptions.topofmarket.itch.v2.1.sizelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.size_short = ProtoField.new("Size Short", "nasdaq.phlxoptions.topofmarket.itch.v2.1.sizeshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.soupbintcppacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tcp_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.tcppacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.topofmarket.itch.v2.1.tcppacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.text = ProtoField.new("Text", "nasdaq.phlxoptions.topofmarket.itch.v2.1.text", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.topofmarket.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.phlxoptions.topofmarket.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlxoptions.topofmarket.itch.v2.1.tradable", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.udp_packet_header = ProtoField.new("Udp Packet Header", "nasdaq.phlxoptions.topofmarket.itch.v2.1.udppacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.udp_sequence_number = ProtoField.new("Udp Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v2.1.udpsequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.udp_session = ProtoField.new("Udp Session", "nasdaq.phlxoptions.topofmarket.itch.v2.1.udpsession", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.topofmarket.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.phlxoptions.topofmarket.itch.v2.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.username = ProtoField.new("Username", "nasdaq.phlxoptions.topofmarket.itch.v2.1.username", ftypes.STRING)

-- Nasdaq PhlxOptions TopOfMarket 2.1 Application Messages
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_ask_update_long_form_message = ProtoField.new("Best Ask Update Long Form Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bestaskupdatelongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_ask_update_short_form_message = ProtoField.new("Best Ask Update Short Form Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bestaskupdateshortformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_long_form_message = ProtoField.new("Best Bid And Ask Update Long Form Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bestbidandaskupdatelongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_short_form_message = ProtoField.new("Best Bid And Ask Update Short Form Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bestbidandaskupdateshortformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_update_long_form_message = ProtoField.new("Best Bid Update Long Form Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bestbidupdatelongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_update_short_form_message = ProtoField.new("Best Bid Update Short Form Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.bestbidupdateshortformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.end_of_replay_sequence_message = ProtoField.new("End Of Replay Sequence Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.endofreplaysequencemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlxoptions.topofmarket.itch.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq PhlxOptions TopOfMarket 2.1 Session Messages
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.serverheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.phlxoptions.topofmarket.itch.v2.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PhlxOptions TopOfMarket Itch 2.1 generated fields
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.topofmarket.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nasdaq PhlxOptions TopOfMarket Itch 2.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_phlxoptions_topofmarket_itch_v2_1.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions TopOfMarket Itch 2.1 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nasdaq PhlxOptions TopOfMarket Itch 2.1 Show Options
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_headers then
    show.headers = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_structs then
    show.structs = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_indexes then
    show.indexes = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.show_indexes
  end
  if nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp_format ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.timestamp_format then
    nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp_format = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.timestamp_format
  end
  if nasdaq_phlxoptions_topofmarket_itch_v2_1.utc_offset_hours ~= omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.utc_offset_hours then
    nasdaq_phlxoptions_topofmarket_itch_v2_1.utc_offset_hours = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.prefs.utc_offset_hours
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
-- Nasdaq PhlxOptions TopOfMarket Itch 2.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Ask Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long = {}

-- Size: Ask Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.size = 4

-- Display: Ask Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.display = function(value)
  return "Ask Cust Size Long: "..value
end

-- Dissect: Ask Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_long, range, value, display)

  return offset + length, value
end

-- Ask Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short = {}

-- Size: Ask Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.size = 2

-- Display: Ask Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.display = function(value)
  return "Ask Cust Size Short: "..value
end

-- Dissect: Ask Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_short, range, value, display)

  return offset + length, value
end

-- Ask Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long = {}

-- Size: Ask Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.size = 4

-- Display: Ask Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.display = function(value)
  return "Ask Market Order Size Long: "..value
end

-- Dissect: Ask Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_long, range, value, display)

  return offset + length, value
end

-- Ask Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short = {}

-- Size: Ask Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.size = 2

-- Display: Ask Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.display = function(value)
  return "Ask Market Order Size Short: "..value
end

-- Dissect: Ask Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_short, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Dissect: Ask Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long = {}

-- Size: Ask ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.size = 4

-- Display: Ask ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.display = function(value)
  return "Ask ProCust Size Long: "..value
end

-- Dissect: Ask ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_long, range, value, display)

  return offset + length, value
end

-- Ask ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short = {}

-- Size: Ask ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.size = 2

-- Display: Ask ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.display = function(value)
  return "Ask ProCust Size Short: "..value
end

-- Dissect: Ask ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_short, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Bid Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long = {}

-- Size: Bid Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.size = 4

-- Display: Bid Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.display = function(value)
  return "Bid Cust Size Long: "..value
end

-- Dissect: Bid Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_long, range, value, display)

  return offset + length, value
end

-- Bid Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short = {}

-- Size: Bid Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.size = 2

-- Display: Bid Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.display = function(value)
  return "Bid Cust Size Short: "..value
end

-- Dissect: Bid Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_short, range, value, display)

  return offset + length, value
end

-- Bid Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long = {}

-- Size: Bid Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.size = 4

-- Display: Bid Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.display = function(value)
  return "Bid Market Order Size Long: "..value
end

-- Dissect: Bid Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_long, range, value, display)

  return offset + length, value
end

-- Bid Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short = {}

-- Size: Bid Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.size = 2

-- Display: Bid Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.display = function(value)
  return "Bid Market Order Size Short: "..value
end

-- Dissect: Bid Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long = {}

-- Size: Bid ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.size = 4

-- Display: Bid ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.display = function(value)
  return "Bid ProCust Size Long: "..value
end

-- Dissect: Bid ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_long, range, value, display)

  return offset + length, value
end

-- Bid ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short = {}

-- Size: Bid ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.size = 2

-- Display: Bid ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.display = function(value)
  return "Bid ProCust Size Short: "..value
end

-- Dissect: Bid ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_short, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type = {}

-- Size: Closing Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.size = 1

-- Display: Closing Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long = {}

-- Size: Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.size = 4

-- Display: Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.display = function(value)
  return "Cust Size Long: "..value
end

-- Dissect: Cust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.cust_size_long, range, value, display)

  return offset + length, value
end

-- Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short = {}

-- Size: Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.size = 2

-- Display: Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.display = function(value)
  return "Cust Size Short: "..value
end

-- Dissect: Cust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.cust_size_short, range, value, display)

  return offset + length, value
end

-- End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number = {}

-- Size: End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.size = 20

-- Display: End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.display = function(value)
  return "End Of Replay Sequence Number: "..value
end

-- Dissect: End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.end_of_replay_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id = {}

-- Size: Instrument Id
nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long = {}

-- Size: Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.size = 4

-- Display: Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.display = function(value)
  return "Market Order Size Long: "..value
end

-- Dissect: Market Order Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.market_order_size_long, range, value, display)

  return offset + length, value
end

-- Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short = {}

-- Size: Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.size = 2

-- Display: Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.display = function(value)
  return "Market Order Size Short: "..value
end

-- Dissect: Market Order Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.market_order_size_short, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "q" then
    return "Message Type: Best Bid And Ask Update Short Form Message (q)"
  end
  if value == "Q" then
    return "Message Type: Best Bid And Ask Update Long Form Message (Q)"
  end
  if value == "b" then
    return "Message Type: Best Bid Update Short Form Message (b)"
  end
  if value == "a" then
    return "Message Type: Best Ask Update Short Form Message (a)"
  end
  if value == "B" then
    return "Message Type: Best Bid Update Long Form Message (B)"
  end
  if value == "A" then
    return "Message Type: Best Ask Update Long Form Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv = {}

-- Size: Mpv
nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.size = 1

-- Display: Mpv
nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length = {}

-- Size: Packet Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type = {}

-- Size: Packet Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.size = 1

-- Display: Packet Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_phlxoptions_topofmarket_itch_v2_1.password = {}

-- Size: Password
nasdaq_phlxoptions_topofmarket_itch_v2_1.password.size = 10

-- Display: Password
nasdaq_phlxoptions_topofmarket_itch_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_phlxoptions_topofmarket_itch_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long = {}

-- Size: Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short = {}

-- Size: Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long = {}

-- Size: ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.size = 4

-- Display: ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.display = function(value)
  return "ProCust Size Long: "..value
end

-- Dissect: ProCust Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.procust_size_long, range, value, display)

  return offset + length, value
end

-- ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short = {}

-- Size: ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.size = 2

-- Display: ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.display = function(value)
  return "ProCust Size Short: "..value
end

-- Dissect: ProCust Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.procust_size_short, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition = {}

-- Size: Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.display = function(value)
  if value == "" then
    return "Quote Condition: Regular Quote Autox Eligible (<whitespace>)"
  end
  if value == "X" then
    return "Quote Condition: Ask Side Not Firm Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Quote Condition: Bid Side Not Firm Ask Side Firm (Y)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Sequenced Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading Action Message (H)"
  end
  if value == "q" then
    return "Sequenced Message Type: Best Bid And Ask Update Short Form Message (q)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Best Bid And Ask Update Long Form Message (Q)"
  end
  if value == "b" then
    return "Sequenced Message Type: Best Bid Update Short Form Message (b)"
  end
  if value == "a" then
    return "Sequenced Message Type: Best Ask Update Short Form Message (a)"
  end
  if value == "B" then
    return "Sequenced Message Type: Best Bid Update Long Form Message (B)"
  end
  if value == "A" then
    return "Sequenced Message Type: Best Ask Update Long Form Message (A)"
  end
  if value == "M" then
    return "Sequenced Message Type: End Of Replay Sequence Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long = {}

-- Size: Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.size = 4

-- Display: Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.display = function(value)
  return "Size Long: "..value
end

-- Dissect: Size Long
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.size_long, range, value, display)

  return offset + length, value
end

-- Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short = {}

-- Size: Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.size = 2

-- Display: Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.display = function(value)
  return "Size Short: "..value
end

-- Dissect: Size Short
nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.size_short, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_phlxoptions_topofmarket_itch_v2_1.text = {}

-- Size: Text
nasdaq_phlxoptions_topofmarket_itch_v2_1.text.size = 1

-- Display: Text
nasdaq_phlxoptions_topofmarket_itch_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_phlxoptions_topofmarket_itch_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_phlxoptions_topofmarket_itch_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable = {}

-- Size: Tradable
nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.size = 1

-- Display: Tradable
nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Udp Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number = {}

-- Size: Udp Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.size = 8

-- Display: Udp Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.display = function(value)
  return "Udp Sequence Number: "..value
end

-- Dissect: Udp Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.udp_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session = {}

-- Size: Udp Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.size = 10

-- Display: Udp Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Udp Session: No Value"
  end

  return "Udp Session: "..value
end

-- Dissect: Udp Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.size
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

  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.udp_session, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_phlxoptions_topofmarket_itch_v2_1.username = {}

-- Size: Username
nasdaq_phlxoptions_topofmarket_itch_v2_1.username.size = 6

-- Display: Username
nasdaq_phlxoptions_topofmarket_itch_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_phlxoptions_topofmarket_itch_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v2_1.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions TopOfMarket Itch 2.1
-----------------------------------------------------------------------

-- Best Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message = {}

-- Size: Best Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.size

-- Display: Best Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Long: Integer
  index, market_order_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size Long: Integer
  index, size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.dissect(buffer, index, packet, parent)

  -- Cust Size Long: Integer
  index, cust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.dissect(buffer, index, packet, parent)

  -- ProCust Size Long: Integer
  index, procust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message = {}

-- Size: Best Bid Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.size

-- Display: Best Bid Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Long: Integer
  index, market_order_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_long.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size Long: Integer
  index, size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_long.dissect(buffer, index, packet, parent)

  -- Cust Size Long: Integer
  index, cust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_long.dissect(buffer, index, packet, parent)

  -- ProCust Size Long: Integer
  index, procust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message = {}

-- Size: Best Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.size

-- Display: Best Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Short: Integer
  index, market_order_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Size Short: Integer
  index, size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.dissect(buffer, index, packet, parent)

  -- Cust Size Short: Integer
  index, cust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.dissect(buffer, index, packet, parent)

  -- ProCust Size Short: Integer
  index, procust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message = {}

-- Size: Best Bid Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.size

-- Display: Best Bid Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Short: Integer
  index, market_order_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.market_order_size_short.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Size Short: Integer
  index, size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.size_short.dissect(buffer, index, packet, parent)

  -- Cust Size Short: Integer
  index, cust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.cust_size_short.dissect(buffer, index, packet, parent)

  -- ProCust Size Short: Integer
  index, procust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.procust_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message = {}

-- Size: Best Bid And Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.size

-- Display: Best Bid And Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Order Size Long: Integer
  index, bid_market_order_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_long.dissect(buffer, index, packet, parent)

  -- Bid Cust Size Long: Integer
  index, bid_cust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_long.dissect(buffer, index, packet, parent)

  -- Bid ProCust Size Long: Integer
  index, bid_procust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_long.dissect(buffer, index, packet, parent)

  -- Ask Market Order Size Long: Integer
  index, ask_market_order_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_long.dissect(buffer, index, packet, parent)

  -- Ask Cust Size Long: Integer
  index, ask_cust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_long.dissect(buffer, index, packet, parent)

  -- Ask ProCust Size Long: Integer
  index, ask_procust_size_long = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Long Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message = {}

-- Size: Best Bid And Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.size

-- Display: Best Bid And Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Order Size Short: Integer
  index, bid_market_order_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Cust Size Short: Integer
  index, bid_cust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_cust_size_short.dissect(buffer, index, packet, parent)

  -- Bid ProCust Size Short: Integer
  index, bid_procust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.bid_procust_size_short.dissect(buffer, index, packet, parent)

  -- Ask Market Order Size Short: Integer
  index, ask_market_order_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_size_short.dissect(buffer, index, packet, parent)

  -- Ask Cust Size Short: Integer
  index, ask_cust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_cust_size_short.dissect(buffer, index, packet, parent)

  -- Ask ProCust Size Short: Integer
  index, ask_procust_size_short = nasdaq_phlxoptions_topofmarket_itch_v2_1.ask_procust_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Short Form Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.size

-- Display: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_topofmarket_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.size

-- Display: Derivative Directory Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_topofmarket_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_phlxoptions_topofmarket_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_topofmarket_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_topofmarket_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_phlxoptions_topofmarket_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_phlxoptions_topofmarket_itch_v2_1.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_phlxoptions_topofmarket_itch_v2_1.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_phlxoptions_topofmarket_itch_v2_1.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_phlxoptions_topofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_topofmarket_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Payload
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_payload = {}

-- Dissect: Udp Payload
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if message_type == "m" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Short Form Message
  if message_type == "q" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Long Form Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Short Form Message
  if message_type == "b" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Short Form Message
  if message_type == "a" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Long Form Message
  if message_type == "B" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Long Form Message
  if message_type == "A" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Udp Payload: Runtime Type with 9 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_phlxoptions_topofmarket_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_session = {}

-- Display: End Of Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_phlxoptions_topofmarket_itch_v2_1.heartbeat = {}

-- Display: Heartbeat
nasdaq_phlxoptions_topofmarket_itch_v2_1.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_phlxoptions_topofmarket_itch_v2_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_phlxoptions_topofmarket_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_phlxoptions_topofmarket_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_phlxoptions_topofmarket_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Udp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header = {}

-- Size: Udp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.size

-- Display: Udp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Udp Session: 10 Byte Ascii String
  index, udp_session = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_session.dissect(buffer, index, packet, parent)

  -- Udp Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, udp_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_phlxoptions_topofmarket_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.udp_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mold Udp 64 Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.mold_udp_64_packet = {}

-- Verify required size of Udp packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.mold_udp_64_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.size
end

-- Dissect Mold Udp 64 Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.mold_udp_64_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Packet Header: Struct of 3 fields
  index, udp_packet_header = nasdaq_phlxoptions_topofmarket_itch_v2_1.udp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.username.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.password.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_phlxoptions_topofmarket_itch_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_phlxoptions_topofmarket_itch_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message = {}

-- Size: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.size

-- Display: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- End Of Replay Sequence Number: Alphanumeric
  index, end_of_replay_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.end_of_replay_sequence_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if sequenced_message_type == "m" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Short Form Message
  if sequenced_message_type == "q" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Long Form Message
  if sequenced_message_type == "Q" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Short Form Message
  if sequenced_message_type == "b" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Short Form Message
  if sequenced_message_type == "a" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Long Form Message
  if sequenced_message_type == "B" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Long Form Message
  if sequenced_message_type == "A" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Replay Sequence Message
  if sequenced_message_type == "M" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.end_of_replay_sequence_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 10 values
  index, sequenced_message_type = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 10 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_phlxoptions_topofmarket_itch_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v2_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.text.size

-- Display: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_phlxoptions_topofmarket_itch_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Payload
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_payload = {}

-- Dissect: Tcp Payload
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if packet_type == "H" then
    return offset
  end
  -- Dissect End Of Session Packet
  if packet_type == "Z" then
    return offset
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Packet
  if packet_type == "R" then
    return offset
  end
  -- Dissect Logout Request Packet
  if packet_type == "O" then
    return offset
  end

  return offset
end

-- Tcp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header = {}

-- Size: Tcp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.size + 
  nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.size

-- Display: Tcp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_phlxoptions_topofmarket_itch_v2_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Packet Header
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Tcp Packet Header: Struct of 2 fields
  index, tcp_packet_header = nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Tcp Payload: Runtime Type with 10 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.size then
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

-- Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet_header.size
end

-- Dissect Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_phlxoptions_topofmarket_itch_v2_1.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.init()
end

-- Dissector for Nasdaq PhlxOptions TopOfMarket Itch 2.1
function omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v2_1, buffer(), omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return nasdaq_phlxoptions_topofmarket_itch_v2_1.mold_udp_64_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PhlxOptions TopOfMarket Itch 2.1 (Tcp)
local function omi_nasdaq_phlxoptions_topofmarket_itch_v2_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_topofmarket_itch_v2_1.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1
  omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions TopOfMarket Itch 2.1 (Udp)
local function omi_nasdaq_phlxoptions_topofmarket_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_topofmarket_itch_v2_1.mold_udp_64_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_topofmarket_itch_v2_1
  omi_nasdaq_phlxoptions_topofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Nasdaq PhlxOptions TopOfMarket Itch 2.1
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1:register_heuristic("tcp", omi_nasdaq_phlxoptions_topofmarket_itch_v2_1_tcp_heuristic)
omi_nasdaq_phlxoptions_topofmarket_itch_v2_1:register_heuristic("udp", omi_nasdaq_phlxoptions_topofmarket_itch_v2_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Top_of_Market_Feed_2.1.pdf
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
