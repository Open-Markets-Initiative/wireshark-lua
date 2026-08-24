-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Lse Level1Replay Gtp 26.2 Protocol
local omi_lseg_lse_level1replay_gtp_v26_2 = Proto("Omi.Lseg.Lse.Level1Replay.Gtp.v26.2", "Lseg Lse Level1Replay Gtp 26.2")

-- Protocol table
local lseg_lse_level1replay_gtp_v26_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Lse Level1Replay Gtp 26.2 Fields
omi_lseg_lse_level1replay_gtp_v26_2.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.lse.level1replay.gtp.v26.2.allowedbooktypes", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.auction_info = ProtoField.new("Auction Info", "lseg.lse.level1replay.gtp.v26.2.auctioninfo", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.auction_type = ProtoField.new("Auction Type", "lseg.lse.level1replay.gtp.v26.2.auctiontype", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.average_daily_turnover_adt = ProtoField.new("Average Daily Turnover Adt", "lseg.lse.level1replay.gtp.v26.2.averagedailyturnoveradt", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_depth = ProtoField.new("Bid Depth", "lseg.lse.level1replay.gtp.v26.2.biddepth", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_limit_price = ProtoField.new("Bid Limit Price", "lseg.lse.level1replay.gtp.v26.2.bidlimitprice", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_limit_size = ProtoField.new("Bid Limit Size", "lseg.lse.level1replay.gtp.v26.2.bidlimitsize", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_market_size = ProtoField.new("Bid Market Size", "lseg.lse.level1replay.gtp.v26.2.bidmarketsize", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.count = ProtoField.new("Count", "lseg.lse.level1replay.gtp.v26.2.count", ftypes.UINT32)
omi_lseg_lse_level1replay_gtp_v26_2.fields.currency = ProtoField.new("Currency", "lseg.lse.level1replay.gtp.v26.2.currency", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.lse.level1replay.gtp.v26.2.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.lse.level1replay.gtp.v26.2.electronicorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_lseg_lse_level1replay_gtp_v26_2.fields.event_code = ProtoField.new("Event Code", "lseg.lse.level1replay.gtp.v26.2.eventcode", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.executed_size = ProtoField.new("Executed Size", "lseg.lse.level1replay.gtp.v26.2.executedsize", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.firm_quote_book = ProtoField.new("Firm Quote Book", "lseg.lse.level1replay.gtp.v26.2.firmquotebook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_level1replay_gtp_v26_2.fields.first_message = ProtoField.new("First Message", "lseg.lse.level1replay.gtp.v26.2.firstmessage", ftypes.UINT32)
omi_lseg_lse_level1replay_gtp_v26_2.fields.fourth_reserved_8 = ProtoField.new("Fourth Reserved 8", "lseg.lse.level1replay.gtp.v26.2.fourthreserved8", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.hidden_execution_indicator = ProtoField.new("Hidden Execution Indicator", "lseg.lse.level1replay.gtp.v26.2.hiddenexecutionindicator", ftypes.UINT8)
omi_lseg_lse_level1replay_gtp_v26_2.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.lse.level1replay.gtp.v26.2.imbalancequantity", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.instrument = ProtoField.new("Instrument", "lseg.lse.level1replay.gtp.v26.2.instrument", ftypes.UINT64)
omi_lseg_lse_level1replay_gtp_v26_2.fields.isin = ProtoField.new("Isin", "lseg.lse.level1replay.gtp.v26.2.isin", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.length = ProtoField.new("Length", "lseg.lse.level1replay.gtp.v26.2.length", ftypes.UINT16)
omi_lseg_lse_level1replay_gtp_v26_2.fields.login_status = ProtoField.new("Login Status", "lseg.lse.level1replay.gtp.v26.2.loginstatus", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.lse.level1replay.gtp.v26.2.marketdatagroup", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.message_count = ProtoField.new("Message Count", "lseg.lse.level1replay.gtp.v26.2.messagecount", ftypes.UINT8)
omi_lseg_lse_level1replay_gtp_v26_2.fields.message_length = ProtoField.new("Message Length", "lseg.lse.level1replay.gtp.v26.2.messagelength", ftypes.UINT16)
omi_lseg_lse_level1replay_gtp_v26_2.fields.message_type = ProtoField.new("Message Type", "lseg.lse.level1replay.gtp.v26.2.messagetype", ftypes.UINT8)
omi_lseg_lse_level1replay_gtp_v26_2.fields.new_end_time = ProtoField.new("New End Time", "lseg.lse.level1replay.gtp.v26.2.newendtime", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.lse.level1replay.gtp.v26.2.numberoftrades", ftypes.UINT32)
omi_lseg_lse_level1replay_gtp_v26_2.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.lse.level1replay.gtp.v26.2.numberoftradesonbookonly", ftypes.UINT32)
omi_lseg_lse_level1replay_gtp_v26_2.fields.offbook = ProtoField.new("Offbook", "lseg.lse.level1replay.gtp.v26.2.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_depth = ProtoField.new("Offer Depth", "lseg.lse.level1replay.gtp.v26.2.offerdepth", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_limit_price = ProtoField.new("Offer Limit Price", "lseg.lse.level1replay.gtp.v26.2.offerlimitprice", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_limit_size = ProtoField.new("Offer Limit Size", "lseg.lse.level1replay.gtp.v26.2.offerlimitsize", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_market_size = ProtoField.new("Offer Market Size", "lseg.lse.level1replay.gtp.v26.2.offermarketsize", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.opening_closing_price_indicator = ProtoField.new("Opening Closing Price Indicator", "lseg.lse.level1replay.gtp.v26.2.openingclosingpriceindicator", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.lse.level1replay.gtp.v26.2.orderbooktype", ftypes.UINT8)
omi_lseg_lse_level1replay_gtp_v26_2.fields.partition_id = ProtoField.new("Partition Id", "lseg.lse.level1replay.gtp.v26.2.partitionid", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.price = ProtoField.new("Price", "lseg.lse.level1replay.gtp.v26.2.price", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.private_rfq = ProtoField.new("Private Rfq", "lseg.lse.level1replay.gtp.v26.2.privaterfq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_status = ProtoField.new("Replay Status", "lseg.lse.level1replay.gtp.v26.2.replaystatus", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.request_id = ProtoField.new("Request Id", "lseg.lse.level1replay.gtp.v26.2.requestid", ftypes.UINT32)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_0 = ProtoField.new("Reserved 0", "lseg.lse.level1replay.gtp.v26.2.reserved0", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_07 = ProtoField.new("Reserved 07", "lseg.lse.level1replay.gtp.v26.2.reserved07", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.lse.level1replay.gtp.v26.2.reserved1", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_11 = ProtoField.new("Reserved 11", "lseg.lse.level1replay.gtp.v26.2.reserved11", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_12 = ProtoField.new("Reserved 12", "lseg.lse.level1replay.gtp.v26.2.reserved12", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_27 = ProtoField.new("Reserved 27", "lseg.lse.level1replay.gtp.v26.2.reserved27", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.lse.level1replay.gtp.v26.2.reserved4", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_57 = ProtoField.new("Reserved 57", "lseg.lse.level1replay.gtp.v26.2.reserved57", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.lse.level1replay.gtp.v26.2.reserved8", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.lse.level1replay.gtp.v26.2.secondreserved8", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.segment = ProtoField.new("Segment", "lseg.lse.level1replay.gtp.v26.2.segment", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.lse.level1replay.gtp.v26.2.sequencenumber", ftypes.UINT32)
omi_lseg_lse_level1replay_gtp_v26_2.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.lse.level1replay.gtp.v26.2.sessionchangereason", ftypes.UINT8)
omi_lseg_lse_level1replay_gtp_v26_2.fields.source_venue = ProtoField.new("Source Venue", "lseg.lse.level1replay.gtp.v26.2.sourcevenue", ftypes.UINT16)
omi_lseg_lse_level1replay_gtp_v26_2.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.lse.level1replay.gtp.v26.2.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.statistic_price = ProtoField.new("Statistic Price", "lseg.lse.level1replay.gtp.v26.2.statisticprice", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.statistic_size = ProtoField.new("Statistic Size", "lseg.lse.level1replay.gtp.v26.2.statisticsize", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.statistic_type = ProtoField.new("Statistic Type", "lseg.lse.level1replay.gtp.v26.2.statistictype", ftypes.UINT16)
omi_lseg_lse_level1replay_gtp_v26_2.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "lseg.lse.level1replay.gtp.v26.2.thirdreserved8", ftypes.BYTES)
omi_lseg_lse_level1replay_gtp_v26_2.fields.tick_id = ProtoField.new("Tick Id", "lseg.lse.level1replay.gtp.v26.2.tickid", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.timestamp = ProtoField.new("Timestamp", "lseg.lse.level1replay.gtp.v26.2.timestamp", ftypes.UINT64)
omi_lseg_lse_level1replay_gtp_v26_2.fields.top_of_book_flags = ProtoField.new("Top Of Book Flags", "lseg.lse.level1replay.gtp.v26.2.topofbookflags", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "lseg.lse.level1replay.gtp.v26.2.tradecancellation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_correction = ProtoField.new("Trade Correction", "lseg.lse.level1replay.gtp.v26.2.tradecorrection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_flags = ProtoField.new("Trade Flags", "lseg.lse.level1replay.gtp.v26.2.tradeflags", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_id = ProtoField.new("Trade Id", "lseg.lse.level1replay.gtp.v26.2.tradeid", ftypes.UINT64)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.lse.level1replay.gtp.v26.2.tradequalifier", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_type = ProtoField.new("Trade Type", "lseg.lse.level1replay.gtp.v26.2.tradetype", ftypes.UINT8)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trading_status = ProtoField.new("Trading Status", "lseg.lse.level1replay.gtp.v26.2.tradingstatus", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.lse.level1replay.gtp.v26.2.transactiontime", ftypes.UINT64)
omi_lseg_lse_level1replay_gtp_v26_2.fields.turnover = ProtoField.new("Turnover", "lseg.lse.level1replay.gtp.v26.2.turnover", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.lse.level1replay.gtp.v26.2.turnoveronbookonly", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.username = ProtoField.new("Username", "lseg.lse.level1replay.gtp.v26.2.username", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.lse.level1replay.gtp.v26.2.venueinstrumentid", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.volume = ProtoField.new("Volume", "lseg.lse.level1replay.gtp.v26.2.volume", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.lse.level1replay.gtp.v26.2.volumeonbookonly", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.vwap = ProtoField.new("Vwap", "lseg.lse.level1replay.gtp.v26.2.vwap", ftypes.DOUBLE)
omi_lseg_lse_level1replay_gtp_v26_2.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.lse.level1replay.gtp.v26.2.vwaponbookonly", ftypes.DOUBLE)

-- Lseg Lse Level1Replay Gtp 26.2 Headers
omi_lseg_lse_level1replay_gtp_v26_2.fields.message = ProtoField.new("Message", "lseg.lse.level1replay.gtp.v26.2.message", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.message_header = ProtoField.new("Message Header", "lseg.lse.level1replay.gtp.v26.2.messageheader", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.packet = ProtoField.new("Packet", "lseg.lse.level1replay.gtp.v26.2.packet", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.unit_header = ProtoField.new("Unit Header", "lseg.lse.level1replay.gtp.v26.2.unitheader", ftypes.STRING)

-- Lseg Lse Level1Replay 26.2 Application Messages
omi_lseg_lse_level1replay_gtp_v26_2.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.lse.level1replay.gtp.v26.2.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.lse.level1replay.gtp.v26.2.instrumentstatusmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.login_request_message = ProtoField.new("Login Request Message", "lseg.lse.level1replay.gtp.v26.2.loginrequestmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.login_response_message = ProtoField.new("Login Response Message", "lseg.lse.level1replay.gtp.v26.2.loginresponsemessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.lse.level1replay.gtp.v26.2.orderbookclearmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_and_recovery_complete_message = ProtoField.new("Replay And Recovery Complete Message", "lseg.lse.level1replay.gtp.v26.2.replayandrecoverycompletemessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_request_message = ProtoField.new("Replay Request Message", "lseg.lse.level1replay.gtp.v26.2.replayrequestmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_response_message = ProtoField.new("Replay Response Message", "lseg.lse.level1replay.gtp.v26.2.replayresponsemessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.statistics_message = ProtoField.new("Statistics Message", "lseg.lse.level1replay.gtp.v26.2.statisticsmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.statistics_update_message = ProtoField.new("Statistics Update Message", "lseg.lse.level1replay.gtp.v26.2.statisticsupdatemessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.system_event_message = ProtoField.new("System Event Message", "lseg.lse.level1replay.gtp.v26.2.systemeventmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "lseg.lse.level1replay.gtp.v26.2.topofbookmessage", ftypes.STRING)
omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_message = ProtoField.new("Trade Message", "lseg.lse.level1replay.gtp.v26.2.trademessage", ftypes.STRING)

-- Lseg Lse Level1Replay Gtp 26.2 generated fields
omi_lseg_lse_level1replay_gtp_v26_2.fields.message_index = ProtoField.new("Message Index", "lseg.lse.level1replay.gtp.v26.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Lse Level1Replay Gtp 26.2 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Lseg Lse Level1Replay Gtp 26.2 Show Options
omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lseg_lse_level1replay_gtp_v26_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_application_messages then
    show.application_messages = omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_headers then
    show.headers = omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_headers
  end
  if show.structs ~= omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_structs then
    show.structs = omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_indexes then
    show.indexes = omi_lseg_lse_level1replay_gtp_v26_2.prefs.show_indexes
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
-- Lseg Lse Level1Replay Gtp 26.2 Fields
-----------------------------------------------------------------------

-- Auction Info
lseg_lse_level1replay_gtp_v26_2.auction_info = {}

-- Size: Auction Info
lseg_lse_level1replay_gtp_v26_2.auction_info.size = 1

-- Display: Auction Info
lseg_lse_level1replay_gtp_v26_2.auction_info.display = function(value)
  if value == "0" then
    return "Auction Info: Not Applicable (0)"
  end
  if value == "B" then
    return "Auction Info: Buy Imbalance (B)"
  end
  if value == "N" then
    return "Auction Info: No Imbalance (N)"
  end
  if value == "O" then
    return "Auction Info: Insufficient Orders For Auction (O)"
  end
  if value == "S" then
    return "Auction Info: Sell Imbalance (S)"
  end

  return "Auction Info: Unknown("..value..")"
end

-- Dissect: Auction Info
lseg_lse_level1replay_gtp_v26_2.auction_info.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.auction_info.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.auction_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.auction_info, range, value, display)

  return offset + length, value
end

-- Auction Type
lseg_lse_level1replay_gtp_v26_2.auction_type = {}

-- Size: Auction Type
lseg_lse_level1replay_gtp_v26_2.auction_type.size = 1

-- Display: Auction Type
lseg_lse_level1replay_gtp_v26_2.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "A" then
    return "Auction Type: Aesp (A)"
  end
  if value == "B" then
    return "Auction Type: Edsp (B)"
  end
  if value == "E" then
    return "Auction Type: Resume Auction (E)"
  end
  if value == "F" then
    return "Auction Type: Periodic Auction (F)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
lseg_lse_level1replay_gtp_v26_2.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Average Daily Turnover Adt
lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt = {}

-- Size: Average Daily Turnover Adt
lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.size = 8

-- Display: Average Daily Turnover Adt
lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.display = function(value)
  return "Average Daily Turnover Adt: "..value
end

-- Translate: Average Daily Turnover Adt
lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Daily Turnover Adt
lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.average_daily_turnover_adt, range, value, display)

  return offset + length, value
end

-- Bid Limit Price
lseg_lse_level1replay_gtp_v26_2.bid_limit_price = {}

-- Size: Bid Limit Price
lseg_lse_level1replay_gtp_v26_2.bid_limit_price.size = 8

-- Display: Bid Limit Price
lseg_lse_level1replay_gtp_v26_2.bid_limit_price.display = function(value)
  return "Bid Limit Price: "..value
end

-- Translate: Bid Limit Price
lseg_lse_level1replay_gtp_v26_2.bid_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Limit Price
lseg_lse_level1replay_gtp_v26_2.bid_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.bid_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.bid_limit_price.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.bid_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_limit_price, range, value, display)

  return offset + length, value
end

-- Bid Limit Size
lseg_lse_level1replay_gtp_v26_2.bid_limit_size = {}

-- Size: Bid Limit Size
lseg_lse_level1replay_gtp_v26_2.bid_limit_size.size = 8

-- Display: Bid Limit Size
lseg_lse_level1replay_gtp_v26_2.bid_limit_size.display = function(value)
  return "Bid Limit Size: "..value
end

-- Translate: Bid Limit Size
lseg_lse_level1replay_gtp_v26_2.bid_limit_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Limit Size
lseg_lse_level1replay_gtp_v26_2.bid_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.bid_limit_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.bid_limit_size.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.bid_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_limit_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
lseg_lse_level1replay_gtp_v26_2.bid_market_size = {}

-- Size: Bid Market Size
lseg_lse_level1replay_gtp_v26_2.bid_market_size.size = 8

-- Display: Bid Market Size
lseg_lse_level1replay_gtp_v26_2.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Translate: Bid Market Size
lseg_lse_level1replay_gtp_v26_2.bid_market_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Market Size
lseg_lse_level1replay_gtp_v26_2.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.bid_market_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.bid_market_size.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Count
lseg_lse_level1replay_gtp_v26_2.count = {}

-- Size: Count
lseg_lse_level1replay_gtp_v26_2.count.size = 4

-- Display: Count
lseg_lse_level1replay_gtp_v26_2.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
lseg_lse_level1replay_gtp_v26_2.count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.count, range, value, display)

  return offset + length, value
end

-- Currency
lseg_lse_level1replay_gtp_v26_2.currency = {}

-- Size: Currency
lseg_lse_level1replay_gtp_v26_2.currency.size = 3

-- Display: Currency
lseg_lse_level1replay_gtp_v26_2.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_lse_level1replay_gtp_v26_2.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_lse_level1replay_gtp_v26_2.event_code = {}

-- Size: Event Code
lseg_lse_level1replay_gtp_v26_2.event_code.size = 1

-- Display: Event Code
lseg_lse_level1replay_gtp_v26_2.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_lse_level1replay_gtp_v26_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Size
lseg_lse_level1replay_gtp_v26_2.executed_size = {}

-- Size: Executed Size
lseg_lse_level1replay_gtp_v26_2.executed_size.size = 8

-- Display: Executed Size
lseg_lse_level1replay_gtp_v26_2.executed_size.display = function(value)
  return "Executed Size: "..value
end

-- Translate: Executed Size
lseg_lse_level1replay_gtp_v26_2.executed_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Size
lseg_lse_level1replay_gtp_v26_2.executed_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.executed_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.executed_size.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.executed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.executed_size, range, value, display)

  return offset + length, value
end

-- First Message
lseg_lse_level1replay_gtp_v26_2.first_message = {}

-- Size: First Message
lseg_lse_level1replay_gtp_v26_2.first_message.size = 4

-- Display: First Message
lseg_lse_level1replay_gtp_v26_2.first_message.display = function(value)
  return "First Message: "..value
end

-- Dissect: First Message
lseg_lse_level1replay_gtp_v26_2.first_message.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.first_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.first_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.first_message, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 8
lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8 = {}

-- Size: Fourth Reserved 8
lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.size = 8

-- Display: Fourth Reserved 8
lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.display = function(value)
  return "Fourth Reserved 8: "..value
end

-- Dissect: Fourth Reserved 8
lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.fourth_reserved_8, range, value, display)

  return offset + length, value
end

-- Hidden Execution Indicator
lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator = {}

-- Size: Hidden Execution Indicator
lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.size = 1

-- Display: Hidden Execution Indicator
lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.display = function(value)
  if value == 0 then
    return "Hidden Execution Indicator: Na (0)"
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
lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.hidden_execution_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
lseg_lse_level1replay_gtp_v26_2.imbalance_quantity = {}

-- Size: Imbalance Quantity
lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_lse_level1replay_gtp_v26_2.instrument = {}

-- Size: Instrument
lseg_lse_level1replay_gtp_v26_2.instrument.size = 8

-- Display: Instrument
lseg_lse_level1replay_gtp_v26_2.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_lse_level1replay_gtp_v26_2.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1replay_gtp_v26_2.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
lseg_lse_level1replay_gtp_v26_2.isin = {}

-- Size: Isin
lseg_lse_level1replay_gtp_v26_2.isin.size = 12

-- Display: Isin
lseg_lse_level1replay_gtp_v26_2.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_lse_level1replay_gtp_v26_2.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.isin, range, value, display)

  return offset + length, value
end

-- Length
lseg_lse_level1replay_gtp_v26_2.length = {}

-- Size: Length
lseg_lse_level1replay_gtp_v26_2.length.size = 2

-- Display: Length
lseg_lse_level1replay_gtp_v26_2.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_lse_level1replay_gtp_v26_2.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.length, range, value, display)

  return offset + length, value
end

-- Login Status
lseg_lse_level1replay_gtp_v26_2.login_status = {}

-- Size: Login Status
lseg_lse_level1replay_gtp_v26_2.login_status.size = 1

-- Display: Login Status
lseg_lse_level1replay_gtp_v26_2.login_status.display = function(value)
  if value == "A" then
    return "Login Status: Login Accepted (A)"
  end
  if value == "a" then
    return "Login Status: Comp Id Inactive Suspended (a)"
  end
  if value == "b" then
    return "Login Status: Login Limit Reached (b)"
  end
  if value == "c" then
    return "Login Status: Service Unavailable (c)"
  end
  if value == "d" then
    return "Login Status: Maximum Connections Limit Reached (d)"
  end
  if value == "e" then
    return "Login Status: Failed Other (e)"
  end
  if value == "f" then
    return "Login Status: Invalid Comp Id Or Ip Address (f)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
lseg_lse_level1replay_gtp_v26_2.login_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.login_status, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_lse_level1replay_gtp_v26_2.market_data_group = {}

-- Size: Market Data Group
lseg_lse_level1replay_gtp_v26_2.market_data_group.size = 1

-- Display: Market Data Group
lseg_lse_level1replay_gtp_v26_2.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_lse_level1replay_gtp_v26_2.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_lse_level1replay_gtp_v26_2.message_count = {}

-- Size: Message Count
lseg_lse_level1replay_gtp_v26_2.message_count.size = 1

-- Display: Message Count
lseg_lse_level1replay_gtp_v26_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_lse_level1replay_gtp_v26_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_lse_level1replay_gtp_v26_2.message_length = {}

-- Size: Message Length
lseg_lse_level1replay_gtp_v26_2.message_length.size = 2

-- Display: Message Length
lseg_lse_level1replay_gtp_v26_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_lse_level1replay_gtp_v26_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_lse_level1replay_gtp_v26_2.message_type = {}

-- Size: Message Type
lseg_lse_level1replay_gtp_v26_2.message_type.size = 1

-- Display: Message Type
lseg_lse_level1replay_gtp_v26_2.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Request Message (0x01)"
  end
  if value == 0x03 then
    return "Message Type: Replay Request Message (0x03)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x04 then
    return "Message Type: Replay Response Message (0x04)"
  end
  if value == 0x83 then
    return "Message Type: Replay And Recovery Complete Message (0x83)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x69 then
    return "Message Type: Top Of Book Message (0x69)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x50 then
    return "Message Type: Trade Message (0x50)"
  end
  if value == 0x77 then
    return "Message Type: Statistics Message (0x77)"
  end
  if value == 0x6A then
    return "Message Type: Statistics Update Message (0x6A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_lse_level1replay_gtp_v26_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse_level1replay_gtp_v26_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_lse_level1replay_gtp_v26_2.new_end_time = {}

-- Size: New End Time
lseg_lse_level1replay_gtp_v26_2.new_end_time.size = 6

-- Display: New End Time
lseg_lse_level1replay_gtp_v26_2.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_lse_level1replay_gtp_v26_2.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_lse_level1replay_gtp_v26_2.number_of_trades = {}

-- Size: Number Of Trades
lseg_lse_level1replay_gtp_v26_2.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_lse_level1replay_gtp_v26_2.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_lse_level1replay_gtp_v26_2.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Number Of Trades Onbook Only
lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only = {}

-- Size: Number Of Trades Onbook Only
lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.size = 4

-- Display: Number Of Trades Onbook Only
lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.display = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Offer Limit Price
lseg_lse_level1replay_gtp_v26_2.offer_limit_price = {}

-- Size: Offer Limit Price
lseg_lse_level1replay_gtp_v26_2.offer_limit_price.size = 8

-- Display: Offer Limit Price
lseg_lse_level1replay_gtp_v26_2.offer_limit_price.display = function(value)
  return "Offer Limit Price: "..value
end

-- Translate: Offer Limit Price
lseg_lse_level1replay_gtp_v26_2.offer_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Limit Price
lseg_lse_level1replay_gtp_v26_2.offer_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.offer_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.offer_limit_price.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.offer_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_limit_price, range, value, display)

  return offset + length, value
end

-- Offer Limit Size
lseg_lse_level1replay_gtp_v26_2.offer_limit_size = {}

-- Size: Offer Limit Size
lseg_lse_level1replay_gtp_v26_2.offer_limit_size.size = 8

-- Display: Offer Limit Size
lseg_lse_level1replay_gtp_v26_2.offer_limit_size.display = function(value)
  return "Offer Limit Size: "..value
end

-- Translate: Offer Limit Size
lseg_lse_level1replay_gtp_v26_2.offer_limit_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Limit Size
lseg_lse_level1replay_gtp_v26_2.offer_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.offer_limit_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.offer_limit_size.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.offer_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_limit_size, range, value, display)

  return offset + length, value
end

-- Offer Market Size
lseg_lse_level1replay_gtp_v26_2.offer_market_size = {}

-- Size: Offer Market Size
lseg_lse_level1replay_gtp_v26_2.offer_market_size.size = 8

-- Display: Offer Market Size
lseg_lse_level1replay_gtp_v26_2.offer_market_size.display = function(value)
  return "Offer Market Size: "..value
end

-- Translate: Offer Market Size
lseg_lse_level1replay_gtp_v26_2.offer_market_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Market Size
lseg_lse_level1replay_gtp_v26_2.offer_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.offer_market_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.offer_market_size.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.offer_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_market_size, range, value, display)

  return offset + length, value
end

-- Opening Closing Price Indicator
lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator = {}

-- Size: Opening Closing Price Indicator
lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.size = 1

-- Display: Opening Closing Price Indicator
lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.display = function(value)
  if value == "A" then
    return "Opening Closing Price Indicator: Ut (A)"
  end
  if value == "B" then
    return "Opening Closing Price Indicator: At (B)"
  end
  if value == "C" then
    return "Opening Closing Price Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Opening Closing Price Indicator: Last At (D)"
  end
  if value == "E" then
    return "Opening Closing Price Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Opening Closing Price Indicator: Manual (F)"
  end
  if value == "I" then
    return "Opening Closing Price Indicator: Previous Close (I)"
  end

  return "Opening Closing Price Indicator: Unknown("..value..")"
end

-- Dissect: Opening Closing Price Indicator
lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.opening_closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_lse_level1replay_gtp_v26_2.order_book_type = {}

-- Size: Order Book Type
lseg_lse_level1replay_gtp_v26_2.order_book_type.size = 1

-- Display: Order Book Type
lseg_lse_level1replay_gtp_v26_2.order_book_type.display = function(value)
  if value == 1 then
    return "Order Book Type: Firm Quote Book (1)"
  end
  if value == 2 then
    return "Order Book Type: Offbook (2)"
  end
  if value == 3 then
    return "Order Book Type: Electronic Order Book (3)"
  end
  if value == 4 then
    return "Order Book Type: Private Rfq (4)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_lse_level1replay_gtp_v26_2.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Partition Id
lseg_lse_level1replay_gtp_v26_2.partition_id = {}

-- Size: Partition Id
lseg_lse_level1replay_gtp_v26_2.partition_id.size = 1

-- Display: Partition Id
lseg_lse_level1replay_gtp_v26_2.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
lseg_lse_level1replay_gtp_v26_2.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.partition_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Price
lseg_lse_level1replay_gtp_v26_2.price = {}

-- Size: Price
lseg_lse_level1replay_gtp_v26_2.price.size = 8

-- Display: Price
lseg_lse_level1replay_gtp_v26_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_lse_level1replay_gtp_v26_2.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_lse_level1replay_gtp_v26_2.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.price.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.price, range, value, display)

  return offset + length, value
end

-- Replay Status
lseg_lse_level1replay_gtp_v26_2.replay_status = {}

-- Size: Replay Status
lseg_lse_level1replay_gtp_v26_2.replay_status.size = 1

-- Display: Replay Status
lseg_lse_level1replay_gtp_v26_2.replay_status.display = function(value)
  if value == "A" then
    return "Replay Status: Request Accepted (A)"
  end
  if value == "D" then
    return "Replay Status: Request Limit Reached (D)"
  end
  if value == "O" then
    return "Replay Status: Out Of Range (O)"
  end
  if value == "U" then
    return "Replay Status: Replay Unavailable (U)"
  end
  if value == "c" then
    return "Replay Status: Concurrent Limit Reached (c)"
  end
  if value == "e" then
    return "Replay Status: Failed Other (e)"
  end

  return "Replay Status: Unknown("..value..")"
end

-- Dissect: Replay Status
lseg_lse_level1replay_gtp_v26_2.replay_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.replay_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.replay_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_status, range, value, display)

  return offset + length, value
end

-- Request Id
lseg_lse_level1replay_gtp_v26_2.request_id = {}

-- Size: Request Id
lseg_lse_level1replay_gtp_v26_2.request_id.size = 4

-- Display: Request Id
lseg_lse_level1replay_gtp_v26_2.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
lseg_lse_level1replay_gtp_v26_2.request_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.request_id, range, value, display)

  return offset + length, value
end

-- Reserved 11
lseg_lse_level1replay_gtp_v26_2.reserved_11 = {}

-- Size: Reserved 11
lseg_lse_level1replay_gtp_v26_2.reserved_11.size = 11

-- Display: Reserved 11
lseg_lse_level1replay_gtp_v26_2.reserved_11.display = function(value)
  return "Reserved 11: "..value
end

-- Dissect: Reserved 11
lseg_lse_level1replay_gtp_v26_2.reserved_11.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.reserved_11.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.reserved_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_11, range, value, display)

  return offset + length, value
end

-- Reserved 12
lseg_lse_level1replay_gtp_v26_2.reserved_12 = {}

-- Size: Reserved 12
lseg_lse_level1replay_gtp_v26_2.reserved_12.size = 12

-- Display: Reserved 12
lseg_lse_level1replay_gtp_v26_2.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
lseg_lse_level1replay_gtp_v26_2.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_lse_level1replay_gtp_v26_2.reserved_4 = {}

-- Size: Reserved 4
lseg_lse_level1replay_gtp_v26_2.reserved_4.size = 4

-- Display: Reserved 4
lseg_lse_level1replay_gtp_v26_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_lse_level1replay_gtp_v26_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_lse_level1replay_gtp_v26_2.reserved_8 = {}

-- Size: Reserved 8
lseg_lse_level1replay_gtp_v26_2.reserved_8.size = 8

-- Display: Reserved 8
lseg_lse_level1replay_gtp_v26_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_lse_level1replay_gtp_v26_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
lseg_lse_level1replay_gtp_v26_2.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_lse_level1replay_gtp_v26_2.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_lse_level1replay_gtp_v26_2.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_lse_level1replay_gtp_v26_2.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Segment
lseg_lse_level1replay_gtp_v26_2.segment = {}

-- Size: Segment
lseg_lse_level1replay_gtp_v26_2.segment.size = 6

-- Display: Segment
lseg_lse_level1replay_gtp_v26_2.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_lse_level1replay_gtp_v26_2.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_lse_level1replay_gtp_v26_2.sequence_number = {}

-- Size: Sequence Number
lseg_lse_level1replay_gtp_v26_2.sequence_number.size = 4

-- Display: Sequence Number
lseg_lse_level1replay_gtp_v26_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_lse_level1replay_gtp_v26_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_lse_level1replay_gtp_v26_2.session_change_reason = {}

-- Size: Session Change Reason
lseg_lse_level1replay_gtp_v26_2.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_lse_level1replay_gtp_v26_2.session_change_reason.display = function(value)
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
lseg_lse_level1replay_gtp_v26_2.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_lse_level1replay_gtp_v26_2.source_venue = {}

-- Size: Source Venue
lseg_lse_level1replay_gtp_v26_2.source_venue.size = 2

-- Display: Source Venue
lseg_lse_level1replay_gtp_v26_2.source_venue.display = function(value)
  if value == 1 then
    return "Source Venue: London Stock Exchange (1)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_lse_level1replay_gtp_v26_2.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Statistic Price
lseg_lse_level1replay_gtp_v26_2.statistic_price = {}

-- Size: Statistic Price
lseg_lse_level1replay_gtp_v26_2.statistic_price.size = 8

-- Display: Statistic Price
lseg_lse_level1replay_gtp_v26_2.statistic_price.display = function(value)
  return "Statistic Price: "..value
end

-- Translate: Statistic Price
lseg_lse_level1replay_gtp_v26_2.statistic_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Price
lseg_lse_level1replay_gtp_v26_2.statistic_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.statistic_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.statistic_price.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.statistic_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.statistic_price, range, value, display)

  return offset + length, value
end

-- Statistic Size
lseg_lse_level1replay_gtp_v26_2.statistic_size = {}

-- Size: Statistic Size
lseg_lse_level1replay_gtp_v26_2.statistic_size.size = 8

-- Display: Statistic Size
lseg_lse_level1replay_gtp_v26_2.statistic_size.display = function(value)
  return "Statistic Size: "..value
end

-- Translate: Statistic Size
lseg_lse_level1replay_gtp_v26_2.statistic_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Size
lseg_lse_level1replay_gtp_v26_2.statistic_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.statistic_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.statistic_size.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.statistic_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.statistic_size, range, value, display)

  return offset + length, value
end

-- Statistic Type
lseg_lse_level1replay_gtp_v26_2.statistic_type = {}

-- Size: Statistic Type
lseg_lse_level1replay_gtp_v26_2.statistic_type.size = 2

-- Display: Statistic Type
lseg_lse_level1replay_gtp_v26_2.statistic_type.display = function(value)
  if value == 1 then
    return "Statistic Type: Indicative Auction Uncrossing Data (1)"
  end
  if value == 2 then
    return "Statistic Type: Official Opening Price (2)"
  end
  if value == 3 then
    return "Statistic Type: Official Closing Price (3)"
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
    return "Statistic Type: Fifty Two Week Trade High All Trades (8)"
  end
  if value == 9 then
    return "Statistic Type: Fifty Two Week Trade Low All Trades (9)"
  end
  if value == 10 then
    return "Statistic Type: Best Closing Bid (10)"
  end
  if value == 11 then
    return "Statistic Type: Best Closing Ask (11)"
  end
  if value == 16 then
    return "Statistic Type: Static Reference Price (16)"
  end
  if value == 17 then
    return "Statistic Type: Dynamic Reference Price (17)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
lseg_lse_level1replay_gtp_v26_2.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.statistic_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Third Reserved 8
lseg_lse_level1replay_gtp_v26_2.third_reserved_8 = {}

-- Size: Third Reserved 8
lseg_lse_level1replay_gtp_v26_2.third_reserved_8.size = 8

-- Display: Third Reserved 8
lseg_lse_level1replay_gtp_v26_2.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
lseg_lse_level1replay_gtp_v26_2.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1replay_gtp_v26_2.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.third_reserved_8, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_lse_level1replay_gtp_v26_2.tick_id = {}

-- Size: Tick Id
lseg_lse_level1replay_gtp_v26_2.tick_id.size = 2

-- Display: Tick Id
lseg_lse_level1replay_gtp_v26_2.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_lse_level1replay_gtp_v26_2.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_lse_level1replay_gtp_v26_2.timestamp = {}

-- Size: Timestamp
lseg_lse_level1replay_gtp_v26_2.timestamp.size = 8

-- Display: Timestamp
lseg_lse_level1replay_gtp_v26_2.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_lse_level1replay_gtp_v26_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1replay_gtp_v26_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
lseg_lse_level1replay_gtp_v26_2.trade_id = {}

-- Size: Trade Id
lseg_lse_level1replay_gtp_v26_2.trade_id.size = 8

-- Display: Trade Id
lseg_lse_level1replay_gtp_v26_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
lseg_lse_level1replay_gtp_v26_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1replay_gtp_v26_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Qualifier
lseg_lse_level1replay_gtp_v26_2.trade_qualifier = {}

-- Size: Trade Qualifier
lseg_lse_level1replay_gtp_v26_2.trade_qualifier.size = 1

-- Display: Trade Qualifier
lseg_lse_level1replay_gtp_v26_2.trade_qualifier.display = function(value)
  if value == " " then
    return "Trade Qualifier: Na (<whitespace>)"
  end
  if value == "C" then
    return "Trade Qualifier: Closing Price Cross Cpx (C)"
  end

  return "Trade Qualifier: Unknown("..value..")"
end

-- Dissect: Trade Qualifier
lseg_lse_level1replay_gtp_v26_2.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.trade_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.trade_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Trade Type
lseg_lse_level1replay_gtp_v26_2.trade_type = {}

-- Size: Trade Type
lseg_lse_level1replay_gtp_v26_2.trade_type.size = 1

-- Display: Trade Type
lseg_lse_level1replay_gtp_v26_2.trade_type.display = function(value)
  if value == 0 then
    return "Trade Type: Regular Or Continuous Trade (0)"
  end
  if value == 1 then
    return "Trade Type: Auction Trade Bulk (1)"
  end
  if value == 2 then
    return "Trade Type: Auction Trade Individual (2)"
  end
  if value == 9 then
    return "Trade Type: Onbook Trade Cancellation (9)"
  end
  if value == 11 then
    return "Trade Type: Trade Correction (11)"
  end
  if value == 22 then
    return "Trade Type: Rfq Trade (22)"
  end
  if value == 23 then
    return "Trade Type: Rfq Trade Cancellation (23)"
  end
  if value == 24 then
    return "Trade Type: Rfq Trade Correction (24)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
lseg_lse_level1replay_gtp_v26_2.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_lse_level1replay_gtp_v26_2.trading_status = {}

-- Size: Trading Status
lseg_lse_level1replay_gtp_v26_2.trading_status.size = 1

-- Display: Trading Status
lseg_lse_level1replay_gtp_v26_2.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "J" then
    return "Trading Status: Halt Matching Partition Suspended (J)"
  end
  if value == "K" then
    return "Trading Status: Halt System Suspended (K)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Trade Reporting (T)"
  end
  if value == "P" then
    return "Trading Status: Halt Regulatory (P)"
  end
  if value == "t" then
    return "Trading Status: End Trade Reporting (t)"
  end
  if value == "a" then
    return "Trading Status: Opening Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Closed (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Aesp Auction Call (e)"
  end
  if value == "f" then
    return "Trading Status: Resume Auction (f)"
  end
  if value == "m" then
    return "Trading Status: Pre Mandatory (m)"
  end
  if value == "n" then
    return "Trading Status: Mandatory (n)"
  end
  if value == "o" then
    return "Trading Status: Post Mandatory (o)"
  end
  if value == "q" then
    return "Trading Status: Edsp Auction Call (q)"
  end
  if value == "r" then
    return "Trading Status: Periodic Auction Call (r)"
  end
  if value == "1" then
    return "Trading Status: Inactive (1)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "u" then
    return "Trading Status: Closing Price Crossing Session (u)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_lse_level1replay_gtp_v26_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1replay_gtp_v26_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Time
lseg_lse_level1replay_gtp_v26_2.transaction_time = {}

-- Size: Transaction Time
lseg_lse_level1replay_gtp_v26_2.transaction_time.size = 8

-- Display: Transaction Time
lseg_lse_level1replay_gtp_v26_2.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_lse_level1replay_gtp_v26_2.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1replay_gtp_v26_2.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Turnover
lseg_lse_level1replay_gtp_v26_2.turnover = {}

-- Size: Turnover
lseg_lse_level1replay_gtp_v26_2.turnover.size = 8

-- Display: Turnover
lseg_lse_level1replay_gtp_v26_2.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_lse_level1replay_gtp_v26_2.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_lse_level1replay_gtp_v26_2.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.turnover.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.turnover, range, value, display)

  return offset + length, value
end

-- Turnover Onbook Only
lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only = {}

-- Size: Turnover Onbook Only
lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.size = 8

-- Display: Turnover Onbook Only
lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.display = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Username
lseg_lse_level1replay_gtp_v26_2.username = {}

-- Size: Username
lseg_lse_level1replay_gtp_v26_2.username.size = 8

-- Display: Username
lseg_lse_level1replay_gtp_v26_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
lseg_lse_level1replay_gtp_v26_2.username.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.username, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_lse_level1replay_gtp_v26_2.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Volume
lseg_lse_level1replay_gtp_v26_2.volume = {}

-- Size: Volume
lseg_lse_level1replay_gtp_v26_2.volume.size = 8

-- Display: Volume
lseg_lse_level1replay_gtp_v26_2.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_lse_level1replay_gtp_v26_2.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_lse_level1replay_gtp_v26_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.volume.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Onbook Only
lseg_lse_level1replay_gtp_v26_2.volume_onbook_only = {}

-- Size: Volume Onbook Only
lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.size = 8

-- Display: Volume Onbook Only
lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.display = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_lse_level1replay_gtp_v26_2.vwap = {}

-- Size: Vwap
lseg_lse_level1replay_gtp_v26_2.vwap.size = 8

-- Display: Vwap
lseg_lse_level1replay_gtp_v26_2.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_lse_level1replay_gtp_v26_2.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_lse_level1replay_gtp_v26_2.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.vwap.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.vwap, range, value, display)

  return offset + length, value
end

-- Vwap Onbook Only
lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only = {}

-- Size: Vwap Onbook Only
lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.size = 8

-- Display: Vwap Onbook Only
lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.display = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.translate(raw)
  local display = lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Lse Level1Replay Gtp 26.2
-----------------------------------------------------------------------

-- Statistics Update Message
lseg_lse_level1replay_gtp_v26_2.statistics_update_message = {}

-- Size: Statistics Update Message
lseg_lse_level1replay_gtp_v26_2.statistics_update_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.statistic_type.size + 
  lseg_lse_level1replay_gtp_v26_2.statistic_price.size + 
  lseg_lse_level1replay_gtp_v26_2.statistic_size.size + 
  lseg_lse_level1replay_gtp_v26_2.auction_type.size + 
  lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.size + 
  lseg_lse_level1replay_gtp_v26_2.auction_info.size + 
  lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.size

-- Display: Statistics Update Message
lseg_lse_level1replay_gtp_v26_2.statistics_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Update Message
lseg_lse_level1replay_gtp_v26_2.statistics_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Statistic Type: UInt16
  index, statistic_type = lseg_lse_level1replay_gtp_v26_2.statistic_type.dissect(buffer, index, packet, parent)

  -- Statistic Price: Price
  index, statistic_price = lseg_lse_level1replay_gtp_v26_2.statistic_price.dissect(buffer, index, packet, parent)

  -- Statistic Size: Size
  index, statistic_size = lseg_lse_level1replay_gtp_v26_2.statistic_size.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_lse_level1replay_gtp_v26_2.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: Size
  index, imbalance_quantity = lseg_lse_level1replay_gtp_v26_2.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Auction Info: Byte
  index, auction_info = lseg_lse_level1replay_gtp_v26_2.auction_info.dissect(buffer, index, packet, parent)

  -- Opening Closing Price Indicator: Byte
  index, opening_closing_price_indicator = lseg_lse_level1replay_gtp_v26_2.opening_closing_price_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Update Message
lseg_lse_level1replay_gtp_v26_2.statistics_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.statistics_update_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.statistics_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.statistics_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.statistics_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
lseg_lse_level1replay_gtp_v26_2.statistics_message = {}

-- Size: Statistics Message
lseg_lse_level1replay_gtp_v26_2.statistics_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.volume.size + 
  lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.size + 
  lseg_lse_level1replay_gtp_v26_2.vwap.size + 
  lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.size + 
  lseg_lse_level1replay_gtp_v26_2.number_of_trades.size + 
  lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.size + 
  lseg_lse_level1replay_gtp_v26_2.turnover.size + 
  lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.size

-- Display: Statistics Message
lseg_lse_level1replay_gtp_v26_2.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
lseg_lse_level1replay_gtp_v26_2.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: Size4
  index, volume = lseg_lse_level1replay_gtp_v26_2.volume.dissect(buffer, index, packet, parent)

  -- Volume Onbook Only: Size4
  index, volume_onbook_only = lseg_lse_level1replay_gtp_v26_2.volume_onbook_only.dissect(buffer, index, packet, parent)

  -- Vwap: Price4
  index, vwap = lseg_lse_level1replay_gtp_v26_2.vwap.dissect(buffer, index, packet, parent)

  -- Vwap Onbook Only: Price4
  index, vwap_onbook_only = lseg_lse_level1replay_gtp_v26_2.vwap_onbook_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: UInt32
  index, number_of_trades = lseg_lse_level1replay_gtp_v26_2.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: UInt32
  index, number_of_trades_onbook_only = lseg_lse_level1replay_gtp_v26_2.number_of_trades_onbook_only.dissect(buffer, index, packet, parent)

  -- Turnover: Price4
  index, turnover = lseg_lse_level1replay_gtp_v26_2.turnover.dissect(buffer, index, packet, parent)

  -- Turnover Onbook Only: Price4
  index, turnover_onbook_only = lseg_lse_level1replay_gtp_v26_2.turnover_onbook_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
lseg_lse_level1replay_gtp_v26_2.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.statistics_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
lseg_lse_level1replay_gtp_v26_2.trade_flags = {}

-- Size: Trade Flags
lseg_lse_level1replay_gtp_v26_2.trade_flags.size = 1

-- Display: Trade Flags
lseg_lse_level1replay_gtp_v26_2.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Cancellation flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Cancellation"
  end
  -- Is Trade Correction flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Correction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
lseg_lse_level1replay_gtp_v26_2.trade_flags.bits = function(range, value, packet, parent)

  -- Trade Cancellation: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_cancellation, range, value)

  -- Trade Correction: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_correction, range, value)

  -- Reserved 27: 6 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_27, range, value)
end

-- Dissect: Trade Flags
lseg_lse_level1replay_gtp_v26_2.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1replay_gtp_v26_2.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_flags, range, display)

  if show.structs then
    lseg_lse_level1replay_gtp_v26_2.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
lseg_lse_level1replay_gtp_v26_2.trade_message = {}

-- Size: Trade Message
lseg_lse_level1replay_gtp_v26_2.trade_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.transaction_time.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.executed_size.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.price.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1replay_gtp_v26_2.trade_id.size + 
  lseg_lse_level1replay_gtp_v26_2.trade_type.size + 
  lseg_lse_level1replay_gtp_v26_2.auction_type.size + 
  lseg_lse_level1replay_gtp_v26_2.trade_flags.size + 
  lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.size + 
  lseg_lse_level1replay_gtp_v26_2.trade_qualifier.size

-- Display: Trade Message
lseg_lse_level1replay_gtp_v26_2.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_lse_level1replay_gtp_v26_2.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_lse_level1replay_gtp_v26_2.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: Size
  index, executed_size = lseg_lse_level1replay_gtp_v26_2.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_lse_level1replay_gtp_v26_2.price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1replay_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = lseg_lse_level1replay_gtp_v26_2.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Type: UInt8
  index, trade_type = lseg_lse_level1replay_gtp_v26_2.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_lse_level1replay_gtp_v26_2.auction_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = lseg_lse_level1replay_gtp_v26_2.trade_flags.dissect(buffer, index, packet, parent)

  -- Hidden Execution Indicator: UInt8
  index, hidden_execution_indicator = lseg_lse_level1replay_gtp_v26_2.hidden_execution_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Byte
  index, trade_qualifier = lseg_lse_level1replay_gtp_v26_2.trade_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_lse_level1replay_gtp_v26_2.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.trade_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lseg_lse_level1replay_gtp_v26_2.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.order_book_type.size

-- Display: Order Book Clear Message
lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_level1replay_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Flags
lseg_lse_level1replay_gtp_v26_2.top_of_book_flags = {}

-- Size: Top Of Book Flags
lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.size = 1

-- Display: Top Of Book Flags
lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bid Depth flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Bid Depth"
  end
  -- Is Offer Depth flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Offer Depth"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Top Of Book Flags
lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.bits = function(range, value, packet, parent)

  -- Bid Depth: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.bid_depth, range, value)

  -- Offer Depth: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.offer_depth, range, value)

  -- Reserved 27: 6 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_27, range, value)
