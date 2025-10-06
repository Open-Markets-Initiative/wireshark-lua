-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Level2 Gtp 24.4 Protocol
local omi_lseg_turquoise_level2_gtp_v24_4 = Proto("Lseg.Turquoise.Level2.Gtp.v24.4.Lua", "Lseg Turquoise Level2 Gtp 24.4")

-- Protocol table
local lseg_turquoise_level2_gtp_v24_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Level2 Gtp 24.4 Fields
omi_lseg_turquoise_level2_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.level2.gtp.v24.4.allowedbooktypes", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.auction_info = ProtoField.new("Auction Info", "lseg.turquoise.level2.gtp.v24.4.auctioninfo", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.auction_type = ProtoField.new("Auction Type", "lseg.turquoise.level2.gtp.v24.4.auctiontype", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.best_bid_price = ProtoField.new("Best Bid Price", "lseg.turquoise.level2.gtp.v24.4.bestbidprice", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.best_bid_size = ProtoField.new("Best Bid Size", "lseg.turquoise.level2.gtp.v24.4.bestbidsize", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.best_offer_price = ProtoField.new("Best Offer Price", "lseg.turquoise.level2.gtp.v24.4.bestofferprice", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.best_offer_size = ProtoField.new("Best Offer Size", "lseg.turquoise.level2.gtp.v24.4.bestoffersize", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.bid_depth = ProtoField.new("Bid Depth", "lseg.turquoise.level2.gtp.v24.4.biddepth", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x800000000000)
omi_lseg_turquoise_level2_gtp_v24_4.fields.cross_id = ProtoField.new("Cross Id", "lseg.turquoise.level2.gtp.v24.4.crossid", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.cross_type = ProtoField.new("Cross Type", "lseg.turquoise.level2.gtp.v24.4.crosstype", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.turquoise.level2.gtp.v24.4.currency", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.deleted_order_quantity = ProtoField.new("Deleted Order Quantity", "lseg.turquoise.level2.gtp.v24.4.deletedorderquantity", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.level2.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.level2.gtp.v24.4.electronicorderbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_lseg_turquoise_level2_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.level2.gtp.v24.4.eventcode", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.executed_size = ProtoField.new("Executed Size", "lseg.turquoise.level2.gtp.v24.4.executedsize", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.far_price = ProtoField.new("Far Price", "lseg.turquoise.level2.gtp.v24.4.farprice", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.hidden_execution_indicator = ProtoField.new("Hidden Execution Indicator", "lseg.turquoise.level2.gtp.v24.4.hiddenexecutionindicator", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.turquoise.level2.gtp.v24.4.imbalancequantity", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.level2.gtp.v24.4.instrument", ftypes.UINT64)
omi_lseg_turquoise_level2_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.turquoise.level2.gtp.v24.4.isin", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.turquoise.level2.gtp.v24.4.length", ftypes.UINT16)
omi_lseg_turquoise_level2_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.level2.gtp.v24.4.marketdatagroup", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.turquoise.level2.gtp.v24.4.message", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.level2.gtp.v24.4.messagecount", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.level2.gtp.v24.4.messageheader", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.level2.gtp.v24.4.messagelength", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.level2.gtp.v24.4.messagetype", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.level2.gtp.v24.4.newendtime", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.new_price = ProtoField.new("New Price", "lseg.turquoise.level2.gtp.v24.4.newprice", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.new_quantity = ProtoField.new("New Quantity", "lseg.turquoise.level2.gtp.v24.4.newquantity", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.turquoise.level2.gtp.v24.4.numberoftrades", ftypes.UINT32)
omi_lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.turquoise.level2.gtp.v24.4.numberoftradesonbookonly", ftypes.UINT32)
omi_lseg_turquoise_level2_gtp_v24_4.fields.offer_depth = ProtoField.new("Offer Depth", "lseg.turquoise.level2.gtp.v24.4.offerdepth", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x400000000000)
omi_lseg_turquoise_level2_gtp_v24_4.fields.opening_closing_price_indicator = ProtoField.new("Opening Closing Price Indicator", "lseg.turquoise.level2.gtp.v24.4.openingclosingpriceindicator", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.level2.gtp.v24.4.orderbooktype", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_flags = ProtoField.new("Order Flags", "lseg.turquoise.level2.gtp.v24.4.orderflags", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_id = ProtoField.new("Order Id", "lseg.turquoise.level2.gtp.v24.4.orderid", ftypes.UINT64)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_type = ProtoField.new("Order Type", "lseg.turquoise.level2.gtp.v24.4.ordertype", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.turquoise.level2.gtp.v24.4.packet", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.participant = ProtoField.new("Participant", "lseg.turquoise.level2.gtp.v24.4.participant", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.turquoise.level2.gtp.v24.4.payload", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.previous_price = ProtoField.new("Previous Price", "lseg.turquoise.level2.gtp.v24.4.previousprice", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.previous_quantity = ProtoField.new("Previous Quantity", "lseg.turquoise.level2.gtp.v24.4.previousquantity", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.price = ProtoField.new("Price", "lseg.turquoise.level2.gtp.v24.4.price", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.level2.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.priority_flags = ProtoField.new("Priority Flags", "lseg.turquoise.level2.gtp.v24.4.priorityflags", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.level2.gtp.v24.4.reserved23", ftypes.BYTES)
omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.level2.gtp.v24.4.reserved38", ftypes.BYTES)
omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_5 = ProtoField.new("Reserved 5", "lseg.turquoise.level2.gtp.v24.4.reserved5", ftypes.BYTES)
omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_7 = ProtoField.new("Reserved 7", "lseg.turquoise.level2.gtp.v24.4.reserved7", ftypes.BYTES)
omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.turquoise.level2.gtp.v24.4.reserved8", ftypes.BYTES)
omi_lseg_turquoise_level2_gtp_v24_4.fields.retail_lp = ProtoField.new("Retail Lp", "lseg.turquoise.level2.gtp.v24.4.retaillp", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x200000000000)
omi_lseg_turquoise_level2_gtp_v24_4.fields.retained = ProtoField.new("Retained", "lseg.turquoise.level2.gtp.v24.4.retained", ftypes.UINT64, {[1]="Yes",[0]="No"}, base.DEC, 0x8000000000000000)
omi_lseg_turquoise_level2_gtp_v24_4.fields.rfq_id = ProtoField.new("Rfq Id", "lseg.turquoise.level2.gtp.v24.4.rfqid", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.turquoise.level2.gtp.v24.4.segment", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.level2.gtp.v24.4.sequencenumber", ftypes.UINT32)
omi_lseg_turquoise_level2_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.level2.gtp.v24.4.sessionchangereason", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.side = ProtoField.new("Side", "lseg.turquoise.level2.gtp.v24.4.side", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.size = ProtoField.new("Size", "lseg.turquoise.level2.gtp.v24.4.size", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.level2.gtp.v24.4.sourcevenue", ftypes.UINT16)
omi_lseg_turquoise_level2_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.level2.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.statistic_price = ProtoField.new("Statistic Price", "lseg.turquoise.level2.gtp.v24.4.statisticprice", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.statistic_size = ProtoField.new("Statistic Size", "lseg.turquoise.level2.gtp.v24.4.statisticsize", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.statistic_type = ProtoField.new("Statistic Type", "lseg.turquoise.level2.gtp.v24.4.statistictype", ftypes.UINT16)
omi_lseg_turquoise_level2_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.level2.gtp.v24.4.tickid", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.level2.gtp.v24.4.timestamp", ftypes.UINT64)
omi_lseg_turquoise_level2_gtp_v24_4.fields.total_executed_quantity = ProtoField.new("Total Executed Quantity", "lseg.turquoise.level2.gtp.v24.4.totalexecutedquantity", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.total_hidden_executed_quantity = ProtoField.new("Total Hidden Executed Quantity", "lseg.turquoise.level2.gtp.v24.4.totalhiddenexecutedquantity", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "lseg.turquoise.level2.gtp.v24.4.tradecancellation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_flags = ProtoField.new("Trade Flags", "lseg.turquoise.level2.gtp.v24.4.tradeflags", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_id = ProtoField.new("Trade Id", "lseg.turquoise.level2.gtp.v24.4.tradeid", ftypes.UINT64)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.turquoise.level2.gtp.v24.4.tradequalifier", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_type = ProtoField.new("Trade Type", "lseg.turquoise.level2.gtp.v24.4.tradetype", ftypes.UINT8)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.level2.gtp.v24.4.tradingstatus", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.turquoise.level2.gtp.v24.4.transactiontime", ftypes.UINT64)
omi_lseg_turquoise_level2_gtp_v24_4.fields.turnover = ProtoField.new("Turnover", "lseg.turquoise.level2.gtp.v24.4.turnover", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.turquoise.level2.gtp.v24.4.turnoveronbookonly", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.level2.gtp.v24.4.unitheader", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.unused_2 = ProtoField.new("Unused 2", "lseg.turquoise.level2.gtp.v24.4.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_lseg_turquoise_level2_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.turquoise.level2.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_lseg_turquoise_level2_gtp_v24_4.fields.unused_7 = ProtoField.new("Unused 7", "lseg.turquoise.level2.gtp.v24.4.unused7", ftypes.UINT8, nil, base.DEC, 0x7F)
omi_lseg_turquoise_level2_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.level2.gtp.v24.4.venueinstrumentid", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.volume = ProtoField.new("Volume", "lseg.turquoise.level2.gtp.v24.4.volume", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.turquoise.level2.gtp.v24.4.volumeonbookonly", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.vwap = ProtoField.new("Vwap", "lseg.turquoise.level2.gtp.v24.4.vwap", ftypes.DOUBLE)
omi_lseg_turquoise_level2_gtp_v24_4.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.turquoise.level2.gtp.v24.4.vwaponbookonly", ftypes.DOUBLE)

-- Lseg Turquoise Level2 Gtp 24.4 messages
omi_lseg_turquoise_level2_gtp_v24_4.fields.add_order_incremental_message = ProtoField.new("Add Order Incremental Message", "lseg.turquoise.level2.gtp.v24.4.addorderincrementalmessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.level2.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.level2.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.turquoise.level2.gtp.v24.4.orderbookclearmessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_delete_message = ProtoField.new("Order Delete Message", "lseg.turquoise.level2.gtp.v24.4.orderdeletemessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.order_modify_message = ProtoField.new("Order Modify Message", "lseg.turquoise.level2.gtp.v24.4.ordermodifymessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.statistics_message = ProtoField.new("Statistics Message", "lseg.turquoise.level2.gtp.v24.4.statisticsmessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.statistics_update_message = ProtoField.new("Statistics Update Message", "lseg.turquoise.level2.gtp.v24.4.statisticsupdatemessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.level2.gtp.v24.4.systemeventmessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_cross_message = ProtoField.new("Trade Cross Message", "lseg.turquoise.level2.gtp.v24.4.tradecrossmessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_message = ProtoField.new("Trade Message", "lseg.turquoise.level2.gtp.v24.4.trademessage", ftypes.STRING)
omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "lseg.turquoise.level2.gtp.v24.4.tradesummarymessage", ftypes.STRING)

-- Lseg Turquoise Level2 Gtp 24.4 generated fields
omi_lseg_turquoise_level2_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.turquoise.level2.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_add_order_incremental_message = Pref.bool("Show Add Order Incremental Message", show.add_order_incremental_message, "Parse and add Add Order Incremental Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_status_message = Pref.bool("Show Instrument Status Message", show.instrument_status_message, "Parse and add Instrument Status Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_book_clear_message = Pref.bool("Show Order Book Clear Message", show.order_book_clear_message, "Parse and add Order Book Clear Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_flags = Pref.bool("Show Order Flags", show.order_flags, "Parse and add Order Flags to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_modify_message = Pref.bool("Show Order Modify Message", show.order_modify_message, "Parse and add Order Modify Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_priority_flags = Pref.bool("Show Priority Flags", show.priority_flags, "Parse and add Priority Flags to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_update_message = Pref.bool("Show Statistics Update Message", show.statistics_update_message, "Parse and add Statistics Update Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_cross_message = Pref.bool("Show Trade Cross Message", show.trade_cross_message, "Parse and add Trade Cross Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_summary_message = Pref.bool("Show Trade Summary Message", show.trade_summary_message, "Parse and add Trade Summary Message to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_lseg_turquoise_level2_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_incremental_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_add_order_incremental_message then
    show.add_order_incremental_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_add_order_incremental_message
    changed = true
  end
  if show.allowed_book_types ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_status_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_status_message then
    show.instrument_status_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_instrument_status_message
    changed = true
  end
  if show.message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_message then
    show.message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_message_header then
    show.message_header = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.order_book_clear_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_book_clear_message then
    show.order_book_clear_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_book_clear_message
    changed = true
  end
  if show.order_delete_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_delete_message then
    show.order_delete_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_delete_message
    changed = true
  end
  if show.order_flags ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_flags then
    show.order_flags = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_flags
    changed = true
  end
  if show.order_modify_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_modify_message then
    show.order_modify_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_order_modify_message
    changed = true
  end
  if show.packet ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_packet then
    show.packet = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.priority_flags ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_priority_flags then
    show.priority_flags = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_priority_flags
    changed = true
  end
  if show.statistics_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_message then
    show.statistics_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_message
    changed = true
  end
  if show.statistics_update_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_update_message then
    show.statistics_update_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_statistics_update_message
    changed = true
  end
  if show.system_event_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_system_event_message then
    show.system_event_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_system_event_message
    changed = true
  end
  if show.trade_cross_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_cross_message then
    show.trade_cross_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_cross_message
    changed = true
  end
  if show.trade_flags ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_flags then
    show.trade_flags = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_message then
    show.trade_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_message
    changed = true
  end
  if show.trade_summary_message ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_summary_message then
    show.trade_summary_message = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_trade_summary_message
    changed = true
  end
  if show.unit_header ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_payload then
    show.payload = omi_lseg_turquoise_level2_gtp_v24_4.prefs.show_payload
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

-- Best Offer Price
lseg_turquoise_level2_gtp_v24_4.best_offer_price = {}

-- Size Of: Best Offer Price
lseg_turquoise_level2_gtp_v24_4.best_offer_price.size = 8

-- Display: Best Offer Price
lseg_turquoise_level2_gtp_v24_4.best_offer_price.display = function(value)
  return "Best Offer Price: "..value
end

-- Translate: Best Offer Price
lseg_turquoise_level2_gtp_v24_4.best_offer_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Offer Price
lseg_turquoise_level2_gtp_v24_4.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.best_offer_price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
lseg_turquoise_level2_gtp_v24_4.best_offer_size = {}

-- Size Of: Best Offer Size
lseg_turquoise_level2_gtp_v24_4.best_offer_size.size = 8

-- Display: Best Offer Size
lseg_turquoise_level2_gtp_v24_4.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Translate: Best Offer Size
lseg_turquoise_level2_gtp_v24_4.best_offer_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Offer Size
lseg_turquoise_level2_gtp_v24_4.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.best_offer_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.best_offer_size.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Best Bid Price
lseg_turquoise_level2_gtp_v24_4.best_bid_price = {}

-- Size Of: Best Bid Price
lseg_turquoise_level2_gtp_v24_4.best_bid_price.size = 8

-- Display: Best Bid Price
lseg_turquoise_level2_gtp_v24_4.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
lseg_turquoise_level2_gtp_v24_4.best_bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Bid Price
lseg_turquoise_level2_gtp_v24_4.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.best_bid_price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
lseg_turquoise_level2_gtp_v24_4.best_bid_size = {}

-- Size Of: Best Bid Size
lseg_turquoise_level2_gtp_v24_4.best_bid_size.size = 8

-- Display: Best Bid Size
lseg_turquoise_level2_gtp_v24_4.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Translate: Best Bid Size
lseg_turquoise_level2_gtp_v24_4.best_bid_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Bid Size
lseg_turquoise_level2_gtp_v24_4.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.best_bid_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.best_bid_size.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Side
lseg_turquoise_level2_gtp_v24_4.side = {}

-- Size Of: Side
lseg_turquoise_level2_gtp_v24_4.side.size = 1

-- Display: Side
lseg_turquoise_level2_gtp_v24_4.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
lseg_turquoise_level2_gtp_v24_4.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.side, range, value, display)

  return offset + length, value
end

-- Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity = {}

-- Size Of: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.size = 8

-- Display: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.display = function(value)
  return "Deleted Order Quantity: "..value
end

-- Translate: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Deleted Order Quantity
lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.deleted_order_quantity, range, value, display)

  return offset + length, value
end

-- Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity = {}

-- Size Of: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.size = 8

-- Display: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.display = function(value)
  return "Total Hidden Executed Quantity: "..value
end

-- Translate: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Total Hidden Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.total_hidden_executed_quantity, range, value, display)

  return offset + length, value
end

-- Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_executed_quantity = {}

-- Size Of: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.size = 8

-- Display: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.display = function(value)
  return "Total Executed Quantity: "..value
end

-- Translate: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Total Executed Quantity
lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.total_executed_quantity, range, value, display)

  return offset + length, value
end

-- Far Price
lseg_turquoise_level2_gtp_v24_4.far_price = {}

-- Size Of: Far Price
lseg_turquoise_level2_gtp_v24_4.far_price.size = 8

-- Display: Far Price
lseg_turquoise_level2_gtp_v24_4.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
lseg_turquoise_level2_gtp_v24_4.far_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Far Price
lseg_turquoise_level2_gtp_v24_4.far_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.far_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.far_price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.far_price, range, value, display)

  return offset + length, value
end

-- Transaction Time
lseg_turquoise_level2_gtp_v24_4.transaction_time = {}

-- Size Of: Transaction Time
lseg_turquoise_level2_gtp_v24_4.transaction_time.size = 8

-- Display: Transaction Time
lseg_turquoise_level2_gtp_v24_4.transaction_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transaction Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_turquoise_level2_gtp_v24_4.source_venue = {}

-- Size Of: Source Venue
lseg_turquoise_level2_gtp_v24_4.source_venue.size = 2

-- Display: Source Venue
lseg_turquoise_level2_gtp_v24_4.source_venue.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_turquoise_level2_gtp_v24_4.instrument = {}

-- Size Of: Instrument
lseg_turquoise_level2_gtp_v24_4.instrument.size = 8

-- Display: Instrument
lseg_turquoise_level2_gtp_v24_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_level2_gtp_v24_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_turquoise_level2_gtp_v24_4.timestamp = {}

-- Size Of: Timestamp
lseg_turquoise_level2_gtp_v24_4.timestamp.size = 8

-- Display: Timestamp
lseg_turquoise_level2_gtp_v24_4.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_level2_gtp_v24_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Summary Message
lseg_turquoise_level2_gtp_v24_4.trade_summary_message = {}

-- Size Of: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4.trade_summary_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.transaction_time.size + 
  lseg_turquoise_level2_gtp_v24_4.far_price.size + 
  lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.side.size + 
  lseg_turquoise_level2_gtp_v24_4.best_bid_size.size + 
  lseg_turquoise_level2_gtp_v24_4.best_bid_price.size + 
  lseg_turquoise_level2_gtp_v24_4.best_offer_size.size + 
  lseg_turquoise_level2_gtp_v24_4.best_offer_price.size;

-- Display: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4.trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4.trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Far Price: 8 Byte Signed Fixed Width Integer
  index, far_price = lseg_turquoise_level2_gtp_v24_4.far_price.dissect(buffer, index, packet, parent)

  -- Total Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, total_executed_quantity = lseg_turquoise_level2_gtp_v24_4.total_executed_quantity.dissect(buffer, index, packet, parent)

  -- Total Hidden Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, total_hidden_executed_quantity = lseg_turquoise_level2_gtp_v24_4.total_hidden_executed_quantity.dissect(buffer, index, packet, parent)

  -- Deleted Order Quantity: 8 Byte Unsigned Fixed Width Integer
  index, deleted_order_quantity = lseg_turquoise_level2_gtp_v24_4.deleted_order_quantity.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4.side.dissect(buffer, index, packet, parent)

  -- Best Bid Size: 8 Byte Signed Fixed Width Integer
  index, best_bid_size = lseg_turquoise_level2_gtp_v24_4.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Bid Price: 8 Byte Signed Fixed Width Integer
  index, best_bid_price = lseg_turquoise_level2_gtp_v24_4.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: 8 Byte Signed Fixed Width Integer
  index, best_offer_size = lseg_turquoise_level2_gtp_v24_4.best_offer_size.dissect(buffer, index, packet, parent)

  -- Best Offer Price: 8 Byte Signed Fixed Width Integer
  index, best_offer_price = lseg_turquoise_level2_gtp_v24_4.best_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
lseg_turquoise_level2_gtp_v24_4.trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_summary_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator = {}

-- Size Of: Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.size = 1

-- Display: Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.display = function(value)
  return "Opening Closing Price Indicator: "..value
end

-- Dissect: Opening Closing Price Indicator
lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.opening_closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Auction Info
lseg_turquoise_level2_gtp_v24_4.auction_info = {}

-- Size Of: Auction Info
lseg_turquoise_level2_gtp_v24_4.auction_info.size = 1

-- Display: Auction Info
lseg_turquoise_level2_gtp_v24_4.auction_info.display = function(value)
  if value == "M" then
    return "Auction Info: Call Market (M)"
  end

  return "Auction Info: Unknown("..value..")"
end

-- Dissect: Auction Info
lseg_turquoise_level2_gtp_v24_4.auction_info.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.auction_info.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.auction_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.auction_info, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4.imbalance_quantity = {}

-- Size Of: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Auction Type
lseg_turquoise_level2_gtp_v24_4.auction_type = {}

-- Size Of: Auction Type
lseg_turquoise_level2_gtp_v24_4.auction_type.size = 1

-- Display: Auction Type
lseg_turquoise_level2_gtp_v24_4.auction_type.display = function(value)
  if value == "L" then
    return "Auction Type: Frequent Lit Auctions (L)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
lseg_turquoise_level2_gtp_v24_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Statistic Size
lseg_turquoise_level2_gtp_v24_4.statistic_size = {}

-- Size Of: Statistic Size
lseg_turquoise_level2_gtp_v24_4.statistic_size.size = 8

-- Display: Statistic Size
lseg_turquoise_level2_gtp_v24_4.statistic_size.display = function(value)
  return "Statistic Size: "..value
end

-- Translate: Statistic Size
lseg_turquoise_level2_gtp_v24_4.statistic_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Size
lseg_turquoise_level2_gtp_v24_4.statistic_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.statistic_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.statistic_size.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.statistic_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.statistic_size, range, value, display)

  return offset + length, value
end

-- Statistic Price
lseg_turquoise_level2_gtp_v24_4.statistic_price = {}

-- Size Of: Statistic Price
lseg_turquoise_level2_gtp_v24_4.statistic_price.size = 8

-- Display: Statistic Price
lseg_turquoise_level2_gtp_v24_4.statistic_price.display = function(value)
  return "Statistic Price: "..value
end

-- Translate: Statistic Price
lseg_turquoise_level2_gtp_v24_4.statistic_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Price
lseg_turquoise_level2_gtp_v24_4.statistic_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.statistic_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.statistic_price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.statistic_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.statistic_price, range, value, display)

  return offset + length, value
end

-- Statistic Type
lseg_turquoise_level2_gtp_v24_4.statistic_type = {}

-- Size Of: Statistic Type
lseg_turquoise_level2_gtp_v24_4.statistic_type.size = 2

-- Display: Statistic Type
lseg_turquoise_level2_gtp_v24_4.statistic_type.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.statistic_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Statistics Update Message
lseg_turquoise_level2_gtp_v24_4.statistics_update_message = {}

-- Size Of: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4.statistics_update_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.statistic_type.size + 
  lseg_turquoise_level2_gtp_v24_4.statistic_price.size + 
  lseg_turquoise_level2_gtp_v24_4.statistic_size.size + 
  lseg_turquoise_level2_gtp_v24_4.auction_type.size + 
  lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.auction_info.size + 
  lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.size;

-- Display: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4.statistics_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4.statistics_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Statistic Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, statistic_type = lseg_turquoise_level2_gtp_v24_4.statistic_type.dissect(buffer, index, packet, parent)

  -- Statistic Price: 8 Byte Signed Fixed Width Integer
  index, statistic_price = lseg_turquoise_level2_gtp_v24_4.statistic_price.dissect(buffer, index, packet, parent)

  -- Statistic Size: 8 Byte Unsigned Fixed Width Integer
  index, statistic_size = lseg_turquoise_level2_gtp_v24_4.statistic_size.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 1 values
  index, auction_type = lseg_turquoise_level2_gtp_v24_4.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_quantity = lseg_turquoise_level2_gtp_v24_4.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Auction Info: 1 Byte Ascii String Enum with 1 values
  index, auction_info = lseg_turquoise_level2_gtp_v24_4.auction_info.dissect(buffer, index, packet, parent)

  -- Opening Closing Price Indicator: 1 Byte Ascii String
  index, opening_closing_price_indicator = lseg_turquoise_level2_gtp_v24_4.opening_closing_price_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Update Message
lseg_turquoise_level2_gtp_v24_4.statistics_update_message.dissect = function(buffer, offset, packet, parent)
  if show.statistics_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.statistics_update_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.statistics_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.statistics_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.statistics_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only = {}

-- Size Of: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.size = 8

-- Display: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.display = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Turnover
lseg_turquoise_level2_gtp_v24_4.turnover = {}

-- Size Of: Turnover
lseg_turquoise_level2_gtp_v24_4.turnover.size = 8

-- Display: Turnover
lseg_turquoise_level2_gtp_v24_4.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_turquoise_level2_gtp_v24_4.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_turquoise_level2_gtp_v24_4.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.turnover.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.turnover, range, value, display)

  return offset + length, value
end

-- Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only = {}

-- Size Of: Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.size = 4

-- Display: Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.display = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_turquoise_level2_gtp_v24_4.number_of_trades = {}

-- Size Of: Number Of Trades
lseg_turquoise_level2_gtp_v24_4.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_turquoise_level2_gtp_v24_4.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_turquoise_level2_gtp_v24_4.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only = {}

-- Size Of: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.size = 8

-- Display: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.display = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_turquoise_level2_gtp_v24_4.vwap = {}

-- Size Of: Vwap
lseg_turquoise_level2_gtp_v24_4.vwap.size = 8

-- Display: Vwap
lseg_turquoise_level2_gtp_v24_4.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_turquoise_level2_gtp_v24_4.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_turquoise_level2_gtp_v24_4.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.vwap.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.vwap, range, value, display)

  return offset + length, value
end

-- Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4.volume_onbook_only = {}

-- Size Of: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.size = 8

-- Display: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.display = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Volume
lseg_turquoise_level2_gtp_v24_4.volume = {}

-- Size Of: Volume
lseg_turquoise_level2_gtp_v24_4.volume.size = 8

-- Display: Volume
lseg_turquoise_level2_gtp_v24_4.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_turquoise_level2_gtp_v24_4.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_turquoise_level2_gtp_v24_4.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.volume.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.volume, range, value, display)

  return offset + length, value
end

-- Statistics Message
lseg_turquoise_level2_gtp_v24_4.statistics_message = {}

-- Size Of: Statistics Message
lseg_turquoise_level2_gtp_v24_4.statistics_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.volume.size + 
  lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.size + 
  lseg_turquoise_level2_gtp_v24_4.vwap.size + 
  lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.size + 
  lseg_turquoise_level2_gtp_v24_4.number_of_trades.size + 
  lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.size + 
  lseg_turquoise_level2_gtp_v24_4.turnover.size + 
  lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.size;

-- Display: Statistics Message
lseg_turquoise_level2_gtp_v24_4.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
lseg_turquoise_level2_gtp_v24_4.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = lseg_turquoise_level2_gtp_v24_4.volume.dissect(buffer, index, packet, parent)

  -- Volume Onbook Only: 8 Byte Unsigned Fixed Width Integer
  index, volume_onbook_only = lseg_turquoise_level2_gtp_v24_4.volume_onbook_only.dissect(buffer, index, packet, parent)

  -- Vwap: 8 Byte Signed Fixed Width Integer
  index, vwap = lseg_turquoise_level2_gtp_v24_4.vwap.dissect(buffer, index, packet, parent)

  -- Vwap Onbook Only: 8 Byte Signed Fixed Width Integer
  index, vwap_onbook_only = lseg_turquoise_level2_gtp_v24_4.vwap_onbook_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades = lseg_turquoise_level2_gtp_v24_4.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades_onbook_only = lseg_turquoise_level2_gtp_v24_4.number_of_trades_onbook_only.dissect(buffer, index, packet, parent)

  -- Turnover: 8 Byte Signed Fixed Width Integer
  index, turnover = lseg_turquoise_level2_gtp_v24_4.turnover.dissect(buffer, index, packet, parent)

  -- Turnover Onbook Only: 8 Byte Signed Fixed Width Integer
  index, turnover_onbook_only = lseg_turquoise_level2_gtp_v24_4.turnover_onbook_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
lseg_turquoise_level2_gtp_v24_4.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.statistics_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.statistics_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
lseg_turquoise_level2_gtp_v24_4.trade_flags = {}

-- Size Of: Trade Flags
lseg_turquoise_level2_gtp_v24_4.trade_flags.size = 1

-- Display: Trade Flags
lseg_turquoise_level2_gtp_v24_4.trade_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Trade Cancellation flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Trade Cancellation|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Flags
lseg_turquoise_level2_gtp_v24_4.trade_flags.bits = function(buffer, offset, packet, parent)

  -- Trade Cancellation: 1 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_cancellation, buffer(offset, 1))

  -- Unused 7: 7 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.unused_7, buffer(offset, 1))
end

-- Dissect: Trade Flags
lseg_turquoise_level2_gtp_v24_4.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4.trade_flags.display(range, packet, parent)
  local element = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_flags, range, display)

  if show.trade_flags then
    lseg_turquoise_level2_gtp_v24_4.trade_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Cross Type
