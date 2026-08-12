-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Lse Level1Recovery Gtp 26.2 Protocol
local omi_lseg_lse_level1recovery_gtp_v26_2 = Proto("Omi.Lseg.Lse.Level1Recovery.Gtp.v26.2", "Lseg Lse Level1Recovery Gtp 26.2")

-- Protocol table
local lseg_lse_level1recovery_gtp_v26_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Lse Level1Recovery Gtp 26.2 Fields
omi_lseg_lse_level1recovery_gtp_v26_2.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.lse.level1recovery.gtp.v26.2.allowedbooktypes", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.auction_type = ProtoField.new("Auction Type", "lseg.lse.level1recovery.gtp.v26.2.auctiontype", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_ask_price = ProtoField.new("Best Closing Ask Price", "lseg.lse.level1recovery.gtp.v26.2.bestclosingaskprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_ask_size = ProtoField.new("Best Closing Ask Size", "lseg.lse.level1recovery.gtp.v26.2.bestclosingasksize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_bid_price = ProtoField.new("Best Closing Bid Price", "lseg.lse.level1recovery.gtp.v26.2.bestclosingbidprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_bid_size = ProtoField.new("Best Closing Bid Size", "lseg.lse.level1recovery.gtp.v26.2.bestclosingbidsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_depth = ProtoField.new("Bid Depth", "lseg.lse.level1recovery.gtp.v26.2.biddepth", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_limit_price = ProtoField.new("Bid Limit Price", "lseg.lse.level1recovery.gtp.v26.2.bidlimitprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_limit_size = ProtoField.new("Bid Limit Size", "lseg.lse.level1recovery.gtp.v26.2.bidlimitsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_market_size = ProtoField.new("Bid Market Size", "lseg.lse.level1recovery.gtp.v26.2.bidmarketsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.clearing_type = ProtoField.new("Clearing Type", "lseg.lse.level1recovery.gtp.v26.2.clearingtype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.closing_price_indicator = ProtoField.new("Closing Price Indicator", "lseg.lse.level1recovery.gtp.v26.2.closingpriceindicator", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.count = ProtoField.new("Count", "lseg.lse.level1recovery.gtp.v26.2.count", ftypes.UINT32)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.country_of_register = ProtoField.new("Country Of Register", "lseg.lse.level1recovery.gtp.v26.2.countryofregister", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.currency = ProtoField.new("Currency", "lseg.lse.level1recovery.gtp.v26.2.currency", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.description = ProtoField.new("Description", "lseg.lse.level1recovery.gtp.v26.2.description", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.lse.level1recovery.gtp.v26.2.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.dynamic_reference_price = ProtoField.new("Dynamic Reference Price", "lseg.lse.level1recovery.gtp.v26.2.dynamicreferenceprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.lse.level1recovery.gtp.v26.2.electronicorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.event_code = ProtoField.new("Event Code", "lseg.lse.level1recovery.gtp.v26.2.eventcode", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.ex_marker_code = ProtoField.new("Ex Marker Code", "lseg.lse.level1recovery.gtp.v26.2.exmarkercode", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.exchange_market_size = ProtoField.new("Exchange Market Size", "lseg.lse.level1recovery.gtp.v26.2.exchangemarketsize", ftypes.UINT64)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.executed_size = ProtoField.new("Executed Size", "lseg.lse.level1recovery.gtp.v26.2.executedsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.expiration_date = ProtoField.new("Expiration Date", "lseg.lse.level1recovery.gtp.v26.2.expirationdate", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.fifth_reserved_8 = ProtoField.new("Fifth Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.fifthreserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.fifty_two_week_trade_high = ProtoField.new("Fifty Two Week Trade High", "lseg.lse.level1recovery.gtp.v26.2.fiftytwoweektradehigh", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.fifty_two_week_trade_low = ProtoField.new("Fifty Two Week Trade Low", "lseg.lse.level1recovery.gtp.v26.2.fiftytwoweektradelow", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.firm_quote_book = ProtoField.new("Firm Quote Book", "lseg.lse.level1recovery.gtp.v26.2.firmquotebook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.fourth_reserved_1 = ProtoField.new("Fourth Reserved 1", "lseg.lse.level1recovery.gtp.v26.2.fourthreserved1", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.fourth_reserved_8 = ProtoField.new("Fourth Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.fourthreserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.group_id = ProtoField.new("Group Id", "lseg.lse.level1recovery.gtp.v26.2.groupid", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.hidden_execution_indicator = ProtoField.new("Hidden Execution Indicator", "lseg.lse.level1recovery.gtp.v26.2.hiddenexecutionindicator", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.iau_paired_size = ProtoField.new("Iau Paired Size", "lseg.lse.level1recovery.gtp.v26.2.iaupairedsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.iau_price = ProtoField.new("Iau Price", "lseg.lse.level1recovery.gtp.v26.2.iauprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "lseg.lse.level1recovery.gtp.v26.2.imbalancedirection", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.lse.level1recovery.gtp.v26.2.imbalancequantity", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.instrument = ProtoField.new("Instrument", "lseg.lse.level1recovery.gtp.v26.2.instrument", ftypes.UINT64)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.isin = ProtoField.new("Isin", "lseg.lse.level1recovery.gtp.v26.2.isin", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_price_in_preceding_session = ProtoField.new("Last Price In Preceding Session", "lseg.lse.level1recovery.gtp.v26.2.lastpriceinprecedingsession", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_price_in_preceding_session_date = ProtoField.new("Last Price In Preceding Session Date", "lseg.lse.level1recovery.gtp.v26.2.lastpriceinprecedingsessiondate", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_trade_price = ProtoField.new("Last Trade Price", "lseg.lse.level1recovery.gtp.v26.2.lasttradeprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "lseg.lse.level1recovery.gtp.v26.2.lasttradequantity", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_trade_time = ProtoField.new("Last Trade Time", "lseg.lse.level1recovery.gtp.v26.2.lasttradetime", ftypes.UINT64)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.length = ProtoField.new("Length", "lseg.lse.level1recovery.gtp.v26.2.length", ftypes.UINT16)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.listing_end_date = ProtoField.new("Listing End Date", "lseg.lse.level1recovery.gtp.v26.2.listingenddate", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.listing_start_date = ProtoField.new("Listing Start Date", "lseg.lse.level1recovery.gtp.v26.2.listingstartdate", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.login_status = ProtoField.new("Login Status", "lseg.lse.level1recovery.gtp.v26.2.loginstatus", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.lse.level1recovery.gtp.v26.2.marketdatagroup", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.message = ProtoField.new("Message", "lseg.lse.level1recovery.gtp.v26.2.message", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_count = ProtoField.new("Message Count", "lseg.lse.level1recovery.gtp.v26.2.messagecount", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_header = ProtoField.new("Message Header", "lseg.lse.level1recovery.gtp.v26.2.messageheader", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_length = ProtoField.new("Message Length", "lseg.lse.level1recovery.gtp.v26.2.messagelength", ftypes.UINT16)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_type = ProtoField.new("Message Type", "lseg.lse.level1recovery.gtp.v26.2.messagetype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.minimum_lot_minimum_execution_size = ProtoField.new("Minimum Lot Minimum Execution Size", "lseg.lse.level1recovery.gtp.v26.2.minimumlotminimumexecutionsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.minimum_peak_size_multiplier = ProtoField.new("Minimum Peak Size Multiplier", "lseg.lse.level1recovery.gtp.v26.2.minimumpeaksizemultiplier", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.new_end_time = ProtoField.new("New End Time", "lseg.lse.level1recovery.gtp.v26.2.newendtime", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.lse.level1recovery.gtp.v26.2.numberoftrades", ftypes.UINT32)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.lse.level1recovery.gtp.v26.2.numberoftradesonbookonly", ftypes.UINT32)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.offbook = ProtoField.new("Offbook", "lseg.lse.level1recovery.gtp.v26.2.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_depth = ProtoField.new("Offer Depth", "lseg.lse.level1recovery.gtp.v26.2.offerdepth", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_limit_price = ProtoField.new("Offer Limit Price", "lseg.lse.level1recovery.gtp.v26.2.offerlimitprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_limit_size = ProtoField.new("Offer Limit Size", "lseg.lse.level1recovery.gtp.v26.2.offerlimitsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_market_size = ProtoField.new("Offer Market Size", "lseg.lse.level1recovery.gtp.v26.2.offermarketsize", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.official_closing_price = ProtoField.new("Official Closing Price", "lseg.lse.level1recovery.gtp.v26.2.officialclosingprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.official_opening_price = ProtoField.new("Official Opening Price", "lseg.lse.level1recovery.gtp.v26.2.officialopeningprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.opening_price_indicator = ProtoField.new("Opening Price Indicator", "lseg.lse.level1recovery.gtp.v26.2.openingpriceindicator", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.lse.level1recovery.gtp.v26.2.orderbooktype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.packet = ProtoField.new("Packet", "lseg.lse.level1recovery.gtp.v26.2.packet", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.partition_id = ProtoField.new("Partition Id", "lseg.lse.level1recovery.gtp.v26.2.partitionid", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.previous_days_closing_price = ProtoField.new("Previous Days Closing Price", "lseg.lse.level1recovery.gtp.v26.2.previousdaysclosingprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.price = ProtoField.new("Price", "lseg.lse.level1recovery.gtp.v26.2.price", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.private_rfq = ProtoField.new("Private Rfq", "lseg.lse.level1recovery.gtp.v26.2.privaterfq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_status = ProtoField.new("Recovery Status", "lseg.lse.level1recovery.gtp.v26.2.recoverystatus", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_type = ProtoField.new("Recovery Type", "lseg.lse.level1recovery.gtp.v26.2.recoverytype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.request_id = ProtoField.new("Request Id", "lseg.lse.level1recovery.gtp.v26.2.requestid", ftypes.UINT32)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.request_level = ProtoField.new("Request Level", "lseg.lse.level1recovery.gtp.v26.2.requestlevel", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.request_order_book_type = ProtoField.new("Request Order Book Type", "lseg.lse.level1recovery.gtp.v26.2.requestorderbooktype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_0 = ProtoField.new("Reserved 0", "lseg.lse.level1recovery.gtp.v26.2.reserved0", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_07 = ProtoField.new("Reserved 07", "lseg.lse.level1recovery.gtp.v26.2.reserved07", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.lse.level1recovery.gtp.v26.2.reserved1", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_12 = ProtoField.new("Reserved 12", "lseg.lse.level1recovery.gtp.v26.2.reserved12", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_2 = ProtoField.new("Reserved 2", "lseg.lse.level1recovery.gtp.v26.2.reserved2", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_27 = ProtoField.new("Reserved 27", "lseg.lse.level1recovery.gtp.v26.2.reserved27", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.lse.level1recovery.gtp.v26.2.reserved4", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_57 = ProtoField.new("Reserved 57", "lseg.lse.level1recovery.gtp.v26.2.reserved57", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.reserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "lseg.lse.level1recovery.gtp.v26.2.secondreserved1", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.secondreserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.security_exchange = ProtoField.new("Security Exchange", "lseg.lse.level1recovery.gtp.v26.2.securityexchange", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.security_maximum_spread = ProtoField.new("Security Maximum Spread", "lseg.lse.level1recovery.gtp.v26.2.securitymaximumspread", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.security_type = ProtoField.new("Security Type", "lseg.lse.level1recovery.gtp.v26.2.securitytype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.sedol = ProtoField.new("Sedol", "lseg.lse.level1recovery.gtp.v26.2.sedol", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.segment = ProtoField.new("Segment", "lseg.lse.level1recovery.gtp.v26.2.segment", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.lse.level1recovery.gtp.v26.2.sequencenumber", ftypes.UINT32)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.lse.level1recovery.gtp.v26.2.sessionchangereason", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.seventh_reserved_8 = ProtoField.new("Seventh Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.seventhreserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.sixth_reserved_8 = ProtoField.new("Sixth Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.sixthreserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.source_venue = ProtoField.new("Source Venue", "lseg.lse.level1recovery.gtp.v26.2.sourcevenue", ftypes.UINT16)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.lse.level1recovery.gtp.v26.2.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.static_reference_price = ProtoField.new("Static Reference Price", "lseg.lse.level1recovery.gtp.v26.2.staticreferenceprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.strike_price = ProtoField.new("Strike Price", "lseg.lse.level1recovery.gtp.v26.2.strikeprice", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.symbol = ProtoField.new("Symbol", "lseg.lse.level1recovery.gtp.v26.2.symbol", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "lseg.lse.level1recovery.gtp.v26.2.thirdreserved1", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "lseg.lse.level1recovery.gtp.v26.2.thirdreserved8", ftypes.BYTES)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.tick_id = ProtoField.new("Tick Id", "lseg.lse.level1recovery.gtp.v26.2.tickid", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.timestamp = ProtoField.new("Timestamp", "lseg.lse.level1recovery.gtp.v26.2.timestamp", ftypes.UINT64)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.top_of_book_flags = ProtoField.new("Top Of Book Flags", "lseg.lse.level1recovery.gtp.v26.2.topofbookflags", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "lseg.lse.level1recovery.gtp.v26.2.tradecancellation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_correction = ProtoField.new("Trade Correction", "lseg.lse.level1recovery.gtp.v26.2.tradecorrection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_flags = ProtoField.new("Trade Flags", "lseg.lse.level1recovery.gtp.v26.2.tradeflags", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_high = ProtoField.new("Trade High", "lseg.lse.level1recovery.gtp.v26.2.tradehigh", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_high_onbook_only = ProtoField.new("Trade High Onbook Only", "lseg.lse.level1recovery.gtp.v26.2.tradehighonbookonly", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_id = ProtoField.new("Trade Id", "lseg.lse.level1recovery.gtp.v26.2.tradeid", ftypes.UINT64)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_low = ProtoField.new("Trade Low", "lseg.lse.level1recovery.gtp.v26.2.tradelow", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_low_onbook_only = ProtoField.new("Trade Low Onbook Only", "lseg.lse.level1recovery.gtp.v26.2.tradelowonbookonly", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.lse.level1recovery.gtp.v26.2.tradequalifier", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_type = ProtoField.new("Trade Type", "lseg.lse.level1recovery.gtp.v26.2.tradetype", ftypes.UINT8)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trading_status = ProtoField.new("Trading Status", "lseg.lse.level1recovery.gtp.v26.2.tradingstatus", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.lse.level1recovery.gtp.v26.2.transactiontime", ftypes.UINT64)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.turnover = ProtoField.new("Turnover", "lseg.lse.level1recovery.gtp.v26.2.turnover", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.lse.level1recovery.gtp.v26.2.turnoveronbookonly", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.unit_header = ProtoField.new("Unit Header", "lseg.lse.level1recovery.gtp.v26.2.unitheader", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.username = ProtoField.new("Username", "lseg.lse.level1recovery.gtp.v26.2.username", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.lse.level1recovery.gtp.v26.2.venueinstrumentid", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.volume = ProtoField.new("Volume", "lseg.lse.level1recovery.gtp.v26.2.volume", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.lse.level1recovery.gtp.v26.2.volumeonbookonly", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.vwap = ProtoField.new("Vwap", "lseg.lse.level1recovery.gtp.v26.2.vwap", ftypes.DOUBLE)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.lse.level1recovery.gtp.v26.2.vwaponbookonly", ftypes.DOUBLE)

-- Lseg Lse Gtp Level1Recovery 26.2 Application Messages
omi_lseg_lse_level1recovery_gtp_v26_2.fields.instrument_directory_equities_message = ProtoField.new("Instrument Directory Equities Message", "lseg.lse.level1recovery.gtp.v26.2.instrumentdirectoryequitiesmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.lse.level1recovery.gtp.v26.2.instrumentstatusmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.login_request_message = ProtoField.new("Login Request Message", "lseg.lse.level1recovery.gtp.v26.2.loginrequestmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.login_response_message = ProtoField.new("Login Response Message", "lseg.lse.level1recovery.gtp.v26.2.loginresponsemessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.lse.level1recovery.gtp.v26.2.orderbookclearmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_request_message = ProtoField.new("Recovery Request Message", "lseg.lse.level1recovery.gtp.v26.2.recoveryrequestmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_response_message = ProtoField.new("Recovery Response Message", "lseg.lse.level1recovery.gtp.v26.2.recoveryresponsemessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.replay_and_recovery_complete_message = ProtoField.new("Replay And Recovery Complete Message", "lseg.lse.level1recovery.gtp.v26.2.replayandrecoverycompletemessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.statistics_snapshot_message = ProtoField.new("Statistics Snapshot Message", "lseg.lse.level1recovery.gtp.v26.2.statisticssnapshotmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.system_event_message = ProtoField.new("System Event Message", "lseg.lse.level1recovery.gtp.v26.2.systemeventmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "lseg.lse.level1recovery.gtp.v26.2.topofbookmessage", ftypes.STRING)
omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_message = ProtoField.new("Trade Message", "lseg.lse.level1recovery.gtp.v26.2.trademessage", ftypes.STRING)

-- Lseg Lse Level1Recovery Gtp 26.2 generated fields
omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_index = ProtoField.new("Message Index", "lseg.lse.level1recovery.gtp.v26.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Lse Level1Recovery Gtp 26.2 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Lseg Lse Level1Recovery Gtp 26.2 Show Options
omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_lseg_lse_level1recovery_gtp_v26_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_application_messages then
    show.application_messages = omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_headers then
    show.headers = omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_headers
  end
  if show.structs ~= omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_structs then
    show.structs = omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_indexes then
    show.indexes = omi_lseg_lse_level1recovery_gtp_v26_2.prefs.show_indexes
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
-- Lseg Lse Level1Recovery Gtp 26.2 Fields
-----------------------------------------------------------------------

-- Auction Type
lseg_lse_level1recovery_gtp_v26_2.auction_type = {}

-- Size: Auction Type
lseg_lse_level1recovery_gtp_v26_2.auction_type.size = 1

-- Display: Auction Type
lseg_lse_level1recovery_gtp_v26_2.auction_type.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Best Closing Ask Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price = {}

-- Size: Best Closing Ask Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.size = 8

-- Display: Best Closing Ask Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.display = function(value)
  return "Best Closing Ask Price: "..value
end

-- Translate: Best Closing Ask Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Ask Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_ask_price, range, value, display)

  return offset + length, value
end

-- Best Closing Ask Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size = {}

-- Size: Best Closing Ask Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.size = 8

-- Display: Best Closing Ask Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.display = function(value)
  return "Best Closing Ask Size: "..value
end

-- Translate: Best Closing Ask Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Ask Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_ask_size, range, value, display)

  return offset + length, value
end

-- Best Closing Bid Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price = {}

-- Size: Best Closing Bid Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.size = 8

-- Display: Best Closing Bid Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.display = function(value)
  return "Best Closing Bid Price: "..value
end

-- Translate: Best Closing Bid Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Bid Price
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_bid_price, range, value, display)

  return offset + length, value
end

-- Best Closing Bid Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size = {}

-- Size: Best Closing Bid Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.size = 8

-- Display: Best Closing Bid Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.display = function(value)
  return "Best Closing Bid Size: "..value
end

-- Translate: Best Closing Bid Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Bid Size
lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.best_closing_bid_size, range, value, display)

  return offset + length, value
end

-- Bid Limit Price
lseg_lse_level1recovery_gtp_v26_2.bid_limit_price = {}

-- Size: Bid Limit Price
lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.size = 8

-- Display: Bid Limit Price
lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.display = function(value)
  return "Bid Limit Price: "..value
end

-- Translate: Bid Limit Price
lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Limit Price
lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_limit_price, range, value, display)

  return offset + length, value
end

-- Bid Limit Size
lseg_lse_level1recovery_gtp_v26_2.bid_limit_size = {}

-- Size: Bid Limit Size
lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.size = 8

-- Display: Bid Limit Size
lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.display = function(value)
  return "Bid Limit Size: "..value
end

-- Translate: Bid Limit Size
lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Limit Size
lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_limit_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
lseg_lse_level1recovery_gtp_v26_2.bid_market_size = {}

-- Size: Bid Market Size
lseg_lse_level1recovery_gtp_v26_2.bid_market_size.size = 8

-- Display: Bid Market Size
lseg_lse_level1recovery_gtp_v26_2.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Translate: Bid Market Size
lseg_lse_level1recovery_gtp_v26_2.bid_market_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Market Size
lseg_lse_level1recovery_gtp_v26_2.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.bid_market_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.bid_market_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Clearing Type
lseg_lse_level1recovery_gtp_v26_2.clearing_type = {}

-- Size: Clearing Type
lseg_lse_level1recovery_gtp_v26_2.clearing_type.size = 1

-- Display: Clearing Type
lseg_lse_level1recovery_gtp_v26_2.clearing_type.display = function(value)
  if value == 0 then
    return "Clearing Type: Not Cleared (0)"
  end
  if value == 1 then
    return "Clearing Type: Cleared (1)"
  end

  return "Clearing Type: Unknown("..value..")"
end

-- Dissect: Clearing Type
lseg_lse_level1recovery_gtp_v26_2.clearing_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.clearing_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.clearing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.clearing_type, range, value, display)

  return offset + length, value
end

-- Closing Price Indicator
lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator = {}

-- Size: Closing Price Indicator
lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.size = 1

-- Display: Closing Price Indicator
lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.display = function(value)
  if value == "A" then
    return "Closing Price Indicator: Ut (A)"
  end
  if value == "B" then
    return "Closing Price Indicator: At (B)"
  end
  if value == "C" then
    return "Closing Price Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Closing Price Indicator: Last At (D)"
  end
  if value == "E" then
    return "Closing Price Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Closing Price Indicator: Manual (F)"
  end
  if value == "I" then
    return "Closing Price Indicator: Previous Close (I)"
  end

  return "Closing Price Indicator: Unknown("..value..")"
end

-- Dissect: Closing Price Indicator
lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Count
lseg_lse_level1recovery_gtp_v26_2.count = {}

-- Size: Count
lseg_lse_level1recovery_gtp_v26_2.count.size = 4

-- Display: Count
lseg_lse_level1recovery_gtp_v26_2.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
lseg_lse_level1recovery_gtp_v26_2.count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.count, range, value, display)

  return offset + length, value
end

-- Country Of Register
lseg_lse_level1recovery_gtp_v26_2.country_of_register = {}

-- Size: Country Of Register
lseg_lse_level1recovery_gtp_v26_2.country_of_register.size = 3

-- Display: Country Of Register
lseg_lse_level1recovery_gtp_v26_2.country_of_register.display = function(value)
  return "Country Of Register: "..value
end

-- Dissect: Country Of Register
lseg_lse_level1recovery_gtp_v26_2.country_of_register.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.country_of_register.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.country_of_register.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.country_of_register, range, value, display)

  return offset + length, value
end

-- Currency
lseg_lse_level1recovery_gtp_v26_2.currency = {}

-- Size: Currency
lseg_lse_level1recovery_gtp_v26_2.currency.size = 3

-- Display: Currency
lseg_lse_level1recovery_gtp_v26_2.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_lse_level1recovery_gtp_v26_2.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Description
lseg_lse_level1recovery_gtp_v26_2.description = {}

-- Size: Description
lseg_lse_level1recovery_gtp_v26_2.description.size = 40

-- Display: Description
lseg_lse_level1recovery_gtp_v26_2.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
lseg_lse_level1recovery_gtp_v26_2.description.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.description, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Reference Price
lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price = {}

-- Size: Dynamic Reference Price
lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.size = 8

-- Display: Dynamic Reference Price
lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.display = function(value)
  return "Dynamic Reference Price: "..value
end

-- Translate: Dynamic Reference Price
lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Reference Price
lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.dynamic_reference_price, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_lse_level1recovery_gtp_v26_2.event_code = {}

-- Size: Event Code
lseg_lse_level1recovery_gtp_v26_2.event_code.size = 1

-- Display: Event Code
lseg_lse_level1recovery_gtp_v26_2.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_lse_level1recovery_gtp_v26_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Ex Marker Code
lseg_lse_level1recovery_gtp_v26_2.ex_marker_code = {}

-- Size: Ex Marker Code
lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.size = 2

-- Display: Ex Marker Code
lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.display = function(value)
  return "Ex Marker Code: "..value
end

-- Dissect: Ex Marker Code
lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.ex_marker_code, range, value, display)

  return offset + length, value
end

-- Exchange Market Size
lseg_lse_level1recovery_gtp_v26_2.exchange_market_size = {}

-- Size: Exchange Market Size
lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.size = 8

-- Display: Exchange Market Size
lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.display = function(value)
  return "Exchange Market Size: "..value
end

-- Dissect: Exchange Market Size
lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.exchange_market_size, range, value, display)

  return offset + length, value
end

-- Executed Size
lseg_lse_level1recovery_gtp_v26_2.executed_size = {}

-- Size: Executed Size
lseg_lse_level1recovery_gtp_v26_2.executed_size.size = 8

-- Display: Executed Size
lseg_lse_level1recovery_gtp_v26_2.executed_size.display = function(value)
  return "Executed Size: "..value
end

-- Translate: Executed Size
lseg_lse_level1recovery_gtp_v26_2.executed_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Size
lseg_lse_level1recovery_gtp_v26_2.executed_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.executed_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.executed_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.executed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.executed_size, range, value, display)

  return offset + length, value
end

-- Expiration Date
lseg_lse_level1recovery_gtp_v26_2.expiration_date = {}

-- Size: Expiration Date
lseg_lse_level1recovery_gtp_v26_2.expiration_date.size = 8

-- Display: Expiration Date
lseg_lse_level1recovery_gtp_v26_2.expiration_date.display = function(value)
  if #value < 8 then
    return "Expiration Date: "..value
  end

  return "Expiration Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiration Date
lseg_lse_level1recovery_gtp_v26_2.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Fifth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8 = {}

-- Size: Fifth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.size = 8

-- Display: Fifth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.display = function(value)
  return "Fifth Reserved 8: "..value
end

-- Dissect: Fifth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.fifth_reserved_8, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Trade High
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high = {}

-- Size: Fifty Two Week Trade High
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.size = 8

-- Display: Fifty Two Week Trade High
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.display = function(value)
  return "Fifty Two Week Trade High: "..value
end

-- Translate: Fifty Two Week Trade High
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fifty Two Week Trade High
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.fifty_two_week_trade_high, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Trade Low
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low = {}

-- Size: Fifty Two Week Trade Low
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.size = 8

-- Display: Fifty Two Week Trade Low
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.display = function(value)
  return "Fifty Two Week Trade Low: "..value
end

-- Translate: Fifty Two Week Trade Low
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fifty Two Week Trade Low
lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.fifty_two_week_trade_low, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 1
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1 = {}

-- Size: Fourth Reserved 1
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.size = 1

-- Display: Fourth Reserved 1
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.display = function(value)
  return "Fourth Reserved 1: "..value
end

-- Dissect: Fourth Reserved 1
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.fourth_reserved_1, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8 = {}

-- Size: Fourth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.size = 8

-- Display: Fourth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.display = function(value)
  return "Fourth Reserved 8: "..value
end

-- Dissect: Fourth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.fourth_reserved_8, range, value, display)

  return offset + length, value
end

-- Group Id
lseg_lse_level1recovery_gtp_v26_2.group_id = {}

-- Size: Group Id
lseg_lse_level1recovery_gtp_v26_2.group_id.size = 6

-- Display: Group Id
lseg_lse_level1recovery_gtp_v26_2.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
lseg_lse_level1recovery_gtp_v26_2.group_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.group_id, range, value, display)

  return offset + length, value
end

-- Hidden Execution Indicator
lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator = {}

-- Size: Hidden Execution Indicator
lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.size = 1

-- Display: Hidden Execution Indicator
lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.hidden_execution_indicator, range, value, display)

  return offset + length, value
end

-- Iau Paired Size
lseg_lse_level1recovery_gtp_v26_2.iau_paired_size = {}

-- Size: Iau Paired Size
lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.size = 8

-- Display: Iau Paired Size
lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.display = function(value)
  return "Iau Paired Size: "..value
end

-- Translate: Iau Paired Size
lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Iau Paired Size
lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.iau_paired_size, range, value, display)

  return offset + length, value
end

-- Iau Price
lseg_lse_level1recovery_gtp_v26_2.iau_price = {}

-- Size: Iau Price
lseg_lse_level1recovery_gtp_v26_2.iau_price.size = 8

-- Display: Iau Price
lseg_lse_level1recovery_gtp_v26_2.iau_price.display = function(value)
  return "Iau Price: "..value
end

-- Translate: Iau Price
lseg_lse_level1recovery_gtp_v26_2.iau_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Iau Price
lseg_lse_level1recovery_gtp_v26_2.iau_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.iau_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.iau_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.iau_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.iau_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
lseg_lse_level1recovery_gtp_v26_2.imbalance_direction = {}

-- Size: Imbalance Direction
lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.size = 1

-- Display: Imbalance Direction
lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders For Auction (O)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity = {}

-- Size: Imbalance Quantity
lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_lse_level1recovery_gtp_v26_2.instrument = {}

-- Size: Instrument
lseg_lse_level1recovery_gtp_v26_2.instrument.size = 8

-- Display: Instrument
lseg_lse_level1recovery_gtp_v26_2.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_lse_level1recovery_gtp_v26_2.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1recovery_gtp_v26_2.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
lseg_lse_level1recovery_gtp_v26_2.isin = {}

-- Size: Isin
lseg_lse_level1recovery_gtp_v26_2.isin.size = 12

-- Display: Isin
lseg_lse_level1recovery_gtp_v26_2.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_lse_level1recovery_gtp_v26_2.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Price In Preceding Session
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session = {}

-- Size: Last Price In Preceding Session
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.size = 8

-- Display: Last Price In Preceding Session
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.display = function(value)
  return "Last Price In Preceding Session: "..value
end

-- Translate: Last Price In Preceding Session
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price In Preceding Session
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_price_in_preceding_session, range, value, display)

  return offset + length, value
end

-- Last Price In Preceding Session Date
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date = {}

-- Size: Last Price In Preceding Session Date
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.size = 8

-- Display: Last Price In Preceding Session Date
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.display = function(value)
  if #value < 8 then
    return "Last Price In Preceding Session Date: "..value
  end

  return "Last Price In Preceding Session Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Last Price In Preceding Session Date
lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_price_in_preceding_session_date, range, value, display)

  return offset + length, value
end

-- Last Trade Price
lseg_lse_level1recovery_gtp_v26_2.last_trade_price = {}

-- Size: Last Trade Price
lseg_lse_level1recovery_gtp_v26_2.last_trade_price.size = 8

-- Display: Last Trade Price
lseg_lse_level1recovery_gtp_v26_2.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
lseg_lse_level1recovery_gtp_v26_2.last_trade_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Trade Price
lseg_lse_level1recovery_gtp_v26_2.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.last_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.last_trade_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity = {}

-- Size: Last Trade Quantity
lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.size = 8

-- Display: Last Trade Quantity
lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Translate: Last Trade Quantity
lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Trade Quantity
lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
lseg_lse_level1recovery_gtp_v26_2.last_trade_time = {}

-- Size: Last Trade Time
lseg_lse_level1recovery_gtp_v26_2.last_trade_time.size = 8

-- Display: Last Trade Time
lseg_lse_level1recovery_gtp_v26_2.last_trade_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Last Trade Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Trade Time
lseg_lse_level1recovery_gtp_v26_2.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1recovery_gtp_v26_2.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Length
lseg_lse_level1recovery_gtp_v26_2.length = {}

-- Size: Length
lseg_lse_level1recovery_gtp_v26_2.length.size = 2

-- Display: Length
lseg_lse_level1recovery_gtp_v26_2.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_lse_level1recovery_gtp_v26_2.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.length, range, value, display)

  return offset + length, value
end

-- Listing End Date
lseg_lse_level1recovery_gtp_v26_2.listing_end_date = {}

-- Size: Listing End Date
lseg_lse_level1recovery_gtp_v26_2.listing_end_date.size = 8

-- Display: Listing End Date
lseg_lse_level1recovery_gtp_v26_2.listing_end_date.display = function(value)
  if #value < 8 then
    return "Listing End Date: "..value
  end

  return "Listing End Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Listing End Date
lseg_lse_level1recovery_gtp_v26_2.listing_end_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.listing_end_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.listing_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.listing_end_date, range, value, display)

  return offset + length, value
end

-- Listing Start Date
lseg_lse_level1recovery_gtp_v26_2.listing_start_date = {}

-- Size: Listing Start Date
lseg_lse_level1recovery_gtp_v26_2.listing_start_date.size = 8

-- Display: Listing Start Date
lseg_lse_level1recovery_gtp_v26_2.listing_start_date.display = function(value)
  if #value < 8 then
    return "Listing Start Date: "..value
  end

  return "Listing Start Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Listing Start Date
lseg_lse_level1recovery_gtp_v26_2.listing_start_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.listing_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.listing_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.listing_start_date, range, value, display)

  return offset + length, value
end

-- Login Status
lseg_lse_level1recovery_gtp_v26_2.login_status = {}

-- Size: Login Status
lseg_lse_level1recovery_gtp_v26_2.login_status.size = 1

-- Display: Login Status
lseg_lse_level1recovery_gtp_v26_2.login_status.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.login_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.login_status, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_lse_level1recovery_gtp_v26_2.market_data_group = {}

-- Size: Market Data Group
lseg_lse_level1recovery_gtp_v26_2.market_data_group.size = 1

-- Display: Market Data Group
lseg_lse_level1recovery_gtp_v26_2.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_lse_level1recovery_gtp_v26_2.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_lse_level1recovery_gtp_v26_2.message_count = {}

-- Size: Message Count
lseg_lse_level1recovery_gtp_v26_2.message_count.size = 1

-- Display: Message Count
lseg_lse_level1recovery_gtp_v26_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_lse_level1recovery_gtp_v26_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_lse_level1recovery_gtp_v26_2.message_length = {}

-- Size: Message Length
lseg_lse_level1recovery_gtp_v26_2.message_length.size = 2

-- Display: Message Length
lseg_lse_level1recovery_gtp_v26_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_lse_level1recovery_gtp_v26_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_lse_level1recovery_gtp_v26_2.message_type = {}

-- Size: Message Type
lseg_lse_level1recovery_gtp_v26_2.message_type.size = 1

-- Display: Message Type
lseg_lse_level1recovery_gtp_v26_2.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Request Message (0x01)"
  end
  if value == 0x81 then
    return "Message Type: Recovery Request Message (0x81)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x82 then
    return "Message Type: Recovery Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Replay And Recovery Complete Message (0x83)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
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
  if value == 0x52 then
    return "Message Type: Instrument Directory Equities Message (0x52)"
  end
  if value == 0x6B then
    return "Message Type: Statistics Snapshot Message (0x6B)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_lse_level1recovery_gtp_v26_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Lot Minimum Execution Size
lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size = {}

-- Size: Minimum Lot Minimum Execution Size
lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.size = 8

-- Display: Minimum Lot Minimum Execution Size
lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.display = function(value)
  return "Minimum Lot Minimum Execution Size: "..value
end

-- Translate: Minimum Lot Minimum Execution Size
lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum Lot Minimum Execution Size
lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.minimum_lot_minimum_execution_size, range, value, display)

  return offset + length, value
end

-- Minimum Peak Size Multiplier
lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier = {}

-- Size: Minimum Peak Size Multiplier
lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.size = 8

-- Display: Minimum Peak Size Multiplier
lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.display = function(value)
  return "Minimum Peak Size Multiplier: "..value
end

-- Translate: Minimum Peak Size Multiplier
lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum Peak Size Multiplier
lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.minimum_peak_size_multiplier, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_lse_level1recovery_gtp_v26_2.new_end_time = {}

-- Size: New End Time
lseg_lse_level1recovery_gtp_v26_2.new_end_time.size = 6

-- Display: New End Time
lseg_lse_level1recovery_gtp_v26_2.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_lse_level1recovery_gtp_v26_2.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_lse_level1recovery_gtp_v26_2.number_of_trades = {}

-- Size: Number Of Trades
lseg_lse_level1recovery_gtp_v26_2.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_lse_level1recovery_gtp_v26_2.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_lse_level1recovery_gtp_v26_2.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Number Of Trades Onbook Only
lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only = {}

-- Size: Number Of Trades Onbook Only
lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.size = 4

-- Display: Number Of Trades Onbook Only
lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.display = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Offer Limit Price
lseg_lse_level1recovery_gtp_v26_2.offer_limit_price = {}

-- Size: Offer Limit Price
lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.size = 8

-- Display: Offer Limit Price
lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.display = function(value)
  return "Offer Limit Price: "..value
end

-- Translate: Offer Limit Price
lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Limit Price
lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_limit_price, range, value, display)

  return offset + length, value
end

-- Offer Limit Size
lseg_lse_level1recovery_gtp_v26_2.offer_limit_size = {}

-- Size: Offer Limit Size
lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.size = 8

-- Display: Offer Limit Size
lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.display = function(value)
  return "Offer Limit Size: "..value
end

-- Translate: Offer Limit Size
lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Limit Size
lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_limit_size, range, value, display)

  return offset + length, value
end

-- Offer Market Size
lseg_lse_level1recovery_gtp_v26_2.offer_market_size = {}

-- Size: Offer Market Size
lseg_lse_level1recovery_gtp_v26_2.offer_market_size.size = 8

-- Display: Offer Market Size
lseg_lse_level1recovery_gtp_v26_2.offer_market_size.display = function(value)
  return "Offer Market Size: "..value
end

-- Translate: Offer Market Size
lseg_lse_level1recovery_gtp_v26_2.offer_market_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Market Size
lseg_lse_level1recovery_gtp_v26_2.offer_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.offer_market_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.offer_market_size.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.offer_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_market_size, range, value, display)

  return offset + length, value
end

-- Official Closing Price
lseg_lse_level1recovery_gtp_v26_2.official_closing_price = {}

-- Size: Official Closing Price
lseg_lse_level1recovery_gtp_v26_2.official_closing_price.size = 8

-- Display: Official Closing Price
lseg_lse_level1recovery_gtp_v26_2.official_closing_price.display = function(value)
  return "Official Closing Price: "..value
end

-- Translate: Official Closing Price
lseg_lse_level1recovery_gtp_v26_2.official_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Official Closing Price
lseg_lse_level1recovery_gtp_v26_2.official_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.official_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.official_closing_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.official_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.official_closing_price, range, value, display)

  return offset + length, value
end

-- Official Opening Price
lseg_lse_level1recovery_gtp_v26_2.official_opening_price = {}

-- Size: Official Opening Price
lseg_lse_level1recovery_gtp_v26_2.official_opening_price.size = 8

-- Display: Official Opening Price
lseg_lse_level1recovery_gtp_v26_2.official_opening_price.display = function(value)
  return "Official Opening Price: "..value
end

-- Translate: Official Opening Price
lseg_lse_level1recovery_gtp_v26_2.official_opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Official Opening Price
lseg_lse_level1recovery_gtp_v26_2.official_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.official_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.official_opening_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.official_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.official_opening_price, range, value, display)

  return offset + length, value
end

-- Opening Price Indicator
lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator = {}

-- Size: Opening Price Indicator
lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.size = 1

-- Display: Opening Price Indicator
lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.display = function(value)
  if value == "A" then
    return "Opening Price Indicator: Ut (A)"
  end
  if value == "B" then
    return "Opening Price Indicator: At (B)"
  end
  if value == "C" then
    return "Opening Price Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Opening Price Indicator: Last At (D)"
  end
  if value == "E" then
    return "Opening Price Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Opening Price Indicator: Manual (F)"
  end
  if value == "I" then
    return "Opening Price Indicator: Previous Close (I)"
  end

  return "Opening Price Indicator: Unknown("..value..")"
end

-- Dissect: Opening Price Indicator
lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.opening_price_indicator, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_lse_level1recovery_gtp_v26_2.order_book_type = {}

-- Size: Order Book Type
lseg_lse_level1recovery_gtp_v26_2.order_book_type.size = 1

-- Display: Order Book Type
lseg_lse_level1recovery_gtp_v26_2.order_book_type.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Partition Id
lseg_lse_level1recovery_gtp_v26_2.partition_id = {}

-- Size: Partition Id
lseg_lse_level1recovery_gtp_v26_2.partition_id.size = 1

-- Display: Partition Id
lseg_lse_level1recovery_gtp_v26_2.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
lseg_lse_level1recovery_gtp_v26_2.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.partition_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Previous Days Closing Price
lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price = {}

-- Size: Previous Days Closing Price
lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.size = 8

-- Display: Previous Days Closing Price
lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.display = function(value)
  return "Previous Days Closing Price: "..value
end

-- Translate: Previous Days Closing Price
lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Days Closing Price
lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.previous_days_closing_price, range, value, display)

  return offset + length, value
end

-- Price
lseg_lse_level1recovery_gtp_v26_2.price = {}

-- Size: Price
lseg_lse_level1recovery_gtp_v26_2.price.size = 8

-- Display: Price
lseg_lse_level1recovery_gtp_v26_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_lse_level1recovery_gtp_v26_2.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_lse_level1recovery_gtp_v26_2.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.price, range, value, display)

  return offset + length, value
end

-- Recovery Status
lseg_lse_level1recovery_gtp_v26_2.recovery_status = {}

-- Size: Recovery Status
lseg_lse_level1recovery_gtp_v26_2.recovery_status.size = 1

-- Display: Recovery Status
lseg_lse_level1recovery_gtp_v26_2.recovery_status.display = function(value)
  if value == "A" then
    return "Recovery Status: Request Accepted (A)"
  end
  if value == "O" then
    return "Recovery Status: Out Of Range (O)"
  end
  if value == "a" then
    return "Recovery Status: Invalid Group Or Instrument (a)"
  end
  if value == "b" then
    return "Recovery Status: Request Limit Reached (b)"
  end
  if value == "c" then
    return "Recovery Status: Concurrent Limit Reached (c)"
  end
  if value == "d" then
    return "Recovery Status: Invalid Recovery Type Or Request Level (d)"
  end
  if value == "e" then
    return "Recovery Status: Failed Other (e)"
  end

  return "Recovery Status: Unknown("..value..")"
end

-- Dissect: Recovery Status
lseg_lse_level1recovery_gtp_v26_2.recovery_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.recovery_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.recovery_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_status, range, value, display)

  return offset + length, value
end

-- Recovery Type
lseg_lse_level1recovery_gtp_v26_2.recovery_type = {}

-- Size: Recovery Type
lseg_lse_level1recovery_gtp_v26_2.recovery_type.size = 1

-- Display: Recovery Type
lseg_lse_level1recovery_gtp_v26_2.recovery_type.display = function(value)
  if value == 0 then
    return "Recovery Type: Instrument Directory (0)"
  end
  if value == 1 then
    return "Recovery Type: Order Book (1)"
  end
  if value == 2 then
    return "Recovery Type: All Trades (2)"
  end
  if value == 3 then
    return "Recovery Type: Statistics (3)"
  end
  if value == 4 then
    return "Recovery Type: Instrument Status (4)"
  end
  if value == 5 then
    return "Recovery Type: Reserved (5)"
  end
  if value == 6 then
    return "Recovery Type: System Event (6)"
  end

  return "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
lseg_lse_level1recovery_gtp_v26_2.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.recovery_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Request Id
lseg_lse_level1recovery_gtp_v26_2.request_id = {}

-- Size: Request Id
lseg_lse_level1recovery_gtp_v26_2.request_id.size = 4

-- Display: Request Id
lseg_lse_level1recovery_gtp_v26_2.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
lseg_lse_level1recovery_gtp_v26_2.request_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.request_id, range, value, display)

  return offset + length, value
end

-- Request Level
lseg_lse_level1recovery_gtp_v26_2.request_level = {}

-- Size: Request Level
lseg_lse_level1recovery_gtp_v26_2.request_level.size = 1

-- Display: Request Level
lseg_lse_level1recovery_gtp_v26_2.request_level.display = function(value)
  if value == 0 then
    return "Request Level: Instrument (0)"
  end
  if value == 1 then
    return "Request Level: Group Segment (1)"
  end
  if value == 2 then
    return "Request Level: Multicast Channel (2)"
  end

  return "Request Level: Unknown("..value..")"
end

-- Dissect: Request Level
lseg_lse_level1recovery_gtp_v26_2.request_level.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.request_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.request_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.request_level, range, value, display)

  return offset + length, value
end

-- Request Order Book Type
lseg_lse_level1recovery_gtp_v26_2.request_order_book_type = {}

-- Size: Request Order Book Type
lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.size = 1

-- Display: Request Order Book Type
lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.display = function(value)
  if value == 0 then
    return "Request Order Book Type: All Books (0)"
  end
  if value == 1 then
    return "Request Order Book Type: Firm Quote Book (1)"
  end
  if value == 2 then
    return "Request Order Book Type: Offbook (2)"
  end
  if value == 3 then
    return "Request Order Book Type: Electronic Order Book (3)"
  end
  if value == 4 then
    return "Request Order Book Type: Private Rfq (4)"
  end

  return "Request Order Book Type: Unknown("..value..")"
end

-- Dissect: Request Order Book Type
lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.request_order_book_type, range, value, display)

  return offset + length, value
end

-- Reserved 12
lseg_lse_level1recovery_gtp_v26_2.reserved_12 = {}

-- Size: Reserved 12
lseg_lse_level1recovery_gtp_v26_2.reserved_12.size = 12

-- Display: Reserved 12
lseg_lse_level1recovery_gtp_v26_2.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
lseg_lse_level1recovery_gtp_v26_2.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 2
lseg_lse_level1recovery_gtp_v26_2.reserved_2 = {}

-- Size: Reserved 2
lseg_lse_level1recovery_gtp_v26_2.reserved_2.size = 2

-- Display: Reserved 2
lseg_lse_level1recovery_gtp_v26_2.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
lseg_lse_level1recovery_gtp_v26_2.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_lse_level1recovery_gtp_v26_2.reserved_4 = {}

-- Size: Reserved 4
lseg_lse_level1recovery_gtp_v26_2.reserved_4.size = 4

-- Display: Reserved 4
lseg_lse_level1recovery_gtp_v26_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_lse_level1recovery_gtp_v26_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_lse_level1recovery_gtp_v26_2.reserved_8 = {}

-- Size: Reserved 8
lseg_lse_level1recovery_gtp_v26_2.reserved_8.size = 8

-- Display: Reserved 8
lseg_lse_level1recovery_gtp_v26_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_lse_level1recovery_gtp_v26_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
lseg_lse_level1recovery_gtp_v26_2.second_reserved_1 = {}

-- Size: Second Reserved 1
lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.size = 1

-- Display: Second Reserved 1
lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
lseg_lse_level1recovery_gtp_v26_2.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Security Exchange
lseg_lse_level1recovery_gtp_v26_2.security_exchange = {}

-- Size: Security Exchange
lseg_lse_level1recovery_gtp_v26_2.security_exchange.size = 11

-- Display: Security Exchange
lseg_lse_level1recovery_gtp_v26_2.security_exchange.display = function(value)
  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
lseg_lse_level1recovery_gtp_v26_2.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.security_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Maximum Spread
lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread = {}

-- Size: Security Maximum Spread
lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.size = 8

-- Display: Security Maximum Spread
lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.display = function(value)
  return "Security Maximum Spread: "..value
end

-- Translate: Security Maximum Spread
lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Security Maximum Spread
lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.security_maximum_spread, range, value, display)

  return offset + length, value
end

-- Security Type
lseg_lse_level1recovery_gtp_v26_2.security_type = {}

-- Size: Security Type
lseg_lse_level1recovery_gtp_v26_2.security_type.size = 1

-- Display: Security Type
lseg_lse_level1recovery_gtp_v26_2.security_type.display = function(value)
  if value == 1 then
    return "Security Type: International Equity (1)"
  end
  if value == 4 then
    return "Security Type: Convertible Bond (4)"
  end
  if value == 5 then
    return "Security Type: Right (5)"
  end
  if value == 39 then
    return "Security Type: Bonds (39)"
  end
  if value == 43 then
    return "Security Type: Covered Warrants (43)"
  end
  if value == 44 then
    return "Security Type: Debenture (44)"
  end
  if value == 45 then
    return "Security Type: Uk Equity (45)"
  end
  if value == 46 then
    return "Security Type: Deposit Receipts (46)"
  end
  if value == 47 then
    return "Security Type: Equity Warrants (47)"
  end
  if value == 48 then
    return "Security Type: Foreign Government Bonds (48)"
  end
  if value == 53 then
    return "Security Type: Gilts (53)"
  end
  if value == 56 then
    return "Security Type: Loan Stock (56)"
  end
  if value == 57 then
    return "Security Type: Medium Term Loans (57)"
  end
  if value == 64 then
    return "Security Type: Preference Shares (64)"
  end
  if value == 66 then
    return "Security Type: Package Units (66)"
  end
  if value == 69 then
    return "Security Type: Structured Products (69)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
lseg_lse_level1recovery_gtp_v26_2.security_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sedol
lseg_lse_level1recovery_gtp_v26_2.sedol = {}

-- Size: Sedol
lseg_lse_level1recovery_gtp_v26_2.sedol.size = 8

-- Display: Sedol
lseg_lse_level1recovery_gtp_v26_2.sedol.display = function(value)
  return "Sedol: "..value
end

-- Dissect: Sedol
lseg_lse_level1recovery_gtp_v26_2.sedol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.sedol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.sedol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.sedol, range, value, display)

  return offset + length, value
end

-- Segment
lseg_lse_level1recovery_gtp_v26_2.segment = {}

-- Size: Segment
lseg_lse_level1recovery_gtp_v26_2.segment.size = 6

-- Display: Segment
lseg_lse_level1recovery_gtp_v26_2.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_lse_level1recovery_gtp_v26_2.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_lse_level1recovery_gtp_v26_2.sequence_number = {}

-- Size: Sequence Number
lseg_lse_level1recovery_gtp_v26_2.sequence_number.size = 4

-- Display: Sequence Number
lseg_lse_level1recovery_gtp_v26_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_lse_level1recovery_gtp_v26_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_lse_level1recovery_gtp_v26_2.session_change_reason = {}

-- Size: Session Change Reason
lseg_lse_level1recovery_gtp_v26_2.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_lse_level1recovery_gtp_v26_2.session_change_reason.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Seventh Reserved 8
lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8 = {}

-- Size: Seventh Reserved 8
lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.size = 8

-- Display: Seventh Reserved 8
lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.display = function(value)
  return "Seventh Reserved 8: "..value
end

-- Dissect: Seventh Reserved 8
lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.seventh_reserved_8, range, value, display)

  return offset + length, value
end

-- Sixth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8 = {}

-- Size: Sixth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.size = 8

-- Display: Sixth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.display = function(value)
  return "Sixth Reserved 8: "..value
end

-- Dissect: Sixth Reserved 8
lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.sixth_reserved_8, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_lse_level1recovery_gtp_v26_2.source_venue = {}

-- Size: Source Venue
lseg_lse_level1recovery_gtp_v26_2.source_venue.size = 2

-- Display: Source Venue
lseg_lse_level1recovery_gtp_v26_2.source_venue.display = function(value)
  if value == 1 then
    return "Source Venue: London Stock Exchange (1)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Static Reference Price
lseg_lse_level1recovery_gtp_v26_2.static_reference_price = {}

-- Size: Static Reference Price
lseg_lse_level1recovery_gtp_v26_2.static_reference_price.size = 8

-- Display: Static Reference Price
lseg_lse_level1recovery_gtp_v26_2.static_reference_price.display = function(value)
  return "Static Reference Price: "..value
end

-- Translate: Static Reference Price
lseg_lse_level1recovery_gtp_v26_2.static_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Reference Price
lseg_lse_level1recovery_gtp_v26_2.static_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.static_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.static_reference_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.static_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.static_reference_price, range, value, display)

  return offset + length, value
end

-- Strike Price
lseg_lse_level1recovery_gtp_v26_2.strike_price = {}

-- Size: Strike Price
lseg_lse_level1recovery_gtp_v26_2.strike_price.size = 8

-- Display: Strike Price
lseg_lse_level1recovery_gtp_v26_2.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
lseg_lse_level1recovery_gtp_v26_2.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
lseg_lse_level1recovery_gtp_v26_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.strike_price.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
lseg_lse_level1recovery_gtp_v26_2.symbol = {}

-- Size: Symbol
lseg_lse_level1recovery_gtp_v26_2.symbol.size = 8

-- Display: Symbol
lseg_lse_level1recovery_gtp_v26_2.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
lseg_lse_level1recovery_gtp_v26_2.symbol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
lseg_lse_level1recovery_gtp_v26_2.third_reserved_1 = {}

-- Size: Third Reserved 1
lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.size = 1

-- Display: Third Reserved 1
lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.third_reserved_1, range, value, display)

  return offset + length, value
end

-- Third Reserved 8
lseg_lse_level1recovery_gtp_v26_2.third_reserved_8 = {}

-- Size: Third Reserved 8
lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.size = 8

-- Display: Third Reserved 8
lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.third_reserved_8, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_lse_level1recovery_gtp_v26_2.tick_id = {}

-- Size: Tick Id
lseg_lse_level1recovery_gtp_v26_2.tick_id.size = 2

-- Display: Tick Id
lseg_lse_level1recovery_gtp_v26_2.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_lse_level1recovery_gtp_v26_2.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_lse_level1recovery_gtp_v26_2.timestamp = {}

-- Size: Timestamp
lseg_lse_level1recovery_gtp_v26_2.timestamp.size = 8

-- Display: Timestamp
lseg_lse_level1recovery_gtp_v26_2.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1recovery_gtp_v26_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade High
lseg_lse_level1recovery_gtp_v26_2.trade_high = {}

-- Size: Trade High
lseg_lse_level1recovery_gtp_v26_2.trade_high.size = 8

-- Display: Trade High
lseg_lse_level1recovery_gtp_v26_2.trade_high.display = function(value)
  return "Trade High: "..value
end

-- Translate: Trade High
lseg_lse_level1recovery_gtp_v26_2.trade_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High
lseg_lse_level1recovery_gtp_v26_2.trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.trade_high.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_high, range, value, display)

  return offset + length, value
end

-- Trade High Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only = {}

-- Size: Trade High Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.size = 8

-- Display: Trade High Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.display = function(value)
  return "Trade High Onbook Only: "..value
end

-- Translate: Trade High Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_high_onbook_only, range, value, display)

  return offset + length, value
end

-- Trade Id
lseg_lse_level1recovery_gtp_v26_2.trade_id = {}

-- Size: Trade Id
lseg_lse_level1recovery_gtp_v26_2.trade_id.size = 8

-- Display: Trade Id
lseg_lse_level1recovery_gtp_v26_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
lseg_lse_level1recovery_gtp_v26_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Low
lseg_lse_level1recovery_gtp_v26_2.trade_low = {}

-- Size: Trade Low
lseg_lse_level1recovery_gtp_v26_2.trade_low.size = 8

-- Display: Trade Low
lseg_lse_level1recovery_gtp_v26_2.trade_low.display = function(value)
  return "Trade Low: "..value
end

-- Translate: Trade Low
lseg_lse_level1recovery_gtp_v26_2.trade_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low
lseg_lse_level1recovery_gtp_v26_2.trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.trade_low.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_low, range, value, display)

  return offset + length, value
end

-- Trade Low Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only = {}

-- Size: Trade Low Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.size = 8

-- Display: Trade Low Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.display = function(value)
  return "Trade Low Onbook Only: "..value
end

-- Translate: Trade Low Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low Onbook Only
lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_low_onbook_only, range, value, display)

  return offset + length, value
end

-- Trade Qualifier
lseg_lse_level1recovery_gtp_v26_2.trade_qualifier = {}

-- Size: Trade Qualifier
lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.size = 1

-- Display: Trade Qualifier
lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.display = function(value)
  if value == " " then
    return "Trade Qualifier: Na (<whitespace>)"
  end
  if value == "C" then
    return "Trade Qualifier: Closing Price Cross Cpx (C)"
  end

  return "Trade Qualifier: Unknown("..value..")"
end

-- Dissect: Trade Qualifier
lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Trade Type
lseg_lse_level1recovery_gtp_v26_2.trade_type = {}

-- Size: Trade Type
lseg_lse_level1recovery_gtp_v26_2.trade_type.size = 1

-- Display: Trade Type
lseg_lse_level1recovery_gtp_v26_2.trade_type.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_lse_level1recovery_gtp_v26_2.trading_status = {}

-- Size: Trading Status
lseg_lse_level1recovery_gtp_v26_2.trading_status.size = 1

-- Display: Trading Status
lseg_lse_level1recovery_gtp_v26_2.trading_status.display = function(value)
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
lseg_lse_level1recovery_gtp_v26_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse_level1recovery_gtp_v26_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Time
lseg_lse_level1recovery_gtp_v26_2.transaction_time = {}

-- Size: Transaction Time
lseg_lse_level1recovery_gtp_v26_2.transaction_time.size = 8

-- Display: Transaction Time
lseg_lse_level1recovery_gtp_v26_2.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_lse_level1recovery_gtp_v26_2.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse_level1recovery_gtp_v26_2.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Turnover
lseg_lse_level1recovery_gtp_v26_2.turnover = {}

-- Size: Turnover
lseg_lse_level1recovery_gtp_v26_2.turnover.size = 8

-- Display: Turnover
lseg_lse_level1recovery_gtp_v26_2.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_lse_level1recovery_gtp_v26_2.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_lse_level1recovery_gtp_v26_2.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.turnover.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.turnover, range, value, display)

  return offset + length, value
end

-- Turnover Onbook Only
lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only = {}

-- Size: Turnover Onbook Only
lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.size = 8

-- Display: Turnover Onbook Only
lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.display = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Username
lseg_lse_level1recovery_gtp_v26_2.username = {}

-- Size: Username
lseg_lse_level1recovery_gtp_v26_2.username.size = 8

-- Display: Username
lseg_lse_level1recovery_gtp_v26_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
lseg_lse_level1recovery_gtp_v26_2.username.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.username, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Volume
lseg_lse_level1recovery_gtp_v26_2.volume = {}

-- Size: Volume
lseg_lse_level1recovery_gtp_v26_2.volume.size = 8

-- Display: Volume
lseg_lse_level1recovery_gtp_v26_2.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_lse_level1recovery_gtp_v26_2.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_lse_level1recovery_gtp_v26_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.volume.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Onbook Only
lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only = {}

-- Size: Volume Onbook Only
lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.size = 8

-- Display: Volume Onbook Only
lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.display = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_lse_level1recovery_gtp_v26_2.vwap = {}

-- Size: Vwap
lseg_lse_level1recovery_gtp_v26_2.vwap.size = 8

-- Display: Vwap
lseg_lse_level1recovery_gtp_v26_2.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_lse_level1recovery_gtp_v26_2.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_lse_level1recovery_gtp_v26_2.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.vwap.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.vwap, range, value, display)

  return offset + length, value
end

-- Vwap Onbook Only
lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only = {}

-- Size: Vwap Onbook Only
lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.size = 8

-- Display: Vwap Onbook Only
lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.display = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.translate(raw)
  local display = lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Lse Level1Recovery Gtp 26.2
-----------------------------------------------------------------------

-- Statistics Snapshot Message
lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message = {}

-- Size: Statistics Snapshot Message
lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.volume.size + 
  lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.size + 
  lseg_lse_level1recovery_gtp_v26_2.vwap.size + 
  lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.size + 
  lseg_lse_level1recovery_gtp_v26_2.number_of_trades.size + 
  lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.size + 
  lseg_lse_level1recovery_gtp_v26_2.turnover.size + 
  lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.size + 
  lseg_lse_level1recovery_gtp_v26_2.official_opening_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.official_closing_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_high.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_low.size + 
  lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.size + 
  lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.size + 
  lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.size + 
  lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.size + 
  lseg_lse_level1recovery_gtp_v26_2.iau_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.size + 
  lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.size + 
  lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.auction_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.last_trade_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.size + 
  lseg_lse_level1recovery_gtp_v26_2.last_trade_time.size + 
  lseg_lse_level1recovery_gtp_v26_2.static_reference_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.size

-- Display: Statistics Snapshot Message
lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Snapshot Message
lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: Size4
  index, volume = lseg_lse_level1recovery_gtp_v26_2.volume.dissect(buffer, index, packet, parent)

  -- Volume Onbook Only: Size4
  index, volume_onbook_only = lseg_lse_level1recovery_gtp_v26_2.volume_onbook_only.dissect(buffer, index, packet, parent)

  -- Vwap: Price4
  index, vwap = lseg_lse_level1recovery_gtp_v26_2.vwap.dissect(buffer, index, packet, parent)

  -- Vwap Onbook Only: Price4
  index, vwap_onbook_only = lseg_lse_level1recovery_gtp_v26_2.vwap_onbook_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: UInt32
  index, number_of_trades = lseg_lse_level1recovery_gtp_v26_2.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: UInt32
  index, number_of_trades_onbook_only = lseg_lse_level1recovery_gtp_v26_2.number_of_trades_onbook_only.dissect(buffer, index, packet, parent)

  -- Turnover: Price4
  index, turnover = lseg_lse_level1recovery_gtp_v26_2.turnover.dissect(buffer, index, packet, parent)

  -- Turnover Onbook Only: Price4
  index, turnover_onbook_only = lseg_lse_level1recovery_gtp_v26_2.turnover_onbook_only.dissect(buffer, index, packet, parent)

  -- Official Opening Price: Price
  index, official_opening_price = lseg_lse_level1recovery_gtp_v26_2.official_opening_price.dissect(buffer, index, packet, parent)

  -- Official Closing Price: Price
  index, official_closing_price = lseg_lse_level1recovery_gtp_v26_2.official_closing_price.dissect(buffer, index, packet, parent)

  -- Trade High Onbook Only: Price
  index, trade_high_onbook_only = lseg_lse_level1recovery_gtp_v26_2.trade_high_onbook_only.dissect(buffer, index, packet, parent)

  -- Trade Low Onbook Only: Price
  index, trade_low_onbook_only = lseg_lse_level1recovery_gtp_v26_2.trade_low_onbook_only.dissect(buffer, index, packet, parent)

  -- Trade High: Price
  index, trade_high = lseg_lse_level1recovery_gtp_v26_2.trade_high.dissect(buffer, index, packet, parent)

  -- Trade Low: Price
  index, trade_low = lseg_lse_level1recovery_gtp_v26_2.trade_low.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Trade High: Price
  index, fifty_two_week_trade_high = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_high.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Trade Low: Price
  index, fifty_two_week_trade_low = lseg_lse_level1recovery_gtp_v26_2.fifty_two_week_trade_low.dissect(buffer, index, packet, parent)

  -- Opening Price Indicator: Byte
  index, opening_price_indicator = lseg_lse_level1recovery_gtp_v26_2.opening_price_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price Indicator: Byte
  index, closing_price_indicator = lseg_lse_level1recovery_gtp_v26_2.closing_price_indicator.dissect(buffer, index, packet, parent)

  -- Iau Price: Price
  index, iau_price = lseg_lse_level1recovery_gtp_v26_2.iau_price.dissect(buffer, index, packet, parent)

  -- Iau Paired Size: Size
  index, iau_paired_size = lseg_lse_level1recovery_gtp_v26_2.iau_paired_size.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: Size
  index, imbalance_quantity = lseg_lse_level1recovery_gtp_v26_2.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Byte
  index, imbalance_direction = lseg_lse_level1recovery_gtp_v26_2.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Best Closing Bid Price: Price
  index, best_closing_bid_price = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_price.dissect(buffer, index, packet, parent)

  -- Best Closing Ask Price: Price
  index, best_closing_ask_price = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_price.dissect(buffer, index, packet, parent)

  -- Best Closing Bid Size: Size
  index, best_closing_bid_size = lseg_lse_level1recovery_gtp_v26_2.best_closing_bid_size.dissect(buffer, index, packet, parent)

  -- Best Closing Ask Size: Size
  index, best_closing_ask_size = lseg_lse_level1recovery_gtp_v26_2.best_closing_ask_size.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1recovery_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: Price
  index, third_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 8: Price
  index, fourth_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_lse_level1recovery_gtp_v26_2.auction_type.dissect(buffer, index, packet, parent)

  -- Last Trade Price: Price
  index, last_trade_price = lseg_lse_level1recovery_gtp_v26_2.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: Size
  index, last_trade_quantity = lseg_lse_level1recovery_gtp_v26_2.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: UDT
  index, last_trade_time = lseg_lse_level1recovery_gtp_v26_2.last_trade_time.dissect(buffer, index, packet, parent)

  -- Static Reference Price: Price
  index, static_reference_price = lseg_lse_level1recovery_gtp_v26_2.static_reference_price.dissect(buffer, index, packet, parent)

  -- Dynamic Reference Price: Price
  index, dynamic_reference_price = lseg_lse_level1recovery_gtp_v26_2.dynamic_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Snapshot Message
lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.statistics_snapshot_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 1
lseg_lse_level1recovery_gtp_v26_2.reserved_1 = {}

-- Size: Reserved 1
lseg_lse_level1recovery_gtp_v26_2.reserved_1.size = 1

-- Display: Reserved 1
lseg_lse_level1recovery_gtp_v26_2.reserved_1.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Reserved 1
lseg_lse_level1recovery_gtp_v26_2.reserved_1.bits = function(range, value, packet, parent)

  -- Reserved 07: 8 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_07, range, value)
