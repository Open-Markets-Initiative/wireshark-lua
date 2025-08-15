-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Level2 Gtp 24.4 Protocol
local lseg_turquoise_level2_gtp_v24_4 = Proto("Lseg.Turquoise.Level2.Gtp.v24.4.Lua", "Lseg Turquoise Level2 Gtp 24.4")

-- Component Tables
local show = {}
local format = {}
local lseg_turquoise_level2_gtp_v24_4_display = {}
local lseg_turquoise_level2_gtp_v24_4_dissect = {}
local lseg_turquoise_level2_gtp_v24_4_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Level2 Gtp 24.4 Fields
lseg_turquoise_level2_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.level2.gtp.v24.4.allowedbooktypes", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.auction_info = ProtoField.new("Auction Info", "lseg.turquoise.level2.gtp.v24.4.auctioninfo", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.auction_type = ProtoField.new("Auction Type", "lseg.turquoise.level2.gtp.v24.4.auctiontype", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.best_bid_price = ProtoField.new("Best Bid Price", "lseg.turquoise.level2.gtp.v24.4.bestbidprice", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.best_bid_size = ProtoField.new("Best Bid Size", "lseg.turquoise.level2.gtp.v24.4.bestbidsize", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.best_offer_price = ProtoField.new("Best Offer Price", "lseg.turquoise.level2.gtp.v24.4.bestofferprice", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.best_offer_size = ProtoField.new("Best Offer Size", "lseg.turquoise.level2.gtp.v24.4.bestoffersize", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.bid_depth = ProtoField.new("Bid Depth", "lseg.turquoise.level2.gtp.v24.4.biddepth", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x800000000000)
lseg_turquoise_level2_gtp_v24_4.fields.cross_id = ProtoField.new("Cross Id", "lseg.turquoise.level2.gtp.v24.4.crossid", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.cross_type = ProtoField.new("Cross Type", "lseg.turquoise.level2.gtp.v24.4.crosstype", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.turquoise.level2.gtp.v24.4.currency", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.deleted_order_quantity = ProtoField.new("Deleted Order Quantity", "lseg.turquoise.level2.gtp.v24.4.deletedorderquantity", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.level2.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.level2.gtp.v24.4.electronicorderbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
lseg_turquoise_level2_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.level2.gtp.v24.4.eventcode", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.executed_size = ProtoField.new("Executed Size", "lseg.turquoise.level2.gtp.v24.4.executedsize", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.far_price = ProtoField.new("Far Price", "lseg.turquoise.level2.gtp.v24.4.farprice", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.hidden_execution_indicator = ProtoField.new("Hidden Execution Indicator", "lseg.turquoise.level2.gtp.v24.4.hiddenexecutionindicator", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.turquoise.level2.gtp.v24.4.imbalancequantity", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.level2.gtp.v24.4.instrument", ftypes.UINT64)
lseg_turquoise_level2_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.turquoise.level2.gtp.v24.4.isin", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.turquoise.level2.gtp.v24.4.length", ftypes.UINT16)
lseg_turquoise_level2_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.level2.gtp.v24.4.marketdatagroup", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.turquoise.level2.gtp.v24.4.message", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.level2.gtp.v24.4.messagecount", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.level2.gtp.v24.4.messageheader", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.level2.gtp.v24.4.messagelength", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.level2.gtp.v24.4.messagetype", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.level2.gtp.v24.4.newendtime", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.new_price = ProtoField.new("New Price", "lseg.turquoise.level2.gtp.v24.4.newprice", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.new_quantity = ProtoField.new("New Quantity", "lseg.turquoise.level2.gtp.v24.4.newquantity", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.turquoise.level2.gtp.v24.4.numberoftrades", ftypes.UINT32)
lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.turquoise.level2.gtp.v24.4.numberoftradesonbookonly", ftypes.UINT32)
lseg_turquoise_level2_gtp_v24_4.fields.offer_depth = ProtoField.new("Offer Depth", "lseg.turquoise.level2.gtp.v24.4.offerdepth", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x400000000000)
lseg_turquoise_level2_gtp_v24_4.fields.opening_closing_price_indicator = ProtoField.new("Opening Closing Price Indicator", "lseg.turquoise.level2.gtp.v24.4.openingclosingpriceindicator", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.level2.gtp.v24.4.orderbooktype", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.order_flags = ProtoField.new("Order Flags", "lseg.turquoise.level2.gtp.v24.4.orderflags", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.order_id = ProtoField.new("Order Id", "lseg.turquoise.level2.gtp.v24.4.orderid", ftypes.UINT64)
lseg_turquoise_level2_gtp_v24_4.fields.order_type = ProtoField.new("Order Type", "lseg.turquoise.level2.gtp.v24.4.ordertype", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.turquoise.level2.gtp.v24.4.packet", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.participant = ProtoField.new("Participant", "lseg.turquoise.level2.gtp.v24.4.participant", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.turquoise.level2.gtp.v24.4.payload", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.previous_price = ProtoField.new("Previous Price", "lseg.turquoise.level2.gtp.v24.4.previousprice", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.previous_quantity = ProtoField.new("Previous Quantity", "lseg.turquoise.level2.gtp.v24.4.previousquantity", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.price = ProtoField.new("Price", "lseg.turquoise.level2.gtp.v24.4.price", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.level2.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.priority_flags = ProtoField.new("Priority Flags", "lseg.turquoise.level2.gtp.v24.4.priorityflags", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.level2.gtp.v24.4.reserved23", ftypes.BYTES)
lseg_turquoise_level2_gtp_v24_4.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.level2.gtp.v24.4.reserved38", ftypes.BYTES)
lseg_turquoise_level2_gtp_v24_4.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.turquoise.level2.gtp.v24.4.reserved5", ftypes.BYTES)
lseg_turquoise_level2_gtp_v24_4.fields.reserved_7 = ProtoField.new("Reserved 7", "lseg.turquoise.level2.gtp.v24.4.reserved7", ftypes.BYTES)
lseg_turquoise_level2_gtp_v24_4.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.turquoise.level2.gtp.v24.4.reserved8", ftypes.BYTES)
lseg_turquoise_level2_gtp_v24_4.fields.retail_lp = ProtoField.new("Retail Lp", "lseg.turquoise.level2.gtp.v24.4.retaillp", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x200000000000)
lseg_turquoise_level2_gtp_v24_4.fields.retained = ProtoField.new("Retained", "lseg.turquoise.level2.gtp.v24.4.retained", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x8000000000000000)
lseg_turquoise_level2_gtp_v24_4.fields.rfq_id = ProtoField.new("Rfq Id", "lseg.turquoise.level2.gtp.v24.4.rfqid", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.turquoise.level2.gtp.v24.4.segment", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.level2.gtp.v24.4.sequencenumber", ftypes.UINT32)
lseg_turquoise_level2_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.level2.gtp.v24.4.sessionchangereason", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.side = ProtoField.new("Side", "lseg.turquoise.level2.gtp.v24.4.side", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.size = ProtoField.new("Size", "lseg.turquoise.level2.gtp.v24.4.size", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.level2.gtp.v24.4.sourcevenue", ftypes.UINT16)
lseg_turquoise_level2_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.level2.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.statistic_price = ProtoField.new("Statistic Price", "lseg.turquoise.level2.gtp.v24.4.statisticprice", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.statistic_size = ProtoField.new("Statistic Size", "lseg.turquoise.level2.gtp.v24.4.statisticsize", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.statistic_type = ProtoField.new("Statistic Type", "lseg.turquoise.level2.gtp.v24.4.statistictype", ftypes.UINT16)
lseg_turquoise_level2_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.level2.gtp.v24.4.tickid", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.level2.gtp.v24.4.timestamp", ftypes.UINT64)
lseg_turquoise_level2_gtp_v24_4.fields.total_executed_quantity = ProtoField.new("Total Executed Quantity", "lseg.turquoise.level2.gtp.v24.4.totalexecutedquantity", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.total_hidden_executed_quantity = ProtoField.new("Total Hidden Executed Quantity", "lseg.turquoise.level2.gtp.v24.4.totalhiddenexecutedquantity", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "lseg.turquoise.level2.gtp.v24.4.tradecancellation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
lseg_turquoise_level2_gtp_v24_4.fields.trade_flags = ProtoField.new("Trade Flags", "lseg.turquoise.level2.gtp.v24.4.tradeflags", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.trade_id = ProtoField.new("Trade Id", "lseg.turquoise.level2.gtp.v24.4.tradeid", ftypes.UINT64)
lseg_turquoise_level2_gtp_v24_4.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.turquoise.level2.gtp.v24.4.tradequalifier", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.trade_type = ProtoField.new("Trade Type", "lseg.turquoise.level2.gtp.v24.4.tradetype", ftypes.UINT8)
lseg_turquoise_level2_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.level2.gtp.v24.4.tradingstatus", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.turquoise.level2.gtp.v24.4.transactiontime", ftypes.UINT64)
lseg_turquoise_level2_gtp_v24_4.fields.turnover = ProtoField.new("Turnover", "lseg.turquoise.level2.gtp.v24.4.turnover", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.turquoise.level2.gtp.v24.4.turnoveronbookonly", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.level2.gtp.v24.4.unitheader", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.unused_2 = ProtoField.new("Unused 2", "lseg.turquoise.level2.gtp.v24.4.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
lseg_turquoise_level2_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.turquoise.level2.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
lseg_turquoise_level2_gtp_v24_4.fields.unused_7 = ProtoField.new("Unused 7", "lseg.turquoise.level2.gtp.v24.4.unused7", ftypes.UINT8, nil, base.DEC, 0x7F)
lseg_turquoise_level2_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.level2.gtp.v24.4.venueinstrumentid", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.volume = ProtoField.new("Volume", "lseg.turquoise.level2.gtp.v24.4.volume", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.turquoise.level2.gtp.v24.4.volumeonbookonly", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.vwap = ProtoField.new("Vwap", "lseg.turquoise.level2.gtp.v24.4.vwap", ftypes.DOUBLE)
lseg_turquoise_level2_gtp_v24_4.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.turquoise.level2.gtp.v24.4.vwaponbookonly", ftypes.DOUBLE)

-- Lseg Turquoise Level2 Gtp 24.4 messages
lseg_turquoise_level2_gtp_v24_4.fields.add_order_incremental_message = ProtoField.new("Add Order Incremental Message", "lseg.turquoise.level2.gtp.v24.4.addorderincrementalmessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.level2.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.level2.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.turquoise.level2.gtp.v24.4.orderbookclearmessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.order_delete_message = ProtoField.new("Order Delete Message", "lseg.turquoise.level2.gtp.v24.4.orderdeletemessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.order_modify_message = ProtoField.new("Order Modify Message", "lseg.turquoise.level2.gtp.v24.4.ordermodifymessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.statistics_message = ProtoField.new("Statistics Message", "lseg.turquoise.level2.gtp.v24.4.statisticsmessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.statistics_update_message = ProtoField.new("Statistics Update Message", "lseg.turquoise.level2.gtp.v24.4.statisticsupdatemessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.level2.gtp.v24.4.systemeventmessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.trade_cross_message = ProtoField.new("Trade Cross Message", "lseg.turquoise.level2.gtp.v24.4.tradecrossmessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.trade_message = ProtoField.new("Trade Message", "lseg.turquoise.level2.gtp.v24.4.trademessage", ftypes.STRING)
lseg_turquoise_level2_gtp_v24_4.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "lseg.turquoise.level2.gtp.v24.4.tradesummarymessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lseg Turquoise Level2 Gtp 24.4 Element Dissection Options
show.add_order_incremental_message = true
show.allowed_book_types = true
show.instrument_directory_message = true
show.instrument_status_message = true
show.message = true
show.message_header = true
show.order_book_clear_message = true
show.order_delete_message = true
show.order_flags = true
show.order_modify_message = true
show.packet = true
show.priority_flags = true
show.statistics_message = true
show.statistics_update_message = true
show.system_event_message = true
show.trade_cross_message = true
show.trade_flags = true
show.trade_message = true
show.trade_summary_message = true
show.unit_header = true
show.payload = false

-- Register Lseg Turquoise Level2 Gtp 24.4 Show Options
lseg_turquoise_level2_gtp_v24_4.prefs.show_add_order_incremental_message = Pref.bool("Show Add Order Incremental Message", show.add_order_incremental_message, "Parse and add Add Order Incremental Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_status_message = Pref.bool("Show Instrument Status Message", show.instrument_status_message, "Parse and add Instrument Status Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_order_book_clear_message = Pref.bool("Show Order Book Clear Message", show.order_book_clear_message, "Parse and add Order Book Clear Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_order_flags = Pref.bool("Show Order Flags", show.order_flags, "Parse and add Order Flags to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_order_modify_message = Pref.bool("Show Order Modify Message", show.order_modify_message, "Parse and add Order Modify Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_priority_flags = Pref.bool("Show Priority Flags", show.priority_flags, "Parse and add Priority Flags to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_update_message = Pref.bool("Show Statistics Update Message", show.statistics_update_message, "Parse and add Statistics Update Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_cross_message = Pref.bool("Show Trade Cross Message", show.trade_cross_message, "Parse and add Trade Cross Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_summary_message = Pref.bool("Show Trade Summary Message", show.trade_summary_message, "Parse and add Trade Summary Message to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
lseg_turquoise_level2_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function lseg_turquoise_level2_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_incremental_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_add_order_incremental_message then
    show.add_order_incremental_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_add_order_incremental_message
    changed = true
  end
  if show.allowed_book_types ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = lseg_turquoise_level2_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_directory_message then
    show.instrument_directory_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_status_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_status_message then
    show.instrument_status_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_status_message
    changed = true
  end
  if show.message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_message then
    show.message = lseg_turquoise_level2_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_message_header then
    show.message_header = lseg_turquoise_level2_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.order_book_clear_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_order_book_clear_message then
    show.order_book_clear_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_order_book_clear_message
    changed = true
  end
  if show.order_delete_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_order_delete_message then
    show.order_delete_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_order_delete_message
    changed = true
  end
  if show.order_flags ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_order_flags then
    show.order_flags = lseg_turquoise_level2_gtp_v24_4.prefs.show_order_flags
    changed = true
  end
  if show.order_modify_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_order_modify_message then
    show.order_modify_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_order_modify_message
    changed = true
  end
  if show.packet ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_packet then
    show.packet = lseg_turquoise_level2_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.priority_flags ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_priority_flags then
    show.priority_flags = lseg_turquoise_level2_gtp_v24_4.prefs.show_priority_flags
    changed = true
  end
  if show.statistics_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_message then
    show.statistics_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_message
    changed = true
  end
  if show.statistics_update_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_update_message then
    show.statistics_update_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_update_message
    changed = true
  end
  if show.system_event_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_system_event_message then
    show.system_event_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_system_event_message
    changed = true
  end
  if show.trade_cross_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_cross_message then
    show.trade_cross_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_cross_message
    changed = true
  end
  if show.trade_flags ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_flags then
    show.trade_flags = lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_message then
    show.trade_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_message
    changed = true
  end
  if show.trade_summary_message ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_summary_message then
    show.trade_summary_message = lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_summary_message
    changed = true
  end
  if show.unit_header ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = lseg_turquoise_level2_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= lseg_turquoise_level2_gtp_v24_4.prefs.show_payload then
    show.payload = lseg_turquoise_level2_gtp_v24_4.prefs.show_payload
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
-- Dissect Lseg Turquoise Level2 Gtp 24.4
-----------------------------------------------------------------------

-- Size: Best Offer Price
lseg_turquoise_level2_gtp_v24_4_size_of.best_offer_price = 8

-- Display: Best Offer Price
lseg_turquoise_level2_gtp_v24_4_display.best_offer_price = function(value)
  return "Best Offer Price: "..value
end

-- Translate: Best Offer Price
translate.best_offer_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Offer Price
lseg_turquoise_level2_gtp_v24_4_dissect.best_offer_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.best_offer_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.best_offer_price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.best_offer_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Size
lseg_turquoise_level2_gtp_v24_4_size_of.best_offer_size = 8

-- Display: Best Offer Size
lseg_turquoise_level2_gtp_v24_4_display.best_offer_size = function(value)
  return "Best Offer Size: "..value
end

-- Translate: Best Offer Size
translate.best_offer_size = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Offer Size
lseg_turquoise_level2_gtp_v24_4_dissect.best_offer_size = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.best_offer_size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.best_offer_size(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.best_offer_size(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price
lseg_turquoise_level2_gtp_v24_4_size_of.best_bid_price = 8

-- Display: Best Bid Price
lseg_turquoise_level2_gtp_v24_4_display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
translate.best_bid_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Bid Price
lseg_turquoise_level2_gtp_v24_4_dissect.best_bid_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.best_bid_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.best_bid_price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size
lseg_turquoise_level2_gtp_v24_4_size_of.best_bid_size = 8

-- Display: Best Bid Size
lseg_turquoise_level2_gtp_v24_4_display.best_bid_size = function(value)
  return "Best Bid Size: "..value
end

-- Translate: Best Bid Size
translate.best_bid_size = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Bid Size
lseg_turquoise_level2_gtp_v24_4_dissect.best_bid_size = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.best_bid_size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.best_bid_size(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.best_bid_size(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Side
lseg_turquoise_level2_gtp_v24_4_size_of.side = 1

-- Display: Side
lseg_turquoise_level2_gtp_v24_4_display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
lseg_turquoise_level2_gtp_v24_4_dissect.side = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.side(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4_size_of.deleted_order_quantity = 8

-- Display: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4_display.deleted_order_quantity = function(value)
  return "Deleted Order Quantity: "..value
end

-- Translate: Deleted Order Quantity
translate.deleted_order_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4_dissect.deleted_order_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.deleted_order_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.deleted_order_quantity(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.deleted_order_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.deleted_order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4_size_of.total_hidden_executed_quantity = 8

-- Display: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4_display.total_hidden_executed_quantity = function(value)
  return "Total Hidden Executed Quantity: "..value
end

-- Translate: Total Hidden Executed Quantity
translate.total_hidden_executed_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4_dissect.total_hidden_executed_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.total_hidden_executed_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.total_hidden_executed_quantity(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.total_hidden_executed_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.total_hidden_executed_quantity, range, value, display)

  return offset + length, value
end

-- Size: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4_size_of.total_executed_quantity = 8

-- Display: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4_display.total_executed_quantity = function(value)
  return "Total Executed Quantity: "..value
end

-- Translate: Total Executed Quantity
translate.total_executed_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4_dissect.total_executed_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.total_executed_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.total_executed_quantity(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.total_executed_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.total_executed_quantity, range, value, display)

  return offset + length, value
end

-- Size: Far Price
lseg_turquoise_level2_gtp_v24_4_size_of.far_price = 8

-- Display: Far Price
lseg_turquoise_level2_gtp_v24_4_display.far_price = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
translate.far_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Far Price
lseg_turquoise_level2_gtp_v24_4_dissect.far_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.far_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.far_price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.far_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.far_price, range, value, display)

  return offset + length, value
end

-- Size: Transaction Time
lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time = 8

-- Display: Transaction Time
lseg_turquoise_level2_gtp_v24_4_display.transaction_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transaction Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4_display.transaction_time(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Size: Source Venue
lseg_turquoise_level2_gtp_v24_4_size_of.source_venue = 2

-- Display: Source Venue
lseg_turquoise_level2_gtp_v24_4_display.source_venue = function(value)
  if value == 5 then
    return "Source Venue: Turquoise Lit Order Book (5)"
  end
  if value == 6 then
    return "Source Venue: Turquoise Plato Order Book (6)"
  end
  if value == 12 then
    return "Source Venue: Turquoise Plato Lit Auctions Order Book (12)"
  end
  if value == 14 then
    return "Source Venue: Turquoise Lit Order Book (14)"
  end
  if value == 15 then
    return "Source Venue: Turquoise Plato Order Book (15)"
  end
  if value == 16 then
    return "Source Venue: Turquoise Plato Lit Auctions Order Book (16)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_turquoise_level2_gtp_v24_4_dissect.source_venue = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.source_venue
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.source_venue(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Size: Instrument
lseg_turquoise_level2_gtp_v24_4_size_of.instrument = 8

-- Display: Instrument
lseg_turquoise_level2_gtp_v24_4_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_level2_gtp_v24_4_dissect.instrument = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.instrument
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4_display.instrument(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
lseg_turquoise_level2_gtp_v24_4_size_of.timestamp = 8

-- Display: Timestamp
lseg_turquoise_level2_gtp_v24_4_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_level2_gtp_v24_4_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4_size_of.trade_summary_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.far_price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.total_executed_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.total_hidden_executed_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.deleted_order_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.side

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.best_bid_size

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.best_bid_price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.best_offer_size

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.best_offer_price

  return index
end

-- Display: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4_display.trade_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4_dissect.trade_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  -- Far Price: 8 Byte Signed Fixed Width Integer
  index, far_price = lseg_turquoise_level2_gtp_v24_4_dissect.far_price(buffer, index, packet, parent)

  -- Total Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, total_executed_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.total_executed_quantity(buffer, index, packet, parent)

  -- Total Hidden Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, total_hidden_executed_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.total_hidden_executed_quantity(buffer, index, packet, parent)

  -- Deleted Order Quantity: 8 Byte Unsigned Fixed Width Integer
  index, deleted_order_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.deleted_order_quantity(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4_dissect.side(buffer, index, packet, parent)

  -- Best Bid Size: 8 Byte Signed Fixed Width Integer
  index, best_bid_size = lseg_turquoise_level2_gtp_v24_4_dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Bid Price: 8 Byte Signed Fixed Width Integer
  index, best_bid_price = lseg_turquoise_level2_gtp_v24_4_dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Offer Size: 8 Byte Signed Fixed Width Integer
  index, best_offer_size = lseg_turquoise_level2_gtp_v24_4_dissect.best_offer_size(buffer, index, packet, parent)

  -- Best Offer Price: 8 Byte Signed Fixed Width Integer
  index, best_offer_price = lseg_turquoise_level2_gtp_v24_4_dissect.best_offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4_dissect.trade_summary_message = function(buffer, offset, packet, parent)
  if show.trade_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_summary_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.trade_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.trade_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.trade_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4_size_of.opening_closing_price_indicator = 1

-- Display: Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4_display.opening_closing_price_indicator = function(value)
  return "Opening Closing Price Indicator: "..value
end

-- Dissect: Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4_dissect.opening_closing_price_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.opening_closing_price_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.opening_closing_price_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.opening_closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Size: Auction Info
lseg_turquoise_level2_gtp_v24_4_size_of.auction_info = 1

-- Display: Auction Info
lseg_turquoise_level2_gtp_v24_4_display.auction_info = function(value)
  if value == "M" then
    return "Auction Info: Call Market (M)"
  end

  return "Auction Info: Unknown("..value..")"
end

-- Dissect: Auction Info
lseg_turquoise_level2_gtp_v24_4_dissect.auction_info = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.auction_info
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.auction_info(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.auction_info, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4_size_of.imbalance_quantity = 8

-- Display: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4_display.imbalance_quantity = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
translate.imbalance_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4_dissect.imbalance_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.imbalance_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.imbalance_quantity(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.imbalance_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
lseg_turquoise_level2_gtp_v24_4_size_of.auction_type = 1

-- Display: Auction Type
lseg_turquoise_level2_gtp_v24_4_display.auction_type = function(value)
  if value == "L" then
    return "Auction Type: Frequent Lit Auctions (L)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
lseg_turquoise_level2_gtp_v24_4_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Statistic Size
lseg_turquoise_level2_gtp_v24_4_size_of.statistic_size = 8

-- Display: Statistic Size
lseg_turquoise_level2_gtp_v24_4_display.statistic_size = function(value)
  return "Statistic Size: "..value
end

-- Translate: Statistic Size
translate.statistic_size = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Size
lseg_turquoise_level2_gtp_v24_4_dissect.statistic_size = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.statistic_size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.statistic_size(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.statistic_size(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.statistic_size, range, value, display)

  return offset + length, value
end

-- Size: Statistic Price
lseg_turquoise_level2_gtp_v24_4_size_of.statistic_price = 8

-- Display: Statistic Price
lseg_turquoise_level2_gtp_v24_4_display.statistic_price = function(value)
  return "Statistic Price: "..value
end

-- Translate: Statistic Price
translate.statistic_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Price
lseg_turquoise_level2_gtp_v24_4_dissect.statistic_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.statistic_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.statistic_price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.statistic_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.statistic_price, range, value, display)

  return offset + length, value
end

-- Size: Statistic Type
lseg_turquoise_level2_gtp_v24_4_size_of.statistic_type = 2

-- Display: Statistic Type
lseg_turquoise_level2_gtp_v24_4_display.statistic_type = function(value)
  if value == 1 then
    return "Statistic Type: Indicative Auction Uncrossing Data (1)"
  end
  if value == 4 then
    return "Statistic Type: Trade High On Book (4)"
  end
  if value == 5 then
    return "Statistic Type: Trade Low On Book (5)"
  end
  if value == 6 then
    return "Statistic Type: Trade High All Trades (6)"
  end
  if value == 7 then
    return "Statistic Type: Trade Low All Trades (7)"
  end
  if value == 8 then
    return "Statistic Type: 52 Week Trade High All Trades (8)"
  end
  if value == 9 then
    return "Statistic Type: 52 Week Trade Low All Trades (9)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
lseg_turquoise_level2_gtp_v24_4_dissect.statistic_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.statistic_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.statistic_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4_size_of.statistics_update_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.statistic_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.statistic_price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.statistic_size

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.auction_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.imbalance_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.auction_info

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.opening_closing_price_indicator

  return index
end

-- Display: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4_display.statistics_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4_dissect.statistics_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Statistic Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, statistic_type = lseg_turquoise_level2_gtp_v24_4_dissect.statistic_type(buffer, index, packet, parent)

  -- Statistic Price: 8 Byte Signed Fixed Width Integer
  index, statistic_price = lseg_turquoise_level2_gtp_v24_4_dissect.statistic_price(buffer, index, packet, parent)

  -- Statistic Size: 8 Byte Unsigned Fixed Width Integer
  index, statistic_size = lseg_turquoise_level2_gtp_v24_4_dissect.statistic_size(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 1 values
  index, auction_type = lseg_turquoise_level2_gtp_v24_4_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Quantity: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.imbalance_quantity(buffer, index, packet, parent)

  -- Auction Info: 1 Byte Ascii String Enum with 1 values
  index, auction_info = lseg_turquoise_level2_gtp_v24_4_dissect.auction_info(buffer, index, packet, parent)

  -- Opening Closing Price Indicator: 1 Byte Ascii String
  index, opening_closing_price_indicator = lseg_turquoise_level2_gtp_v24_4_dissect.opening_closing_price_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4_dissect.statistics_update_message = function(buffer, offset, packet, parent)
  if show.statistics_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.statistics_update_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.statistics_update_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.statistics_update_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.statistics_update_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4_size_of.turnover_onbook_only = 8

-- Display: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4_display.turnover_onbook_only = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
translate.turnover_onbook_only = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4_dissect.turnover_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.turnover_onbook_only
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.turnover_onbook_only(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.turnover_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Turnover
lseg_turquoise_level2_gtp_v24_4_size_of.turnover = 8

-- Display: Turnover
lseg_turquoise_level2_gtp_v24_4_display.turnover = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
translate.turnover = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_turquoise_level2_gtp_v24_4_dissect.turnover = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.turnover
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.turnover(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.turnover(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.turnover, range, value, display)

  return offset + length, value
end

-- Size: Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4_size_of.number_of_trades_onbook_only = 4

-- Display: Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4_display.number_of_trades_onbook_only = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4_dissect.number_of_trades_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.number_of_trades_onbook_only
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.number_of_trades_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Number Of Trades
lseg_turquoise_level2_gtp_v24_4_size_of.number_of_trades = 4

-- Display: Number Of Trades
lseg_turquoise_level2_gtp_v24_4_display.number_of_trades = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_turquoise_level2_gtp_v24_4_dissect.number_of_trades = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.number_of_trades
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.number_of_trades(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Size: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4_size_of.vwap_onbook_only = 8

-- Display: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4_display.vwap_onbook_only = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
translate.vwap_onbook_only = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4_dissect.vwap_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.vwap_onbook_only
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.vwap_onbook_only(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.vwap_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Vwap
lseg_turquoise_level2_gtp_v24_4_size_of.vwap = 8

-- Display: Vwap
lseg_turquoise_level2_gtp_v24_4_display.vwap = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
translate.vwap = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_turquoise_level2_gtp_v24_4_dissect.vwap = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.vwap
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.vwap(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.vwap(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.vwap, range, value, display)

  return offset + length, value
end

-- Size: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4_size_of.volume_onbook_only = 8

-- Display: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4_display.volume_onbook_only = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
translate.volume_onbook_only = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4_dissect.volume_onbook_only = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.volume_onbook_only
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.volume_onbook_only(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.volume_onbook_only(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Size: Volume
lseg_turquoise_level2_gtp_v24_4_size_of.volume = 8

-- Display: Volume
lseg_turquoise_level2_gtp_v24_4_display.volume = function(value)
  return "Volume: "..value
end

-- Translate: Volume
translate.volume = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_turquoise_level2_gtp_v24_4_dissect.volume = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.volume
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.volume(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.volume(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Statistics Message
lseg_turquoise_level2_gtp_v24_4_size_of.statistics_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.volume

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.volume_onbook_only

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.vwap

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.vwap_onbook_only

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.number_of_trades

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.number_of_trades_onbook_only

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.turnover

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.turnover_onbook_only

  return index
end

-- Display: Statistics Message
lseg_turquoise_level2_gtp_v24_4_display.statistics_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
lseg_turquoise_level2_gtp_v24_4_dissect.statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = lseg_turquoise_level2_gtp_v24_4_dissect.volume(buffer, index, packet, parent)

  -- Volume Onbook Only: 8 Byte Unsigned Fixed Width Integer
  index, volume_onbook_only = lseg_turquoise_level2_gtp_v24_4_dissect.volume_onbook_only(buffer, index, packet, parent)

  -- Vwap: 8 Byte Signed Fixed Width Integer
  index, vwap = lseg_turquoise_level2_gtp_v24_4_dissect.vwap(buffer, index, packet, parent)

  -- Vwap Onbook Only: 8 Byte Signed Fixed Width Integer
  index, vwap_onbook_only = lseg_turquoise_level2_gtp_v24_4_dissect.vwap_onbook_only(buffer, index, packet, parent)

  -- Number Of Trades: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades = lseg_turquoise_level2_gtp_v24_4_dissect.number_of_trades(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades_onbook_only = lseg_turquoise_level2_gtp_v24_4_dissect.number_of_trades_onbook_only(buffer, index, packet, parent)

  -- Turnover: 8 Byte Signed Fixed Width Integer
  index, turnover = lseg_turquoise_level2_gtp_v24_4_dissect.turnover(buffer, index, packet, parent)

  -- Turnover Onbook Only: 8 Byte Signed Fixed Width Integer
  index, turnover_onbook_only = lseg_turquoise_level2_gtp_v24_4_dissect.turnover_onbook_only(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
lseg_turquoise_level2_gtp_v24_4_dissect.statistics_message = function(buffer, offset, packet, parent)
  if show.statistics_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.statistics_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.statistics_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.statistics_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.statistics_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Flags
lseg_turquoise_level2_gtp_v24_4_size_of.trade_flags = 1

-- Display: Trade Flags
lseg_turquoise_level2_gtp_v24_4_display.trade_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Trade Cancellation flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Trade Cancellation|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Flags
lseg_turquoise_level2_gtp_v24_4_dissect.trade_flags_bits = function(buffer, offset, packet, parent)

  -- Trade Cancellation: 1 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_cancellation, buffer(offset, 1))

  -- Unused 7: 7 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.unused_7, buffer(offset, 1))
end

-- Dissect: Trade Flags
lseg_turquoise_level2_gtp_v24_4_dissect.trade_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4_display.trade_flags(range, packet, parent)
  local element = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_flags, range, display)

  if show.trade_flags then
    lseg_turquoise_level2_gtp_v24_4_dissect.trade_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Cross Type
lseg_turquoise_level2_gtp_v24_4_size_of.cross_type = 1

-- Display: Cross Type
lseg_turquoise_level2_gtp_v24_4_display.cross_type = function(value)
  if value == 6 then
    return "Cross Type: Internal Btf (6)"
  end
  if value == 8 then
    return "Cross Type: Committed Btf (8)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_turquoise_level2_gtp_v24_4_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
lseg_turquoise_level2_gtp_v24_4_size_of.cross_id = 20

-- Display: Cross Id
lseg_turquoise_level2_gtp_v24_4_display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lseg_turquoise_level2_gtp_v24_4_dissect.cross_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.cross_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.cross_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
lseg_turquoise_level2_gtp_v24_4_size_of.trade_id = 8

-- Display: Trade Id
lseg_turquoise_level2_gtp_v24_4_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
lseg_turquoise_level2_gtp_v24_4_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved 8
lseg_turquoise_level2_gtp_v24_4_size_of.reserved_8 = 8

-- Display: Reserved 8
lseg_turquoise_level2_gtp_v24_4_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_turquoise_level2_gtp_v24_4_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Size: Price
lseg_turquoise_level2_gtp_v24_4_size_of.price = 8

-- Display: Price
lseg_turquoise_level2_gtp_v24_4_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_turquoise_level2_gtp_v24_4_dissect.price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Executed Size
lseg_turquoise_level2_gtp_v24_4_size_of.executed_size = 8

-- Display: Executed Size
lseg_turquoise_level2_gtp_v24_4_display.executed_size = function(value)
  return "Executed Size: "..value
end

-- Translate: Executed Size
translate.executed_size = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Size
lseg_turquoise_level2_gtp_v24_4_dissect.executed_size = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.executed_size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.executed_size(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.executed_size(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.executed_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4_size_of.trade_cross_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.executed_size

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.reserved_8

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.trade_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.cross_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.cross_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.trade_flags

  return index
end

-- Display: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4_display.trade_cross_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4_dissect.trade_cross_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Executed Size: 8 Byte Unsigned Fixed Width Integer
  index, executed_size = lseg_turquoise_level2_gtp_v24_4_dissect.executed_size(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_turquoise_level2_gtp_v24_4_dissect.price(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_turquoise_level2_gtp_v24_4_dissect.reserved_8(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = lseg_turquoise_level2_gtp_v24_4_dissect.trade_id(buffer, index, packet, parent)

  -- Cross Id: 20 Byte Ascii String
  index, cross_id = lseg_turquoise_level2_gtp_v24_4_dissect.cross_id(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, cross_type = lseg_turquoise_level2_gtp_v24_4_dissect.cross_type(buffer, index, packet, parent)

  -- Trade Flags: Struct of 2 fields
  index, trade_flags = lseg_turquoise_level2_gtp_v24_4_dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4_dissect.trade_cross_message = function(buffer, offset, packet, parent)
  if show.trade_cross_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_cross_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.trade_cross_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.trade_cross_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.trade_cross_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Qualifier
lseg_turquoise_level2_gtp_v24_4_size_of.trade_qualifier = 1

-- Display: Trade Qualifier
lseg_turquoise_level2_gtp_v24_4_display.trade_qualifier = function(value)
  if value == " " then
    return "Trade Qualifier: Not Applicable (<whitespace>)"
  end
  if value == "T" then
    return "Trade Qualifier: Trade At Last (T)"
  end
  if value == "A" then
    return "Trade Qualifier: Aesp (A)"
  end
  if value == "B" then
    return "Trade Qualifier: Edsp (B)"
  end
  if value == "E" then
    return "Trade Qualifier: Resume Auction (E)"
  end
  if value == "F" then
    return "Trade Qualifier: Periodic Auction (F)"
  end
  if value == "G" then
    return "Trade Qualifier: Scheduled Level 1 Only Auction (G)"
  end

  return "Trade Qualifier: Unknown("..value..")"
end

-- Dissect: Trade Qualifier
lseg_turquoise_level2_gtp_v24_4_dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.trade_qualifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.trade_qualifier(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Hidden Execution Indicator
lseg_turquoise_level2_gtp_v24_4_size_of.hidden_execution_indicator = 1

-- Display: Hidden Execution Indicator
lseg_turquoise_level2_gtp_v24_4_display.hidden_execution_indicator = function(value)
  if value == 0 then
    return "Hidden Execution Indicator: Not Applicable (0)"
  end
  if value == 1 then
    return "Hidden Execution Indicator: Visible (1)"
  end
  if value == 2 then
    return "Hidden Execution Indicator: Hidden (2)"
  end

  return "Hidden Execution Indicator: Unknown("..value..")"
end

-- Dissect: Hidden Execution Indicator
lseg_turquoise_level2_gtp_v24_4_dissect.hidden_execution_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.hidden_execution_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.hidden_execution_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.hidden_execution_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reserved 5
lseg_turquoise_level2_gtp_v24_4_size_of.reserved_5 = 5

-- Display: Reserved 5
lseg_turquoise_level2_gtp_v24_4_display.reserved_5 = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_turquoise_level2_gtp_v24_4_dissect.reserved_5 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.reserved_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4_display.reserved_5(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Size: Order Flags
lseg_turquoise_level2_gtp_v24_4_size_of.order_flags = 5

-- Display: Order Flags
lseg_turquoise_level2_gtp_v24_4_display.order_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Bid Depth flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Bid Depth|"
  end
  -- Is Offer Depth flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Offer Depth|"
  end
  -- Is Retail Lp flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Retail Lp|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Flags
lseg_turquoise_level2_gtp_v24_4_dissect.order_flags_bits = function(buffer, offset, packet, parent)

  -- Bid Depth: 1 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.bid_depth, buffer(offset, 5))

  -- Offer Depth: 1 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.offer_depth, buffer(offset, 5))

  -- Retail Lp: 1 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.retail_lp, buffer(offset, 5))

  -- Reserved 5: 5 Byte
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_5, buffer(offset, 5))
end

-- Dissect: Order Flags
lseg_turquoise_level2_gtp_v24_4_dissect.order_flags = function(buffer, offset, packet, parent)
  local size = 5
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4_display.order_flags(range, packet, parent)
  local element = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_flags, range, display)

  if show.order_flags then
    lseg_turquoise_level2_gtp_v24_4_dissect.order_flags_bits(buffer, offset, packet, element)
  end

  return offset + 5, range
end

-- Size: Trade Type
lseg_turquoise_level2_gtp_v24_4_size_of.trade_type = 1

-- Display: Trade Type
lseg_turquoise_level2_gtp_v24_4_display.trade_type = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
lseg_turquoise_level2_gtp_v24_4_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
lseg_turquoise_level2_gtp_v24_4_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.executed_size

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.reserved_8

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.trade_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.trade_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.auction_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_flags

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.hidden_execution_indicator

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.trade_qualifier

  return index
end

-- Display: Trade Message
lseg_turquoise_level2_gtp_v24_4_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_turquoise_level2_gtp_v24_4_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Executed Size: 8 Byte Unsigned Fixed Width Integer
  index, executed_size = lseg_turquoise_level2_gtp_v24_4_dissect.executed_size(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_turquoise_level2_gtp_v24_4_dissect.price(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_turquoise_level2_gtp_v24_4_dissect.reserved_8(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = lseg_turquoise_level2_gtp_v24_4_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, trade_type = lseg_turquoise_level2_gtp_v24_4_dissect.trade_type(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 1 values
  index, auction_type = lseg_turquoise_level2_gtp_v24_4_dissect.auction_type(buffer, index, packet, parent)

  -- Order Flags: Struct of 4 fields
  index, order_flags = lseg_turquoise_level2_gtp_v24_4_dissect.order_flags(buffer, index, packet, parent)

  -- Hidden Execution Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hidden_execution_indicator = lseg_turquoise_level2_gtp_v24_4_dissect.hidden_execution_indicator(buffer, index, packet, parent)

  -- Trade Qualifier: 1 Byte Ascii String Enum with 7 values
  index, trade_qualifier = lseg_turquoise_level2_gtp_v24_4_dissect.trade_qualifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_turquoise_level2_gtp_v24_4_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trade_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Book Type
lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type = 1

-- Display: Order Book Type
lseg_turquoise_level2_gtp_v24_4_display.order_book_type = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_level2_gtp_v24_4_dissect.order_book_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.order_book_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4_size_of.order_book_clear_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type

  return index
end

-- Display: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4_display.order_book_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4_dissect.order_book_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4_dissect.order_book_clear_message = function(buffer, offset, packet, parent)
  if show.order_book_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.order_book_clear_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.order_book_clear_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.order_book_clear_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Previous Quantity
lseg_turquoise_level2_gtp_v24_4_size_of.previous_quantity = 8

-- Display: Previous Quantity
lseg_turquoise_level2_gtp_v24_4_display.previous_quantity = function(value)
  return "Previous Quantity: "..value
end

-- Translate: Previous Quantity
translate.previous_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Quantity
lseg_turquoise_level2_gtp_v24_4_dissect.previous_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.previous_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.previous_quantity(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.previous_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.previous_quantity, range, value, display)

  return offset + length, value
end

-- Size: Previous Price
lseg_turquoise_level2_gtp_v24_4_size_of.previous_price = 8

-- Display: Previous Price
lseg_turquoise_level2_gtp_v24_4_display.previous_price = function(value)
  return "Previous Price: "..value
end

-- Translate: Previous Price
translate.previous_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Price
lseg_turquoise_level2_gtp_v24_4_dissect.previous_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.previous_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.previous_price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.previous_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Size: Order Id
lseg_turquoise_level2_gtp_v24_4_size_of.order_id = 8

-- Display: Order Id
lseg_turquoise_level2_gtp_v24_4_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_turquoise_level2_gtp_v24_4_dissect.order_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4_display.order_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Delete Message
lseg_turquoise_level2_gtp_v24_4_size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.side

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.previous_price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.previous_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time

  return index
end

-- Display: Order Delete Message
lseg_turquoise_level2_gtp_v24_4_display.order_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
lseg_turquoise_level2_gtp_v24_4_dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_turquoise_level2_gtp_v24_4_dissect.order_id(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4_dissect.side(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Previous Price: 8 Byte Signed Fixed Width Integer
  index, previous_price = lseg_turquoise_level2_gtp_v24_4_dissect.previous_price(buffer, index, packet, parent)

  -- Previous Quantity: 8 Byte Unsigned Fixed Width Integer
  index, previous_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.previous_quantity(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
lseg_turquoise_level2_gtp_v24_4_dissect.order_delete_message = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_delete_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.order_delete_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.order_delete_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.order_delete_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: New Price
lseg_turquoise_level2_gtp_v24_4_size_of.new_price = 8

-- Display: New Price
lseg_turquoise_level2_gtp_v24_4_display.new_price = function(value)
  return "New Price: "..value
end

-- Translate: New Price
translate.new_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: New Price
lseg_turquoise_level2_gtp_v24_4_dissect.new_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.new_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.new_price(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.new_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.new_price, range, value, display)

  return offset + length, value
end

-- Size: New Quantity
lseg_turquoise_level2_gtp_v24_4_size_of.new_quantity = 8

-- Display: New Quantity
lseg_turquoise_level2_gtp_v24_4_display.new_quantity = function(value)
  return "New Quantity: "..value
end

-- Translate: New Quantity
translate.new_quantity = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: New Quantity
lseg_turquoise_level2_gtp_v24_4_dissect.new_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.new_quantity
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.new_quantity(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.new_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Size: Reserved 7
lseg_turquoise_level2_gtp_v24_4_size_of.reserved_7 = 7

-- Display: Reserved 7
lseg_turquoise_level2_gtp_v24_4_display.reserved_7 = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
lseg_turquoise_level2_gtp_v24_4_dissect.reserved_7 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.reserved_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4_display.reserved_7(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Size: Priority Flags
lseg_turquoise_level2_gtp_v24_4_size_of.priority_flags = 7

-- Display: Priority Flags
lseg_turquoise_level2_gtp_v24_4_display.priority_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Retained flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Retained|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Priority Flags
lseg_turquoise_level2_gtp_v24_4_dissect.priority_flags_bits = function(buffer, offset, packet, parent)

  -- Retained: 1 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.retained, buffer(offset, 7))

  -- Reserved 7: 7 Byte
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_7, buffer(offset, 7))
end

-- Dissect: Priority Flags
lseg_turquoise_level2_gtp_v24_4_dissect.priority_flags = function(buffer, offset, packet, parent)
  local size = 7
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4_display.priority_flags(range, packet, parent)
  local element = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.priority_flags, range, display)

  if show.priority_flags then
    lseg_turquoise_level2_gtp_v24_4_dissect.priority_flags_bits(buffer, offset, packet, element)
  end

  return offset + 7, range
end

-- Calculate size of: Order Modify Message
lseg_turquoise_level2_gtp_v24_4_size_of.order_modify_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.side

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.priority_flags

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.new_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.new_price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.reserved_8

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.previous_price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.previous_quantity

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time

  return index
end

-- Display: Order Modify Message
lseg_turquoise_level2_gtp_v24_4_display.order_modify_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
lseg_turquoise_level2_gtp_v24_4_dissect.order_modify_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_turquoise_level2_gtp_v24_4_dissect.order_id(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4_dissect.side(buffer, index, packet, parent)

  -- Priority Flags: Struct of 2 fields
  index, priority_flags = lseg_turquoise_level2_gtp_v24_4_dissect.priority_flags(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  -- New Quantity: 8 Byte Unsigned Fixed Width Integer
  index, new_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.new_quantity(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = lseg_turquoise_level2_gtp_v24_4_dissect.new_price(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_turquoise_level2_gtp_v24_4_dissect.reserved_8(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Previous Price: 8 Byte Signed Fixed Width Integer
  index, previous_price = lseg_turquoise_level2_gtp_v24_4_dissect.previous_price(buffer, index, packet, parent)

  -- Previous Quantity: 8 Byte Unsigned Fixed Width Integer
  index, previous_quantity = lseg_turquoise_level2_gtp_v24_4_dissect.previous_quantity(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
lseg_turquoise_level2_gtp_v24_4_dissect.order_modify_message = function(buffer, offset, packet, parent)
  if show.order_modify_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_modify_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.order_modify_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.order_modify_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.order_modify_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Rfq Id
lseg_turquoise_level2_gtp_v24_4_size_of.rfq_id = 10

-- Display: Rfq Id
lseg_turquoise_level2_gtp_v24_4_display.rfq_id = function(value)
  return "Rfq Id: "..value
end

-- Dissect: Rfq Id
lseg_turquoise_level2_gtp_v24_4_dissect.rfq_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.rfq_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.rfq_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.rfq_id, range, value, display)

  return offset + length, value
end

-- Size: Order Type
lseg_turquoise_level2_gtp_v24_4_size_of.order_type = 1

-- Display: Order Type
lseg_turquoise_level2_gtp_v24_4_display.order_type = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
lseg_turquoise_level2_gtp_v24_4_dissect.order_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.order_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.order_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Participant
lseg_turquoise_level2_gtp_v24_4_size_of.participant = 11

-- Display: Participant
lseg_turquoise_level2_gtp_v24_4_display.participant = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
lseg_turquoise_level2_gtp_v24_4_dissect.participant = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.participant
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.participant(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.participant, range, value, display)

  return offset + length, value
end

-- Size: Size
lseg_turquoise_level2_gtp_v24_4_size_of.size = 8

-- Display: Size
lseg_turquoise_level2_gtp_v24_4_display.size = function(value)
  return "Size: "..value
end

-- Translate: Size
translate.size = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Size
lseg_turquoise_level2_gtp_v24_4_dissect.size = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.size(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.size(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4_size_of.add_order_incremental_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.side

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.size

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.price

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.transaction_time

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.participant

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_type

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.rfq_id

  return index
end

-- Display: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4_display.add_order_incremental_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4_dissect.add_order_incremental_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_turquoise_level2_gtp_v24_4_dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4_dissect.side(buffer, index, packet, parent)

  -- Size: 8 Byte Unsigned Fixed Width Integer
  index, size = lseg_turquoise_level2_gtp_v24_4_dissect.size(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_turquoise_level2_gtp_v24_4_dissect.price(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4_dissect.transaction_time(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  -- Participant: 11 Byte Ascii String
  index, participant = lseg_turquoise_level2_gtp_v24_4_dissect.participant(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer
  index, order_type = lseg_turquoise_level2_gtp_v24_4_dissect.order_type(buffer, index, packet, parent)

  -- Rfq Id: 10 Byte Ascii String
  index, rfq_id = lseg_turquoise_level2_gtp_v24_4_dissect.rfq_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4_dissect.add_order_incremental_message = function(buffer, offset, packet, parent)
  if show.add_order_incremental_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.add_order_incremental_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.add_order_incremental_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.add_order_incremental_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.add_order_incremental_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: New End Time
lseg_turquoise_level2_gtp_v24_4_size_of.new_end_time = 6

-- Display: New End Time
lseg_turquoise_level2_gtp_v24_4_display.new_end_time = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_level2_gtp_v24_4_dissect.new_end_time = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.new_end_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.new_end_time(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Size: Session Change Reason
lseg_turquoise_level2_gtp_v24_4_size_of.session_change_reason = 1

-- Display: Session Change Reason
lseg_turquoise_level2_gtp_v24_4_display.session_change_reason = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end
  if value == 1 then
    return "Session Change Reason: Extended By Market Ops (1)"
  end
  if value == 2 then
    return "Session Change Reason: Shortened By Market Ops (2)"
  end
  if value == 3 then
    return "Session Change Reason: Market Order Imbalance (3)"
  end
  if value == 4 then
    return "Session Change Reason: Price Outside Range (4)"
  end
  if value == 5 then
    return "Session Change Reason: Aesp Circuit Breaker Tripped (5)"
  end
  if value == 9 then
    return "Session Change Reason: Unavailable (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_turquoise_level2_gtp_v24_4_dissect.session_change_reason = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.session_change_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.session_change_reason(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
lseg_turquoise_level2_gtp_v24_4_size_of.trading_status = 1

-- Display: Trading Status
lseg_turquoise_level2_gtp_v24_4_display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "J" then
    return "Trading Status: Halted Matching Partition Suspended (J)"
  end
  if value == "K" then
    return "Trading Status: Halted System Suspended (K)"
  end
  if value == "P" then
    return "Trading Status: Halted Regulatory Halt (P)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Of Trqb Session (T)"
  end
  if value == "t" then
    return "Trading Status: End Of Regular Trading End Of Trqb Session (t)"
  end
  if value == "c" then
    return "Trading Status: Closed (c)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_turquoise_level2_gtp_v24_4_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4_size_of.instrument_status_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.trading_status

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.session_change_reason

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.new_end_time

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.order_book_type

  return index
end

-- Display: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4_display.instrument_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4_dissect.instrument_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 9 values
  index, trading_status = lseg_turquoise_level2_gtp_v24_4_dissect.trading_status(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, session_change_reason = lseg_turquoise_level2_gtp_v24_4_dissect.session_change_reason(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_turquoise_level2_gtp_v24_4_dissect.new_end_time(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4_dissect.instrument_status_message = function(buffer, offset, packet, parent)
  if show.instrument_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.instrument_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.instrument_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.instrument_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 38
lseg_turquoise_level2_gtp_v24_4_size_of.reserved_38 = 38

-- Display: Reserved 38
lseg_turquoise_level2_gtp_v24_4_display.reserved_38 = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_level2_gtp_v24_4_dissect.reserved_38 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.reserved_38
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4_display.reserved_38(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Size: Currency
lseg_turquoise_level2_gtp_v24_4_size_of.currency = 3

-- Display: Currency
lseg_turquoise_level2_gtp_v24_4_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_level2_gtp_v24_4_dissect.currency = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.currency(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Reserved 23
lseg_turquoise_level2_gtp_v24_4_size_of.reserved_23 = 23

-- Display: Reserved 23
lseg_turquoise_level2_gtp_v24_4_display.reserved_23 = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_level2_gtp_v24_4_dissect.reserved_23 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.reserved_23
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4_display.reserved_23(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Size: Segment
lseg_turquoise_level2_gtp_v24_4_size_of.segment = 6

-- Display: Segment
lseg_turquoise_level2_gtp_v24_4_display.segment = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_level2_gtp_v24_4_dissect.segment = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.segment
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.segment(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Size: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4_size_of.static_circuit_breaker_tolerances = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4_display.static_circuit_breaker_tolerances = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
translate.static_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4_dissect.static_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.static_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.static_circuit_breaker_tolerances(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.static_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4_display.dynamic_circuit_breaker_tolerances = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
translate.dynamic_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.dynamic_circuit_breaker_tolerances(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.dynamic_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4_size_of.price_band_tolerances = 8

-- Display: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4_display.price_band_tolerances = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
translate.price_band_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4_dissect.price_band_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.price_band_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_band_tolerances(raw)
  local display = lseg_turquoise_level2_gtp_v24_4_display.price_band_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Tick Id
lseg_turquoise_level2_gtp_v24_4_size_of.tick_id = 2

-- Display: Tick Id
lseg_turquoise_level2_gtp_v24_4_display.tick_id = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_level2_gtp_v24_4_dissect.tick_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.tick_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.tick_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Size: Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4_size_of.venue_instrument_id = 11

-- Display: Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4_display.venue_instrument_id = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4_dissect.venue_instrument_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.venue_instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.venue_instrument_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4_size_of.allowed_book_types = 1

-- Display: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4_display.allowed_book_types = function(buffer, packet, parent)
  local display = ""

  -- Is Electronic Order Book flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Electronic Order Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4_dissect.allowed_book_types_bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.unused_2, buffer(offset, 1))

  -- Electronic Order Book: 1 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.electronic_order_book, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4_dissect.allowed_book_types = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4_display.allowed_book_types(range, packet, parent)
  local element = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_turquoise_level2_gtp_v24_4_dissect.allowed_book_types_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Isin
lseg_turquoise_level2_gtp_v24_4_size_of.isin = 12

-- Display: Isin
lseg_turquoise_level2_gtp_v24_4_display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_level2_gtp_v24_4_dissect.isin = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.isin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4_display.isin(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4_size_of.instrument_directory_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.isin

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.allowed_book_types

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.venue_instrument_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.tick_id

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.price_band_tolerances

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.static_circuit_breaker_tolerances

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.segment

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.reserved_23

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.currency

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.reserved_38

  return index
end

-- Display: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4_display.instrument_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4_dissect.instrument_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_turquoise_level2_gtp_v24_4_dissect.isin(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_level2_gtp_v24_4_dissect.allowed_book_types(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_turquoise_level2_gtp_v24_4_dissect.venue_instrument_id(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_turquoise_level2_gtp_v24_4_dissect.tick_id(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_turquoise_level2_gtp_v24_4_dissect.price_band_tolerances(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_level2_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_turquoise_level2_gtp_v24_4_dissect.static_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_turquoise_level2_gtp_v24_4_dissect.segment(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_turquoise_level2_gtp_v24_4_dissect.reserved_23(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_turquoise_level2_gtp_v24_4_dissect.currency(buffer, index, packet, parent)

  -- Reserved 38: 38 Byte
  index, reserved_38 = lseg_turquoise_level2_gtp_v24_4_dissect.reserved_38(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4_dissect.instrument_directory_message = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.instrument_directory_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Event Code
lseg_turquoise_level2_gtp_v24_4_size_of.event_code = 1

-- Display: Event Code
lseg_turquoise_level2_gtp_v24_4_display.event_code = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_level2_gtp_v24_4_dissect.event_code = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.event_code(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
lseg_turquoise_level2_gtp_v24_4_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.event_code

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.source_venue

  return index
end

-- Display: System Event Message
lseg_turquoise_level2_gtp_v24_4_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_level2_gtp_v24_4_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = lseg_turquoise_level2_gtp_v24_4_dissect.event_code(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_level2_gtp_v24_4_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.system_event_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
lseg_turquoise_level2_gtp_v24_4_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.system_event_message(buffer, offset)
  end
  -- Size of Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.instrument_directory_message(buffer, offset)
  end
  -- Size of Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.instrument_status_message(buffer, offset)
  end
  -- Size of Add Order Incremental Message
  if message_type == 0x46 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.add_order_incremental_message(buffer, offset)
  end
  -- Size of Order Modify Message
  if message_type == 0x55 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.order_modify_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == 0x44 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.order_delete_message(buffer, offset)
  end
  -- Size of Order Book Clear Message
  if message_type == 0x79 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.order_book_clear_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 0x50 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Cross Message
  if message_type == 0x71 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.trade_cross_message(buffer, offset)
  end
  -- Size of Statistics Message
  if message_type == 0x77 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.statistics_message(buffer, offset)
  end
  -- Size of Statistics Update Message
  if message_type == 0x6A then
    return lseg_turquoise_level2_gtp_v24_4_size_of.statistics_update_message(buffer, offset)
  end
  -- Size of Trade Summary Message
  if message_type == 0x57 then
    return lseg_turquoise_level2_gtp_v24_4_size_of.trade_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
lseg_turquoise_level2_gtp_v24_4_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_turquoise_level2_gtp_v24_4_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.instrument_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.instrument_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Incremental Message
  if message_type == 0x46 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.add_order_incremental_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if message_type == 0x55 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.order_modify_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 0x44 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.order_book_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cross Message
  if message_type == 0x71 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.trade_cross_message(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.statistics_message(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Update Message
  if message_type == 0x6A then
    return lseg_turquoise_level2_gtp_v24_4_dissect.statistics_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if message_type == 0x57 then
    return lseg_turquoise_level2_gtp_v24_4_dissect.trade_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_turquoise_level2_gtp_v24_4_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_turquoise_level2_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_turquoise_level2_gtp_v24_4_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4_display.payload(buffer, packet, parent)
  local element = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.payload, range, display)

  return lseg_turquoise_level2_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
lseg_turquoise_level2_gtp_v24_4_size_of.message_type = 1

-- Display: Message Type
lseg_turquoise_level2_gtp_v24_4_display.message_type = function(value)
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x46 then
    return "Message Type: Add Order Incremental Message (0x46)"
  end
  if value == 0x55 then
    return "Message Type: Order Modify Message (0x55)"
  end
  if value == 0x44 then
    return "Message Type: Order Delete Message (0x44)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x50 then
    return "Message Type: Trade Message (0x50)"
  end
  if value == 0x71 then
    return "Message Type: Trade Cross Message (0x71)"
  end
  if value == 0x77 then
    return "Message Type: Statistics Message (0x77)"
  end
  if value == 0x6A then
    return "Message Type: Statistics Update Message (0x6A)"
  end
  if value == 0x57 then
    return "Message Type: Trade Summary Message (0x57)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_level2_gtp_v24_4_dissect.message_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.message_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
lseg_turquoise_level2_gtp_v24_4_size_of.message_length = 1

-- Display: Message Length
lseg_turquoise_level2_gtp_v24_4_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_level2_gtp_v24_4_dissect.message_length = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.message_length(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
lseg_turquoise_level2_gtp_v24_4_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.message_length

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.message_type

  return index
end

-- Display: Message Header
lseg_turquoise_level2_gtp_v24_4_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_level2_gtp_v24_4_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_level2_gtp_v24_4_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = lseg_turquoise_level2_gtp_v24_4_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_level2_gtp_v24_4_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Message
lseg_turquoise_level2_gtp_v24_4_size_of.message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_turquoise_level2_gtp_v24_4_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_level2_gtp_v24_4_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_level2_gtp_v24_4_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = lseg_turquoise_level2_gtp_v24_4_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_level2_gtp_v24_4_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_turquoise_level2_gtp_v24_4_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.message, range, display)
  end

  return lseg_turquoise_level2_gtp_v24_4_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
lseg_turquoise_level2_gtp_v24_4_size_of.sequence_number = 4

-- Display: Sequence Number
lseg_turquoise_level2_gtp_v24_4_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_level2_gtp_v24_4_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
lseg_turquoise_level2_gtp_v24_4_size_of.market_data_group = 1

-- Display: Market Data Group
lseg_turquoise_level2_gtp_v24_4_display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_level2_gtp_v24_4_dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4_display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
lseg_turquoise_level2_gtp_v24_4_size_of.message_count = 1

-- Display: Message Count
lseg_turquoise_level2_gtp_v24_4_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_level2_gtp_v24_4_dissect.message_count = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.message_count(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Length
lseg_turquoise_level2_gtp_v24_4_size_of.length = 2

-- Display: Length
lseg_turquoise_level2_gtp_v24_4_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_level2_gtp_v24_4_dissect.length = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4_display.length(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_level2_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
lseg_turquoise_level2_gtp_v24_4_size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.length

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.message_count

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.market_data_group

  index = index + lseg_turquoise_level2_gtp_v24_4_size_of.sequence_number

  return index
end

-- Display: Unit Header
lseg_turquoise_level2_gtp_v24_4_display.unit_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_level2_gtp_v24_4_dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_level2_gtp_v24_4_dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_level2_gtp_v24_4_dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_level2_gtp_v24_4_dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_level2_gtp_v24_4_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_level2_gtp_v24_4_dissect.unit_header = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_turquoise_level2_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4_dissect.unit_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4_display.unit_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4_dissect.unit_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
lseg_turquoise_level2_gtp_v24_4_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_level2_gtp_v24_4_dissect.unit_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = lseg_turquoise_level2_gtp_v24_4_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function lseg_turquoise_level2_gtp_v24_4.init()
end

-- Dissector for Lseg Turquoise Level2 Gtp 24.4
function lseg_turquoise_level2_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lseg_turquoise_level2_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(lseg_turquoise_level2_gtp_v24_4, buffer(), lseg_turquoise_level2_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_level2_gtp_v24_4_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lseg_turquoise_level2_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lseg_turquoise_level2_gtp_v24_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Turquoise Level2 Gtp 24.4
local function lseg_turquoise_level2_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lseg_turquoise_level2_gtp_v24_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lseg_turquoise_level2_gtp_v24_4
  lseg_turquoise_level2_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Level2 Gtp 24.4
lseg_turquoise_level2_gtp_v24_4:register_heuristic("udp", lseg_turquoise_level2_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
--   Version: 24.4
--   Date: Wednesday, April 24, 2024
--   Specification: gtp-002-technical-guide-turquoise-issue-24-4.pdf
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