lseg_turquoise_level2_gtp_v24_4.cross_type = {}

-- Size Of: Cross Type
lseg_turquoise_level2_gtp_v24_4.cross_type.size = 1

-- Display: Cross Type
lseg_turquoise_level2_gtp_v24_4.cross_type.display = function(value)
  if value == 6 then
    return "Cross Type: Internal Btf (6)"
  end
  if value == 8 then
    return "Cross Type: Committed Btf (8)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_turquoise_level2_gtp_v24_4.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cross Id
lseg_turquoise_level2_gtp_v24_4.cross_id = {}

-- Size Of: Cross Id
lseg_turquoise_level2_gtp_v24_4.cross_id.size = 20

-- Display: Cross Id
lseg_turquoise_level2_gtp_v24_4.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lseg_turquoise_level2_gtp_v24_4.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.cross_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Trade Id
lseg_turquoise_level2_gtp_v24_4.trade_id = {}

-- Size Of: Trade Id
lseg_turquoise_level2_gtp_v24_4.trade_id.size = 8

-- Display: Trade Id
lseg_turquoise_level2_gtp_v24_4.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
lseg_turquoise_level2_gtp_v24_4.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_turquoise_level2_gtp_v24_4.reserved_8 = {}

-- Size Of: Reserved 8
lseg_turquoise_level2_gtp_v24_4.reserved_8.size = 8

