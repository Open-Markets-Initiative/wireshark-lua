-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NtxOptions DepthOfMarket Itch 2.2 Protocol
local omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2 = Proto("Nasdaq.NtxOptions.DepthOfMarket.Itch.v2.2.Lua", "Nasdaq NtxOptions DepthOfMarket Itch 2.2")

-- Protocol table
local nasdaq_ntxoptions_depthofmarket_itch_v2_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NtxOptions DepthOfMarket Itch 2.2 Fields
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.askpricelong", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.askpriceshort", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.askreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.asksizelong", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.asksizeshort", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.auctionid", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.auctiontype", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_ask_price = ProtoField.new("Best Ask Price", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bestaskprice", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bestaskquantity", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bestbidprice", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bestbidquantity", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bidpricelong", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bidpriceshort", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bidreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bidsizelong", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.bidsizeshort", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.cancelled_volume = ProtoField.new("Cancelled Volume", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.cancelledvolume", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.changereason", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.closingtype", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.crossnumber", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.crosstype", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.currenttradingstate", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.customerfirmindicator", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.eventcode", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.executed_volume = ProtoField.new("Executed Volume", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.executedvolume", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.expirationdate", ftypes.UINT8)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.expirationmonth", ftypes.UINT8)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.expirationyear", ftypes.UINT8)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.financialproduct", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.imbalancedirection", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.imbalanceprice", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.imbalancevolume", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.instrumentid", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.instrument_long_name = ProtoField.new("Instrument Long Name", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.instrumentlongname", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.isin = ProtoField.new("Isin", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.isin", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.market_segment_id = ProtoField.new("Market Segment Id", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.marketsegmentid", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.market_side = ProtoField.new("Market Side", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.marketside", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.match_number = ProtoField.new("Match Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.matchnumber", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message = ProtoField.new("Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.message", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_count = ProtoField.new("Message Count", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.messagecount", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.messageheader", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_length = ProtoField.new("Message Length", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.messagelength", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.messagetype", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.mic = ProtoField.new("Mic", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.mic", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.mpv = ProtoField.new("Mpv", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.mpv", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.new_reference_number = ProtoField.new("New Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.newreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.option_type = ProtoField.new("Option Type", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.optiontype", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.ordercapacity", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.original_ask_reference_number = ProtoField.new("Original Ask Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.originalaskreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.original_bid_reference_number = ProtoField.new("Original Bid Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.originalbidreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.original_reference_number = ProtoField.new("Original Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.originalreferencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.packet = ProtoField.new("Packet", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.packet", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.packetheader", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.paired_quantity = ProtoField.new("Paired Quantity", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.pairedquantity", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.price_long = ProtoField.new("Price Long", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.pricelong", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.price_notation = ProtoField.new("Price Notation", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.pricenotation", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.price_short = ProtoField.new("Price Short", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.priceshort", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.printable = ProtoField.new("Printable", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.printable", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.rank = ProtoField.new("Rank", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.rank", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.reference_number = ProtoField.new("Reference Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.referencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.securitysymbol", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.sequencenumber", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.session = ProtoField.new("Session", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.session", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.strategyid", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.tick_size_table_id = ProtoField.new("Tick Size Table Id", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.ticksizetableid", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.timestamp", ftypes.UINT64)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.trackingnumber", ftypes.UINT16)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.tradable = ProtoField.new("Tradable", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.tradable", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.tradetype", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.tradingcurrency", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.underlyingsymbol", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.volumelong", ftypes.UINT32)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.volume_notation = ProtoField.new("Volume Notation", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.volumenotation", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.volumeshort", ftypes.UINT16)

-- Nasdaq NtxOptions Itch DepthOfMarket 2.2 Application Messages
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_order_long_form_message = ProtoField.new("Add Order Long Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.addorderlongformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_order_short_form_message = ProtoField.new("Add Order Short Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.addordershortformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_quote_long_form_message = ProtoField.new("Add Quote Long Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.addquotelongformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_quote_short_form_message = ProtoField.new("Add Quote Short Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.addquoteshortformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.net_order_imbalance_message = ProtoField.new("Net Order Imbalance Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.netorderimbalancemessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.ordercancelmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_change_message = ProtoField.new("Order Change Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderchangemessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderdeletemessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_replace_long_form_message = ProtoField.new("Order Replace Long Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderreplacelongformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_replace_short_form_message = ProtoField.new("Order Replace Short Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.orderreplaceshortformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.quotedeletemessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.quote_replace_long_form_message = ProtoField.new("Quote Replace Long Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.quotereplacelongformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.quote_replace_short_form_message = ProtoField.new("Quote Replace Short Form Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.quotereplaceshortformmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.systemeventmessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.trademessage", ftypes.STRING)
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.tradingactionmessage", ftypes.STRING)

-- Nasdaq NtxOptions DepthOfMarket Itch 2.2 generated fields
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_index = ProtoField.new("Message Index", "nasdaq.ntxoptions.depthofmarket.itch.v2.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NtxOptions DepthOfMarket Itch 2.2 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq NtxOptions DepthOfMarket Itch 2.2 Show Options
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message then
    show.message = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message_header then
    show.message_header = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_packet then
    show.packet = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message_index then
    show.message_index = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.prefs.show_message_index
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
-- Nasdaq NtxOptions DepthOfMarket Itch 2.2 Fields
-----------------------------------------------------------------------

-- Ask Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Dissect: Ask Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number = {}

-- Size: Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size = 8

-- Display: Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.display = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_reference_number, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id = {}

-- Size: Auction Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.size = 4

-- Display: Auction Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type = {}

-- Size: Auction Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.size = 1

-- Display: Auction Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.display = function(value)
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
    return "Auction Type: Order Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Best Ask Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price = {}

-- Size: Best Ask Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.size = 4

-- Display: Best Ask Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity = {}

-- Size: Best Ask Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.size = 4

-- Display: Best Ask Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.size = 4

-- Display: Best Bid Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity = {}

-- Size: Best Bid Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.size = 4

-- Display: Best Bid Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number = {}

-- Size: Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size = 8

-- Display: Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.display = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_reference_number, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Cancelled Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume = {}

-- Size: Cancelled Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.size = 4

-- Display: Cancelled Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.display = function(value)
  return "Cancelled Volume: "..value
end

-- Dissect: Cancelled Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.cancelled_volume, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason = {}

-- Size: Change Reason
nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.size = 1

-- Display: Change Reason
nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.display = function(value)
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
nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type = {}

-- Size: Closing Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.size = 1

-- Display: Closing Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number = {}

-- Size: Cross Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.size = 4

-- Display: Cross Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type = {}

-- Size: Cross Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.size = 1

-- Display: Cross Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.display = function(value)
  if value == "A" then
    return "Cross Type: All Auctions (A)"
  end
  if value == "P" then
    return "Cross Type: Price Improvement (P)"
  end
  if value == "N" then
    return "Cross Type: None (N)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state = {}

-- Size: Current Trading State
nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "B" then
    return "Current Trading State: Buy Side Trading Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended (S)"
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
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Firm Indicator
nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator = {}

-- Size: Customer Firm Indicator
nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.size = 1

-- Display: Customer Firm Indicator
nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.display = function(value)
  return "Customer Firm Indicator: "..value
end

-- Dissect: Customer Firm Indicator
nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code = {}

-- Size: Event Code
nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.size = 1

-- Display: Event Code
nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.display = function(value)
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
nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume = {}

-- Size: Executed Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.size = 4

-- Display: Executed Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.display = function(value)
  return "Executed Volume: "..value
end

-- Dissect: Executed Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.executed_volume, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date = {}

-- Size: Expiration Date
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.size = 1

-- Display: Expiration Date
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month = {}

-- Size: Expiration Month
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year = {}

-- Size: Expiration Year
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Financial Product
nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product = {}

-- Size: Financial Product
nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.size = 2

-- Display: Financial Product
nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.display = function(value)
  return "Financial Product: "..value
end

-- Dissect: Financial Product
nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price = {}

-- Size: Imbalance Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.size = 4

-- Display: Imbalance Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.display = function(value)
  return "Imbalance Price: "..value
end

-- Dissect: Imbalance Price
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id = {}

-- Size: Instrument Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Long Name
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name = {}

-- Size: Instrument Long Name
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.size = 16

-- Display: Instrument Long Name
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.display = function(value)
  return "Instrument Long Name: "..value
end

-- Dissect: Instrument Long Name
nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.instrument_long_name, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin = {}

-- Size: Isin
nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.size = 12

-- Display: Isin
nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.isin, range, value, display)

  return offset + length, value
end

-- Market Segment Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id = {}

-- Size: Market Segment Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.size = 1

-- Display: Market Segment Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Market Side
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side = {}

-- Size: Market Side
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.size = 1

-- Display: Market Side
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.display = function(value)
  if value == "B" then
    return "Market Side: Buy (B)"
  end
  if value == "S" then
    return "Market Side: Sell (S)"
  end
  if value == "X" then
    return "Market Side: Buy Aon (X)"
  end
  if value == "Y" then
    return "Market Side: Sell Aon (Y)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.market_side, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number = {}

-- Size: Match Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.size = 4

-- Display: Match Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count = {}

-- Size: Message Count
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.size = 2

-- Display: Message Count
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length = {}

-- Size: Message Length
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.size = 2

-- Display: Message Length
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type = {}

-- Size: Message Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.size = 1

-- Display: Message Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Derivative Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "a" then
    return "Message Type: Add Order Short Form Message (a)"
  end
  if value == "A" then
    return "Message Type: Add Order Long Form Message (A)"
  end
  if value == "j" then
    return "Message Type: Add Quote Short Form Message (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Long Form Message (J)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Order Replace Short Form Message (u)"
  end
  if value == "U" then
    return "Message Type: Order Replace Long Form Message (U)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Order Change Message (G)"
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
  if value == "Q" then
    return "Message Type: Trade Message (Q)"
  end
  if value == "I" then
    return "Message Type: Net Order Imbalance Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mic
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic = {}

-- Size: Mic
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.size = 4

-- Display: Mic
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.display = function(value)
  return "Mic: "..value
end

-- Dissect: Mic
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.mic, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv = {}

-- Size: Mpv
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.size = 1

-- Display: Mpv
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.display = function(value)
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
nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.mpv, range, value, display)

  return offset + length, value
end

-- New Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number = {}

-- Size: New Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.size = 8

-- Display: New Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.display = function(value)
  return "New Reference Number: "..value
end

-- Dissect: New Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.new_reference_number, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type = {}

-- Size: Option Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.size = 1

-- Display: Option Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call Option (C)"
  end
  if value == "P" then
    return "Option Type: Put Option (P)"
  end
  if value == "N" then
    return "Option Type: Na (N)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity = {}

-- Size: Order Capacity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.display = function(value)
  return "Order Capacity: "..value
end

-- Dissect: Order Capacity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number = {}

-- Size: Original Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.size = 8

-- Display: Original Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.display = function(value)
  return "Original Ask Reference Number: "..value
end

-- Dissect: Original Ask Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.original_ask_reference_number, range, value, display)

  return offset + length, value
end

-- Original Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number = {}

-- Size: Original Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.size = 8

-- Display: Original Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.display = function(value)
  return "Original Bid Reference Number: "..value
end

-- Dissect: Original Bid Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.original_bid_reference_number, range, value, display)

  return offset + length, value
end

-- Original Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number = {}

-- Size: Original Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.size = 8

-- Display: Original Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.display = function(value)
  return "Original Reference Number: "..value
end

-- Dissect: Original Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.original_reference_number, range, value, display)

  return offset + length, value
end

-- Paired Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity = {}

-- Size: Paired Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.size = 4

-- Display: Paired Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.display = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long = {}

-- Size: Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size = 4

-- Display: Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation = {}

-- Size: Price Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.size = 1

-- Display: Price Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.display = function(value)
  return "Price Notation: "..value
end

-- Dissect: Price Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short = {}

-- Size: Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.size = 2

-- Display: Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.price_short, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable = {}

-- Size: Printable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.size = 1

-- Display: Printable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.display = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.printable, range, value, display)

  return offset + length, value
end

-- Rank
nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank = {}

-- Size: Rank
nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.size = 2

-- Display: Rank
nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.display = function(value)
  return "Rank: "..value
end

-- Dissect: Rank
nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.rank, range, value, display)

  return offset + length, value
end

-- Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number = {}

-- Size: Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.size = 8

-- Display: Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.display = function(value)
  return "Reference Number: "..value
end

-- Dissect: Reference Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.reference_number, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol = {}

-- Size: Security Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_ntxoptions_depthofmarket_itch_v2_2.session = {}

-- Size: Session
nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.size = 10

-- Display: Session
nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.size
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

  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.session, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id = {}

-- Size: Strategy Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Tick Size Table Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id = {}

-- Size: Tick Size Table Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.size = 2

-- Display: Tick Size Table Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.display = function(value)
  return "Tick Size Table Id: "..value
end

-- Dissect: Tick Size Table Id
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp = {}

-- Size: Timestamp
nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size = 8

-- Display: Timestamp
nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number = {}

-- Size: Tracking Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable = {}

-- Size: Tradable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.size = 1

-- Display: Tradable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Instrument Is Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Instrument Is Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type = {}

-- Size: Trade Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.size = 1

-- Display: Trade Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.display = function(value)
  if value == "E" then
    return "Trade Type: Electronic Trade (E)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency = {}

-- Size: Trading Currency
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long = {}

-- Size: Volume Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size = 4

-- Display: Volume Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation = {}

-- Size: Volume Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.size = 1

-- Display: Volume Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.display = function(value)
  return "Volume Notation: "..value
end

-- Dissect: Volume Notation
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.volume_notation, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short = {}

-- Size: Volume Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.size = 2

-- Display: Volume Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NtxOptions DepthOfMarket Itch 2.2
-----------------------------------------------------------------------

-- Net Order Imbalance Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message = {}

-- Size: Net Order Imbalance Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.size

-- Display: Net Order Imbalance Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_ntxoptions_depthofmarket_itch_v2_2.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Quantity: Integer
  index, paired_quantity = nasdaq_ntxoptions_depthofmarket_itch_v2_2.paired_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Imbalance Price: Integer
  index, imbalance_price = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_ntxoptions_depthofmarket_itch_v2_2.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_ntxoptions_depthofmarket_itch_v2_2.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Integer
  index, best_bid_price = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Integer
  index, best_bid_quantity = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Integer
  index, best_ask_price = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Integer
  index, best_ask_quantity = nasdaq_ntxoptions_depthofmarket_itch_v2_2.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.net_order_imbalance_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message = {}

-- Size: Trade Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.size

-- Display: Trade Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message = {}

-- Size: Quote Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size

-- Display: Quote Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message = {}

-- Size: Quote Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.size

-- Display: Quote Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.quote_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message = {}

-- Size: Quote Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.size

-- Display: Quote Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.quote_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Change Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message = {}

-- Size: Order Change Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size

-- Display: Order Change Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Change Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_ntxoptions_depthofmarket_itch_v2_2.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Change Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_change_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.size

-- Display: Order Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message = {}

-- Size: Order Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size

-- Display: Order Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Reference Number: Integer
  index, original_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message = {}

-- Size: Order Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.size

-- Display: Order Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Reference Number: Integer
  index, original_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.size

-- Display: Order Cancel Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cancelled Volume: Integer
  index, cancelled_volume = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cancelled_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size

-- Display: Order Executed With Price Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_ntxoptions_depthofmarket_itch_v2_2.printable.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.size

-- Display: Order Executed Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.reference_number.dissect(buffer, index, packet, parent)

  -- Executed Volume: Integer
  index, executed_volume = nasdaq_ntxoptions_depthofmarket_itch_v2_2.executed_volume.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message = {}

-- Size: Add Quote Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.size

-- Display: Add Quote Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_quote_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message = {}

-- Size: Add Quote Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.size

-- Display: Add Quote Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_quote_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message = {}

-- Size: Add Order Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.size

-- Display: Add Order Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_long.dissect(buffer, index, packet, parent)

  -- Rank: Integer
  index, rank = nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message = {}

-- Size: Add Order Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.size

-- Display: Add Order Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_short.dissect(buffer, index, packet, parent)

  -- Rank: Integer
  index, rank = nasdaq_ntxoptions_depthofmarket_itch_v2_2.rank.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Form Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.add_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.size

-- Display: Trading Action Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_ntxoptions_depthofmarket_itch_v2_2.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.size

-- Display: Derivative Directory Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_ntxoptions_depthofmarket_itch_v2_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: Integer
  index, expiration_date = nasdaq_ntxoptions_depthofmarket_itch_v2_2.expiration_date.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_ntxoptions_depthofmarket_itch_v2_2.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_ntxoptions_depthofmarket_itch_v2_2.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_ntxoptions_depthofmarket_itch_v2_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_ntxoptions_depthofmarket_itch_v2_2.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_ntxoptions_depthofmarket_itch_v2_2.mpv.dissect(buffer, index, packet, parent)

  -- Isin: Alphanumeric
  index, isin = nasdaq_ntxoptions_depthofmarket_itch_v2_2.isin.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = nasdaq_ntxoptions_depthofmarket_itch_v2_2.price_notation.dissect(buffer, index, packet, parent)

  -- Volume Notation: Alpha
  index, volume_notation = nasdaq_ntxoptions_depthofmarket_itch_v2_2.volume_notation.dissect(buffer, index, packet, parent)

  -- Financial Product: Integer
  index, financial_product = nasdaq_ntxoptions_depthofmarket_itch_v2_2.financial_product.dissect(buffer, index, packet, parent)

  -- Market Segment Id: Alpha
  index, market_segment_id = nasdaq_ntxoptions_depthofmarket_itch_v2_2.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_currency.dissect(buffer, index, packet, parent)

  -- Mic: Alpha
  index, mic = nasdaq_ntxoptions_depthofmarket_itch_v2_2.mic.dissect(buffer, index, packet, parent)

  -- Instrument Long Name: Alpha
  index, instrument_long_name = nasdaq_ntxoptions_depthofmarket_itch_v2_2.instrument_long_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message = {}

-- Size: System Event Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.size

-- Display: System Event Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_ntxoptions_depthofmarket_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_ntxoptions_depthofmarket_itch_v2_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_ntxoptions_depthofmarket_itch_v2_2.payload = {}

-- Dissect: Payload
nasdaq_ntxoptions_depthofmarket_itch_v2_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if message_type == "R" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if message_type == "a" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if message_type == "A" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Short Form Message
  if message_type == "j" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Long Form Message
  if message_type == "J" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.add_quote_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Short Form Message
  if message_type == "u" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Long Form Message
  if message_type == "U" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Change Message
  if message_type == "G" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.order_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Short Form Message
  if message_type == "k" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Long Form Message
  if message_type == "K" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.quote_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "Q" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Message
  if message_type == "I" then
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.net_order_imbalance_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header = {}

-- Size: Message Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.size

-- Display: Message Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 19 values
  index, message_type = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_header, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message = {}

-- Read runtime size of: Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 19 branches
  index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.message, buffer(offset, 0))
    local current = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_ntxoptions_depthofmarket_itch_v2_2.messages = {}

-- Dissect: Messages
nasdaq_ntxoptions_depthofmarket_itch_v2_2.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header = {}

-- Size: Packet Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.size =
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.size + 
  nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.size

-- Display: Packet Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_ntxoptions_depthofmarket_itch_v2_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_ntxoptions_depthofmarket_itch_v2_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_ntxoptions_depthofmarket_itch_v2_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet = {}

-- Dissect Packet
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_ntxoptions_depthofmarket_itch_v2_2.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.init()
end

-- Dissector for Nasdaq NtxOptions DepthOfMarket Itch 2.2
function omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2, buffer(), omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NtxOptions DepthOfMarket Itch 2.2 (Udp)
local function omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxoptions_depthofmarket_itch_v2_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2
  omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NtxOptions DepthOfMarket Itch 2.2
omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2:register_heuristic("udp", omi_nasdaq_ntxoptions_depthofmarket_itch_v2_2_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.2
--   Date: Thursday, December 18, 2025
--   Specification: Nasdaq_Texas_Options_Depth_of_Market.pdf
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
