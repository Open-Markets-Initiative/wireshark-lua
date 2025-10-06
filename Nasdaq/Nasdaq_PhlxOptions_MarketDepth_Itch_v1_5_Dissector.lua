-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 Protocol
local omi_nasdaq_phlxoptions_marketdepth_itch_v1_5 = Proto("Nasdaq.PhlxOptions.MarketDepth.Itch.v1.5.Lua", "Nasdaq PhlxOptions MarketDepth Itch 1.5")

-- Protocol table
local nasdaq_phlxoptions_marketdepth_itch_v1_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 Fields
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask = ProtoField.new("Ask", "nasdaq.phlxoptions.marketdepth.itch.v1.5.ask", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.askprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_reference_number_delta = ProtoField.new("Ask Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.askreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.asksize", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.marketdepth.itch.v1.5.auctionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.auctiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_number = ProtoField.new("Base Reference Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.basereferencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid = ProtoField.new("Bid", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bid", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bidprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_reference_number_delta = ProtoField.new("Bid Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bidreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.bidsize", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.phlxoptions.marketdepth.itch.v1.5.cancelledcontracts", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta = ProtoField.new("Cancelled Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.cancelledreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.phlxoptions.marketdepth.itch.v1.5.changereason", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.crossnumber", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.crosstype", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.marketdepth.itch.v1.5.currenttradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.customer_indicator = ProtoField.new("Customer Indicator", "nasdaq.phlxoptions.marketdepth.itch.v1.5.customerindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.marketdepth.itch.v1.5.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.phlxoptions.marketdepth.itch.v1.5.executedcontracts", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.phlxoptions.marketdepth.itch.v1.5.expirationdate", ftypes.UINT8)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlxoptions.marketdepth.itch.v1.5.expirationmonth", ftypes.UINT8)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlxoptions.marketdepth.itch.v1.5.expirationyear", ftypes.UINT8)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.phlxoptions.marketdepth.itch.v1.5.imbalancedirection", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.imbalanceprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlxoptions.marketdepth.itch.v1.5.imbalancevolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.market_side = ProtoField.new("Market Side", "nasdaq.phlxoptions.marketdepth.itch.v1.5.marketside", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.match_number = ProtoField.new("Match Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.matchnumber", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.message", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_count = ProtoField.new("Message Count", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messagecount", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messageheader", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_length = ProtoField.new("Message Length", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messagelength", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlxoptions.marketdepth.itch.v1.5.mpv", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.new_reference_number_delta = ProtoField.new("New Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.newreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas = ProtoField.new("Number Of Reference Number Deltas", "nasdaq.phlxoptions.marketdepth.itch.v1.5.numberofreferencenumberdeltas", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.marketdepth.itch.v1.5.openstate", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optionsclosingtype", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlxoptions.marketdepth.itch.v1.5.orderid", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_reference_number_delta = ProtoField.new("Order Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.orderreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta = ProtoField.new("Original Ask Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.originalaskreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta = ProtoField.new("Original Bid Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.originalbidreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_reference_number_delta = ProtoField.new("Original Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.originalreferencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.marketdepth.itch.v1.5.packet", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.marketdepth.itch.v1.5.packetheader", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.phlxoptions.marketdepth.itch.v1.5.pairedcontracts", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.payload = ProtoField.new("Payload", "nasdaq.phlxoptions.marketdepth.itch.v1.5.payload", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.price", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.printable = ProtoField.new("Printable", "nasdaq.phlxoptions.marketdepth.itch.v1.5.printable", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reference_number_delta = ProtoField.new("Reference Number Delta", "nasdaq.phlxoptions.marketdepth.itch.v1.5.referencenumberdelta", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reserved = ProtoField.new("Reserved", "nasdaq.phlxoptions.marketdepth.itch.v1.5.reserved", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.second = ProtoField.new("Second", "nasdaq.phlxoptions.marketdepth.itch.v1.5.second", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.marketdepth.itch.v1.5.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.phlxoptions.marketdepth.itch.v1.5.sequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.marketdepth.itch.v1.5.session", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_ask_size = ProtoField.new("Short Ask Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortasksize", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_bid_size = ProtoField.new("Short Bid Size", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortbidsize", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_price = ProtoField.new("Short Price", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_volume = ProtoField.new("Short Volume", "nasdaq.phlxoptions.marketdepth.itch.v1.5.shortvolume", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.marketdepth.itch.v1.5.source", ftypes.UINT8)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.marketdepth.itch.v1.5.timestamp", ftypes.UINT32)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlxoptions.marketdepth.itch.v1.5.tradable", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trade_indicator = ProtoField.new("Trade Indicator", "nasdaq.phlxoptions.marketdepth.itch.v1.5.tradeindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.marketdepth.itch.v1.5.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.marketdepth.itch.v1.5.volume", ftypes.UINT32)

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 messages
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_long_form = ProtoField.new("Add Order Message Long Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addordermessagelongform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_short_form = ProtoField.new("Add Order Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addordermessageshortform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_long_form = ProtoField.new("Add Quote Message Long Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addquotemessagelongform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_short_form = ProtoField.new("Add Quote Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.addquotemessageshortform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.auctionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_message = ProtoField.new("Base Reference Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.basereferencemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.block_delete_message = ProtoField.new("Block Delete Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.blockdeletemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message = ProtoField.new("Broken Trade Order Execution Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.brokentradeorderexecutionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.non_auction_options_trade_message = ProtoField.new("Non Auction Options Trade Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.nonauctionoptionstrademessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_directory_message = ProtoField.new("Option Directory Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optiondirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.optionscrosstrademessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_replace_message_short_form = ProtoField.new("Order Replace Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.orderreplacemessageshortform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.quotedeletemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_long_form_message = ProtoField.new("Quote Replace Long Form Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.quotereplacelongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_short_form_message = ProtoField.new("Quote Replace Short Form Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.quotereplaceshortformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.secondsmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.securityopenmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_cancel_message = ProtoField.new("Single Side Cancel Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidecancelmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidedeletemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesideexecutedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesideexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidereplacelongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidereplacemessagelongform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesidereplacemessageshortform", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.singlesideupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.systemeventmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlxoptions.marketdepth.itch.v1.5.tradingactionmessage", ftypes.STRING)

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 generated fields
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta_index = ProtoField.new("Cancelled Reference Number Delta Index", "nasdaq.phlxoptions.marketdepth.itch.v1.5.cancelledreferencenumberdeltaindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.marketdepth.itch.v1.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions MarketDepth Itch 1.5 Element Dissection Options
show.add_order_message_long_form = true
show.add_order_message_short_form = true
show.add_quote_message_long_form = true
show.add_quote_message_short_form = true
show.auction_notification_message = true
show.base_reference_message = true
show.block_delete_message = true
show.broken_trade_order_execution_message = true
show.message = true
show.message_header = true
show.non_auction_options_trade_message = true
show.option_directory_message = true
show.options_cross_trade_message = true
show.order_replace_message_short_form = true
show.packet = true
show.packet_header = true
show.quote_delete_message = true
show.quote_replace_long_form_message = true
show.quote_replace_short_form_message = true
show.seconds_message = true
show.security_open_message = true
show.single_side_cancel_message = true
show.single_side_delete_message = true
show.single_side_executed_message = true
show.single_side_executed_with_price_message = true
show.single_side_replace_long_form_message = true
show.single_side_replace_message_long_form = true
show.single_side_replace_message_short_form = true
show.single_side_update_message = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq PhlxOptions MarketDepth Itch 1.5 Show Options
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form = Pref.bool("Show Add Order Message Long Form", show.add_order_message_long_form, "Parse and add Add Order Message Long Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form = Pref.bool("Show Add Order Message Short Form", show.add_order_message_short_form, "Parse and add Add Order Message Short Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form = Pref.bool("Show Add Quote Message Long Form", show.add_quote_message_long_form, "Parse and add Add Quote Message Long Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form = Pref.bool("Show Add Quote Message Short Form", show.add_quote_message_short_form, "Parse and add Add Quote Message Short Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_base_reference_message = Pref.bool("Show Base Reference Message", show.base_reference_message, "Parse and add Base Reference Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_block_delete_message = Pref.bool("Show Block Delete Message", show.block_delete_message, "Parse and add Block Delete Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message = Pref.bool("Show Broken Trade Order Execution Message", show.broken_trade_order_execution_message, "Parse and add Broken Trade Order Execution Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message = Pref.bool("Show Non Auction Options Trade Message", show.non_auction_options_trade_message, "Parse and add Non Auction Options Trade Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_option_directory_message = Pref.bool("Show Option Directory Message", show.option_directory_message, "Parse and add Option Directory Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message = Pref.bool("Show Options Cross Trade Message", show.options_cross_trade_message, "Parse and add Options Cross Trade Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form = Pref.bool("Show Order Replace Message Short Form", show.order_replace_message_short_form, "Parse and add Order Replace Message Short Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_delete_message = Pref.bool("Show Quote Delete Message", show.quote_delete_message, "Parse and add Quote Delete Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message = Pref.bool("Show Quote Replace Long Form Message", show.quote_replace_long_form_message, "Parse and add Quote Replace Long Form Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message = Pref.bool("Show Quote Replace Short Form Message", show.quote_replace_short_form_message, "Parse and add Quote Replace Short Form Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_security_open_message = Pref.bool("Show Security Open Message", show.security_open_message, "Parse and add Security Open Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message = Pref.bool("Show Single Side Cancel Message", show.single_side_cancel_message, "Parse and add Single Side Cancel Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_delete_message = Pref.bool("Show Single Side Delete Message", show.single_side_delete_message, "Parse and add Single Side Delete Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_message = Pref.bool("Show Single Side Executed Message", show.single_side_executed_message, "Parse and add Single Side Executed Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message = Pref.bool("Show Single Side Executed With Price Message", show.single_side_executed_with_price_message, "Parse and add Single Side Executed With Price Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message = Pref.bool("Show Single Side Replace Long Form Message", show.single_side_replace_long_form_message, "Parse and add Single Side Replace Long Form Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form = Pref.bool("Show Single Side Replace Message Long Form", show.single_side_replace_message_long_form, "Parse and add Single Side Replace Message Long Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form = Pref.bool("Show Single Side Replace Message Short Form", show.single_side_replace_message_short_form, "Parse and add Single Side Replace Message Short Form to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_update_message = Pref.bool("Show Single Side Update Message", show.single_side_update_message, "Parse and add Single Side Update Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message_long_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form then
    show.add_order_message_long_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_long_form
    changed = true
  end
  if show.add_order_message_short_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form then
    show.add_order_message_short_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_order_message_short_form
    changed = true
  end
  if show.add_quote_message_long_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form then
    show.add_quote_message_long_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_long_form
    changed = true
  end
  if show.add_quote_message_short_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form then
    show.add_quote_message_short_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_add_quote_message_short_form
    changed = true
  end
  if show.auction_notification_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_auction_notification_message then
    show.auction_notification_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_auction_notification_message
    changed = true
  end
  if show.base_reference_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_base_reference_message then
    show.base_reference_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_base_reference_message
    changed = true
  end
  if show.block_delete_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_block_delete_message then
    show.block_delete_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_block_delete_message
    changed = true
  end
  if show.broken_trade_order_execution_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message then
    show.broken_trade_order_execution_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_broken_trade_order_execution_message
    changed = true
  end
  if show.message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message then
    show.message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message_header then
    show.message_header = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_message_header
    changed = true
  end
  if show.non_auction_options_trade_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message then
    show.non_auction_options_trade_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_non_auction_options_trade_message
    changed = true
  end
  if show.option_directory_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_option_directory_message then
    show.option_directory_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_option_directory_message
    changed = true
  end
  if show.options_cross_trade_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message then
    show.options_cross_trade_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_options_cross_trade_message
    changed = true
  end
  if show.order_replace_message_short_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form then
    show.order_replace_message_short_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_order_replace_message_short_form
    changed = true
  end
  if show.packet ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet then
    show.packet = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_packet_header
    changed = true
  end
  if show.quote_delete_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_delete_message then
    show.quote_delete_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_delete_message
    changed = true
  end
  if show.quote_replace_long_form_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message then
    show.quote_replace_long_form_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_long_form_message
    changed = true
  end
  if show.quote_replace_short_form_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message then
    show.quote_replace_short_form_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_quote_replace_short_form_message
    changed = true
  end
  if show.seconds_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_seconds_message then
    show.seconds_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_seconds_message
    changed = true
  end
  if show.security_open_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_security_open_message then
    show.security_open_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_security_open_message
    changed = true
  end
  if show.single_side_cancel_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message then
    show.single_side_cancel_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_cancel_message
    changed = true
  end
  if show.single_side_delete_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_delete_message then
    show.single_side_delete_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_delete_message
    changed = true
  end
  if show.single_side_executed_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_message then
    show.single_side_executed_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_message
    changed = true
  end
  if show.single_side_executed_with_price_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message then
    show.single_side_executed_with_price_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_executed_with_price_message
    changed = true
  end
  if show.single_side_replace_long_form_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message then
    show.single_side_replace_long_form_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_long_form_message
    changed = true
  end
  if show.single_side_replace_message_long_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form then
    show.single_side_replace_message_long_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_long_form
    changed = true
  end
  if show.single_side_replace_message_short_form ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form then
    show.single_side_replace_message_short_form = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_replace_message_short_form
    changed = true
  end
  if show.single_side_update_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_update_message then
    show.single_side_update_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_single_side_update_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_system_event_message
    changed = true
  end
  if show.trading_action_message ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_trading_action_message then
    show.trading_action_message = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_payload then
    show.payload = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.prefs.show_payload
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
-- Dissect Nasdaq PhlxOptions MarketDepth Itch 1.5
-----------------------------------------------------------------------

-- Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved = {}

-- Size Of: Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.size = 3

-- Display: Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reserved, range, value, display)

  return offset + length, value
end

-- Customer Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator = {}

-- Size Of: Customer Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.size = 1

-- Display: Customer Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.display = function(value)
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end
  if value == "F" then
    return "Customer Indicator: Firm (F)"
  end
  if value == "M" then
    return "Customer Indicator: Onfloor (M)"
  end
  if value == "P" then
    return "Customer Indicator: Professional (P)"
  end
  if value == "B" then
    return "Customer Indicator: Non Phlx (B)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume = {}

-- Size Of: Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price = {}

-- Size Of: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.size = 4

-- Display: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.display = function(value)
  return "Imbalance Price: "..value
end

-- Translate: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Imbalance Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.translate(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id = {}

-- Size Of: Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_id, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction = {}

-- Size Of: Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts = {}

-- Size Of: Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.size = 4

-- Display: Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.display = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type = {}

-- Size Of: Auction Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.size = 1

-- Display: Auction Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "I" then
    return "Auction Type: Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id = {}

-- Size Of: Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.size = 4

-- Display: Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp = {}

-- Size Of: Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size = 4

-- Display: Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message = {}

-- Size Of: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.size;

-- Display: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: 4 Byte Unsigned Fixed Width Integer
  index, auction_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index, paired_contracts = nasdaq_phlxoptions_marketdepth_itch_v1_5.paired_contracts.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index, imbalance_direction = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Signed Fixed Width Integer
  index, imbalance_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index, imbalance_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 5 values
  index, customer_indicator = nasdaq_phlxoptions_marketdepth_itch_v1_5.customer_indicator.dissect(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index, reserved = nasdaq_phlxoptions_marketdepth_itch_v1_5.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number = {}

-- Size Of: Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size = 4

-- Display: Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.match_number, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number = {}

-- Size Of: Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size = 4

-- Display: Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message = {}

-- Size Of: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size;

-- Display: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Execution Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_order_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.volume = {}

-- Size Of: Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.price = {}

-- Size Of: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size = 4

-- Display: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.translate(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.price, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type = {}

-- Size Of: Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.size = 1

-- Display: Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Opening Reopening (O)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message = {}

-- Size Of: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size;

-- Display: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 1 values
  index, cross_type = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_type.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.options_cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator = {}

-- Size Of: Trade Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.size = 1

-- Display: Trade Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.display = function(value)
  if value == "O" then
    return "Trade Indicator: Non Displayable (O)"
  end
  if value == "C" then
    return "Trade Indicator: Complex (C)"
  end
  if value == "P" then
    return "Trade Indicator: Pixl (P)"
  end

  return "Trade Indicator: Unknown("..value..")"
end

-- Dissect: Trade Indicator
nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trade_indicator, range, value, display)

  return offset + length, value
end

-- Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message = {}

-- Size Of: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size;

-- Display: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index, trade_indicator = nasdaq_phlxoptions_marketdepth_itch_v1_5.trade_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Auction Options Trade Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.non_auction_options_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.non_auction_options_trade_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta = {}

-- Size Of: Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta.size = 4

-- Display: Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta.display = function(value)
  return "Cancelled Reference Number Delta: "..value
end

-- Dissect: Cancelled Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas = {}

-- Size Of: Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.size = 2

-- Display: Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.display = function(value)
  return "Number Of Reference Number Deltas: "..value
end

-- Dissect: Number Of Reference Number Deltas
nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas, range, value, display)

  return offset + length, value
end

-- Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message = {}

-- Calculate size of: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size

  index = index + nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.size

  -- Calculate field size from count
  local cancelled_reference_number_delta_count = buffer(offset + index - 2, 2):uint()
  index = index + cancelled_reference_number_delta_count * 4

  return index
end

-- Display: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Number Of Reference Number Deltas: 2 Byte Unsigned Fixed Width Integer
  index, number_of_reference_number_deltas = nasdaq_phlxoptions_marketdepth_itch_v1_5.number_of_reference_number_deltas.dissect(buffer, index, packet, parent)

  -- Repeating: Cancelled Reference Number Delta
  for cancelled_reference_number_delta_index = 1, number_of_reference_number_deltas do
    index, cancelled_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_reference_number_delta.dissect(buffer, index, packet, parent, cancelled_reference_number_delta_index)
  end

  return index
end

-- Dissect: Block Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.block_delete_message then
    local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.block_delete_message, range, display)
  end

  return nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.fields(buffer, offset, packet, parent)
end

-- Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta = {}

-- Size Of: Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size = 4

-- Display: Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.display = function(value)
  return "Ask Reference Number Delta: "..value
end

-- Dissect: Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta = {}

-- Size Of: Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size = 4

-- Display: Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.display = function(value)
  return "Bid Reference Number Delta: "..value
end

-- Dissect: Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message = {}

-- Size Of: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size;

-- Display: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size = {}

-- Size Of: Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.size = 4

-- Display: Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask = {}

-- Size Of: Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.size = 4

-- Display: Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.display = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size = {}

-- Size Of: Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.size = 4

-- Display: Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid = {}

-- Size Of: Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.size = 4

-- Display: Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.display = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid, range, value, display)

  return offset + length, value
end

-- Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta = {}

-- Size Of: Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.size = 4

-- Display: Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.display = function(value)
  return "Original Ask Reference Number Delta: "..value
end

-- Dissect: Original Ask Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta = {}

-- Size Of: Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.size = 4

-- Display: Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.display = function(value)
  return "Original Bid Reference Number Delta: "..value
end

-- Dissect: Original Bid Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message = {}

-- Size Of: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.size;

-- Display: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.dissect(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_replace_long_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size = {}

-- Size Of: Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.size = 2

-- Display: Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.display = function(value)
  return "Short Ask Size: "..value
end

-- Dissect: Short Ask Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price = {}

-- Size Of: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.size = 2

-- Display: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.translate(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size = {}

-- Size Of: Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.size = 2

-- Display: Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.display = function(value)
  return "Short Bid Size: "..value
end

-- Dissect: Short Bid Size
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price = {}

-- Size Of: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.size = 2

-- Display: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.translate(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message = {}

-- Size Of: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.size;

-- Display: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.dissect(buffer, index, packet, parent)

  -- Short Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, short_bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.dissect(buffer, index, packet, parent)

  -- Short Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, short_ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_replace_short_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.quote_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Change Reason
nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason = {}

-- Size Of: Change Reason
nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.size = 1

-- Display: Change Reason
nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.display = function(value)
  if value == "U" then
    return "Change Reason: User (U)"
  end
  if value == "R" then
    return "Change Reason: Reprice (R)"
  end
  if value == "S" then
    return "Change Reason: Suspend (S)"
  end
  if value == "E" then
    return "Change Reason: Exhausted (E)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta = {}

-- Size Of: Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size = 4

-- Display: Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.display = function(value)
  return "Reference Number Delta: "..value
end

-- Dissect: Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.reference_number_delta, range, value, display)

  return offset + length, value
end

-- Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message = {}

-- Size Of: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size;

-- Display: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 4 values
  index, change_reason = nasdaq_phlxoptions_marketdepth_itch_v1_5.change_reason.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message = {}

-- Size Of: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size;

-- Display: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id = {}

-- Size Of: Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.size = 4

-- Display: Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta = {}

-- Size Of: New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.size = 4

-- Display: New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.display = function(value)
  return "New Reference Number Delta: "..value
end

-- Dissect: New Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.new_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta = {}

-- Size Of: Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.size = 4

-- Display: Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.display = function(value)
  return "Original Reference Number Delta: "..value
end

-- Dissect: Original Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.original_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message = {}

-- Size Of: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.size;

-- Display: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_replace_long_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume = {}

-- Size Of: Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.size = 2

-- Display: Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.display = function(value)
  return "Short Volume: "..value
end

-- Dissect: Short Volume
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_volume, range, value, display)

  return offset + length, value
end

-- Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price = {}

-- Size Of: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.size = 2

-- Display: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.translate(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.short_price, range, value, display)

  return offset + length, value
end

-- Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form = {}

-- Size Of: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.size;

-- Display: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Signed Fixed Width Integer
  index, short_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.dissect(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.dissect(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.order_replace_message_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form = {}

-- Size Of: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size;

-- Display: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_long_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form = {}

-- Size Of: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.size;

-- Display: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Signed Fixed Width Integer
  index, short_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.dissect(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.single_side_replace_message_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts = {}

-- Size Of: Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.size = 4

-- Display: Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.display = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message = {}

-- Size Of: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.size;

-- Display: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_contracts = nasdaq_phlxoptions_marketdepth_itch_v1_5.cancelled_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Cancel Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_cancel_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5.printable = {}

-- Size Of: Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.size = 1

-- Display: Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.display = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.printable, range, value, display)

  return offset + length, value
end

-- Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message = {}

-- Size Of: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size;

-- Display: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_phlxoptions_marketdepth_itch_v1_5.printable.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts = {}

-- Size Of: Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.size = 4

-- Display: Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.display = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message = {}

-- Size Of: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.size;

-- Display: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index, executed_contracts = nasdaq_phlxoptions_marketdepth_itch_v1_5.executed_contracts.dissect(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index, cross_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.single_side_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form = {}

-- Size Of: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.size;

-- Display: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index, bid = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_size.dissect(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index, ask = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.add_quote_message_long_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form = {}

-- Size Of: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.size;

-- Display: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Signed Fixed Width Integer
  index, bid_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.bid_price.dissect(buffer, index, packet, parent)

  -- Short Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, short_bid_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Signed Fixed Width Integer
  index, ask_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.ask_price.dissect(buffer, index, packet, parent)

  -- Short Ask Size: 2 Byte Unsigned Fixed Width Integer
  index, short_ask_size = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.add_quote_message_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_quote_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Market Side
nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side = {}

-- Size Of: Market Side
nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.size = 1

-- Display: Market Side
nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.display = function(value)
  if value == "B" then
    return "Market Side: Buy (B)"
  end
  if value == "S" then
    return "Market Side: Sell (S)"
  end
  if value == "A" then
    return "Market Side: Buy (A)"
  end
  if value == "B" then
    return "Market Side: Sell (B)"
  end
  if value == "M" then
    return "Market Side: Buy (M)"
  end
  if value == "N" then
    return "Market Side: Sell (N)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.market_side, range, value, display)

  return offset + length, value
end

-- Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta = {}

-- Size Of: Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.size = 4

-- Display: Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.display = function(value)
  return "Order Reference Number Delta: "..value
end

-- Dissect: Order Reference Number Delta
nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.order_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form = {}

-- Size Of: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.size;

-- Display: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, order_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index, market_side = nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nasdaq_phlxoptions_marketdepth_itch_v1_5.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.volume.dissect(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message_long_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form = {}

-- Size Of: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.size;

-- Display: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index, order_reference_number_delta = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index, market_side = nasdaq_phlxoptions_marketdepth_itch_v1_5.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Signed Fixed Width Integer
  index, short_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_price.dissect(buffer, index, packet, parent)

  -- Short Volume: 2 Byte Unsigned Fixed Width Integer
  index, short_volume = nasdaq_phlxoptions_marketdepth_itch_v1_5.short_volume.dissect(buffer, index, packet, parent)

  -- Order Id: 4 Byte Unsigned Fixed Width Integer
  index, order_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Form
nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.add_order_message_short_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state = {}

-- Size Of: Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.size = 1

-- Display: Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.open_state, range, value, display)

  return offset + length, value
end

-- Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message = {}

-- Size Of: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.size;

-- Display: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index, open_state = nasdaq_phlxoptions_marketdepth_itch_v1_5.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.security_open_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Current Trading State
nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state = {}

-- Size Of: Current Trading State
nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end
  if value == "B" then
    return "Current Trading State: Buy Side Trading Suspended Exhausted (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended Exhausted (S)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message = {}

-- Size Of: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.size;

-- Display: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = nasdaq_phlxoptions_marketdepth_itch_v1_5.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpv
nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv = {}

-- Size Of: Mpv
nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.size = 1

-- Display: Mpv
nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.display = function(value)
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
nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.mpv, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable = {}

-- Size Of: Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.size = 1

-- Display: Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.tradable, range, value, display)

  return offset + length, value
end

-- Options Closing Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type = {}

-- Size Of: Options Closing Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.size = 1

-- Display: Options Closing Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.display = function(value)
  if value == "N" then
    return "Options Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Options Closing Type: Late (L)"
  end
  if value == "W" then
    return "Options Closing Type: Wco Early Closing (W)"
  end

  return "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol = {}

-- Size Of: Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_phlxoptions_marketdepth_itch_v1_5.source = {}

-- Size Of: Source
nasdaq_phlxoptions_marketdepth_itch_v1_5.source.size = 1

-- Display: Source
nasdaq_phlxoptions_marketdepth_itch_v1_5.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_marketdepth_itch_v1_5.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.source, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type = {}

-- Size Of: Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_type, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price = {}

-- Size Of: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.translate(raw)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date = {}

-- Size Of: Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.size = 1

-- Display: Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month = {}

-- Size Of: Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year = {}

-- Size Of: Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol = {}

-- Size Of: Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message = {}

-- Size Of: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.source.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.size;

-- Display: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: 4 Byte Unsigned Fixed Width Integer
  index, option_id = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = nasdaq_phlxoptions_marketdepth_itch_v1_5.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index, expiration_month = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index, expiration_date = nasdaq_phlxoptions_marketdepth_itch_v1_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Signed Fixed Width Integer
  index, explicit_strike_price = nasdaq_phlxoptions_marketdepth_itch_v1_5.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_type.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = nasdaq_phlxoptions_marketdepth_itch_v1_5.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index, underlying_symbol = nasdaq_phlxoptions_marketdepth_itch_v1_5.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 3 values
  index, options_closing_type = nasdaq_phlxoptions_marketdepth_itch_v1_5.options_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index, tradable = nasdaq_phlxoptions_marketdepth_itch_v1_5.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index, mpv = nasdaq_phlxoptions_marketdepth_itch_v1_5.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.option_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.option_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number = {}

-- Size Of: Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.size = 8

-- Display: Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.display = function(value)
  return "Base Reference Number: "..value
end

-- Dissect: Base Reference Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_number, range, value, display)

  return offset + length, value
end

-- Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message = {}

-- Size Of: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.size;

-- Display: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Base Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, base_reference_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Reference Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.base_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.base_reference_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code = {}

-- Size Of: Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.display = function(value)
  return "Event Code: "..value
end

-- Dissect: Event Code
nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message = {}

-- Size Of: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.size;

-- Display: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_phlxoptions_marketdepth_itch_v1_5.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String
  index, event_code = nasdaq_phlxoptions_marketdepth_itch_v1_5.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Second
nasdaq_phlxoptions_marketdepth_itch_v1_5.second = {}

-- Size Of: Second
nasdaq_phlxoptions_marketdepth_itch_v1_5.second.size = 4

-- Display: Second
nasdaq_phlxoptions_marketdepth_itch_v1_5.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_phlxoptions_marketdepth_itch_v1_5.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.second, range, value, display)

  return offset + length, value
end

-- Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message = {}

-- Size Of: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.second.size;

-- Display: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = nasdaq_phlxoptions_marketdepth_itch_v1_5.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5.payload = {}

-- Calculate runtime size of: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.size = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.size(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.size(buffer, offset)
  end
  -- Size of Base Reference Message
  if message_type == "L" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.size(buffer, offset)
  end
  -- Size of Option Directory Message
  if message_type == "R" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.size(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.size(buffer, offset)
  end
  -- Size of Security Open Message
  if message_type == "O" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.size(buffer, offset)
  end
  -- Size of Add Order Message Short Form
  if message_type == "a" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.size(buffer, offset)
  end
  -- Size of Add Order Message Long Form
  if message_type == "A" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.size(buffer, offset)
  end
  -- Size of Add Quote Message Short Form
  if message_type == "j" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.size(buffer, offset)
  end
  -- Size of Add Quote Message Long Form
  if message_type == "J" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.size(buffer, offset)
  end
  -- Size of Single Side Executed Message
  if message_type == "E" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.size(buffer, offset)
  end
  -- Size of Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.size(buffer, offset)
  end
  -- Size of Single Side Cancel Message
  if message_type == "X" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.size(buffer, offset)
  end
  -- Size of Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.size(buffer, offset)
  end
  -- Size of Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.size(buffer, offset)
  end
  -- Size of Order Replace Message Short Form
  if message_type == "v" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.size(buffer, offset)
  end
  -- Size of Single Side Replace Long Form Message
  if message_type == "V" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.size(buffer, offset)
  end
  -- Size of Single Side Delete Message
  if message_type == "D" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.size(buffer, offset)
  end
  -- Size of Single Side Update Message
  if message_type == "G" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.size(buffer, offset)
  end
  -- Size of Quote Replace Short Form Message
  if message_type == "k" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.size(buffer, offset)
  end
  -- Size of Quote Replace Long Form Message
  if message_type == "K" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.size(buffer, offset)
  end
  -- Size of Quote Delete Message
  if message_type == "Y" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.size(buffer, offset)
  end
  -- Size of Block Delete Message
  if message_type == "Z" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.size(buffer, offset)
  end
  -- Size of Non Auction Options Trade Message
  if message_type == "P" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.size(buffer, offset)
  end
  -- Size of Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.size(buffer, offset)
  end
  -- Size of Broken Trade Order Execution Message
  if message_type == "B" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.size(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == "I" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Base Reference Message
  if message_type == "L" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.base_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Directory Message
  if message_type == "R" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.option_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if message_type == "O" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.security_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Form
  if message_type == "a" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form
  if message_type == "A" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_order_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form
  if message_type == "j" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form
  if message_type == "J" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.add_quote_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "E" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "C" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Cancel Message
  if message_type == "X" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if message_type == "u" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if message_type == "U" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message Short Form
  if message_type == "v" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.order_replace_message_short_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if message_type == "V" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == "G" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.single_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Short Form Message
  if message_type == "k" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Long Form Message
  if message_type == "K" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.quote_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Block Delete Message
  if message_type == "Z" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.block_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Non Auction Options Trade Message
  if message_type == "P" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.non_auction_options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.options_cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Execution Message
  if message_type == "B" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.broken_trade_order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == "I" then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.auction_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.payload, range, display)

  return nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type = {}

-- Size Of: Message Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Message Type: Base Reference Message (L)"
  end
  if value == "R" then
    return "Message Type: Option Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Message (O)"
  end
  if value == "a" then
    return "Message Type: Add Order Message Short Form (a)"
  end
  if value == "A" then
    return "Message Type: Add Order Message Long Form (A)"
  end
  if value == "j" then
    return "Message Type: Add Quote Message Short Form (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Message Long Form (J)"
  end
  if value == "E" then
    return "Message Type: Single Side Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Single Side Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Single Side Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Single Side Replace Message Short Form (u)"
  end
  if value == "U" then
    return "Message Type: Single Side Replace Message Long Form (U)"
  end
  if value == "v" then
    return "Message Type: Order Replace Message Short Form (v)"
  end
  if value == "V" then
    return "Message Type: Single Side Replace Long Form Message (V)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Single Side Update Message (G)"
  end
  if value == "k" then
    return "Message Type: Quote Replace Short Form Message (k)"
  end
  if value == "K" then
    return "Message Type: Quote Replace Long Form Message (K)"
  end
  if value == "Y" then
    return "Message Type: Quote Delete Message (Y)"
  end
  if value == "Z" then
    return "Message Type: Block Delete Message (Z)"
  end
  if value == "P" then
    return "Message Type: Non Auction Options Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Options Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Order Execution Message (B)"
  end
  if value == "I" then
    return "Message Type: Auction Notification Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length = {}

-- Size Of: Message Length
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.size = 2

-- Display: Message Length
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header = {}

-- Size Of: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.size;

-- Display: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index, message_type = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.message = {}

-- Display: Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 27 branches
  index = nasdaq_phlxoptions_marketdepth_itch_v1_5.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_marketdepth_itch_v1_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_marketdepth_itch_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_marketdepth_itch_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count = {}

-- Size Of: Message Count
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.size = 2

-- Display: Message Count
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number = {}

-- Size Of: Sequence Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_marketdepth_itch_v1_5.session = {}

-- Size Of: Session
nasdaq_phlxoptions_marketdepth_itch_v1_5.session.size = 10

-- Display: Session
nasdaq_phlxoptions_marketdepth_itch_v1_5.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_marketdepth_itch_v1_5.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_marketdepth_itch_v1_5.session.size
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

  local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header = {}

-- Size Of: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.size =
  nasdaq_phlxoptions_marketdepth_itch_v1_5.session.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.size + 
  nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.size;

-- Display: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_marketdepth_itch_v1_5.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_phlxoptions_marketdepth_itch_v1_5.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_phlxoptions_marketdepth_itch_v1_5.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet = {}

-- Dissect Packet
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_marketdepth_itch_v1_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_phlxoptions_marketdepth_itch_v1_5.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.init()
end

-- Dissector for Nasdaq PhlxOptions MarketDepth Itch 1.5
function omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_marketdepth_itch_v1_5, buffer(), omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlxoptions_marketdepth_itch_v1_5.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_phlxoptions_marketdepth_itch_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_phlxoptions_marketdepth_itch_v1_5.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions MarketDepth Itch 1.5
local function omi_nasdaq_phlxoptions_marketdepth_itch_v1_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_marketdepth_itch_v1_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_marketdepth_itch_v1_5
  omi_nasdaq_phlxoptions_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PhlxOptions MarketDepth Itch 1.5
omi_nasdaq_phlxoptions_marketdepth_itch_v1_5:register_heuristic("udp", omi_nasdaq_phlxoptions_marketdepth_itch_v1_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.5
--   Date: Wednesday, September 30, 2015
--   Specification: phlxdepth.pdf
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