-- Display: Reserved 8
lseg_turquoise_level2_gtp_v24_4.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_turquoise_level2_gtp_v24_4.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Price
lseg_turquoise_level2_gtp_v24_4.price = {}

-- Size Of: Price
lseg_turquoise_level2_gtp_v24_4.price.size = 8

-- Display: Price
lseg_turquoise_level2_gtp_v24_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_turquoise_level2_gtp_v24_4.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_turquoise_level2_gtp_v24_4.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.price, range, value, display)

  return offset + length, value
end

-- Executed Size
lseg_turquoise_level2_gtp_v24_4.executed_size = {}

-- Size Of: Executed Size
lseg_turquoise_level2_gtp_v24_4.executed_size.size = 8

-- Display: Executed Size
lseg_turquoise_level2_gtp_v24_4.executed_size.display = function(value)
  return "Executed Size: "..value
end

-- Translate: Executed Size
lseg_turquoise_level2_gtp_v24_4.executed_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Size
lseg_turquoise_level2_gtp_v24_4.executed_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.executed_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.executed_size.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.executed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.executed_size, range, value, display)

  return offset + length, value
end

-- Trade Cross Message
lseg_turquoise_level2_gtp_v24_4.trade_cross_message = {}

-- Size Of: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4.trade_cross_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.transaction_time.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.executed_size.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.price.size + 
  lseg_turquoise_level2_gtp_v24_4.reserved_8.size + 
  lseg_turquoise_level2_gtp_v24_4.trade_id.size + 
  lseg_turquoise_level2_gtp_v24_4.cross_id.size + 
  lseg_turquoise_level2_gtp_v24_4.cross_type.size + 
  lseg_turquoise_level2_gtp_v24_4.trade_flags.size;

