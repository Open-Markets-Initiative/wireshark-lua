-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Protocol
local omi_nasdaq_nomoptions_itto_itch_v4_0 = Proto("Omi.Nasdaq.NomOptions.Itto.Itch.v4.0", "Nasdaq NomOptions Itto Itch 4.0")

-- Protocol table
local nasdaq_nomoptions_itto_itch_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Fields
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nomoptions.itto.itch.v4.0.acceptedsession", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask = ProtoField.new("Ask", "nasdaq.nomoptions.itto.itch.v4.0.ask", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.nomoptions.itto.itch.v4.0.askpricelong", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.nomoptions.itto.itch.v4.0.askpriceshort", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.askreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_integer_2 = ProtoField.new("Ask Size Integer 2", "nasdaq.nomoptions.itto.itch.v4.0.asksizeinteger2", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_integer_4 = ProtoField.new("Ask Size Integer 4", "nasdaq.nomoptions.itto.itch.v4.0.asksizeinteger4", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.nomoptions.itto.itch.v4.0.auctionid", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.nomoptions.itto.itch.v4.0.auctiontype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid = ProtoField.new("Bid", "nasdaq.nomoptions.itto.itch.v4.0.bid", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.nomoptions.itto.itch.v4.0.bidpricelong", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.nomoptions.itto.itch.v4.0.bidpriceshort", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.bidreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_integer_2 = ProtoField.new("Bid Size Integer 2", "nasdaq.nomoptions.itto.itch.v4.0.bidsizeinteger2", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_integer_4 = ProtoField.new("Bid Size Integer 4", "nasdaq.nomoptions.itto.itch.v4.0.bidsizeinteger4", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nomoptions.itto.itch.v4.0.buysellindicator", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.nomoptions.itto.itch.v4.0.cancelledcontracts", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.nomoptions.itto.itch.v4.0.changereason", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.nomoptions.itto.itch.v4.0.crossnumber", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nomoptions.itto.itch.v4.0.crosstype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nomoptions.itto.itch.v4.0.currenttradingstate", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.nomoptions.itto.itch.v4.0.customerfirmindicator", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nomoptions.itto.itch.v4.0.eventcode", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.nomoptions.itto.itch.v4.0.executedcontracts", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.nomoptions.itto.itch.v4.0.expirationdate", ftypes.UINT8)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.nomoptions.itto.itch.v4.0.expirationmonth", ftypes.UINT8)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.nomoptions.itto.itch.v4.0.expirationyear", ftypes.UINT8)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.nomoptions.itto.itch.v4.0.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nomoptions.itto.itch.v4.0.imbalancedirection", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.nomoptions.itto.itch.v4.0.imbalanceprice", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.nomoptions.itto.itch.v4.0.imbalancevolume", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.market_side = ProtoField.new("Market Side", "nasdaq.nomoptions.itto.itch.v4.0.marketside", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nomoptions.itto.itch.v4.0.matchnumber", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message = ProtoField.new("Message", "nasdaq.nomoptions.itto.itch.v4.0.message", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.nomoptions.itto.itch.v4.0.messagecount", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nomoptions.itto.itch.v4.0.messageheader", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.nomoptions.itto.itch.v4.0.messagelength", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nomoptions.itto.itch.v4.0.messagetype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.mold_udp_64_packet = ProtoField.new("Mold Udp 64 Packet", "nasdaq.nomoptions.itto.itch.v4.0.moldudp64packet", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.mpv = ProtoField.new("Mpv", "nasdaq.nomoptions.itto.itch.v4.0.mpv", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.new_reference_number = ProtoField.new("New Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.newreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.open_state = ProtoField.new("Open State", "nasdaq.nomoptions.itto.itch.v4.0.openstate", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.nomoptions.itto.itch.v4.0.optionid", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.nomoptions.itto.itch.v4.0.optiontype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.nomoptions.itto.itch.v4.0.optionsclosingtype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.original_ask_reference_number = ProtoField.new("Original Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.originalaskreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.original_bid_reference_number = ProtoField.new("Original Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.originalbidreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.original_reference_number = ProtoField.new("Original Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.originalreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nomoptions.itto.itch.v4.0.packetlength", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.nomoptions.itto.itch.v4.0.packettype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.nomoptions.itto.itch.v4.0.pairedcontracts", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.password = ProtoField.new("Password", "nasdaq.nomoptions.itto.itch.v4.0.password", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price_long = ProtoField.new("Price Long", "nasdaq.nomoptions.itto.itch.v4.0.pricelong", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price_short = ProtoField.new("Price Short", "nasdaq.nomoptions.itto.itch.v4.0.priceshort", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.printable = ProtoField.new("Printable", "nasdaq.nomoptions.itto.itch.v4.0.printable", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reference_number = ProtoField.new("Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.referencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nomoptions.itto.itch.v4.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nomoptions.itto.itch.v4.0.requestedsession", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.nomoptions.itto.itch.v4.0.reserved3", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.nomoptions.itto.itch.v4.0.securitysymbol", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nomoptions.itto.itch.v4.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nomoptions.itto.itch.v4.0.soupbintcppacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.source = ProtoField.new("Source", "nasdaq.nomoptions.itto.itch.v4.0.source", ftypes.UINT8)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tcp_packet = ProtoField.new("Tcp Packet", "nasdaq.nomoptions.itto.itch.v4.0.tcppacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.tcppacketheader", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.text = ProtoField.new("Text", "nasdaq.nomoptions.itto.itch.v4.0.text", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nomoptions.itto.itch.v4.0.timestamp", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nomoptions.itto.itch.v4.0.trackingnumber", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.nomoptions.itto.itch.v4.0.tradable", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.udp_packet_header = ProtoField.new("Udp Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.udppacketheader", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.udp_sequence_number = ProtoField.new("Udp Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.udpsequencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.udp_session = ProtoField.new("Udp Session", "nasdaq.nomoptions.itto.itch.v4.0.udpsession", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.nomoptions.itto.itch.v4.0.underlyingsymbol", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nomoptions.itto.itch.v4.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.username = ProtoField.new("Username", "nasdaq.nomoptions.itto.itch.v4.0.username", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.nomoptions.itto.itch.v4.0.volumelong", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.nomoptions.itto.itch.v4.0.volumeshort", ftypes.UINT16)

-- Nasdaq NomOptions Itch Itto 4.0 Application Messages
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_long_form_message = ProtoField.new("Add Order Message Long Form Message", "nasdaq.nomoptions.itto.itch.v4.0.addordermessagelongformmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_short_message_form = ProtoField.new("Add Order Message Short Message Form", "nasdaq.nomoptions.itto.itch.v4.0.addordermessageshortmessageform", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_long_form_message = ProtoField.new("Add Quote Message Long Form Message", "nasdaq.nomoptions.itto.itch.v4.0.addquotemessagelongformmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_short_form_message = ProtoField.new("Add Quote Message Short Form Message", "nasdaq.nomoptions.itto.itch.v4.0.addquotemessageshortformmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.broken_trade_order_executed_message = ProtoField.new("Broken Trade Order Executed Message", "nasdaq.nomoptions.itto.itch.v4.0.brokentradeorderexecutedmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nomoptions.itto.itch.v4.0.noiimessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.nomoptions.itto.itch.v4.0.optionscrosstrademessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.nomoptions.itto.itch.v4.0.optionsdirectorymessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_trade_messages_non_auction = ProtoField.new("Options Trade Messages Non Auction", "nasdaq.nomoptions.itto.itch.v4.0.optionstrademessagesnonauction", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nomoptions.itto.itch.v4.0.ordercancelmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.nomoptions.itto.itch.v4.0.quotedeletemessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_long_form = ProtoField.new("Quote Replace Message Long Form", "nasdaq.nomoptions.itto.itch.v4.0.quotereplacemessagelongform", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_short_form = ProtoField.new("Quote Replace Message Short Form", "nasdaq.nomoptions.itto.itch.v4.0.quotereplacemessageshortform", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.nomoptions.itto.itch.v4.0.securityopenmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_change_message = ProtoField.new("Single Side Change Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesidechangemessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesidedeletemessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesideexecutedmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.nomoptions.itto.itch.v4.0.singlesideexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.nomoptions.itto.itch.v4.0.singlesidereplacemessagelongform", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.nomoptions.itto.itch.v4.0.singlesidereplacemessageshortform", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nomoptions.itto.itch.v4.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.nomoptions.itto.itch.v4.0.tradingactionmessage", ftypes.STRING)

-- Nasdaq NomOptions Itch Itto 4.0 Session Messages
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nomoptions.itto.itch.v4.0.debugpacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nomoptions.itto.itch.v4.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nomoptions.itto.itch.v4.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nomoptions.itto.itch.v4.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nomoptions.itto.itch.v4.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nomoptions.itto.itch.v4.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq NomOptions Itto Itch 4.0 generated fields
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.nomoptions.itto.itch.v4.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nasdaq NomOptions Itto Itch 4.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nomoptions_itto_itch_v4_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nomoptions_itto_itch_v4_0.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NomOptions Itto Itch 4.0 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.message = true
show.message_header = true
show.mold_udp_64_packet = true
show.soup_bin_tcp_packet = true
show.tcp_packet = true
show.tcp_packet_header = true
show.udp_packet_header = true
show.message_index = true

-- Register Nasdaq NomOptions Itto Itch 4.0 Show Options
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_mold_udp_64_packet = Pref.bool("Show Mold Udp 64 Packet", show.mold_udp_64_packet, "Parse and add Mold Udp 64 Packet to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_tcp_packet_header = Pref.bool("Show Tcp Packet Header", show.tcp_packet_header, "Parse and add Tcp Packet Header to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_udp_packet_header = Pref.bool("Show Udp Packet Header", show.udp_packet_header, "Parse and add Udp Packet Header to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nomoptions_itto_itch_v4_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message then
    show.message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header
  end
  if show.mold_udp_64_packet ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_mold_udp_64_packet then
    show.mold_udp_64_packet = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_mold_udp_64_packet
  end
  if show.session_messages ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_session_messages
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_soup_bin_tcp_packet
  end
  if show.tcp_packet ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_tcp_packet then
    show.tcp_packet = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_tcp_packet
  end
  if show.tcp_packet_header ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_tcp_packet_header then
    show.tcp_packet_header = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_tcp_packet_header
  end
  if show.udp_packet_header ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_udp_packet_header then
    show.udp_packet_header = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_udp_packet_header
  end
  if show.message_index ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_index then
    show.message_index = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_index
  end
  if nasdaq_nomoptions_itto_itch_v4_0.timestamp_format ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.timestamp_format then
    nasdaq_nomoptions_itto_itch_v4_0.timestamp_format = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.timestamp_format
  end
  if nasdaq_nomoptions_itto_itch_v4_0.utc_offset_hours ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.utc_offset_hours then
    nasdaq_nomoptions_itto_itch_v4_0.utc_offset_hours = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.utc_offset_hours
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
-- Nasdaq NomOptions Itto Itch 4.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nomoptions_itto_itch_v4_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_nomoptions_itto_itch_v4_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nomoptions_itto_itch_v4_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nomoptions_itto_itch_v4_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Ask
nasdaq_nomoptions_itto_itch_v4_0.ask = {}

-- Size: Ask
nasdaq_nomoptions_itto_itch_v4_0.ask.size = 4

-- Display: Ask
nasdaq_nomoptions_itto_itch_v4_0.ask.display = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
nasdaq_nomoptions_itto_itch_v4_0.ask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number = {}

-- Size: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size = 8

-- Display: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.display = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_reference_number, range, value, display)

  return offset + length, value
end

-- Ask Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2 = {}

-- Size: Ask Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.size = 2

-- Display: Ask Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.display = function(value)
  return "Ask Size Integer 2: "..value
end

-- Dissect: Ask Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_integer_2, range, value, display)

  return offset + length, value
end

-- Ask Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4 = {}

-- Size: Ask Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.size = 4

-- Display: Ask Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.display = function(value)
  return "Ask Size Integer 4: "..value
end

-- Dissect: Ask Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_integer_4, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_nomoptions_itto_itch_v4_0.auction_id = {}

-- Size: Auction Id
nasdaq_nomoptions_itto_itch_v4_0.auction_id.size = 4

-- Display: Auction Id
nasdaq_nomoptions_itto_itch_v4_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_nomoptions_itto_itch_v4_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_nomoptions_itto_itch_v4_0.auction_type = {}

-- Size: Auction Type
nasdaq_nomoptions_itto_itch_v4_0.auction_type.size = 1

-- Display: Auction Type
nasdaq_nomoptions_itto_itch_v4_0.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement (P)"
  end
  if value == "I" then
    return "Auction Type: Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_nomoptions_itto_itch_v4_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid
nasdaq_nomoptions_itto_itch_v4_0.bid = {}

-- Size: Bid
nasdaq_nomoptions_itto_itch_v4_0.bid.size = 4

-- Display: Bid
nasdaq_nomoptions_itto_itch_v4_0.bid.display = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
nasdaq_nomoptions_itto_itch_v4_0.bid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number = {}

-- Size: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size = 8

-- Display: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.display = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_reference_number, range, value, display)

  return offset + length, value
end

-- Bid Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2 = {}

-- Size: Bid Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.size = 2

-- Display: Bid Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.display = function(value)
  return "Bid Size Integer 2: "..value
end

-- Dissect: Bid Size Integer 2
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_integer_2, range, value, display)

  return offset + length, value
end

-- Bid Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4 = {}

-- Size: Bid Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.size = 4

-- Display: Bid Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.display = function(value)
  return "Bid Size Integer 4: "..value
end

-- Dissect: Bid Size Integer 4
nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_integer_4, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts = {}

-- Size: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.size = 4

-- Display: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.display = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_nomoptions_itto_itch_v4_0.change_reason = {}

-- Size: Change Reason
nasdaq_nomoptions_itto_itch_v4_0.change_reason.size = 1

-- Display: Change Reason
nasdaq_nomoptions_itto_itch_v4_0.change_reason.display = function(value)
  if value == "U" then
    return "Change Reason: User (U)"
  end
  if value == "R" then
    return "Change Reason: Reprice (R)"
  end
  if value == "S" then
    return "Change Reason: Suspend (S)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_nomoptions_itto_itch_v4_0.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_nomoptions_itto_itch_v4_0.cross_number = {}

-- Size: Cross Number
nasdaq_nomoptions_itto_itch_v4_0.cross_number.size = 4

-- Display: Cross Number
nasdaq_nomoptions_itto_itch_v4_0.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nomoptions_itto_itch_v4_0.cross_type = {}

-- Size: Cross Type
nasdaq_nomoptions_itto_itch_v4_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_nomoptions_itto_itch_v4_0.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Nasdaq Opening Reopening (O)"
  end
  if value == "P" then
    return "Cross Type: Price Improvement (P)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nomoptions_itto_itch_v4_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_nomoptions_itto_itch_v4_0.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end
  if value == "B" then
    return "Current Trading State: Buy Side Trading Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended (S)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator = {}

-- Size: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.size = 1

-- Display: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.display = function(value)
  if value == "C" then
    return "Customer Firm Indicator: Customer (C)"
  end
  if value == "F" then
    return "Customer Firm Indicator: Firm Joint (F)"
  end
  if value == "M" then
    return "Customer Firm Indicator: Onfloor (M)"
  end
  if value == "P" then
    return "Customer Firm Indicator: Professional (P)"
  end
  if value == "B" then
    return "Customer Firm Indicator: Broker Dealer Non Registered (B)"
  end

  return "Customer Firm Indicator: Unknown("..value..")"
end

-- Dissect: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code = {}

-- Size: Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code.size = 1

-- Display: Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code.display = function(value)
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
    return "Event Code: End Of Normal Hours Processing (N)"
  end
  if value == "L" then
    return "Event Code: End Of Late Hours Processing (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0.executed_contracts = {}

-- Size: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.size = 4

-- Display: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.display = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_nomoptions_itto_itch_v4_0.expiration_date = {}

-- Size: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0.expiration_date.size = 1

-- Display: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_nomoptions_itto_itch_v4_0.expiration_month = {}

-- Size: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_nomoptions_itto_itch_v4_0.expiration_year = {}

-- Size: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0.imbalance_price = {}

-- Size: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.size = 4

-- Display: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.display = function(value)
  return "Imbalance Price: "..value
end

-- Translate: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Market Side
nasdaq_nomoptions_itto_itch_v4_0.market_side = {}

-- Size: Market Side
nasdaq_nomoptions_itto_itch_v4_0.market_side.size = 1

-- Display: Market Side
nasdaq_nomoptions_itto_itch_v4_0.market_side.display = function(value)
  if value == "B" then
    return "Market Side: Buy (B)"
  end
  if value == "S" then
    return "Market Side: Sell (S)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_nomoptions_itto_itch_v4_0.market_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.market_side, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nomoptions_itto_itch_v4_0.match_number = {}

-- Size: Match Number
nasdaq_nomoptions_itto_itch_v4_0.match_number.size = 4

-- Display: Match Number
nasdaq_nomoptions_itto_itch_v4_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nomoptions_itto_itch_v4_0.message_count = {}

-- Size: Message Count
nasdaq_nomoptions_itto_itch_v4_0.message_count.size = 2

-- Display: Message Count
nasdaq_nomoptions_itto_itch_v4_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nomoptions_itto_itch_v4_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nomoptions_itto_itch_v4_0.message_length = {}

-- Size: Message Length
nasdaq_nomoptions_itto_itch_v4_0.message_length.size = 2

-- Display: Message Length
nasdaq_nomoptions_itto_itch_v4_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nomoptions_itto_itch_v4_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nomoptions_itto_itch_v4_0.message_type = {}

-- Size: Message Type
nasdaq_nomoptions_itto_itch_v4_0.message_type.size = 1

-- Display: Message Type
nasdaq_nomoptions_itto_itch_v4_0.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Options Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Message (O)"
  end
  if value == "a" then
    return "Message Type: Add Order Message Short Message Form (a)"
  end
  if value == "A" then
    return "Message Type: Add Order Message Long Form Message (A)"
  end
  if value == "j" then
    return "Message Type: Add Quote Message Short Form Message (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Message Long Form Message (J)"
  end
  if value == "E" then
    return "Message Type: Single Side Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Single Side Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Single Side Replace Message Short Form (u)"
  end
  if value == "U" then
    return "Message Type: Single Side Replace Message Long Form (U)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Single Side Change Message (G)"
  end
  if value == "k" then
    return "Message Type: Quote Replace Message Short Form (k)"
  end
  if value == "K" then
    return "Message Type: Quote Replace Message Long Form (K)"
  end
  if value == "Y" then
    return "Message Type: Quote Delete Message (Y)"
  end
  if value == "P" then
    return "Message Type: Options Trade Messages Non Auction (P)"
  end
  if value == "Q" then
    return "Message Type: Options Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Order Executed Message (B)"
  end
  if value == "I" then
    return "Message Type: Noii Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nomoptions_itto_itch_v4_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_nomoptions_itto_itch_v4_0.mpv = {}

-- Size: Mpv
nasdaq_nomoptions_itto_itch_v4_0.mpv.size = 1

-- Display: Mpv
nasdaq_nomoptions_itto_itch_v4_0.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_nomoptions_itto_itch_v4_0.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.mpv, range, value, display)

  return offset + length, value
end

-- New Reference Number
nasdaq_nomoptions_itto_itch_v4_0.new_reference_number = {}

-- Size: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.size = 8

-- Display: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.display = function(value)
  return "New Reference Number: "..value
end

-- Dissect: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.new_reference_number, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_nomoptions_itto_itch_v4_0.open_state = {}

-- Size: Open State
nasdaq_nomoptions_itto_itch_v4_0.open_state.size = 1

-- Display: Open State
nasdaq_nomoptions_itto_itch_v4_0.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_nomoptions_itto_itch_v4_0.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_nomoptions_itto_itch_v4_0.option_id = {}

-- Size: Option Id
nasdaq_nomoptions_itto_itch_v4_0.option_id.size = 4

-- Display: Option Id
nasdaq_nomoptions_itto_itch_v4_0.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_nomoptions_itto_itch_v4_0.option_type = {}

-- Size: Option Type
nasdaq_nomoptions_itto_itch_v4_0.option_type.size = 1

-- Display: Option Type
nasdaq_nomoptions_itto_itch_v4_0.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_nomoptions_itto_itch_v4_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0.options_closing_type = {}

-- Size: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.size = 1

-- Display: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.display = function(value)
  if value == "N" then
    return "Options Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Options Closing Type: Late (L)"
  end

  return "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number = {}

-- Size: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.size = 8

-- Display: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.display = function(value)
  return "Original Ask Reference Number: "..value
end

-- Dissect: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.original_ask_reference_number, range, value, display)

  return offset + length, value
end

-- Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number = {}

-- Size: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.size = 8

-- Display: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.display = function(value)
  return "Original Bid Reference Number: "..value
end

-- Dissect: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.original_bid_reference_number, range, value, display)

  return offset + length, value
end

-- Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_reference_number = {}

-- Size: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.size = 8

-- Display: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.display = function(value)
  return "Original Reference Number: "..value
end

-- Dissect: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.original_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nomoptions_itto_itch_v4_0.packet_length = {}

-- Size: Packet Length
nasdaq_nomoptions_itto_itch_v4_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_nomoptions_itto_itch_v4_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nomoptions_itto_itch_v4_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_nomoptions_itto_itch_v4_0.packet_type = {}

-- Size: Packet Type
nasdaq_nomoptions_itto_itch_v4_0.packet_type.size = 1

-- Display: Packet Type
nasdaq_nomoptions_itto_itch_v4_0.packet_type.display = function(value)
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
nasdaq_nomoptions_itto_itch_v4_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0.paired_contracts = {}

-- Size: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.size = 4

-- Display: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.display = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nomoptions_itto_itch_v4_0.password = {}

-- Size: Password
nasdaq_nomoptions_itto_itch_v4_0.password.size = 10

-- Display: Password
nasdaq_nomoptions_itto_itch_v4_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nomoptions_itto_itch_v4_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_nomoptions_itto_itch_v4_0.price_long = {}

-- Size: Price Long
nasdaq_nomoptions_itto_itch_v4_0.price_long.size = 4

-- Display: Price Long
nasdaq_nomoptions_itto_itch_v4_0.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
nasdaq_nomoptions_itto_itch_v4_0.price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Long
nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_nomoptions_itto_itch_v4_0.price_short = {}

-- Size: Price Short
nasdaq_nomoptions_itto_itch_v4_0.price_short.size = 2

-- Display: Price Short
nasdaq_nomoptions_itto_itch_v4_0.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
nasdaq_nomoptions_itto_itch_v4_0.price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Short
nasdaq_nomoptions_itto_itch_v4_0.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0.price_short.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price_short, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nomoptions_itto_itch_v4_0.printable = {}

-- Size: Printable
nasdaq_nomoptions_itto_itch_v4_0.printable.size = 1

-- Display: Printable
nasdaq_nomoptions_itto_itch_v4_0.printable.display = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nomoptions_itto_itch_v4_0.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Reference Number
nasdaq_nomoptions_itto_itch_v4_0.reference_number = {}

-- Size: Reference Number
nasdaq_nomoptions_itto_itch_v4_0.reference_number.size = 8

-- Display: Reference Number
nasdaq_nomoptions_itto_itch_v4_0.reference_number.display = function(value)
  return "Reference Number: "..value
end

-- Dissect: Reference Number
nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reference_number, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nomoptions_itto_itch_v4_0.requested_session = {}

-- Size: Requested Session
nasdaq_nomoptions_itto_itch_v4_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_nomoptions_itto_itch_v4_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nomoptions_itto_itch_v4_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_nomoptions_itto_itch_v4_0.reserved_3 = {}

-- Size: Reserved 3
nasdaq_nomoptions_itto_itch_v4_0.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_nomoptions_itto_itch_v4_0.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_nomoptions_itto_itch_v4_0.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_nomoptions_itto_itch_v4_0.security_symbol = {}

-- Size: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Sequenced Message Type: Options Directory Message (R)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Sequenced Message Type: Security Open Message (O)"
  end
  if value == "a" then
    return "Sequenced Message Type: Add Order Message Short Message Form (a)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Message Long Form Message (A)"
  end
  if value == "j" then
    return "Sequenced Message Type: Add Quote Message Short Form Message (j)"
  end
  if value == "J" then
    return "Sequenced Message Type: Add Quote Message Long Form Message (J)"
  end
  if value == "E" then
    return "Sequenced Message Type: Single Side Executed Message (E)"
  end
  if value == "C" then
    return "Sequenced Message Type: Single Side Executed With Price Message (C)"
  end
  if value == "X" then
    return "Sequenced Message Type: Order Cancel Message (X)"
  end
  if value == "u" then
    return "Sequenced Message Type: Single Side Replace Message Short Form (u)"
  end
  if value == "U" then
    return "Sequenced Message Type: Single Side Replace Message Long Form (U)"
  end
  if value == "D" then
    return "Sequenced Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Sequenced Message Type: Single Side Change Message (G)"
  end
  if value == "k" then
    return "Sequenced Message Type: Quote Replace Message Short Form (k)"
  end
  if value == "K" then
    return "Sequenced Message Type: Quote Replace Message Long Form (K)"
  end
  if value == "Y" then
    return "Sequenced Message Type: Quote Delete Message (Y)"
  end
  if value == "P" then
    return "Sequenced Message Type: Options Trade Messages Non Auction (P)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Options Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Order Executed Message (B)"
  end
  if value == "I" then
    return "Sequenced Message Type: Noii Message (I)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_nomoptions_itto_itch_v4_0.source = {}

-- Size: Source
nasdaq_nomoptions_itto_itch_v4_0.source.size = 1

-- Display: Source
nasdaq_nomoptions_itto_itch_v4_0.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_nomoptions_itto_itch_v4_0.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.source, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_nomoptions_itto_itch_v4_0.text = {}

-- Size: Text
nasdaq_nomoptions_itto_itch_v4_0.text.size = 1

-- Display: Text
nasdaq_nomoptions_itto_itch_v4_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_nomoptions_itto_itch_v4_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp = {}

-- Size: Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nomoptions_itto_itch_v4_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nomoptions_itto_itch_v4_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nomoptions_itto_itch_v4_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nomoptions_itto_itch_v4_0.tracking_number = {}

-- Size: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_nomoptions_itto_itch_v4_0.tradable = {}

-- Size: Tradable
nasdaq_nomoptions_itto_itch_v4_0.tradable.size = 1

-- Display: Tradable
nasdaq_nomoptions_itto_itch_v4_0.tradable.display = function(value)
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end
  if value == "Y" then
    return "Tradable: Is Tradable (Y)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_nomoptions_itto_itch_v4_0.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Udp Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number = {}

-- Size: Udp Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.size = 8

-- Display: Udp Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.display = function(value)
  return "Udp Sequence Number: "..value
end

-- Dissect: Udp Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.udp_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Session
nasdaq_nomoptions_itto_itch_v4_0.udp_session = {}

-- Size: Udp Session
nasdaq_nomoptions_itto_itch_v4_0.udp_session.size = 10

-- Display: Udp Session
nasdaq_nomoptions_itto_itch_v4_0.udp_session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Udp Session: No Value"
  end

  return "Udp Session: "..value
end

-- Dissect: Udp Session
nasdaq_nomoptions_itto_itch_v4_0.udp_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.udp_session.size
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

  local display = nasdaq_nomoptions_itto_itch_v4_0.udp_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.udp_session, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nomoptions_itto_itch_v4_0.username = {}

-- Size: Username
nasdaq_nomoptions_itto_itch_v4_0.username.size = 6

-- Display: Username
nasdaq_nomoptions_itto_itch_v4_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nomoptions_itto_itch_v4_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_nomoptions_itto_itch_v4_0.volume_long = {}

-- Size: Volume Long
nasdaq_nomoptions_itto_itch_v4_0.volume_long.size = 4

-- Display: Volume Long
nasdaq_nomoptions_itto_itch_v4_0.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_nomoptions_itto_itch_v4_0.volume_short = {}

-- Size: Volume Short
nasdaq_nomoptions_itto_itch_v4_0.volume_short.size = 2

-- Display: Volume Short
nasdaq_nomoptions_itto_itch_v4_0.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_nomoptions_itto_itch_v4_0.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NomOptions Itto Itch 4.0
-----------------------------------------------------------------------

-- Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message = {}

-- Size: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.auction_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.auction_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.size + 
  nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.size + 
  nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.size + 
  nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.size + 
  nasdaq_nomoptions_itto_itch_v4_0.reserved_3.size

-- Display: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_nomoptions_itto_itch_v4_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_nomoptions_itto_itch_v4_0.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Contracts: Integer
  index, paired_contracts = nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Imbalance Price: Integer
  index, imbalance_price = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_nomoptions_itto_itch_v4_0.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.noii_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.noii_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.noii_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message = {}

-- Size: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.match_number.size

-- Display: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.broken_trade_order_executed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message = {}

-- Size: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.match_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cross_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

-- Display: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nomoptions_itto_itch_v4_0.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction = {}

-- Size: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.match_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

-- Display: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_trade_messages_non_auction, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.fields(buffer, offset, packet, parent)
  end
end

-- Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message = {}

-- Size: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size

-- Display: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form = {}

-- Size: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.size

-- Display: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Integer 4: Integer
  index, bid_size_integer_4 = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Integer 4: Integer
  index, ask_size_integer_4 = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form = {}

-- Size: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.size

-- Display: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Integer 2: Integer
  index, bid_size_integer_2 = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Integer 2: Integer
  index, ask_size_integer_2 = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.quote_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message = {}

-- Size: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.change_reason.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

-- Display: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_nomoptions_itto_itch_v4_0.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_change_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message = {}

-- Size: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.reference_number.size

-- Display: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form = {}

-- Size: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

-- Display: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number: Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form = {}

-- Size: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_short.size

-- Display: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number: Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_nomoptions_itto_itch_v4_0.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_nomoptions_itto_itch_v4_0.volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.size

-- Display: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts: Integer
  index, cancelled_contracts = nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message = {}

-- Size: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.match_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.printable.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

-- Display: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nomoptions_itto_itch_v4_0.printable.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message = {}

-- Size: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.size + 
  nasdaq_nomoptions_itto_itch_v4_0.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.match_number.size

-- Display: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  -- Executed Contracts: Integer
  index, executed_contracts = nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message = {}

-- Size: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.size

-- Display: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Bid: Integer
  index, bid = nasdaq_nomoptions_itto_itch_v4_0.bid.dissect(buffer, index, packet, parent)

  -- Bid Size Integer 4: Integer
  index, bid_size_integer_4 = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_4.dissect(buffer, index, packet, parent)

  -- Ask: Integer
  index, ask = nasdaq_nomoptions_itto_itch_v4_0.ask.dissect(buffer, index, packet, parent)

  -- Ask Size Integer 4: Integer
  index, ask_size_integer_4 = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message = {}

-- Size: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.size

-- Display: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_nomoptions_itto_itch_v4_0.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Integer 2: Integer
  index, bid_size_integer_2 = nasdaq_nomoptions_itto_itch_v4_0.bid_size_integer_2.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_nomoptions_itto_itch_v4_0.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Integer 2: Integer
  index, ask_size_integer_2 = nasdaq_nomoptions_itto_itch_v4_0.ask_size_integer_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message = {}

-- Size: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.market_side.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

-- Display: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form = {}

-- Size: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.market_side.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0.volume_short.size

-- Display: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_nomoptions_itto_itch_v4_0.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_nomoptions_itto_itch_v4_0.volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.add_order_message_short_message_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message = {}

-- Size: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.open_state.size

-- Display: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Open State: Alphabetic
  index, open_state = nasdaq_nomoptions_itto_itch_v4_0.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.security_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.security_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.security_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.size

-- Display: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphabetic
  index, current_trading_state = nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0.security_symbol.size + 
  nasdaq_nomoptions_itto_itch_v4_0.expiration_year.size + 
  nasdaq_nomoptions_itto_itch_v4_0.expiration_month.size + 
  nasdaq_nomoptions_itto_itch_v4_0.expiration_date.size + 
  nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.size + 
  nasdaq_nomoptions_itto_itch_v4_0.option_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0.source.size + 
  nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.size + 
  nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0.tradable.size + 
  nasdaq_nomoptions_itto_itch_v4_0.mpv.size

-- Display: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_nomoptions_itto_itch_v4_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_nomoptions_itto_itch_v4_0.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_nomoptions_itto_itch_v4_0.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: Integer
  index, expiration_date = nasdaq_nomoptions_itto_itch_v4_0.expiration_date.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_nomoptions_itto_itch_v4_0.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_nomoptions_itto_itch_v4_0.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Options Closing Type: Alphabetic
  index, options_closing_type = nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_nomoptions_itto_itch_v4_0.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_nomoptions_itto_itch_v4_0.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.size =
  nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0.event_code.size

-- Display: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nomoptions_itto_itch_v4_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Payload
nasdaq_nomoptions_itto_itch_v4_0.udp_payload = {}

-- Dissect: Udp Payload
nasdaq_nomoptions_itto_itch_v4_0.udp_payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nomoptions_itto_itch_v4_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "R" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return nasdaq_nomoptions_itto_itch_v4_0.security_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Message Form
  if message_type == "a" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form Message
  if message_type == "A" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form Message
  if message_type == "j" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form Message
  if message_type == "J" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "E" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Change Message
  if message_type == "G" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Short Form
  if message_type == "k" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Long Form
  if message_type == "K" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Messages Non Auction
  if message_type == "P" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Executed Message
  if message_type == "B" then
    return nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return nasdaq_nomoptions_itto_itch_v4_0.noii_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header = {}

-- Size: Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header.size =
  nasdaq_nomoptions_itto_itch_v4_0.message_length.size + 
  nasdaq_nomoptions_itto_itch_v4_0.message_type.size

-- Display: Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nomoptions_itto_itch_v4_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 22 values
  index, message_type = nasdaq_nomoptions_itto_itch_v4_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nomoptions_itto_itch_v4_0.message = {}

-- Read runtime size of: Message
nasdaq_nomoptions_itto_itch_v4_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nomoptions_itto_itch_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nomoptions_itto_itch_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nomoptions_itto_itch_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Udp Payload: Runtime Type with 22 branches
  index = nasdaq_nomoptions_itto_itch_v4_0.udp_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nomoptions_itto_itch_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nomoptions_itto_itch_v4_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nomoptions_itto_itch_v4_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nomoptions_itto_itch_v4_0.end_of_session = {}

-- Display: End Of Session
nasdaq_nomoptions_itto_itch_v4_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nomoptions_itto_itch_v4_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nomoptions_itto_itch_v4_0.heartbeat = {}

-- Display: Heartbeat
nasdaq_nomoptions_itto_itch_v4_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nomoptions_itto_itch_v4_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nomoptions_itto_itch_v4_0.messages = {}

-- Dissect: Messages
nasdaq_nomoptions_itto_itch_v4_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nomoptions_itto_itch_v4_0.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nomoptions_itto_itch_v4_0.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nomoptions_itto_itch_v4_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Udp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header = {}

-- Size: Udp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.size =
  nasdaq_nomoptions_itto_itch_v4_0.udp_session.size + 
  nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0.message_count.size

-- Display: Udp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Udp Session: 10 Byte Ascii String
  index, udp_session = nasdaq_nomoptions_itto_itch_v4_0.udp_session.dissect(buffer, index, packet, parent)

  -- Udp Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, udp_sequence_number = nasdaq_nomoptions_itto_itch_v4_0.udp_sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nomoptions_itto_itch_v4_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.udp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.udp_packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mold Udp 64 Packet
nasdaq_nomoptions_itto_itch_v4_0.mold_udp_64_packet = {}

-- Verify required size of Udp packet
nasdaq_nomoptions_itto_itch_v4_0.mold_udp_64_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.size
end

-- Dissect Mold Udp 64 Packet
nasdaq_nomoptions_itto_itch_v4_0.mold_udp_64_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Packet Header: Struct of 3 fields
  index, udp_packet_header = nasdaq_nomoptions_itto_itch_v4_0.udp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nomoptions_itto_itch_v4_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0.username.size + 
  nasdaq_nomoptions_itto_itch_v4_0.password.size + 
  nasdaq_nomoptions_itto_itch_v4_0.requested_session.size + 
  nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nomoptions_itto_itch_v4_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nomoptions_itto_itch_v4_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nomoptions_itto_itch_v4_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nomoptions_itto_itch_v4_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nomoptions_itto_itch_v4_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nomoptions_itto_itch_v4_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nomoptions_itto_itch_v4_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if sequenced_message_type == "R" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if sequenced_message_type == "O" then
    return nasdaq_nomoptions_itto_itch_v4_0.security_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Message Form
  if sequenced_message_type == "a" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form Message
  if sequenced_message_type == "A" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form Message
  if sequenced_message_type == "j" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form Message
  if sequenced_message_type == "J" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if sequenced_message_type == "C" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if sequenced_message_type == "X" then
    return nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if sequenced_message_type == "u" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if sequenced_message_type == "U" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if sequenced_message_type == "D" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Change Message
  if sequenced_message_type == "G" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Short Form
  if sequenced_message_type == "k" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Message Long Form
  if sequenced_message_type == "K" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if sequenced_message_type == "Y" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Messages Non Auction
  if sequenced_message_type == "P" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if sequenced_message_type == "Q" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Executed Message
  if sequenced_message_type == "B" then
    return nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if sequenced_message_type == "I" then
    return nasdaq_nomoptions_itto_itch_v4_0.noii_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 22 values
  index, sequenced_message_type = nasdaq_nomoptions_itto_itch_v4_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 22 branches
  index = nasdaq_nomoptions_itto_itch_v4_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nomoptions_itto_itch_v4_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0.accepted_session.size + 
  nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nomoptions_itto_itch_v4_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nomoptions_itto_itch_v4_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nomoptions_itto_itch_v4_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0.debug_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0.text.size

-- Display: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_nomoptions_itto_itch_v4_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Payload
nasdaq_nomoptions_itto_itch_v4_0.tcp_payload = {}

-- Dissect: Tcp Payload
nasdaq_nomoptions_itto_itch_v4_0.tcp_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_nomoptions_itto_itch_v4_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_nomoptions_itto_itch_v4_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_nomoptions_itto_itch_v4_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_nomoptions_itto_itch_v4_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_nomoptions_itto_itch_v4_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_nomoptions_itto_itch_v4_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tcp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header = {}

-- Size: Tcp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.size =
  nasdaq_nomoptions_itto_itch_v4_0.packet_length.size + 
  nasdaq_nomoptions_itto_itch_v4_0.packet_type.size

-- Display: Tcp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nomoptions_itto_itch_v4_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_nomoptions_itto_itch_v4_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Packet Header
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.tcp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Tcp Packet Header: Struct of 2 fields
  index, tcp_packet_header = nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Tcp Payload: Runtime Type with 6 branches
  index = nasdaq_nomoptions_itto_itch_v4_0.tcp_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.size then
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
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet = {}

-- Verify required size of Tcp packet
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nomoptions_itto_itch_v4_0.tcp_packet_header.size
end

-- Dissect Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nomoptions_itto_itch_v4_0.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_nasdaq_nomoptions_itto_itch_v4_0.init()
end

-- Dissector for Nasdaq NomOptions Itto Itch 4.0
function omi_nasdaq_nomoptions_itto_itch_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nomoptions_itto_itch_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0, buffer(), omi_nasdaq_nomoptions_itto_itch_v4_0.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return nasdaq_nomoptions_itto_itch_v4_0.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return nasdaq_nomoptions_itto_itch_v4_0.mold_udp_64_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0 (Tcp)
local function omi_nasdaq_nomoptions_itto_itch_v4_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_itto_itch_v4_0.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_itto_itch_v4_0
  omi_nasdaq_nomoptions_itto_itch_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0 (Udp)
local function omi_nasdaq_nomoptions_itto_itch_v4_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_itto_itch_v4_0.mold_udp_64_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_itto_itch_v4_0
  omi_nasdaq_nomoptions_itto_itch_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Nasdaq NomOptions Itto Itch 4.0
omi_nasdaq_nomoptions_itto_itch_v4_0:register_heuristic("tcp", omi_nasdaq_nomoptions_itto_itch_v4_0_tcp_heuristic)
omi_nasdaq_nomoptions_itto_itch_v4_0:register_heuristic("udp", omi_nasdaq_nomoptions_itto_itch_v4_0_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 4.0
--   Date: Monday, January 9, 2023
--   Specification: itto_spec40.pdf
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
