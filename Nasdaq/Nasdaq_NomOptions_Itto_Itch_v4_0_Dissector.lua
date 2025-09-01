-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Protocol
local omi_nasdaq_nomoptions_itto_itch_v4_0 = Proto("Nasdaq.NomOptions.Itto.Itch.v4.0.Lua", "Nasdaq NomOptions Itto Itch 4.0")

-- Protocol table
local nasdaq_nomoptions_itto_itch_v4_0 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Fields
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask = ProtoField.new("Ask", "nasdaq.nomoptions.itto.itch.v4.0.ask", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.nomoptions.itto.itch.v4.0.askprice", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.nomoptions.itto.itch.v4.0.askpricelong", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.askreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.nomoptions.itto.itch.v4.0.asksize", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.nomoptions.itto.itch.v4.0.asksizelong", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.nomoptions.itto.itch.v4.0.auctionid", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.nomoptions.itto.itch.v4.0.auctiontype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid = ProtoField.new("Bid", "nasdaq.nomoptions.itto.itch.v4.0.bid", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.nomoptions.itto.itch.v4.0.bidprice", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.nomoptions.itto.itch.v4.0.bidpricelong", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.bidreferencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.nomoptions.itto.itch.v4.0.bidsize", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.nomoptions.itto.itch.v4.0.bidsizelong", ftypes.UINT32)
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
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet = ProtoField.new("Packet", "nasdaq.nomoptions.itto.itch.v4.0.packet", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.packetheader", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.nomoptions.itto.itch.v4.0.pairedcontracts", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.payload = ProtoField.new("Payload", "nasdaq.nomoptions.itto.itch.v4.0.payload", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price = ProtoField.new("Price", "nasdaq.nomoptions.itto.itch.v4.0.price", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price_long = ProtoField.new("Price Long", "nasdaq.nomoptions.itto.itch.v4.0.pricelong", ftypes.DOUBLE)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.printable = ProtoField.new("Printable", "nasdaq.nomoptions.itto.itch.v4.0.printable", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reference_number = ProtoField.new("Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.referencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reserved = ProtoField.new("Reserved", "nasdaq.nomoptions.itto.itch.v4.0.reserved", ftypes.UINT32)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.nomoptions.itto.itch.v4.0.securitysymbol", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.session = ProtoField.new("Session", "nasdaq.nomoptions.itto.itch.v4.0.session", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.source = ProtoField.new("Source", "nasdaq.nomoptions.itto.itch.v4.0.source", ftypes.UINT8)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nomoptions.itto.itch.v4.0.timestamp", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nomoptions.itto.itch.v4.0.trackingnumber", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.nomoptions.itto.itch.v4.0.tradable", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.nomoptions.itto.itch.v4.0.underlyingsymbol", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume = ProtoField.new("Volume", "nasdaq.nomoptions.itto.itch.v4.0.volume", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.nomoptions.itto.itch.v4.0.volumelong", ftypes.UINT32)

-- Nasdaq NomOptions Itto Itch 4.0 messages
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

-- Nasdaq NomOptions Itto Itch 4.0 generated fields
omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.nomoptions.itto.itch.v4.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0 Element Dissection Options
show.add_order_message_long_form_message = true
show.add_order_message_short_message_form = true
show.add_quote_message_long_form_message = true
show.add_quote_message_short_form_message = true
show.broken_trade_order_executed_message = true
show.message = true
show.message_header = true
show.noii_message = true
show.options_cross_trade_message = true
show.options_directory_message = true
show.options_trade_messages_non_auction = true
show.order_cancel_message = true
show.packet = true
show.packet_header = true
show.quote_delete_message = true
show.quote_replace_message_long_form = true
show.quote_replace_message_short_form = true
show.security_open_message = true
show.single_side_change_message = true
show.single_side_delete_message = true
show.single_side_executed_message = true
show.single_side_executed_with_price_message = true
show.single_side_replace_message_long_form = true
show.single_side_replace_message_short_form = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq NomOptions Itto Itch 4.0 Show Options
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_long_form_message = Pref.bool("Show Add Order Message Long Form Message", show.add_order_message_long_form_message, "Parse and add Add Order Message Long Form Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_short_message_form = Pref.bool("Show Add Order Message Short Message Form", show.add_order_message_short_message_form, "Parse and add Add Order Message Short Message Form to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message = Pref.bool("Show Add Quote Message Long Form Message", show.add_quote_message_long_form_message, "Parse and add Add Quote Message Long Form Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message = Pref.bool("Show Add Quote Message Short Form Message", show.add_quote_message_short_form_message, "Parse and add Add Quote Message Short Form Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message = Pref.bool("Show Broken Trade Order Executed Message", show.broken_trade_order_executed_message, "Parse and add Broken Trade Order Executed Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_noii_message = Pref.bool("Show Noii Message", show.noii_message, "Parse and add Noii Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_directory_message = Pref.bool("Show Options Directory Message", show.options_directory_message, "Parse and add Options Directory Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction = Pref.bool("Show Options Trade Messages Non Auction", show.options_trade_messages_non_auction, "Parse and add Options Trade Messages Non Auction to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_long_form = Pref.bool("Show Quote Replace Message Long Form", show.quote_replace_message_long_form, "Parse and add Quote Replace Message Long Form to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_short_form = Pref.bool("Show Quote Replace Message Short Form", show.quote_replace_message_short_form, "Parse and add Quote Replace Message Short Form to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_change_message = Pref.bool("Show Single Side Change Message", show.single_side_change_message, "Parse and add Single Side Change Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message = Pref.bool("Show Single Side Executed With Price Message", show.single_side_executed_with_price_message, "Parse and add Single Side Executed With Price Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nomoptions_itto_itch_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_long_form_message then
    show.add_order_message_long_form_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_long_form_message
    changed = true
  end
  if show.add_order_message_short_message_form ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_short_message_form then
    show.add_order_message_short_message_form = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_order_message_short_message_form
    changed = true
  end
  if show.add_quote_message_long_form_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message then
    show.add_quote_message_long_form_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_long_form_message
    changed = true
  end
  if show.add_quote_message_short_form_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message then
    show.add_quote_message_short_form_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_add_quote_message_short_form_message
    changed = true
  end
  if show.broken_trade_order_executed_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message then
    show.broken_trade_order_executed_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_broken_trade_order_executed_message
    changed = true
  end
  if show.message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message then
    show.message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_message_header
    changed = true
  end
  if show.noii_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_noii_message then
    show.noii_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_noii_message
    changed = true
  end
  if show.options_cross_trade_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.options_directory_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_directory_message then
    show.options_directory_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_directory_message
    changed = true
  end
  if show.options_trade_messages_non_auction ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction then
    show.options_trade_messages_non_auction = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_options_trade_messages_non_auction
    changed = true
  end
  if show.order_cancel_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_order_cancel_message then
    show.order_cancel_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_order_cancel_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet then
    show.packet = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_delete_message then
    show.quote_delete_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_message_long_form ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_long_form then
    show.quote_replace_message_long_form = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_long_form
    changed = true
  end
  if show.quote_replace_message_short_form ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_short_form then
    show.quote_replace_message_short_form = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_quote_replace_message_short_form
    changed = true
  end
  if show.security_open_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_security_open_message then
    show.security_open_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_security_open_message
    changed = true
  end
  if show.single_side_change_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_change_message then
    show.single_side_change_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_change_message
    changed = true
  end
  if show.single_side_delete_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_delete_message then
    show.single_side_delete_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_message then
    show.single_side_executed_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_executed_with_price_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message then
    show.single_side_executed_with_price_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_trading_action_message then
    show.trading_action_message = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_payload then
    show.payload = omi_nasdaq_nomoptions_itto_itch_v4_0.prefs.show_payload
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
-- Dissect Nasdaq NomOptions Itto Itch 4.0
-----------------------------------------------------------------------

-- Reserved
nasdaq_nomoptions_itto_itch_v4_0.reserved = {}

-- Size: Reserved
nasdaq_nomoptions_itto_itch_v4_0.reserved.size = 3

-- Display: Reserved
nasdaq_nomoptions_itto_itch_v4_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nomoptions_itto_itch_v4_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.reserved, range, value, display)

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
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.imbalance_price, range, value, display)

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

-- Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp = {}

-- Size: Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_nomoptions_itto_itch_v4_0.timestamp.display = function(value)
  return "Timestamp: "..value
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

-- Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message = {}

-- Calculate size of: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.auction_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.auction_type.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.reserved.size

  return index
end

-- Display: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_nomoptions_itto_itch_v4_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = nasdaq_nomoptions_itto_itch_v4_0.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index, paired_contracts = nasdaq_nomoptions_itto_itch_v4_0.paired_contracts.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index, imbalance_direction = nasdaq_nomoptions_itto_itch_v4_0.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Signed Fixed Width Integer
  index, imbalance_price = nasdaq_nomoptions_itto_itch_v4_0.imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nasdaq_nomoptions_itto_itch_v4_0.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: 1 Byte Ascii String Enum with 5 values
  index, customer_firm_indicator = nasdaq_nomoptions_itto_itch_v4_0.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index, reserved = nasdaq_nomoptions_itto_itch_v4_0.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nomoptions_itto_itch_v4_0.noii_message.dissect = function(buffer, offset, packet, parent)
  if show.noii_message then
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

-- Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message = {}

-- Calculate size of: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cross_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.match_number.size

  return index
end

-- Display: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_order_executed_message then
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
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price_long, range, value, display)

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

-- Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message = {}

-- Calculate size of: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cross_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.match_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cross_type.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

  return index
end

-- Display: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 2 values
  index, cross_type = nasdaq_nomoptions_itto_itch_v4_0.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.options_cross_trade_message then
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

-- Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction = {}

-- Calculate size of: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cross_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.match_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

  return index
end

-- Display: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nomoptions_itto_itch_v4_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.dissect = function(buffer, offset, packet, parent)
  if show.options_trade_messages_non_auction then
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

-- Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message = {}

-- Calculate size of: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size

  return index
end

-- Display: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_delete_message then
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

-- Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size_long, range, value, display)

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
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size_long, range, value, display)

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
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price_long, range, value, display)

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

-- Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form = {}

-- Calculate size of: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.size

  return index
end

-- Display: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: 4 Byte Signed Fixed Width Integer
  index, bid_price_long = nasdaq_nomoptions_itto_itch_v4_0.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: 4 Byte Signed Fixed Width Integer
  index, ask_price_long = nasdaq_nomoptions_itto_itch_v4_0.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_long = nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.quote_replace_message_long_form then
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

-- Ask Size
nasdaq_nomoptions_itto_itch_v4_0.ask_size = {}

-- Size: Ask Size
nasdaq_nomoptions_itto_itch_v4_0.ask_size.size = 2

-- Display: Ask Size
nasdaq_nomoptions_itto_itch_v4_0.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_nomoptions_itto_itch_v4_0.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_nomoptions_itto_itch_v4_0.ask_price = {}

-- Size: Ask Price
nasdaq_nomoptions_itto_itch_v4_0.ask_price.size = 2

-- Display: Ask Price
nasdaq_nomoptions_itto_itch_v4_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_nomoptions_itto_itch_v4_0.ask_price.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nasdaq_nomoptions_itto_itch_v4_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.ask_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_nomoptions_itto_itch_v4_0.bid_size = {}

-- Size: Bid Size
nasdaq_nomoptions_itto_itch_v4_0.bid_size.size = 2

-- Display: Bid Size
nasdaq_nomoptions_itto_itch_v4_0.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_nomoptions_itto_itch_v4_0.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_nomoptions_itto_itch_v4_0.bid_price = {}

-- Size: Bid Price
nasdaq_nomoptions_itto_itch_v4_0.bid_price.size = 2

-- Display: Bid Price
nasdaq_nomoptions_itto_itch_v4_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_nomoptions_itto_itch_v4_0.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nasdaq_nomoptions_itto_itch_v4_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.bid_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form = {}

-- Calculate size of: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_size.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_size.size

  return index
end

-- Display: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_nomoptions_itto_itch_v4_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_nomoptions_itto_itch_v4_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_nomoptions_itto_itch_v4_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_nomoptions_itto_itch_v4_0.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.quote_replace_message_short_form then
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

-- Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message = {}

-- Calculate size of: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.change_reason.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

  return index
end

-- Display: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 3 values
  index, change_reason = nasdaq_nomoptions_itto_itch_v4_0.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_change_message then
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

-- Calculate size of: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.reference_number.size

  return index
end

-- Display: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_delete_message then
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

-- Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form = {}

-- Calculate size of: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

  return index
end

-- Display: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_long_form then
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

-- Volume
nasdaq_nomoptions_itto_itch_v4_0.volume = {}

-- Size: Volume
nasdaq_nomoptions_itto_itch_v4_0.volume.size = 2

-- Display: Volume
nasdaq_nomoptions_itto_itch_v4_0.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_nomoptions_itto_itch_v4_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nomoptions_itto_itch_v4_0.price = {}

-- Size: Price
nasdaq_nomoptions_itto_itch_v4_0.price.size = 2

-- Display: Price
nasdaq_nomoptions_itto_itch_v4_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nomoptions_itto_itch_v4_0.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nasdaq_nomoptions_itto_itch_v4_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.price, range, value, display)

  return offset + length, value
end

-- Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form = {}

-- Calculate size of: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume.size

  return index
end

-- Display: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price: 2 Byte Signed Fixed Width Integer
  index, price = nasdaq_nomoptions_itto_itch_v4_0.price.dissect(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_nomoptions_itto_itch_v4_0.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_short_form then
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

-- Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message = {}

-- Calculate size of: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.size

  return index
end

-- Display: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_contracts = nasdaq_nomoptions_itto_itch_v4_0.cancelled_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
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

-- Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message = {}

-- Calculate size of: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cross_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.match_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.printable.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

  return index
end

-- Display: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_nomoptions_itto_itch_v4_0.printable.dissect(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_executed_with_price_message then
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

-- Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message = {}

-- Calculate size of: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.cross_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.match_number.size

  return index
end

-- Display: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0.reference_number.dissect(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index, executed_contracts = nasdaq_nomoptions_itto_itch_v4_0.executed_contracts.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_executed_message then
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

-- Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message = {}

-- Calculate size of: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.size

  return index
end

-- Display: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = nasdaq_nomoptions_itto_itch_v4_0.bid.dissect(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = nasdaq_nomoptions_itto_itch_v4_0.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = nasdaq_nomoptions_itto_itch_v4_0.ask.dissect(buffer, index, packet, parent)

  -- Ask Size Long: 4 Byte Unsigned Fixed Width Integer
  index, ask_size_long = nasdaq_nomoptions_itto_itch_v4_0.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.add_quote_message_long_form_message then
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

-- Calculate size of: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.bid_size.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.ask_size.size

  return index
end

-- Display: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_nomoptions_itto_itch_v4_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_nomoptions_itto_itch_v4_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_nomoptions_itto_itch_v4_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_nomoptions_itto_itch_v4_0.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.add_quote_message_short_form_message then
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

-- Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message = {}

-- Calculate size of: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.market_side.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price_long.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume_long.size

  return index
end

-- Display: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Price Long: 4 Byte Signed Fixed Width Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: 4 Byte Unsigned Fixed Width Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message_long_form_message then
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

-- Calculate size of: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.market_side.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.volume.size

  return index
end

-- Display: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Price: 2 Byte Signed Fixed Width Integer
  index, price = nasdaq_nomoptions_itto_itch_v4_0.price.dissect(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_nomoptions_itto_itch_v4_0.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message_short_message_form then
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

-- Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message = {}

-- Calculate size of: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.open_state.size

  return index
end

-- Display: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_nomoptions_itto_itch_v4_0.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.security_open_message then
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

-- Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message = {}

-- Calculate size of: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.size

  return index
end

-- Display: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = nasdaq_nomoptions_itto_itch_v4_0.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_action_message then
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
  local raw = range:int()
  local value = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.explicit_strike_price, range, value, display)

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

-- Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message = {}

-- Calculate size of: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_id.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.security_symbol.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.expiration_year.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.expiration_month.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.expiration_date.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.option_type.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.source.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tradable.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.mpv.size

  return index
end

-- Display: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_nomoptions_itto_itch_v4_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_nomoptions_itto_itch_v4_0.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_nomoptions_itto_itch_v4_0.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index, expiration_date = nasdaq_nomoptions_itto_itch_v4_0.expiration_date.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_nomoptions_itto_itch_v4_0.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_nomoptions_itto_itch_v4_0.option_type.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_nomoptions_itto_itch_v4_0.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_nomoptions_itto_itch_v4_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 2 values
  index, options_closing_type = nasdaq_nomoptions_itto_itch_v4_0.options_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_nomoptions_itto_itch_v4_0.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_nomoptions_itto_itch_v4_0.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.options_directory_message then
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

-- Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code = {}

-- Size: Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code.size = 1

-- Display: Event Code
nasdaq_nomoptions_itto_itch_v4_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages This Is Always The First Message Sent In Any Trading Day (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours This Message Indicates That Nasdaq Is Open And Ready To Start Accepting Orders (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process This Message Is Intended To Indicate That Nasdaq Has Started Its Opening Auction Process (Q)"
  end
  if value == "N" then
    return "Event Code: End Of Normal Hours Processing This Message Is Intended To Indicate That Nasdaq Will No Longer Accept Any New Orders Or Changes To Existing Orders For Options That Trade During Normal Trading Hours (N)"
  end
  if value == "L" then
    return "Event Code: End Of Late Hours Processing This Message Is Intended To Indicate That Nasdaq Will No Longer Accept Any New Orders Or Changes To Existing Orders For Options That Trade During Extended Hours (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours This Message Indicates That Nasdaq Options System Is Now Closed (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages This Is Always The Last Message Sent In Any Trading Day (C)"
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

-- System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message = {}

-- Calculate size of: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.tracking_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.timestamp.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.event_code.size

  return index
end

-- Display: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
  index, event_code = nasdaq_nomoptions_itto_itch_v4_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nomoptions_itto_itch_v4_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
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

-- Payload
nasdaq_nomoptions_itto_itch_v4_0.payload = {}

-- Calculate runtime size of: Payload
nasdaq_nomoptions_itto_itch_v4_0.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nomoptions_itto_itch_v4_0.system_event_message.size(buffer, offset)
  end
  -- Size of Options Directory Message
  if message_type == "R" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_directory_message.size(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_nomoptions_itto_itch_v4_0.trading_action_message.size(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return nasdaq_nomoptions_itto_itch_v4_0.security_open_message.size(buffer, offset)
  end
  -- Size of Add Order Message Short Message Form
  if message_type == "a" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_short_message_form.size(buffer, offset)
  end
  -- Size of Add Order Message Long Form Message
  if message_type == "A" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_order_message_long_form_message.size(buffer, offset)
  end
  -- Size of Add Quote Message Short Form Message
  if message_type == "j" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_short_form_message.size(buffer, offset)
  end
  -- Size of Add Quote Message Long Form Message
  if message_type == "J" then
    return nasdaq_nomoptions_itto_itch_v4_0.add_quote_message_long_form_message.size(buffer, offset)
  end
  -- Size of Single Side Executed Message
  if message_type == "E" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_message.size(buffer, offset)
  end
  -- Size of Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_executed_with_price_message.size(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_nomoptions_itto_itch_v4_0.order_cancel_message.size(buffer, offset)
  end
  -- Size of Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_short_form.size(buffer, offset)
  end
  -- Size of Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_replace_message_long_form.size(buffer, offset)
  end
  -- Size of Single Side Delete Message
  if message_type == "D" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_delete_message.size(buffer, offset)
  end
  -- Size of Single Side Change Message
  if message_type == "G" then
    return nasdaq_nomoptions_itto_itch_v4_0.single_side_change_message.size(buffer, offset)
  end
  -- Size of Quote Replace Message Short Form
  if message_type == "k" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_short_form.size(buffer, offset)
  end
  -- Size of Quote Replace Message Long Form
  if message_type == "K" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_replace_message_long_form.size(buffer, offset)
  end
  -- Size of Quote Delete Message
  if message_type == "Y" then
    return nasdaq_nomoptions_itto_itch_v4_0.quote_delete_message.size(buffer, offset)
  end
  -- Size of Options Trade Messages Non Auction
  if message_type == "P" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_trade_messages_non_auction.size(buffer, offset)
  end
  -- Size of Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nomoptions_itto_itch_v4_0.options_cross_trade_message.size(buffer, offset)
  end
  -- Size of Broken Trade Order Executed Message
  if message_type == "B" then
    return nasdaq_nomoptions_itto_itch_v4_0.broken_trade_order_executed_message.size(buffer, offset)
  end
  -- Size of Noii Message
  if message_type == "I" then
    return nasdaq_nomoptions_itto_itch_v4_0.noii_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nomoptions_itto_itch_v4_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nomoptions_itto_itch_v4_0.payload.branches = function(buffer, offset, packet, parent, message_type)
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

-- Dissect: Payload
nasdaq_nomoptions_itto_itch_v4_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nomoptions_itto_itch_v4_0.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nomoptions_itto_itch_v4_0.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nomoptions_itto_itch_v4_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.payload, range, display)

  return nasdaq_nomoptions_itto_itch_v4_0.payload.branches(buffer, offset, packet, parent, message_type)
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

-- Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header = {}

-- Calculate size of: Message Header
nasdaq_nomoptions_itto_itch_v4_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.message_length.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.message_type.size

  return index
end

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

-- Display: Message
nasdaq_nomoptions_itto_itch_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nomoptions_itto_itch_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nomoptions_itto_itch_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 22 branches
  index = nasdaq_nomoptions_itto_itch_v4_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nomoptions_itto_itch_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
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

-- Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nomoptions_itto_itch_v4_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nomoptions_itto_itch_v4_0.session = {}

-- Size: Session
nasdaq_nomoptions_itto_itch_v4_0.session.size = 10

-- Display: Session
nasdaq_nomoptions_itto_itch_v4_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nomoptions_itto_itch_v4_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0.session.size
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

  local display = nasdaq_nomoptions_itto_itch_v4_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_nomoptions_itto_itch_v4_0.packet_header = {}

-- Calculate size of: Packet Header
nasdaq_nomoptions_itto_itch_v4_0.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nomoptions_itto_itch_v4_0.session.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.sequence_number.size

  index = index + nasdaq_nomoptions_itto_itch_v4_0.message_count.size

  return index
end

-- Display: Packet Header
nasdaq_nomoptions_itto_itch_v4_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nomoptions_itto_itch_v4_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nomoptions_itto_itch_v4_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nomoptions_itto_itch_v4_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nomoptions_itto_itch_v4_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nomoptions_itto_itch_v4_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nomoptions_itto_itch_v4_0.packet = {}

-- Dissect Packet
nasdaq_nomoptions_itto_itch_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nomoptions_itto_itch_v4_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_nomoptions_itto_itch_v4_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
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
  return nasdaq_nomoptions_itto_itch_v4_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_nomoptions_itto_itch_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_nomoptions_itto_itch_v4_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0
local function omi_nasdaq_nomoptions_itto_itch_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_itto_itch_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_itto_itch_v4_0
  omi_nasdaq_nomoptions_itto_itch_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NomOptions Itto Itch 4.0
omi_nasdaq_nomoptions_itto_itch_v4_0:register_heuristic("udp", omi_nasdaq_nomoptions_itto_itch_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 4.0
--   Date: Thursday, February 8, 2018
--   Specification: itto_spec40.pdf
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