end

-- Dissect: Top Of Book Flags
lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.top_of_book_flags, range, display)

  if show.structs then
    lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Top Of Book Message
lseg_lse_level1replay_gtp_v26_2.top_of_book_message = {}

-- Size: Top Of Book Message
lseg_lse_level1replay_gtp_v26_2.top_of_book_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.bid_market_size.size + 
  lseg_lse_level1replay_gtp_v26_2.bid_limit_price.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1replay_gtp_v26_2.bid_limit_size.size + 
  lseg_lse_level1replay_gtp_v26_2.offer_market_size.size + 
  lseg_lse_level1replay_gtp_v26_2.offer_limit_price.size + 
  lseg_lse_level1replay_gtp_v26_2.second_reserved_8.size + 
  lseg_lse_level1replay_gtp_v26_2.offer_limit_size.size + 
  lseg_lse_level1replay_gtp_v26_2.order_book_type.size + 
  lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.size

-- Display: Top Of Book Message
lseg_lse_level1replay_gtp_v26_2.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
lseg_lse_level1replay_gtp_v26_2.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Bid Market Size: Size
  index, bid_market_size = lseg_lse_level1replay_gtp_v26_2.bid_market_size.dissect(buffer, index, packet, parent)

  -- Bid Limit Price: Price
  index, bid_limit_price = lseg_lse_level1replay_gtp_v26_2.bid_limit_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1replay_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Bid Limit Size: Size
  index, bid_limit_size = lseg_lse_level1replay_gtp_v26_2.bid_limit_size.dissect(buffer, index, packet, parent)

  -- Offer Market Size: Size
  index, offer_market_size = lseg_lse_level1replay_gtp_v26_2.offer_market_size.dissect(buffer, index, packet, parent)

  -- Offer Limit Price: Price
  index, offer_limit_price = lseg_lse_level1replay_gtp_v26_2.offer_limit_price.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_lse_level1replay_gtp_v26_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Offer Limit Size: Size
  index, offer_limit_size = lseg_lse_level1replay_gtp_v26_2.offer_limit_size.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_level1replay_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  -- Top Of Book Flags: Struct of 3 fields
  index, top_of_book_flags = lseg_lse_level1replay_gtp_v26_2.top_of_book_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