-- Display: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4.trade_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4.trade_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: 8 Byte Unsigned Fixed Width Integer
  index, executed_size = lseg_turquoise_level2_gtp_v24_4.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_turquoise_level2_gtp_v24_4.price.dissect(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_turquoise_level2_gtp_v24_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = lseg_turquoise_level2_gtp_v24_4.trade_id.dissect(buffer, index, packet, parent)

  -- Cross Id: 20 Byte Ascii String
  index, cross_id = lseg_turquoise_level2_gtp_v24_4.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, cross_type = lseg_turquoise_level2_gtp_v24_4.cross_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 2 fields
  index, trade_flags = lseg_turquoise_level2_gtp_v24_4.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cross Message
lseg_turquoise_level2_gtp_v24_4.trade_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cross_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_cross_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.trade_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.trade_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.trade_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Qualifier
lseg_turquoise_level2_gtp_v24_4.trade_qualifier = {}

-- Size Of: Trade Qualifier
lseg_turquoise_level2_gtp_v24_4.trade_qualifier.size = 1

-- Display: Trade Qualifier
lseg_turquoise_level2_gtp_v24_4.trade_qualifier.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.trade_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.trade_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Hidden Execution Indicator
lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator = {}

-- Size Of: Hidden Execution Indicator
lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.size = 1

-- Display: Hidden Execution Indicator
lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.hidden_execution_indicator, range, value, display)

  return offset + length, value