end

-- Dissect: Reserved 1
lseg_lse_level1recovery_gtp_v26_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1recovery_gtp_v26_2.reserved_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.reserved_1.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_1, range, display)

  if show.structs then
    lseg_lse_level1recovery_gtp_v26_2.reserved_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Allowed Book Types
lseg_lse_level1recovery_gtp_v26_2.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.display = function(range, value, packet, parent)
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
lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.bits = function(range, value, packet, parent)

  -- Reserved 0: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_0, range, value)

  -- Firm Quote Book: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.firm_quote_book, range, value)

  -- Offbook: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.offbook, range, value)

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.electronic_order_book, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.private_rfq, range, value)

  -- Reserved 57: 3 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_57, range, value)
end

-- Dissect: Allowed Book Types
lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Equities Message
lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message = {}

-- Size: Instrument Directory Equities Message
lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.isin.size + 
  lseg_lse_level1recovery_gtp_v26_2.sedol.size + 
  lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.size + 
  lseg_lse_level1recovery_gtp_v26_2.segment.size + 
  lseg_lse_level1recovery_gtp_v26_2.currency.size + 
  lseg_lse_level1recovery_gtp_v26_2.tick_id.size + 
  lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.size + 
  lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_1.size + 
  lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.size + 
  lseg_lse_level1recovery_gtp_v26_2.expiration_date.size + 
  lseg_lse_level1recovery_gtp_v26_2.listing_start_date.size + 
  lseg_lse_level1recovery_gtp_v26_2.listing_end_date.size + 
  lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.size + 
  lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.size + 
  lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.size + 
  lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.size + 
  lseg_lse_level1recovery_gtp_v26_2.security_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.country_of_register.size + 
  lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.size + 
  lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.size + 
  lseg_lse_level1recovery_gtp_v26_2.clearing_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.strike_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.security_exchange.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_12.size + 
  lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.size + 
  lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.partition_id.size + 
  lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_4.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_2.size + 
  lseg_lse_level1recovery_gtp_v26_2.symbol.size + 
  lseg_lse_level1recovery_gtp_v26_2.description.size