lseg_lse_level1replay_gtp_v26_2.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.top_of_book_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_lse_level1replay_gtp_v26_2.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_lse_level1replay_gtp_v26_2.instrument_status_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.trading_status.size + 
  lseg_lse_level1replay_gtp_v26_2.session_change_reason.size + 
  lseg_lse_level1replay_gtp_v26_2.new_end_time.size + 
  lseg_lse_level1replay_gtp_v26_2.order_book_type.size

-- Display: Instrument Status Message
lseg_lse_level1replay_gtp_v26_2.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_lse_level1replay_gtp_v26_2.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse_level1replay_gtp_v26_2.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_lse_level1replay_gtp_v26_2.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_lse_level1replay_gtp_v26_2.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_level1replay_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_lse_level1replay_gtp_v26_2.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 1
lseg_lse_level1replay_gtp_v26_2.reserved_1 = {}

-- Size: Reserved 1
lseg_lse_level1replay_gtp_v26_2.reserved_1.size = 1

-- Display: Reserved 1
lseg_lse_level1replay_gtp_v26_2.reserved_1.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Reserved 1
lseg_lse_level1replay_gtp_v26_2.reserved_1.bits = function(range, value, packet, parent)

  -- Reserved 07: 8 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_07, range, value)
end

-- Dissect: Reserved 1
lseg_lse_level1replay_gtp_v26_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1replay_gtp_v26_2.reserved_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.reserved_1.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_1, range, display)

  if show.structs then
    lseg_lse_level1replay_gtp_v26_2.reserved_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Allowed Book Types