end

-- Reserved 5
lseg_turquoise_level2_gtp_v24_4.reserved_5 = {}

-- Size Of: Reserved 5
lseg_turquoise_level2_gtp_v24_4.reserved_5.size = 5

-- Display: Reserved 5
lseg_turquoise_level2_gtp_v24_4.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
lseg_turquoise_level2_gtp_v24_4.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Order Flags
lseg_turquoise_level2_gtp_v24_4.order_flags = {}

-- Size Of: Order Flags
lseg_turquoise_level2_gtp_v24_4.order_flags.size = 5

-- Display: Order Flags
lseg_turquoise_level2_gtp_v24_4.order_flags.display = function(buffer, packet, parent)
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
lseg_turquoise_level2_gtp_v24_4.order_flags.bits = function(buffer, offset, packet, parent)

  -- Bid Depth: 1 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.bid_depth, buffer(offset, 5))

  -- Offer Depth: 1 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.offer_depth, buffer(offset, 5))

  -- Retail Lp: 1 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.retail_lp, buffer(offset, 5))

  -- Reserved 5: 5 Byte
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_5, buffer(offset, 5))
end

-- Dissect: Order Flags
lseg_turquoise_level2_gtp_v24_4.order_flags.dissect = function(buffer, offset, packet, parent)
  local size = 5
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4.order_flags.display(range, packet, parent)
  local element = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_flags, range, display)

  if show.order_flags then
    lseg_turquoise_level2_gtp_v24_4.order_flags.bits(buffer, offset, packet, element)
  end

  return offset + 5, range
end

-- Trade Type
lseg_turquoise_level2_gtp_v24_4.trade_type = {}

-- Size Of: Trade Type
lseg_turquoise_level2_gtp_v24_4.trade_type.size = 1

-- Display: Trade Type
lseg_turquoise_level2_gtp_v24_4.trade_type.display = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
lseg_turquoise_level2_gtp_v24_4.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trade Message
lseg_turquoise_level2_gtp_v24_4.trade_message = {}

-- Size Of: Trade Message
lseg_turquoise_level2_gtp_v24_4.trade_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.transaction_time.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.executed_size.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.price.size + 
  lseg_turquoise_level2_gtp_v24_4.reserved_8.size + 
  lseg_turquoise_level2_gtp_v24_4.trade_id.size + 
  lseg_turquoise_level2_gtp_v24_4.trade_type.size + 
  lseg_turquoise_level2_gtp_v24_4.auction_type.size + 
  lseg_turquoise_level2_gtp_v24_4.order_flags.size + 
  lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.size + 
  lseg_turquoise_level2_gtp_v24_4.trade_qualifier.size;

-- Display: Trade Message
lseg_turquoise_level2_gtp_v24_4.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_turquoise_level2_gtp_v24_4.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: 8 Byte Unsigned Fixed Width Integer
  index, executed_size = lseg_turquoise_level2_gtp_v24_4.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_turquoise_level2_gtp_v24_4.price.dissect(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_turquoise_level2_gtp_v24_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = lseg_turquoise_level2_gtp_v24_4.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, trade_type = lseg_turquoise_level2_gtp_v24_4.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 1 values
  index, auction_type = lseg_turquoise_level2_gtp_v24_4.auction_type.dissect(buffer, index, packet, parent)

  -- Order Flags: Struct of 4 fields
  index, order_flags = lseg_turquoise_level2_gtp_v24_4.order_flags.dissect(buffer, index, packet, parent)

  -- Hidden Execution Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hidden_execution_indicator = lseg_turquoise_level2_gtp_v24_4.hidden_execution_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: 1 Byte Ascii String Enum with 7 values
  index, trade_qualifier = lseg_turquoise_level2_gtp_v24_4.trade_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_turquoise_level2_gtp_v24_4.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trade_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Type
lseg_turquoise_level2_gtp_v24_4.order_book_type = {}

-- Size Of: Order Book Type
lseg_turquoise_level2_gtp_v24_4.order_book_type.size = 1

-- Display: Order Book Type
lseg_turquoise_level2_gtp_v24_4.order_book_type.display = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_level2_gtp_v24_4.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4.order_book_clear_message = {}

-- Size Of: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.order_book_type.size;

-- Display: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Quantity
lseg_turquoise_level2_gtp_v24_4.previous_quantity = {}

-- Size Of: Previous Quantity
lseg_turquoise_level2_gtp_v24_4.previous_quantity.size = 8

-- Display: Previous Quantity
lseg_turquoise_level2_gtp_v24_4.previous_quantity.display = function(value)
  return "Previous Quantity: "..value
end

-- Translate: Previous Quantity
lseg_turquoise_level2_gtp_v24_4.previous_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Quantity
lseg_turquoise_level2_gtp_v24_4.previous_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.previous_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.previous_quantity.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.previous_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.previous_quantity, range, value, display)

  return offset + length, value