-- Display: Instrument Directory Equities Message
lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Equities Message
lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_lse_level1recovery_gtp_v26_2.isin.dissect(buffer, index, packet, parent)

  -- Sedol: Alpha
  index, sedol = lseg_lse_level1recovery_gtp_v26_2.sedol.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 6 fields
  index, allowed_book_types = lseg_lse_level1recovery_gtp_v26_2.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_lse_level1recovery_gtp_v26_2.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_lse_level1recovery_gtp_v26_2.segment.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_lse_level1recovery_gtp_v26_2.currency.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_lse_level1recovery_gtp_v26_2.tick_id.dissect(buffer, index, packet, parent)

  -- Previous Days Closing Price: Price
  index, previous_days_closing_price = lseg_lse_level1recovery_gtp_v26_2.previous_days_closing_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1recovery_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_lse_level1recovery_gtp_v26_2.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_lse_level1recovery_gtp_v26_2.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Reserved 1: Struct of 1 fields
  index, reserved_1 = lseg_lse_level1recovery_gtp_v26_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: UInt8
  index, second_reserved_1 = lseg_lse_level1recovery_gtp_v26_2.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = lseg_lse_level1recovery_gtp_v26_2.expiration_date.dissect(buffer, index, packet, parent)

  -- Listing Start Date: Date
  index, listing_start_date = lseg_lse_level1recovery_gtp_v26_2.listing_start_date.dissect(buffer, index, packet, parent)

  -- Listing End Date: Date
  index, listing_end_date = lseg_lse_level1recovery_gtp_v26_2.listing_end_date.dissect(buffer, index, packet, parent)

  -- Minimum Lot Minimum Execution Size: Size
  index, minimum_lot_minimum_execution_size = lseg_lse_level1recovery_gtp_v26_2.minimum_lot_minimum_execution_size.dissect(buffer, index, packet, parent)

  -- Last Price In Preceding Session: Price
  index, last_price_in_preceding_session = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session.dissect(buffer, index, packet, parent)

  -- Last Price In Preceding Session Date: Date
  index, last_price_in_preceding_session_date = lseg_lse_level1recovery_gtp_v26_2.last_price_in_preceding_session_date.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: UInt8
  index, third_reserved_1 = lseg_lse_level1recovery_gtp_v26_2.third_reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: Price
  index, third_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.third_reserved_8.dissect(buffer, index, packet, parent)

  -- Ex Marker Code: Alpha
  index, ex_marker_code = lseg_lse_level1recovery_gtp_v26_2.ex_marker_code.dissect(buffer, index, packet, parent)

  -- Security Type: UInt8
  index, security_type = lseg_lse_level1recovery_gtp_v26_2.security_type.dissect(buffer, index, packet, parent)

  -- Country Of Register: Alpha
  index, country_of_register = lseg_lse_level1recovery_gtp_v26_2.country_of_register.dissect(buffer, index, packet, parent)

  -- Exchange Market Size: UInt64
  index, exchange_market_size = lseg_lse_level1recovery_gtp_v26_2.exchange_market_size.dissect(buffer, index, packet, parent)

  -- Minimum Peak Size Multiplier: Size
  index, minimum_peak_size_multiplier = lseg_lse_level1recovery_gtp_v26_2.minimum_peak_size_multiplier.dissect(buffer, index, packet, parent)

  -- Security Maximum Spread: Price
  index, security_maximum_spread = lseg_lse_level1recovery_gtp_v26_2.security_maximum_spread.dissect(buffer, index, packet, parent)

  -- Clearing Type: UInt8
  index, clearing_type = lseg_lse_level1recovery_gtp_v26_2.clearing_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = lseg_lse_level1recovery_gtp_v26_2.strike_price.dissect(buffer, index, packet, parent)

  -- Security Exchange: Alpha
  index, security_exchange = lseg_lse_level1recovery_gtp_v26_2.security_exchange.dissect(buffer, index, packet, parent)

  -- Reserved 12: Alpha
  index, reserved_12 = lseg_lse_level1recovery_gtp_v26_2.reserved_12.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: UInt8
  index, fourth_reserved_1 = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 8: Price
  index, fourth_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.fourth_reserved_8.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 8: Price
  index, fifth_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.fifth_reserved_8.dissect(buffer, index, packet, parent)

  -- Partition Id: Byte
  index, partition_id = lseg_lse_level1recovery_gtp_v26_2.partition_id.dissect(buffer, index, packet, parent)

  -- Sixth Reserved 8: Price
  index, sixth_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.sixth_reserved_8.dissect(buffer, index, packet, parent)

  -- Seventh Reserved 8: Price
  index, seventh_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.seventh_reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 4: UInt32
  index, reserved_4 = lseg_lse_level1recovery_gtp_v26_2.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved 2: UInt16
  index, reserved_2 = lseg_lse_level1recovery_gtp_v26_2.reserved_2.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = lseg_lse_level1recovery_gtp_v26_2.symbol.dissect(buffer, index, packet, parent)

  -- Description: Alpha
  index, description = lseg_lse_level1recovery_gtp_v26_2.description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Equities Message
lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.instrument_directory_equities_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
lseg_lse_level1recovery_gtp_v26_2.trade_flags = {}

-- Size: Trade Flags
lseg_lse_level1recovery_gtp_v26_2.trade_flags.size = 1

-- Display: Trade Flags
lseg_lse_level1recovery_gtp_v26_2.trade_flags.display = function(range, value, packet, parent)
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
lseg_lse_level1recovery_gtp_v26_2.trade_flags.bits = function(range, value, packet, parent)

  -- Trade Cancellation: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_cancellation, range, value)

  -- Trade Correction: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_correction, range, value)

  -- Reserved 27: 6 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_27, range, value)
end

-- Dissect: Trade Flags
lseg_lse_level1recovery_gtp_v26_2.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1recovery_gtp_v26_2.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_flags, range, display)

  if show.structs then
    lseg_lse_level1recovery_gtp_v26_2.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
lseg_lse_level1recovery_gtp_v26_2.trade_message = {}

-- Size: Trade Message
lseg_lse_level1recovery_gtp_v26_2.trade_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.transaction_time.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.executed_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.price.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_id.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.auction_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_flags.size + 
  lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.size + 
  lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.size

-- Display: Trade Message
lseg_lse_level1recovery_gtp_v26_2.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_lse_level1recovery_gtp_v26_2.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_lse_level1recovery_gtp_v26_2.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: Size
  index, executed_size = lseg_lse_level1recovery_gtp_v26_2.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_lse_level1recovery_gtp_v26_2.price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1recovery_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = lseg_lse_level1recovery_gtp_v26_2.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Type: UInt8
  index, trade_type = lseg_lse_level1recovery_gtp_v26_2.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_lse_level1recovery_gtp_v26_2.auction_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = lseg_lse_level1recovery_gtp_v26_2.trade_flags.dissect(buffer, index, packet, parent)

  -- Hidden Execution Indicator: UInt8
  index, hidden_execution_indicator = lseg_lse_level1recovery_gtp_v26_2.hidden_execution_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Byte
  index, trade_qualifier = lseg_lse_level1recovery_gtp_v26_2.trade_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_lse_level1recovery_gtp_v26_2.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.trade_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.order_book_type.size