lseg_lse_level1replay_gtp_v26_2.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_lse_level1replay_gtp_v26_2.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_lse_level1replay_gtp_v26_2.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Reserved 0 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Reserved 0"
  end
  -- Is Firm Quote Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Firm Quote Book"
  end
  -- Is Offbook flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Offbook"
  end
  -- Is Electronic Order Book flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Electronic Order Book"
  end
  -- Is Private Rfq flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Private Rfq"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_lse_level1replay_gtp_v26_2.allowed_book_types.bits = function(range, value, packet, parent)

  -- Reserved 0: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_0, range, value)

  -- Firm Quote Book: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.firm_quote_book, range, value)

  -- Offbook: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.offbook, range, value)

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.electronic_order_book, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.private_rfq, range, value)

  -- Reserved 57: 3 Bit
  parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.reserved_57, range, value)
end

-- Dissect: Allowed Book Types
lseg_lse_level1replay_gtp_v26_2.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1replay_gtp_v26_2.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1replay_gtp_v26_2.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_lse_level1replay_gtp_v26_2.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
lseg_lse_level1replay_gtp_v26_2.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.instrument.size + 
  lseg_lse_level1replay_gtp_v26_2.isin.size + 
  lseg_lse_level1replay_gtp_v26_2.allowed_book_types.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size + 
  lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.size + 
  lseg_lse_level1replay_gtp_v26_2.tick_id.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.size + 
  lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.size + 
  lseg_lse_level1replay_gtp_v26_2.segment.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_12.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_11.size + 
  lseg_lse_level1replay_gtp_v26_2.currency.size + 
  lseg_lse_level1replay_gtp_v26_2.partition_id.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_4.size + 
  lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.size + 
  lseg_lse_level1replay_gtp_v26_2.second_reserved_8.size + 
  lseg_lse_level1replay_gtp_v26_2.reserved_1.size + 
  lseg_lse_level1replay_gtp_v26_2.third_reserved_8.size + 
  lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.size