end

-- Previous Price
lseg_turquoise_level2_gtp_v24_4.previous_price = {}

-- Size Of: Previous Price
lseg_turquoise_level2_gtp_v24_4.previous_price.size = 8

-- Display: Previous Price
lseg_turquoise_level2_gtp_v24_4.previous_price.display = function(value)
  return "Previous Price: "..value
end

-- Translate: Previous Price
lseg_turquoise_level2_gtp_v24_4.previous_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Price
lseg_turquoise_level2_gtp_v24_4.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.previous_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.previous_price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_turquoise_level2_gtp_v24_4.order_id = {}

-- Size Of: Order Id
lseg_turquoise_level2_gtp_v24_4.order_id.size = 8

-- Display: Order Id
lseg_turquoise_level2_gtp_v24_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_turquoise_level2_gtp_v24_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_level2_gtp_v24_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Delete Message
lseg_turquoise_level2_gtp_v24_4.order_delete_message = {}

-- Size Of: Order Delete Message
lseg_turquoise_level2_gtp_v24_4.order_delete_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.order_id.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.side.size + 
  lseg_turquoise_level2_gtp_v24_4.order_book_type.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.previous_price.size + 
  lseg_turquoise_level2_gtp_v24_4.previous_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.transaction_time.size;

-- Display: Order Delete Message
lseg_turquoise_level2_gtp_v24_4.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
lseg_turquoise_level2_gtp_v24_4.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_turquoise_level2_gtp_v24_4.order_id.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4.side.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Previous Price: 8 Byte Signed Fixed Width Integer
  index, previous_price = lseg_turquoise_level2_gtp_v24_4.previous_price.dissect(buffer, index, packet, parent)

  -- Previous Quantity: 8 Byte Unsigned Fixed Width Integer
  index, previous_quantity = lseg_turquoise_level2_gtp_v24_4.previous_quantity.dissect(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
lseg_turquoise_level2_gtp_v24_4.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_delete_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- New Price
lseg_turquoise_level2_gtp_v24_4.new_price = {}

-- Size Of: New Price
lseg_turquoise_level2_gtp_v24_4.new_price.size = 8

-- Display: New Price
lseg_turquoise_level2_gtp_v24_4.new_price.display = function(value)
  return "New Price: "..value
end

-- Translate: New Price
lseg_turquoise_level2_gtp_v24_4.new_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: New Price
lseg_turquoise_level2_gtp_v24_4.new_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.new_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.new_price.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Quantity
lseg_turquoise_level2_gtp_v24_4.new_quantity = {}

-- Size Of: New Quantity
lseg_turquoise_level2_gtp_v24_4.new_quantity.size = 8

-- Display: New Quantity
lseg_turquoise_level2_gtp_v24_4.new_quantity.display = function(value)
  return "New Quantity: "..value
end

-- Translate: New Quantity
lseg_turquoise_level2_gtp_v24_4.new_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: New Quantity
lseg_turquoise_level2_gtp_v24_4.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.new_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.new_quantity.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 7
lseg_turquoise_level2_gtp_v24_4.reserved_7 = {}

-- Size Of: Reserved 7
lseg_turquoise_level2_gtp_v24_4.reserved_7.size = 7

-- Display: Reserved 7
lseg_turquoise_level2_gtp_v24_4.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
lseg_turquoise_level2_gtp_v24_4.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.reserved_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Priority Flags
lseg_turquoise_level2_gtp_v24_4.priority_flags = {}

-- Size Of: Priority Flags
lseg_turquoise_level2_gtp_v24_4.priority_flags.size = 7

-- Display: Priority Flags
lseg_turquoise_level2_gtp_v24_4.priority_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Retained flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Retained|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Priority Flags
lseg_turquoise_level2_gtp_v24_4.priority_flags.bits = function(buffer, offset, packet, parent)

  -- Retained: 1 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.retained, buffer(offset, 7))

  -- Reserved 7: 7 Byte
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_7, buffer(offset, 7))
end

-- Dissect: Priority Flags
lseg_turquoise_level2_gtp_v24_4.priority_flags.dissect = function(buffer, offset, packet, parent)
  local size = 7
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4.priority_flags.display(range, packet, parent)
  local element = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.priority_flags, range, display)

  if show.priority_flags then
    lseg_turquoise_level2_gtp_v24_4.priority_flags.bits(buffer, offset, packet, element)
  end

  return offset + 7, range
end

-- Order Modify Message
lseg_turquoise_level2_gtp_v24_4.order_modify_message = {}

-- Size Of: Order Modify Message
lseg_turquoise_level2_gtp_v24_4.order_modify_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.order_id.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.side.size + 
  lseg_turquoise_level2_gtp_v24_4.priority_flags.size + 
  lseg_turquoise_level2_gtp_v24_4.order_book_type.size + 
  lseg_turquoise_level2_gtp_v24_4.new_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.new_price.size + 
  lseg_turquoise_level2_gtp_v24_4.reserved_8.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.previous_price.size + 
  lseg_turquoise_level2_gtp_v24_4.previous_quantity.size + 
  lseg_turquoise_level2_gtp_v24_4.transaction_time.size;

-- Display: Order Modify Message
lseg_turquoise_level2_gtp_v24_4.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
lseg_turquoise_level2_gtp_v24_4.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_turquoise_level2_gtp_v24_4.order_id.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4.side.dissect(buffer, index, packet, parent)

  -- Priority Flags: Struct of 2 fields
  index, priority_flags = lseg_turquoise_level2_gtp_v24_4.priority_flags.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  -- New Quantity: 8 Byte Unsigned Fixed Width Integer
  index, new_quantity = lseg_turquoise_level2_gtp_v24_4.new_quantity.dissect(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = lseg_turquoise_level2_gtp_v24_4.new_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte
  index, reserved_8 = lseg_turquoise_level2_gtp_v24_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Previous Price: 8 Byte Signed Fixed Width Integer
  index, previous_price = lseg_turquoise_level2_gtp_v24_4.previous_price.dissect(buffer, index, packet, parent)

  -- Previous Quantity: 8 Byte Unsigned Fixed Width Integer
  index, previous_quantity = lseg_turquoise_level2_gtp_v24_4.previous_quantity.dissect(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
lseg_turquoise_level2_gtp_v24_4.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_modify_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Rfq Id
lseg_turquoise_level2_gtp_v24_4.rfq_id = {}

-- Size Of: Rfq Id
lseg_turquoise_level2_gtp_v24_4.rfq_id.size = 10

-- Display: Rfq Id
lseg_turquoise_level2_gtp_v24_4.rfq_id.display = function(value)
  return "Rfq Id: "..value
end

-- Dissect: Rfq Id
lseg_turquoise_level2_gtp_v24_4.rfq_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.rfq_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.rfq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.rfq_id, range, value, display)

  return offset + length, value
end

-- Order Type
lseg_turquoise_level2_gtp_v24_4.order_type = {}

-- Size Of: Order Type
lseg_turquoise_level2_gtp_v24_4.order_type.size = 1

-- Display: Order Type
lseg_turquoise_level2_gtp_v24_4.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
lseg_turquoise_level2_gtp_v24_4.order_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.order_type, range, value, display)

  return offset + length, value
end

-- Participant
lseg_turquoise_level2_gtp_v24_4.participant = {}

-- Size Of: Participant
lseg_turquoise_level2_gtp_v24_4.participant.size = 11

-- Display: Participant
lseg_turquoise_level2_gtp_v24_4.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
lseg_turquoise_level2_gtp_v24_4.participant.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.participant, range, value, display)

  return offset + length, value
end

-- Size
lseg_turquoise_level2_gtp_v24_4.size = {}

-- Size Of: Size
lseg_turquoise_level2_gtp_v24_4.size.size = 8