-- Display: Order Book Clear Message
lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_level1recovery_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Flags
lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags = {}

-- Size: Top Of Book Flags
lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.size = 1

-- Display: Top Of Book Flags
lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.display = function(range, value, packet, parent)
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
lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.bits = function(range, value, packet, parent)

  -- Bid Depth: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.bid_depth, range, value)

  -- Offer Depth: 1 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.offer_depth, range, value)

  -- Reserved 27: 6 Bit
  parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.reserved_27, range, value)
end

-- Dissect: Top Of Book Flags
lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.top_of_book_flags, range, display)

  if show.structs then
    lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Top Of Book Message
lseg_lse_level1recovery_gtp_v26_2.top_of_book_message = {}

-- Size: Top Of Book Message
lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.bid_market_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.offer_market_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.size + 
  lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.size + 
  lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.size + 
  lseg_lse_level1recovery_gtp_v26_2.order_book_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.size

-- Display: Top Of Book Message
lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Bid Market Size: Size
  index, bid_market_size = lseg_lse_level1recovery_gtp_v26_2.bid_market_size.dissect(buffer, index, packet, parent)

  -- Bid Limit Price: Price
  index, bid_limit_price = lseg_lse_level1recovery_gtp_v26_2.bid_limit_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_lse_level1recovery_gtp_v26_2.reserved_8.dissect(buffer, index, packet, parent)

  -- Bid Limit Size: Size
  index, bid_limit_size = lseg_lse_level1recovery_gtp_v26_2.bid_limit_size.dissect(buffer, index, packet, parent)

  -- Offer Market Size: Size
  index, offer_market_size = lseg_lse_level1recovery_gtp_v26_2.offer_market_size.dissect(buffer, index, packet, parent)

  -- Offer Limit Price: Price
  index, offer_limit_price = lseg_lse_level1recovery_gtp_v26_2.offer_limit_price.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_lse_level1recovery_gtp_v26_2.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Offer Limit Size: Size
  index, offer_limit_size = lseg_lse_level1recovery_gtp_v26_2.offer_limit_size.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_level1recovery_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  -- Top Of Book Flags: Struct of 3 fields
  index, top_of_book_flags = lseg_lse_level1recovery_gtp_v26_2.top_of_book_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.top_of_book_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_lse_level1recovery_gtp_v26_2.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.trading_status.size + 
  lseg_lse_level1recovery_gtp_v26_2.session_change_reason.size + 
  lseg_lse_level1recovery_gtp_v26_2.new_end_time.size + 
  lseg_lse_level1recovery_gtp_v26_2.order_book_type.size