-- Display: Instrument Directory Message
lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1replay_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_lse_level1replay_gtp_v26_2.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 6 fields
  index, allowed_book_types = lseg_lse_level1replay_gtp_v26_2.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_lse_level1replay_gtp_v26_2.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_lse_level1replay_gtp_v26_2.tick_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1replay_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_lse_level1replay_gtp_v26_2.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_lse_level1replay_gtp_v26_2.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_lse_level1replay_gtp_v26_2.segment.dissect(buffer, index, packet, parent)

  -- Reserved 12: Alpha
  index, reserved_12 = lseg_lse_level1replay_gtp_v26_2.reserved_12.dissect(buffer, index, packet, parent)

  -- Reserved 11: Alpha
  index, reserved_11 = lseg_lse_level1replay_gtp_v26_2.reserved_11.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_lse_level1replay_gtp_v26_2.currency.dissect(buffer, index, packet, parent)

  -- Partition Id: Byte
  index, partition_id = lseg_lse_level1replay_gtp_v26_2.partition_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = lseg_lse_level1replay_gtp_v26_2.reserved_4.dissect(buffer, index, packet, parent)

  -- Average Daily Turnover Adt: Price4
  index, average_daily_turnover_adt = lseg_lse_level1replay_gtp_v26_2.average_daily_turnover_adt.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_lse_level1replay_gtp_v26_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Struct of 1 fields
  index, reserved_1 = lseg_lse_level1replay_gtp_v26_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: Price
  index, third_reserved_8 = lseg_lse_level1replay_gtp_v26_2.third_reserved_8.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 8: Price
  index, fourth_reserved_8 = lseg_lse_level1replay_gtp_v26_2.fourth_reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_lse_level1replay_gtp_v26_2.system_event_message = {}