-- Display: Size
lseg_turquoise_level2_gtp_v24_4.size.display = function(value)
  return "Size: "..value
end

-- Translate: Size
lseg_turquoise_level2_gtp_v24_4.size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Size
lseg_turquoise_level2_gtp_v24_4.size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_level2_gtp_v24_4.size.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.size, range, value, display)

  return offset + length, value
end

-- Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message = {}

-- Size Of: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.order_id.size + 
  lseg_turquoise_level2_gtp_v24_4.side.size + 
  lseg_turquoise_level2_gtp_v24_4.size.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.price.size + 
  lseg_turquoise_level2_gtp_v24_4.transaction_time.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.order_book_type.size + 
  lseg_turquoise_level2_gtp_v24_4.participant.size + 
  lseg_turquoise_level2_gtp_v24_4.order_type.size + 
  lseg_turquoise_level2_gtp_v24_4.rfq_id.size;

-- Display: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = lseg_turquoise_level2_gtp_v24_4.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = lseg_turquoise_level2_gtp_v24_4.side.dissect(buffer, index, packet, parent)

  -- Size: 8 Byte Unsigned Fixed Width Integer
  index, size = lseg_turquoise_level2_gtp_v24_4.size.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = lseg_turquoise_level2_gtp_v24_4.price.dissect(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = lseg_turquoise_level2_gtp_v24_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  -- Participant: 11 Byte Ascii String
  index, participant = lseg_turquoise_level2_gtp_v24_4.participant.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer
  index, order_type = lseg_turquoise_level2_gtp_v24_4.order_type.dissect(buffer, index, packet, parent)

  -- Rfq Id: 10 Byte Ascii String
  index, rfq_id = lseg_turquoise_level2_gtp_v24_4.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Incremental Message
lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_incremental_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.add_order_incremental_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.fields(buffer, offset, packet, parent)
  end
end

-- New End Time
lseg_turquoise_level2_gtp_v24_4.new_end_time = {}

-- Size Of: New End Time
lseg_turquoise_level2_gtp_v24_4.new_end_time.size = 6

-- Display: New End Time
lseg_turquoise_level2_gtp_v24_4.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_level2_gtp_v24_4.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_turquoise_level2_gtp_v24_4.session_change_reason = {}

-- Size Of: Session Change Reason
lseg_turquoise_level2_gtp_v24_4.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_turquoise_level2_gtp_v24_4.session_change_reason.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_turquoise_level2_gtp_v24_4.trading_status = {}

-- Size Of: Trading Status
lseg_turquoise_level2_gtp_v24_4.trading_status.size = 1

-- Display: Trading Status
lseg_turquoise_level2_gtp_v24_4.trading_status.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Status Message
lseg_turquoise_level2_gtp_v24_4.instrument_status_message = {}

-- Size Of: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4.instrument_status_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.trading_status.size + 
  lseg_turquoise_level2_gtp_v24_4.session_change_reason.size + 
  lseg_turquoise_level2_gtp_v24_4.new_end_time.size + 
  lseg_turquoise_level2_gtp_v24_4.order_book_type.size;

-- Display: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 9 values
  index, trading_status = lseg_turquoise_level2_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, session_change_reason = lseg_turquoise_level2_gtp_v24_4.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_turquoise_level2_gtp_v24_4.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_level2_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_level2_gtp_v24_4.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 38
lseg_turquoise_level2_gtp_v24_4.reserved_38 = {}

-- Size Of: Reserved 38
lseg_turquoise_level2_gtp_v24_4.reserved_38.size = 38

-- Display: Reserved 38
lseg_turquoise_level2_gtp_v24_4.reserved_38.display = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_level2_gtp_v24_4.reserved_38.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.reserved_38.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4.reserved_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Currency
lseg_turquoise_level2_gtp_v24_4.currency = {}

-- Size Of: Currency
lseg_turquoise_level2_gtp_v24_4.currency.size = 3

-- Display: Currency
lseg_turquoise_level2_gtp_v24_4.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_level2_gtp_v24_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_turquoise_level2_gtp_v24_4.reserved_23 = {}

-- Size Of: Reserved 23
lseg_turquoise_level2_gtp_v24_4.reserved_23.size = 23

-- Display: Reserved 23
lseg_turquoise_level2_gtp_v24_4.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_level2_gtp_v24_4.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_level2_gtp_v24_4.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Segment
lseg_turquoise_level2_gtp_v24_4.segment = {}

-- Size Of: Segment
lseg_turquoise_level2_gtp_v24_4.segment.size = 6

-- Display: Segment
lseg_turquoise_level2_gtp_v24_4.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_level2_gtp_v24_4.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances = {}

-- Size Of: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances = {}

-- Size Of: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4.price_band_tolerances = {}

-- Size Of: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.translate(raw)
  local display = lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_turquoise_level2_gtp_v24_4.tick_id = {}

-- Size Of: Tick Id
lseg_turquoise_level2_gtp_v24_4.tick_id.size = 2

-- Display: Tick Id
lseg_turquoise_level2_gtp_v24_4.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_level2_gtp_v24_4.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4.venue_instrument_id = {}

-- Size Of: Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Allowed Book Types
lseg_turquoise_level2_gtp_v24_4.allowed_book_types = {}

-- Size Of: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4.allowed_book_types.display = function(buffer, packet, parent)
  local display = ""

  -- Is Electronic Order Book flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Electronic Order Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4.allowed_book_types.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.unused_2, buffer(offset, 1))

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.electronic_order_book, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_turquoise_level2_gtp_v24_4.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4.allowed_book_types.display(range, packet, parent)
  local element = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_turquoise_level2_gtp_v24_4.allowed_book_types.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Isin
lseg_turquoise_level2_gtp_v24_4.isin = {}

-- Size Of: Isin
lseg_turquoise_level2_gtp_v24_4.isin.size = 12

-- Display: Isin
lseg_turquoise_level2_gtp_v24_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_level2_gtp_v24_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_level2_gtp_v24_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4.instrument_directory_message = {}

-- Size Of: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.instrument.size + 
  lseg_turquoise_level2_gtp_v24_4.isin.size + 
  lseg_turquoise_level2_gtp_v24_4.allowed_book_types.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size + 
  lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.size + 
  lseg_turquoise_level2_gtp_v24_4.tick_id.size + 
  lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.size + 
  lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.size + 
  lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.size + 
  lseg_turquoise_level2_gtp_v24_4.segment.size + 
  lseg_turquoise_level2_gtp_v24_4.reserved_23.size + 
  lseg_turquoise_level2_gtp_v24_4.currency.size + 
  lseg_turquoise_level2_gtp_v24_4.reserved_38.size;

-- Display: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_level2_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_turquoise_level2_gtp_v24_4.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_level2_gtp_v24_4.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_turquoise_level2_gtp_v24_4.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_turquoise_level2_gtp_v24_4.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_turquoise_level2_gtp_v24_4.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_level2_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_turquoise_level2_gtp_v24_4.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_turquoise_level2_gtp_v24_4.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_turquoise_level2_gtp_v24_4.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_turquoise_level2_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Reserved 38: 38 Byte
  index, reserved_38 = lseg_turquoise_level2_gtp_v24_4.reserved_38.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
lseg_turquoise_level2_gtp_v24_4.event_code = {}

-- Size Of: Event Code
lseg_turquoise_level2_gtp_v24_4.event_code.size = 1

-- Display: Event Code
lseg_turquoise_level2_gtp_v24_4.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_level2_gtp_v24_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
lseg_turquoise_level2_gtp_v24_4.system_event_message = {}

-- Size Of: System Event Message
lseg_turquoise_level2_gtp_v24_4.system_event_message.size =
  lseg_turquoise_level2_gtp_v24_4.timestamp.size + 
  lseg_turquoise_level2_gtp_v24_4.event_code.size + 
  lseg_turquoise_level2_gtp_v24_4.source_venue.size;