-- Display: Instrument Status Message
lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse_level1recovery_gtp_v26_2.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_lse_level1recovery_gtp_v26_2.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_lse_level1recovery_gtp_v26_2.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse_level1recovery_gtp_v26_2.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_lse_level1recovery_gtp_v26_2.system_event_message = {}

-- Size: System Event Message
lseg_lse_level1recovery_gtp_v26_2.system_event_message.size =
  lseg_lse_level1recovery_gtp_v26_2.timestamp.size + 
  lseg_lse_level1recovery_gtp_v26_2.event_code.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size

-- Display: System Event Message
lseg_lse_level1recovery_gtp_v26_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_lse_level1recovery_gtp_v26_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse_level1recovery_gtp_v26_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_lse_level1recovery_gtp_v26_2.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_lse_level1recovery_gtp_v26_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.system_event_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay And Recovery Complete Message
lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message = {}

-- Size: Replay And Recovery Complete Message
lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.size =
  lseg_lse_level1recovery_gtp_v26_2.request_id.size + 
  lseg_lse_level1recovery_gtp_v26_2.trading_status.size

-- Display: Replay And Recovery Complete Message
lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay And Recovery Complete Message
lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: UInt32
  index, request_id = lseg_lse_level1recovery_gtp_v26_2.request_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse_level1recovery_gtp_v26_2.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay And Recovery Complete Message
lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.replay_and_recovery_complete_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Response Message
lseg_lse_level1recovery_gtp_v26_2.recovery_response_message = {}

-- Size: Recovery Response Message
lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.size =
  lseg_lse_level1recovery_gtp_v26_2.sequence_number.size + 
  lseg_lse_level1recovery_gtp_v26_2.count.size + 
  lseg_lse_level1recovery_gtp_v26_2.recovery_status.size + 
  lseg_lse_level1recovery_gtp_v26_2.request_id.size

-- Display: Recovery Response Message
lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Response Message
lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = lseg_lse_level1recovery_gtp_v26_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_lse_level1recovery_gtp_v26_2.count.dissect(buffer, index, packet, parent)

  -- Recovery Status: Byte
  index, recovery_status = lseg_lse_level1recovery_gtp_v26_2.recovery_status.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_lse_level1recovery_gtp_v26_2.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Response Message
lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_response_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
lseg_lse_level1recovery_gtp_v26_2.login_response_message = {}

-- Size: Login Response Message
lseg_lse_level1recovery_gtp_v26_2.login_response_message.size =
  lseg_lse_level1recovery_gtp_v26_2.login_status.size

-- Display: Login Response Message
lseg_lse_level1recovery_gtp_v26_2.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
lseg_lse_level1recovery_gtp_v26_2.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: Byte
  index, login_status = lseg_lse_level1recovery_gtp_v26_2.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