-- Size: System Event Message
lseg_lse_level1replay_gtp_v26_2.system_event_message.size =
  lseg_lse_level1replay_gtp_v26_2.timestamp.size + 
  lseg_lse_level1replay_gtp_v26_2.event_code.size + 
  lseg_lse_level1replay_gtp_v26_2.source_venue.size

-- Display: System Event Message
lseg_lse_level1replay_gtp_v26_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_lse_level1replay_gtp_v26_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1replay_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_lse_level1replay_gtp_v26_2.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1replay_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_lse_level1replay_gtp_v26_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.system_event_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay And Recovery Complete Message
lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message = {}

-- Size: Replay And Recovery Complete Message
lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.size =
  lseg_lse_level1replay_gtp_v26_2.request_id.size + 
  lseg_lse_level1replay_gtp_v26_2.trading_status.size

-- Display: Replay And Recovery Complete Message
lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay And Recovery Complete Message
lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: UInt32
  index, request_id = lseg_lse_level1replay_gtp_v26_2.request_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse_level1replay_gtp_v26_2.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay And Recovery Complete Message
lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_and_recovery_complete_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Response Message
lseg_lse_level1replay_gtp_v26_2.replay_response_message = {}

-- Size: Replay Response Message
lseg_lse_level1replay_gtp_v26_2.replay_response_message.size =
  lseg_lse_level1replay_gtp_v26_2.first_message.size + 
  lseg_lse_level1replay_gtp_v26_2.count.size + 
  lseg_lse_level1replay_gtp_v26_2.replay_status.size + 
  lseg_lse_level1replay_gtp_v26_2.request_id.size