-- Display: System Event Message
lseg_turquoise_level2_gtp_v24_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_level2_gtp_v24_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_level2_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = lseg_turquoise_level2_gtp_v24_4.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_level2_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_level2_gtp_v24_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.system_event_message, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_level2_gtp_v24_4.payload = {}

-- Calculate runtime size of: Payload
lseg_turquoise_level2_gtp_v24_4.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_level2_gtp_v24_4.system_event_message.size(buffer, offset)
  end
  -- Size of Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.size(buffer, offset)
  end
  -- Size of Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_level2_gtp_v24_4.instrument_status_message.size(buffer, offset)
  end
  -- Size of Add Order Incremental Message
  if message_type == 0x46 then
    return lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.size(buffer, offset)
  end
  -- Size of Order Modify Message
  if message_type == 0x55 then
    return lseg_turquoise_level2_gtp_v24_4.order_modify_message.size(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == 0x44 then
    return lseg_turquoise_level2_gtp_v24_4.order_delete_message.size(buffer, offset)
  end
  -- Size of Order Book Clear Message
  if message_type == 0x79 then
    return lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 0x50 then
    return lseg_turquoise_level2_gtp_v24_4.trade_message.size(buffer, offset)
  end
  -- Size of Trade Cross Message
  if message_type == 0x71 then
    return lseg_turquoise_level2_gtp_v24_4.trade_cross_message.size(buffer, offset)
  end
  -- Size of Statistics Message
  if message_type == 0x77 then
    return lseg_turquoise_level2_gtp_v24_4.statistics_message.size(buffer, offset)
  end
  -- Size of Statistics Update Message
  if message_type == 0x6A then
    return lseg_turquoise_level2_gtp_v24_4.statistics_update_message.size(buffer, offset)
  end
  -- Size of Trade Summary Message
  if message_type == 0x57 then
    return lseg_turquoise_level2_gtp_v24_4.trade_summary_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
lseg_turquoise_level2_gtp_v24_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_turquoise_level2_gtp_v24_4.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_level2_gtp_v24_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_level2_gtp_v24_4.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_level2_gtp_v24_4.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Incremental Message
  if message_type == 0x46 then
    return lseg_turquoise_level2_gtp_v24_4.add_order_incremental_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if message_type == 0x55 then
    return lseg_turquoise_level2_gtp_v24_4.order_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 0x44 then
    return lseg_turquoise_level2_gtp_v24_4.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_turquoise_level2_gtp_v24_4.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_turquoise_level2_gtp_v24_4.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cross Message
  if message_type == 0x71 then
    return lseg_turquoise_level2_gtp_v24_4.trade_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return lseg_turquoise_level2_gtp_v24_4.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Update Message
  if message_type == 0x6A then
    return lseg_turquoise_level2_gtp_v24_4.statistics_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if message_type == 0x57 then
    return lseg_turquoise_level2_gtp_v24_4.trade_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_turquoise_level2_gtp_v24_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_turquoise_level2_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_turquoise_level2_gtp_v24_4.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_turquoise_level2_gtp_v24_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.payload, range, display)

  return lseg_turquoise_level2_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
lseg_turquoise_level2_gtp_v24_4.message_type = {}

-- Size Of: Message Type
lseg_turquoise_level2_gtp_v24_4.message_type.size = 1

-- Display: Message Type
lseg_turquoise_level2_gtp_v24_4.message_type.display = function(value)
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
lseg_turquoise_level2_gtp_v24_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_level2_gtp_v24_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_level2_gtp_v24_4.message_length = {}

-- Size Of: Message Length
lseg_turquoise_level2_gtp_v24_4.message_length.size = 1

-- Display: Message Length
lseg_turquoise_level2_gtp_v24_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_level2_gtp_v24_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
lseg_turquoise_level2_gtp_v24_4.message_header = {}

-- Size Of: Message Header
lseg_turquoise_level2_gtp_v24_4.message_header.size =
  lseg_turquoise_level2_gtp_v24_4.message_length.size + 
  lseg_turquoise_level2_gtp_v24_4.message_type.size;

-- Display: Message Header
lseg_turquoise_level2_gtp_v24_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_level2_gtp_v24_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_level2_gtp_v24_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = lseg_turquoise_level2_gtp_v24_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_level2_gtp_v24_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_level2_gtp_v24_4.message = {}

-- Calculate size of: Message
lseg_turquoise_level2_gtp_v24_4.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_level2_gtp_v24_4.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_turquoise_level2_gtp_v24_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_turquoise_level2_gtp_v24_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_level2_gtp_v24_4.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_level2_gtp_v24_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = lseg_turquoise_level2_gtp_v24_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_level2_gtp_v24_4.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_turquoise_level2_gtp_v24_4.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_level2_gtp_v24_4.message.display(buffer, packet, parent)
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.message, range, display)
  end

  return lseg_turquoise_level2_gtp_v24_4.message.fields(buffer, offset, packet, parent)
end

-- Sequence Number
lseg_turquoise_level2_gtp_v24_4.sequence_number = {}

-- Size Of: Sequence Number
lseg_turquoise_level2_gtp_v24_4.sequence_number.size = 4

-- Display: Sequence Number
lseg_turquoise_level2_gtp_v24_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_level2_gtp_v24_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_turquoise_level2_gtp_v24_4.market_data_group = {}

-- Size Of: Market Data Group
lseg_turquoise_level2_gtp_v24_4.market_data_group.size = 1

-- Display: Market Data Group
lseg_turquoise_level2_gtp_v24_4.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_level2_gtp_v24_4.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_level2_gtp_v24_4.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_turquoise_level2_gtp_v24_4.message_count = {}

-- Size Of: Message Count
lseg_turquoise_level2_gtp_v24_4.message_count.size = 1

-- Display: Message Count
lseg_turquoise_level2_gtp_v24_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_level2_gtp_v24_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Length
lseg_turquoise_level2_gtp_v24_4.length = {}

-- Size Of: Length
lseg_turquoise_level2_gtp_v24_4.length.size = 2

-- Display: Length
lseg_turquoise_level2_gtp_v24_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_level2_gtp_v24_4.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_level2_gtp_v24_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_level2_gtp_v24_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Unit Header
lseg_turquoise_level2_gtp_v24_4.unit_header = {}

-- Size Of: Unit Header
lseg_turquoise_level2_gtp_v24_4.unit_header.size =
  lseg_turquoise_level2_gtp_v24_4.length.size + 
  lseg_turquoise_level2_gtp_v24_4.message_count.size + 
  lseg_turquoise_level2_gtp_v24_4.market_data_group.size + 
  lseg_turquoise_level2_gtp_v24_4.sequence_number.size;

-- Display: Unit Header
lseg_turquoise_level2_gtp_v24_4.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_level2_gtp_v24_4.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_level2_gtp_v24_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_level2_gtp_v24_4.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_level2_gtp_v24_4.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_level2_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_level2_gtp_v24_4.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_level2_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_turquoise_level2_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_level2_gtp_v24_4.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_level2_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_turquoise_level2_gtp_v24_4.packet = {}

-- Dissect Packet
lseg_turquoise_level2_gtp_v24_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_level2_gtp_v24_4.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_turquoise_level2_gtp_v24_4.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_turquoise_level2_gtp_v24_4.init()
end

-- Dissector for Lseg Turquoise Level2 Gtp 24.4
function omi_lseg_turquoise_level2_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_level2_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_level2_gtp_v24_4, buffer(), omi_lseg_turquoise_level2_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_level2_gtp_v24_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_turquoise_level2_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_turquoise_level2_gtp_v24_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Turquoise Level2 Gtp 24.4
local function omi_lseg_turquoise_level2_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_level2_gtp_v24_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_level2_gtp_v24_4
  omi_lseg_turquoise_level2_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Level2 Gtp 24.4
omi_lseg_turquoise_level2_gtp_v24_4:register_heuristic("udp", omi_lseg_turquoise_level2_gtp_v24_4_heuristic)

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