lseg_lse_level1recovery_gtp_v26_2.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.login_response_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Request Message
lseg_lse_level1recovery_gtp_v26_2.recovery_request_message = {}

-- Size: Recovery Request Message
lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.size =
  lseg_lse_level1recovery_gtp_v26_2.request_level.size + 
  lseg_lse_level1recovery_gtp_v26_2.instrument.size + 
  lseg_lse_level1recovery_gtp_v26_2.group_id.size + 
  lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.source_venue.size + 
  lseg_lse_level1recovery_gtp_v26_2.recovery_type.size + 
  lseg_lse_level1recovery_gtp_v26_2.sequence_number.size + 
  lseg_lse_level1recovery_gtp_v26_2.request_id.size

-- Display: Recovery Request Message
lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Request Message
lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Level: UInt8
  index, request_level = lseg_lse_level1recovery_gtp_v26_2.request_level.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse_level1recovery_gtp_v26_2.instrument.dissect(buffer, index, packet, parent)

  -- Group Id: Alpha
  index, group_id = lseg_lse_level1recovery_gtp_v26_2.group_id.dissect(buffer, index, packet, parent)

  -- Request Order Book Type: UInt8
  index, request_order_book_type = lseg_lse_level1recovery_gtp_v26_2.request_order_book_type.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse_level1recovery_gtp_v26_2.source_venue.dissect(buffer, index, packet, parent)

  -- Recovery Type: UInt8
  index, recovery_type = lseg_lse_level1recovery_gtp_v26_2.recovery_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_lse_level1recovery_gtp_v26_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_lse_level1recovery_gtp_v26_2.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Request Message
lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.recovery_request_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
lseg_lse_level1recovery_gtp_v26_2.login_request_message = {}

-- Size: Login Request Message
lseg_lse_level1recovery_gtp_v26_2.login_request_message.size =
  lseg_lse_level1recovery_gtp_v26_2.username.size

-- Display: Login Request Message
lseg_lse_level1recovery_gtp_v26_2.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
lseg_lse_level1recovery_gtp_v26_2.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = lseg_lse_level1recovery_gtp_v26_2.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
lseg_lse_level1recovery_gtp_v26_2.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.login_request_message, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_lse_level1recovery_gtp_v26_2.payload = {}

-- Dissect: Payload
lseg_lse_level1recovery_gtp_v26_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return lseg_lse_level1recovery_gtp_v26_2.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Request Message
  if message_type == 0x81 then
    return lseg_lse_level1recovery_gtp_v26_2.recovery_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return lseg_lse_level1recovery_gtp_v26_2.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Response Message
  if message_type == 0x82 then
    return lseg_lse_level1recovery_gtp_v26_2.recovery_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay And Recovery Complete Message
  if message_type == 0x83 then
    return lseg_lse_level1recovery_gtp_v26_2.replay_and_recovery_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_lse_level1recovery_gtp_v26_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_lse_level1recovery_gtp_v26_2.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x69 then
    return lseg_lse_level1recovery_gtp_v26_2.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_lse_level1recovery_gtp_v26_2.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_lse_level1recovery_gtp_v26_2.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Equities Message
  if message_type == 0x52 then
    return lseg_lse_level1recovery_gtp_v26_2.instrument_directory_equities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Snapshot Message
  if message_type == 0x6B then
    return lseg_lse_level1recovery_gtp_v26_2.statistics_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_lse_level1recovery_gtp_v26_2.message_header = {}

-- Size: Message Header
lseg_lse_level1recovery_gtp_v26_2.message_header.size =
  lseg_lse_level1recovery_gtp_v26_2.message_length.size + 
  lseg_lse_level1recovery_gtp_v26_2.message_type.size

-- Display: Message Header
lseg_lse_level1recovery_gtp_v26_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_lse_level1recovery_gtp_v26_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_lse_level1recovery_gtp_v26_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = lseg_lse_level1recovery_gtp_v26_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_lse_level1recovery_gtp_v26_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_header, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_lse_level1recovery_gtp_v26_2.message = {}

-- Display: Message
lseg_lse_level1recovery_gtp_v26_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_lse_level1recovery_gtp_v26_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_lse_level1recovery_gtp_v26_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = lseg_lse_level1recovery_gtp_v26_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_lse_level1recovery_gtp_v26_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.message, buffer(offset, 0))
    local current = lseg_lse_level1recovery_gtp_v26_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_lse_level1recovery_gtp_v26_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_lse_level1recovery_gtp_v26_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_lse_level1recovery_gtp_v26_2.unit_header = {}

-- Size: Unit Header
lseg_lse_level1recovery_gtp_v26_2.unit_header.size =
  lseg_lse_level1recovery_gtp_v26_2.length.size + 
  lseg_lse_level1recovery_gtp_v26_2.message_count.size + 
  lseg_lse_level1recovery_gtp_v26_2.market_data_group.size + 
  lseg_lse_level1recovery_gtp_v26_2.sequence_number.size

-- Display: Unit Header
lseg_lse_level1recovery_gtp_v26_2.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_lse_level1recovery_gtp_v26_2.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_lse_level1recovery_gtp_v26_2.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_lse_level1recovery_gtp_v26_2.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_lse_level1recovery_gtp_v26_2.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_lse_level1recovery_gtp_v26_2.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_lse_level1recovery_gtp_v26_2.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2.fields.unit_header, buffer(offset, 0))
    local index = lseg_lse_level1recovery_gtp_v26_2.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse_level1recovery_gtp_v26_2.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse_level1recovery_gtp_v26_2.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_lse_level1recovery_gtp_v26_2.packet = {}

-- Verify required size of Tcp packet
lseg_lse_level1recovery_gtp_v26_2.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_lse_level1recovery_gtp_v26_2.unit_header.size
end

-- Dissect Packet
lseg_lse_level1recovery_gtp_v26_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_lse_level1recovery_gtp_v26_2.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_lse_level1recovery_gtp_v26_2.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_lse_level1recovery_gtp_v26_2.init()
end

-- Dissector for Lseg Lse Level1Recovery Gtp 26.2
function omi_lseg_lse_level1recovery_gtp_v26_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_lse_level1recovery_gtp_v26_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_lse_level1recovery_gtp_v26_2, buffer(), omi_lseg_lse_level1recovery_gtp_v26_2.description, "("..buffer:len().." Bytes)")
  return lseg_lse_level1recovery_gtp_v26_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Lse Level1Recovery Gtp 26.2 (Tcp)
local function omi_lseg_lse_level1recovery_gtp_v26_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_lse_level1recovery_gtp_v26_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_lse_level1recovery_gtp_v26_2
  omi_lseg_lse_level1recovery_gtp_v26_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Lse Level1Recovery Gtp 26.2
omi_lseg_lse_level1recovery_gtp_v26_2:register_heuristic("tcp", omi_lseg_lse_level1recovery_gtp_v26_2_tcp_heuristic)

-- Register Lseg Lse Level1Recovery Gtp 26.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_lse_level1recovery_gtp_v26_2)

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