-- Display: Replay Response Message
lseg_lse_level1replay_gtp_v26_2.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
lseg_lse_level1replay_gtp_v26_2.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- First Message: UInt32
  index, first_message = lseg_lse_level1replay_gtp_v26_2.first_message.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_lse_level1replay_gtp_v26_2.count.dissect(buffer, index, packet, parent)

  -- Replay Status: Byte
  index, replay_status = lseg_lse_level1replay_gtp_v26_2.replay_status.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_lse_level1replay_gtp_v26_2.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
lseg_lse_level1replay_gtp_v26_2.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_response_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
lseg_lse_level1replay_gtp_v26_2.login_response_message = {}

-- Size: Login Response Message
lseg_lse_level1replay_gtp_v26_2.login_response_message.size =
  lseg_lse_level1replay_gtp_v26_2.login_status.size

-- Display: Login Response Message
lseg_lse_level1replay_gtp_v26_2.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
lseg_lse_level1replay_gtp_v26_2.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: Byte
  index, login_status = lseg_lse_level1replay_gtp_v26_2.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
lseg_lse_level1replay_gtp_v26_2.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.login_response_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
lseg_lse_level1replay_gtp_v26_2.replay_request_message = {}

-- Size: Replay Request Message
lseg_lse_level1replay_gtp_v26_2.replay_request_message.size =
  lseg_lse_level1replay_gtp_v26_2.first_message.size + 
  lseg_lse_level1replay_gtp_v26_2.count.size + 
  lseg_lse_level1replay_gtp_v26_2.request_id.size

-- Display: Replay Request Message
lseg_lse_level1replay_gtp_v26_2.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
lseg_lse_level1replay_gtp_v26_2.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- First Message: UInt32
  index, first_message = lseg_lse_level1replay_gtp_v26_2.first_message.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_lse_level1replay_gtp_v26_2.count.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_lse_level1replay_gtp_v26_2.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
lseg_lse_level1replay_gtp_v26_2.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.replay_request_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
lseg_lse_level1replay_gtp_v26_2.login_request_message = {}

-- Size: Login Request Message
lseg_lse_level1replay_gtp_v26_2.login_request_message.size =
  lseg_lse_level1replay_gtp_v26_2.username.size

-- Display: Login Request Message
lseg_lse_level1replay_gtp_v26_2.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
lseg_lse_level1replay_gtp_v26_2.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = lseg_lse_level1replay_gtp_v26_2.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
lseg_lse_level1replay_gtp_v26_2.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.login_request_message, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_lse_level1replay_gtp_v26_2.payload = {}

-- Dissect: Payload
lseg_lse_level1replay_gtp_v26_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return lseg_lse_level1replay_gtp_v26_2.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 0x03 then
    return lseg_lse_level1replay_gtp_v26_2.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return lseg_lse_level1replay_gtp_v26_2.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Response Message
  if message_type == 0x04 then
    return lseg_lse_level1replay_gtp_v26_2.replay_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay And Recovery Complete Message
  if message_type == 0x83 then
    return lseg_lse_level1replay_gtp_v26_2.replay_and_recovery_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_lse_level1replay_gtp_v26_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_lse_level1replay_gtp_v26_2.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_lse_level1replay_gtp_v26_2.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x69 then
    return lseg_lse_level1replay_gtp_v26_2.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_lse_level1replay_gtp_v26_2.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_lse_level1replay_gtp_v26_2.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return lseg_lse_level1replay_gtp_v26_2.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Update Message
  if message_type == 0x6A then
    return lseg_lse_level1replay_gtp_v26_2.statistics_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_lse_level1replay_gtp_v26_2.message_header = {}

-- Size: Message Header
lseg_lse_level1replay_gtp_v26_2.message_header.size =
  lseg_lse_level1replay_gtp_v26_2.message_length.size + 
  lseg_lse_level1replay_gtp_v26_2.message_type.size

-- Display: Message Header
lseg_lse_level1replay_gtp_v26_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_lse_level1replay_gtp_v26_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_lse_level1replay_gtp_v26_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = lseg_lse_level1replay_gtp_v26_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_lse_level1replay_gtp_v26_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.message_header, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_lse_level1replay_gtp_v26_2.message = {}

-- Display: Message
lseg_lse_level1replay_gtp_v26_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_lse_level1replay_gtp_v26_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_lse_level1replay_gtp_v26_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = lseg_lse_level1replay_gtp_v26_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_lse_level1replay_gtp_v26_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.message, buffer(offset, 0))
    local current = lseg_lse_level1replay_gtp_v26_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_lse_level1replay_gtp_v26_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_lse_level1replay_gtp_v26_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_lse_level1replay_gtp_v26_2.unit_header = {}

-- Size: Unit Header
lseg_lse_level1replay_gtp_v26_2.unit_header.size =
  lseg_lse_level1replay_gtp_v26_2.length.size + 
  lseg_lse_level1replay_gtp_v26_2.message_count.size + 
  lseg_lse_level1replay_gtp_v26_2.market_data_group.size + 
  lseg_lse_level1replay_gtp_v26_2.sequence_number.size

-- Display: Unit Header
lseg_lse_level1replay_gtp_v26_2.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_lse_level1replay_gtp_v26_2.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_lse_level1replay_gtp_v26_2.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_lse_level1replay_gtp_v26_2.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_lse_level1replay_gtp_v26_2.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_lse_level1replay_gtp_v26_2.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_lse_level1replay_gtp_v26_2.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1replay_gtp_v26_2.fields.unit_header, buffer(offset, 0))
    local index = lseg_lse_level1replay_gtp_v26_2.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1replay_gtp_v26_2.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1replay_gtp_v26_2.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_lse_level1replay_gtp_v26_2.packet = {}

-- Verify required size of Tcp packet
lseg_lse_level1replay_gtp_v26_2.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_lse_level1replay_gtp_v26_2.unit_header.size
end

-- Dissect Packet
lseg_lse_level1replay_gtp_v26_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_lse_level1replay_gtp_v26_2.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_lse_level1replay_gtp_v26_2.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_lse_level1replay_gtp_v26_2.init()
end

-- Dissector for Lseg Lse Level1Replay Gtp 26.2
function omi_lseg_lse_level1replay_gtp_v26_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_lse_level1replay_gtp_v26_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_lse_level1replay_gtp_v26_2, buffer(), omi_lseg_lse_level1replay_gtp_v26_2.description, "("..buffer:len().." Bytes)")
  return lseg_lse_level1replay_gtp_v26_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Lse Level1Replay Gtp 26.2 (Tcp)
local function omi_lseg_lse_level1replay_gtp_v26_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_lse_level1replay_gtp_v26_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_lse_level1replay_gtp_v26_2
  omi_lseg_lse_level1replay_gtp_v26_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Lse Level1Replay Gtp 26.2
omi_lseg_lse_level1replay_gtp_v26_2:register_heuristic("tcp", omi_lseg_lse_level1replay_gtp_v26_2_tcp_heuristic)

-- Register Lseg Lse Level1Replay Gtp 26.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_lse_level1replay_gtp_v26_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 26.2
--   Date: Wednesday, October 15, 2025
--   Specification: gtp-002-technical-guide-london-stock-exchange-issue-26.2.pdf
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
