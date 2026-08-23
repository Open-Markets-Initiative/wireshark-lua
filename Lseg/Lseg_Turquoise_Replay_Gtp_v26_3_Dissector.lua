-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Replay Gtp 26.3 Protocol
local omi_lseg_turquoise_replay_gtp_v26_3 = Proto("Omi.Lseg.Turquoise.Replay.Gtp.v26.3", "Lseg Turquoise Replay Gtp 26.3")

-- Protocol table
local lseg_turquoise_replay_gtp_v26_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Replay Gtp 26.3 Headers
omi_lseg_turquoise_replay_gtp_v26_3.fields.message = ProtoField.new("Message", "lseg.turquoise.replay.gtp.v26.3.message", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.replay.gtp.v26.3.messageheader", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.packet = ProtoField.new("Packet", "lseg.turquoise.replay.gtp.v26.3.packet", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.replay.gtp.v26.3.unitheader", ftypes.STRING)

-- Lseg Turquoise Replay Gtp 26.3 Fields
omi_lseg_turquoise_replay_gtp_v26_3.fields.agency_cross_indicator = ProtoField.new("Agency Cross Indicator", "lseg.turquoise.replay.gtp.v26.3.agencycrossindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.aggregated_no_of_orders_and_quotes = ProtoField.new("Aggregated No Of Orders And Quotes", "lseg.turquoise.replay.gtp.v26.3.aggregatednoofordersandquotes", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "lseg.turquoise.replay.gtp.v26.3.algorithmicindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.replay.gtp.v26.3.allowedbooktypes", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.auction_info = ProtoField.new("Auction Info", "lseg.turquoise.replay.gtp.v26.3.auctioninfo", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.auction_type = ProtoField.new("Auction Type", "lseg.turquoise.replay.gtp.v26.3.auctiontype", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.best_bid_price = ProtoField.new("Best Bid Price", "lseg.turquoise.replay.gtp.v26.3.bestbidprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.best_bid_size = ProtoField.new("Best Bid Size", "lseg.turquoise.replay.gtp.v26.3.bestbidsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.best_offer_price = ProtoField.new("Best Offer Price", "lseg.turquoise.replay.gtp.v26.3.bestofferprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.best_offer_size = ProtoField.new("Best Offer Size", "lseg.turquoise.replay.gtp.v26.3.bestoffersize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_ask_spread = ProtoField.new("Bid Ask Spread", "lseg.turquoise.replay.gtp.v26.3.bidaskspread", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_depth = ProtoField.new("Bid Depth", "lseg.turquoise.replay.gtp.v26.3.biddepth", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_limit_price = ProtoField.new("Bid Limit Price", "lseg.turquoise.replay.gtp.v26.3.bidlimitprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_limit_size = ProtoField.new("Bid Limit Size", "lseg.turquoise.replay.gtp.v26.3.bidlimitsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_market_size = ProtoField.new("Bid Market Size", "lseg.turquoise.replay.gtp.v26.3.bidmarketsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_limit_order_cancellations = ProtoField.new("Buy Limit Order Cancellations", "lseg.turquoise.replay.gtp.v26.3.buylimitordercancellations", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_market_order_cancellations = ProtoField.new("Buy Market Order Cancellations", "lseg.turquoise.replay.gtp.v26.3.buymarketordercancellations", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_order_cancellations = ProtoField.new("Buy Order Cancellations", "lseg.turquoise.replay.gtp.v26.3.buyordercancellations", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_order_count = ProtoField.new("Buy Order Count", "lseg.turquoise.replay.gtp.v26.3.buyordercount", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_order_size = ProtoField.new("Buy Order Size", "lseg.turquoise.replay.gtp.v26.3.buyordersize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.count = ProtoField.new("Count", "lseg.turquoise.replay.gtp.v26.3.count", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.cross_id = ProtoField.new("Cross Id", "lseg.turquoise.replay.gtp.v26.3.crossid", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.cross_type = ProtoField.new("Cross Type", "lseg.turquoise.replay.gtp.v26.3.crosstype", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.currency = ProtoField.new("Currency", "lseg.turquoise.replay.gtp.v26.3.currency", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.deferral_enrichment_type = ProtoField.new("Deferral Enrichment Type", "lseg.turquoise.replay.gtp.v26.3.deferralenrichmenttype", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.deleted_order_quantity = ProtoField.new("Deleted Order Quantity", "lseg.turquoise.replay.gtp.v26.3.deletedorderquantity", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "lseg.turquoise.replay.gtp.v26.3.duplicativeindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.replay.gtp.v26.3.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.replay.gtp.v26.3.electronicorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_lseg_turquoise_replay_gtp_v26_3.fields.end_time = ProtoField.new("End Time", "lseg.turquoise.replay.gtp.v26.3.endtime", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.replay.gtp.v26.3.eventcode", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.executed_size = ProtoField.new("Executed Size", "lseg.turquoise.replay.gtp.v26.3.executedsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.far_price = ProtoField.new("Far Price", "lseg.turquoise.replay.gtp.v26.3.farprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.first_message = ProtoField.new("First Message", "lseg.turquoise.replay.gtp.v26.3.firstmessage", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.hidden_execution_indicator = ProtoField.new("Hidden Execution Indicator", "lseg.turquoise.replay.gtp.v26.3.hiddenexecutionindicator", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.turquoise.replay.gtp.v26.3.imbalancequantity", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.replay.gtp.v26.3.instrument", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.turquoise.replay.gtp.v26.3.instrumentidentificationcode", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "lseg.turquoise.replay.gtp.v26.3.instrumentidentificationcodetype", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.isin = ProtoField.new("Isin", "lseg.turquoise.replay.gtp.v26.3.isin", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.last_price_level = ProtoField.new("Last Price Level", "lseg.turquoise.replay.gtp.v26.3.lastpricelevel", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_turquoise_replay_gtp_v26_3.fields.length = ProtoField.new("Length", "lseg.turquoise.replay.gtp.v26.3.length", ftypes.UINT16)
omi_lseg_turquoise_replay_gtp_v26_3.fields.level_identifier = ProtoField.new("Level Identifier", "lseg.turquoise.replay.gtp.v26.3.levelidentifier", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.login_status = ProtoField.new("Login Status", "lseg.turquoise.replay.gtp.v26.3.loginstatus", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.market_closing_price_flag = ProtoField.new("Market Closing Price Flag", "lseg.turquoise.replay.gtp.v26.3.marketclosingpriceflag", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.replay.gtp.v26.3.marketdatagroup", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.market_mechanism = ProtoField.new("Market Mechanism", "lseg.turquoise.replay.gtp.v26.3.marketmechanism", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.replay.gtp.v26.3.messagecount", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.replay.gtp.v26.3.messagelength", ftypes.UINT16)
omi_lseg_turquoise_replay_gtp_v26_3.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.replay.gtp.v26.3.messagetype", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.mi_fid_price = ProtoField.new("Mi Fid Price", "lseg.turquoise.replay.gtp.v26.3.mifidprice", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.mi_fid_quantity = ProtoField.new("Mi Fid Quantity", "lseg.turquoise.replay.gtp.v26.3.mifidquantity", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.modification_indicator = ProtoField.new("Modification Indicator", "lseg.turquoise.replay.gtp.v26.3.modificationindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.negotiation_indicator = ProtoField.new("Negotiation Indicator", "lseg.turquoise.replay.gtp.v26.3.negotiationindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.replay.gtp.v26.3.newendtime", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.new_price = ProtoField.new("New Price", "lseg.turquoise.replay.gtp.v26.3.newprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.new_quantity = ProtoField.new("New Quantity", "lseg.turquoise.replay.gtp.v26.3.newquantity", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.notional_amount = ProtoField.new("Notional Amount", "lseg.turquoise.replay.gtp.v26.3.notionalamount", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.notional_currency = ProtoField.new("Notional Currency", "lseg.turquoise.replay.gtp.v26.3.notionalcurrency", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.nt_pre_trade_waiver_flag = ProtoField.new("Nt Pre Trade Waiver Flag", "lseg.turquoise.replay.gtp.v26.3.ntpretradewaiverflag", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.turquoise.replay.gtp.v26.3.numberoftrades", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.number_of_trades_onbook_only = ProtoField.new("Number Of Trades Onbook Only", "lseg.turquoise.replay.gtp.v26.3.numberoftradesonbookonly", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "lseg.turquoise.replay.gtp.v26.3.offbookautomatedindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_depth = ProtoField.new("Offer Depth", "lseg.turquoise.replay.gtp.v26.3.offerdepth", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_limit_price = ProtoField.new("Offer Limit Price", "lseg.turquoise.replay.gtp.v26.3.offerlimitprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_limit_size = ProtoField.new("Offer Limit Size", "lseg.turquoise.replay.gtp.v26.3.offerlimitsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_market_size = ProtoField.new("Offer Market Size", "lseg.turquoise.replay.gtp.v26.3.offermarketsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.opening_closing_price_indicator = ProtoField.new("Opening Closing Price Indicator", "lseg.turquoise.replay.gtp.v26.3.openingclosingpriceindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_side = ProtoField.new("Order Book Side", "lseg.turquoise.replay.gtp.v26.3.orderbookside", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.replay.gtp.v26.3.orderbooktype", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_update = ProtoField.new("Order Book Update", "lseg.turquoise.replay.gtp.v26.3.orderbookupdate", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_id = ProtoField.new("Order Id", "lseg.turquoise.replay.gtp.v26.3.orderid", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_modify_flags = ProtoField.new("Order Modify Flags", "lseg.turquoise.replay.gtp.v26.3.ordermodifyflags", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_type = ProtoField.new("Order Type", "lseg.turquoise.replay.gtp.v26.3.ordertype", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.participant = ProtoField.new("Participant", "lseg.turquoise.replay.gtp.v26.3.participant", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "lseg.turquoise.replay.gtp.v26.3.posttradedeferralreason", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.previous_price = ProtoField.new("Previous Price", "lseg.turquoise.replay.gtp.v26.3.previousprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.previous_quantity = ProtoField.new("Previous Quantity", "lseg.turquoise.replay.gtp.v26.3.previousquantity", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.replay.gtp.v26.3.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_currency = ProtoField.new("Price Currency", "lseg.turquoise.replay.gtp.v26.3.pricecurrency", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_formation_indicator = ProtoField.new("Price Formation Indicator", "lseg.turquoise.replay.gtp.v26.3.priceformationindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_major_currency = ProtoField.new("Price Major Currency", "lseg.turquoise.replay.gtp.v26.3.pricemajorcurrency", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_mi_fid_decimal_20 = ProtoField.new("Price Mi Fid Decimal 20", "lseg.turquoise.replay.gtp.v26.3.pricemifiddecimal20", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_notation = ProtoField.new("Price Notation", "lseg.turquoise.replay.gtp.v26.3.pricenotation", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.price_price_8 = ProtoField.new("Price Price 8", "lseg.turquoise.replay.gtp.v26.3.priceprice8", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.priority = ProtoField.new("Priority", "lseg.turquoise.replay.gtp.v26.3.priority", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_algo_trade = ProtoField.new("Pt Algo Trade", "lseg.turquoise.replay.gtp.v26.3.ptalgotrade", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_amendment_flag = ProtoField.new("Pt Amendment Flag", "lseg.turquoise.replay.gtp.v26.3.ptamendmentflag", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_cancellation_flag = ProtoField.new("Pt Cancellation Flag", "lseg.turquoise.replay.gtp.v26.3.ptcancellationflag", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_ref_price_waiver_flag = ProtoField.new("Pt Ref Price Waiver Flag", "lseg.turquoise.replay.gtp.v26.3.ptrefpricewaiverflag", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.turquoise.replay.gtp.v26.3.publicationdateandtime", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.quantity = ProtoField.new("Quantity", "lseg.turquoise.replay.gtp.v26.3.quantity", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reference_price_indicator = ProtoField.new("Reference Price Indicator", "lseg.turquoise.replay.gtp.v26.3.referencepriceindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_status = ProtoField.new("Replay Status", "lseg.turquoise.replay.gtp.v26.3.replaystatus", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.request_id = ProtoField.new("Request Id", "lseg.turquoise.replay.gtp.v26.3.requestid", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved = ProtoField.new("Reserved", "lseg.turquoise.replay.gtp.v26.3.reserved", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.turquoise.replay.gtp.v26.3.reserved1", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_17 = ProtoField.new("Reserved 17", "lseg.turquoise.replay.gtp.v26.3.reserved17", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_20 = ProtoField.new("Reserved 20", "lseg.turquoise.replay.gtp.v26.3.reserved20", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.replay.gtp.v26.3.reserved23", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_3 = ProtoField.new("Reserved 3", "lseg.turquoise.replay.gtp.v26.3.reserved3", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.replay.gtp.v26.3.reserved38", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.turquoise.replay.gtp.v26.3.reserved4", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.turquoise.replay.gtp.v26.3.reserved8", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.retail_lp = ProtoField.new("Retail Lp", "lseg.turquoise.replay.gtp.v26.3.retaillp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_lseg_turquoise_replay_gtp_v26_3.fields.rfq_id = ProtoField.new("Rfq Id", "lseg.turquoise.replay.gtp.v26.3.rfqid", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.second_reserved_4 = ProtoField.new("Second Reserved 4", "lseg.turquoise.replay.gtp.v26.3.secondreserved4", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.turquoise.replay.gtp.v26.3.secondreserved8", ftypes.BYTES)
omi_lseg_turquoise_replay_gtp_v26_3.fields.segment = ProtoField.new("Segment", "lseg.turquoise.replay.gtp.v26.3.segment", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_limit_order_cancellations = ProtoField.new("Sell Limit Order Cancellations", "lseg.turquoise.replay.gtp.v26.3.selllimitordercancellations", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_market_order_cancellations = ProtoField.new("Sell Market Order Cancellations", "lseg.turquoise.replay.gtp.v26.3.sellmarketordercancellations", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_order_cancellations = ProtoField.new("Sell Order Cancellations", "lseg.turquoise.replay.gtp.v26.3.sellordercancellations", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_order_count = ProtoField.new("Sell Order Count", "lseg.turquoise.replay.gtp.v26.3.sellordercount", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_order_size = ProtoField.new("Sell Order Size", "lseg.turquoise.replay.gtp.v26.3.sellordersize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.replay.gtp.v26.3.sequencenumber", ftypes.UINT32)
omi_lseg_turquoise_replay_gtp_v26_3.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.replay.gtp.v26.3.sessionchangereason", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.side = ProtoField.new("Side", "lseg.turquoise.replay.gtp.v26.3.side", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.size = ProtoField.new("Size", "lseg.turquoise.replay.gtp.v26.3.size", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.replay.gtp.v26.3.sourcevenue", ftypes.UINT16)
omi_lseg_turquoise_replay_gtp_v26_3.fields.special_dividend_indicator = ProtoField.new("Special Dividend Indicator", "lseg.turquoise.replay.gtp.v26.3.specialdividendindicator", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.start_time = ProtoField.new("Start Time", "lseg.turquoise.replay.gtp.v26.3.starttime", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.replay.gtp.v26.3.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.statistic_price = ProtoField.new("Statistic Price", "lseg.turquoise.replay.gtp.v26.3.statisticprice", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.statistic_size = ProtoField.new("Statistic Size", "lseg.turquoise.replay.gtp.v26.3.statisticsize", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.statistic_type = ProtoField.new("Statistic Type", "lseg.turquoise.replay.gtp.v26.3.statistictype", ftypes.UINT16)
omi_lseg_turquoise_replay_gtp_v26_3.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.replay.gtp.v26.3.tickid", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.replay.gtp.v26.3.timestamp", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.top_of_book_flags = ProtoField.new("Top Of Book Flags", "lseg.turquoise.replay.gtp.v26.3.topofbookflags", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.total_executed_quantity = ProtoField.new("Total Executed Quantity", "lseg.turquoise.replay.gtp.v26.3.totalexecutedquantity", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.total_hidden_executed_quantity = ProtoField.new("Total Hidden Executed Quantity", "lseg.turquoise.replay.gtp.v26.3.totalhiddenexecutedquantity", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "lseg.turquoise.replay.gtp.v26.3.tradecancellation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_flags = ProtoField.new("Trade Flags", "lseg.turquoise.replay.gtp.v26.3.tradeflags", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_id = ProtoField.new("Trade Id", "lseg.turquoise.replay.gtp.v26.3.tradeid", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.turquoise.replay.gtp.v26.3.tradequalifier", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_type = ProtoField.new("Trade Type", "lseg.turquoise.replay.gtp.v26.3.tradetype", ftypes.UINT8)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_date_and_time = ProtoField.new("Trading Date And Time", "lseg.turquoise.replay.gtp.v26.3.tradingdateandtime", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_mode = ProtoField.new("Trading Mode", "lseg.turquoise.replay.gtp.v26.3.tradingmode", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.replay.gtp.v26.3.tradingstatus", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_system = ProtoField.new("Trading System", "lseg.turquoise.replay.gtp.v26.3.tradingsystem", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_system_phase = ProtoField.new("Trading System Phase", "lseg.turquoise.replay.gtp.v26.3.tradingsystemphase", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.transaction_category = ProtoField.new("Transaction Category", "lseg.turquoise.replay.gtp.v26.3.transactioncategory", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.transaction_identification_code = ProtoField.new("Transaction Identification Code", "lseg.turquoise.replay.gtp.v26.3.transactionidentificationcode", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.turquoise.replay.gtp.v26.3.transactiontime", ftypes.UINT64)
omi_lseg_turquoise_replay_gtp_v26_3.fields.turnover = ProtoField.new("Turnover", "lseg.turquoise.replay.gtp.v26.3.turnover", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.turnover_onbook_only = ProtoField.new("Turnover Onbook Only", "lseg.turquoise.replay.gtp.v26.3.turnoveronbookonly", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_3 = ProtoField.new("Unused 3", "lseg.turquoise.replay.gtp.v26.3.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_4 = ProtoField.new("Unused 4", "lseg.turquoise.replay.gtp.v26.3.unused4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_7 = ProtoField.new("Unused 7", "lseg.turquoise.replay.gtp.v26.3.unused7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.update_date_and_time = ProtoField.new("Update Date And Time", "lseg.turquoise.replay.gtp.v26.3.updatedateandtime", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.username = ProtoField.new("Username", "lseg.turquoise.replay.gtp.v26.3.username", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.venue = ProtoField.new("Venue", "lseg.turquoise.replay.gtp.v26.3.venue", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.replay.gtp.v26.3.venueinstrumentid", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.turquoise.replay.gtp.v26.3.venueofexecution", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.volume = ProtoField.new("Volume", "lseg.turquoise.replay.gtp.v26.3.volume", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.volume_onbook_only = ProtoField.new("Volume Onbook Only", "lseg.turquoise.replay.gtp.v26.3.volumeonbookonly", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap = ProtoField.new("Vwap", "lseg.turquoise.replay.gtp.v26.3.vwap", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap_buy = ProtoField.new("Vwap Buy", "lseg.turquoise.replay.gtp.v26.3.vwapbuy", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap_onbook_only = ProtoField.new("Vwap Onbook Only", "lseg.turquoise.replay.gtp.v26.3.vwaponbookonly", ftypes.DOUBLE)
omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap_sell = ProtoField.new("Vwap Sell", "lseg.turquoise.replay.gtp.v26.3.vwapsell", ftypes.DOUBLE)

-- Lseg Turquoise Replay 26.3 Application Messages
omi_lseg_turquoise_replay_gtp_v26_3.fields.add_order_incremental_message = ProtoField.new("Add Order Incremental Message", "lseg.turquoise.replay.gtp.v26.3.addorderincrementalmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.analytics_message = ProtoField.new("Analytics Message", "lseg.turquoise.replay.gtp.v26.3.analyticsmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.delete_order_message = ProtoField.new("Delete Order Message", "lseg.turquoise.replay.gtp.v26.3.deleteordermessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.replay.gtp.v26.3.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.replay.gtp.v26.3.instrumentstatusmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.login_request_message = ProtoField.new("Login Request Message", "lseg.turquoise.replay.gtp.v26.3.loginrequestmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.login_response_message = ProtoField.new("Login Response Message", "lseg.turquoise.replay.gtp.v26.3.loginresponsemessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.mifid_ii_order_book_update_message = ProtoField.new("Mifid Ii Order Book Update Message", "lseg.turquoise.replay.gtp.v26.3.mifidiiorderbookupdatemessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.mifid_ii_trade_cross_message = ProtoField.new("Mifid Ii Trade Cross Message", "lseg.turquoise.replay.gtp.v26.3.mifidiitradecrossmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.mifid_ii_trade_message = ProtoField.new("Mifid Ii Trade Message", "lseg.turquoise.replay.gtp.v26.3.mifidiitrademessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.modify_order_message = ProtoField.new("Modify Order Message", "lseg.turquoise.replay.gtp.v26.3.modifyordermessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.turquoise.replay.gtp.v26.3.orderbookclearmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_and_recovery_complete_message = ProtoField.new("Replay And Recovery Complete Message", "lseg.turquoise.replay.gtp.v26.3.replayandrecoverycompletemessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_request_message = ProtoField.new("Replay Request Message", "lseg.turquoise.replay.gtp.v26.3.replayrequestmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_response_message = ProtoField.new("Replay Response Message", "lseg.turquoise.replay.gtp.v26.3.replayresponsemessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.statistics_message = ProtoField.new("Statistics Message", "lseg.turquoise.replay.gtp.v26.3.statisticsmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.statistics_update_message = ProtoField.new("Statistics Update Message", "lseg.turquoise.replay.gtp.v26.3.statisticsupdatemessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.replay.gtp.v26.3.systemeventmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "lseg.turquoise.replay.gtp.v26.3.topofbookmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_cross_message = ProtoField.new("Trade Cross Message", "lseg.turquoise.replay.gtp.v26.3.tradecrossmessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_message = ProtoField.new("Trade Message", "lseg.turquoise.replay.gtp.v26.3.trademessage", ftypes.STRING)
omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_summary_message = ProtoField.new("Trade Summary Message", "lseg.turquoise.replay.gtp.v26.3.tradesummarymessage", ftypes.STRING)

-- Lseg Turquoise Replay Gtp 26.3 generated fields
omi_lseg_turquoise_replay_gtp_v26_3.fields.message_index = ProtoField.new("Message Index", "lseg.turquoise.replay.gtp.v26.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Turquoise Replay Gtp 26.3 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Lseg Turquoise Replay Gtp 26.3 Show Options
omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_lseg_turquoise_replay_gtp_v26_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_application_messages then
    show.application_messages = omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_headers then
    show.headers = omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_headers
  end
  if show.structs ~= omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_structs then
    show.structs = omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_indexes then
    show.indexes = omi_lseg_turquoise_replay_gtp_v26_3.prefs.show_indexes
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
-- Lseg Turquoise Replay Gtp 26.3 Fields
-----------------------------------------------------------------------

-- Agency Cross Indicator
lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator = {}

-- Size: Agency Cross Indicator
lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.size = 1

-- Display: Agency Cross Indicator
lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.display = function(value)
  if value == "-" then
    return "Agency Cross Indicator: No Agency Cross Trade (-)"
  end

  return "Agency Cross Indicator: Unknown("..value..")"
end

-- Dissect: Agency Cross Indicator
lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Aggregated No Of Orders And Quotes
lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes = {}

-- Size: Aggregated No Of Orders And Quotes
lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.size = 20

-- Display: Aggregated No Of Orders And Quotes
lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.display = function(value)
  return "Aggregated No Of Orders And Quotes: "..value
end

-- Dissect: Aggregated No Of Orders And Quotes
lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.aggregated_no_of_orders_and_quotes, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.display = function(value)
  if value == "H" then
    return "Algorithmic Indicator: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Indicator: Not An Algorithmic Trade (-)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Auction Info
lseg_turquoise_replay_gtp_v26_3.auction_info = {}

-- Size: Auction Info
lseg_turquoise_replay_gtp_v26_3.auction_info.size = 1

-- Display: Auction Info
lseg_turquoise_replay_gtp_v26_3.auction_info.display = function(value)
  if value == "M" then
    return "Auction Info: Call Market (M)"
  end

  return "Auction Info: Unknown("..value..")"
end

-- Dissect: Auction Info
lseg_turquoise_replay_gtp_v26_3.auction_info.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.auction_info.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.auction_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.auction_info, range, value, display)

  return offset + length, value
end

-- Auction Type
lseg_turquoise_replay_gtp_v26_3.auction_type = {}

-- Size: Auction Type
lseg_turquoise_replay_gtp_v26_3.auction_type.size = 1

-- Display: Auction Type
lseg_turquoise_replay_gtp_v26_3.auction_type.display = function(value)
  if value == "L" then
    return "Auction Type: Frequent Lit Auctions (L)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
lseg_turquoise_replay_gtp_v26_3.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Best Bid Price
lseg_turquoise_replay_gtp_v26_3.best_bid_price = {}

-- Size: Best Bid Price
lseg_turquoise_replay_gtp_v26_3.best_bid_price.size = 8

-- Display: Best Bid Price
lseg_turquoise_replay_gtp_v26_3.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
lseg_turquoise_replay_gtp_v26_3.best_bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Bid Price
lseg_turquoise_replay_gtp_v26_3.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.best_bid_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
lseg_turquoise_replay_gtp_v26_3.best_bid_size = {}

-- Size: Best Bid Size
lseg_turquoise_replay_gtp_v26_3.best_bid_size.size = 8

-- Display: Best Bid Size
lseg_turquoise_replay_gtp_v26_3.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Translate: Best Bid Size
lseg_turquoise_replay_gtp_v26_3.best_bid_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Bid Size
lseg_turquoise_replay_gtp_v26_3.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.best_bid_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.best_bid_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer Price
lseg_turquoise_replay_gtp_v26_3.best_offer_price = {}

-- Size: Best Offer Price
lseg_turquoise_replay_gtp_v26_3.best_offer_price.size = 8

-- Display: Best Offer Price
lseg_turquoise_replay_gtp_v26_3.best_offer_price.display = function(value)
  return "Best Offer Price: "..value
end

-- Translate: Best Offer Price
lseg_turquoise_replay_gtp_v26_3.best_offer_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Offer Price
lseg_turquoise_replay_gtp_v26_3.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.best_offer_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
lseg_turquoise_replay_gtp_v26_3.best_offer_size = {}

-- Size: Best Offer Size
lseg_turquoise_replay_gtp_v26_3.best_offer_size.size = 8

-- Display: Best Offer Size
lseg_turquoise_replay_gtp_v26_3.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Translate: Best Offer Size
lseg_turquoise_replay_gtp_v26_3.best_offer_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Offer Size
lseg_turquoise_replay_gtp_v26_3.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.best_offer_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.best_offer_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Bid Ask Spread
lseg_turquoise_replay_gtp_v26_3.bid_ask_spread = {}

-- Size: Bid Ask Spread
lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.size = 8

-- Display: Bid Ask Spread
lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.display = function(value)
  return "Bid Ask Spread: "..value
end

-- Translate: Bid Ask Spread
lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Ask Spread
lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_ask_spread, range, value, display)

  return offset + length, value
end

-- Bid Limit Price
lseg_turquoise_replay_gtp_v26_3.bid_limit_price = {}

-- Size: Bid Limit Price
lseg_turquoise_replay_gtp_v26_3.bid_limit_price.size = 8

-- Display: Bid Limit Price
lseg_turquoise_replay_gtp_v26_3.bid_limit_price.display = function(value)
  return "Bid Limit Price: "..value
end

-- Translate: Bid Limit Price
lseg_turquoise_replay_gtp_v26_3.bid_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Limit Price
lseg_turquoise_replay_gtp_v26_3.bid_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.bid_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.bid_limit_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.bid_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_limit_price, range, value, display)

  return offset + length, value
end

-- Bid Limit Size
lseg_turquoise_replay_gtp_v26_3.bid_limit_size = {}

-- Size: Bid Limit Size
lseg_turquoise_replay_gtp_v26_3.bid_limit_size.size = 8

-- Display: Bid Limit Size
lseg_turquoise_replay_gtp_v26_3.bid_limit_size.display = function(value)
  return "Bid Limit Size: "..value
end

-- Translate: Bid Limit Size
lseg_turquoise_replay_gtp_v26_3.bid_limit_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Limit Size
lseg_turquoise_replay_gtp_v26_3.bid_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.bid_limit_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.bid_limit_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.bid_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_limit_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
lseg_turquoise_replay_gtp_v26_3.bid_market_size = {}

-- Size: Bid Market Size
lseg_turquoise_replay_gtp_v26_3.bid_market_size.size = 8

-- Display: Bid Market Size
lseg_turquoise_replay_gtp_v26_3.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Translate: Bid Market Size
lseg_turquoise_replay_gtp_v26_3.bid_market_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Market Size
lseg_turquoise_replay_gtp_v26_3.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.bid_market_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.bid_market_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Buy Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations = {}

-- Size: Buy Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.size = 4

-- Display: Buy Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.display = function(value)
  return "Buy Limit Order Cancellations: "..value
end

-- Dissect: Buy Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_limit_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations = {}

-- Size: Buy Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.size = 4

-- Display: Buy Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.display = function(value)
  return "Buy Market Order Cancellations: "..value
end

-- Dissect: Buy Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_market_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations = {}

-- Size: Buy Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.size = 4

-- Display: Buy Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.display = function(value)
  return "Buy Order Cancellations: "..value
end

-- Dissect: Buy Order Cancellations
lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_order_cancellations, range, value, display)

  return offset + length, value
end

-- Buy Order Count
lseg_turquoise_replay_gtp_v26_3.buy_order_count = {}

-- Size: Buy Order Count
lseg_turquoise_replay_gtp_v26_3.buy_order_count.size = 4

-- Display: Buy Order Count
lseg_turquoise_replay_gtp_v26_3.buy_order_count.display = function(value)
  return "Buy Order Count: "..value
end

-- Dissect: Buy Order Count
lseg_turquoise_replay_gtp_v26_3.buy_order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.buy_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.buy_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_order_count, range, value, display)

  return offset + length, value
end

-- Buy Order Size
lseg_turquoise_replay_gtp_v26_3.buy_order_size = {}

-- Size: Buy Order Size
lseg_turquoise_replay_gtp_v26_3.buy_order_size.size = 8

-- Display: Buy Order Size
lseg_turquoise_replay_gtp_v26_3.buy_order_size.display = function(value)
  return "Buy Order Size: "..value
end

-- Translate: Buy Order Size
lseg_turquoise_replay_gtp_v26_3.buy_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Buy Order Size
lseg_turquoise_replay_gtp_v26_3.buy_order_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.buy_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.buy_order_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.buy_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.buy_order_size, range, value, display)

  return offset + length, value
end

-- Count
lseg_turquoise_replay_gtp_v26_3.count = {}

-- Size: Count
lseg_turquoise_replay_gtp_v26_3.count.size = 4

-- Display: Count
lseg_turquoise_replay_gtp_v26_3.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
lseg_turquoise_replay_gtp_v26_3.count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.count, range, value, display)

  return offset + length, value
end

-- Cross Id
lseg_turquoise_replay_gtp_v26_3.cross_id = {}

-- Size: Cross Id
lseg_turquoise_replay_gtp_v26_3.cross_id.size = 20

-- Display: Cross Id
lseg_turquoise_replay_gtp_v26_3.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lseg_turquoise_replay_gtp_v26_3.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.cross_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
lseg_turquoise_replay_gtp_v26_3.cross_type = {}

-- Size: Cross Type
lseg_turquoise_replay_gtp_v26_3.cross_type.size = 1

-- Display: Cross Type
lseg_turquoise_replay_gtp_v26_3.cross_type.display = function(value)
  if value == 6 then
    return "Cross Type: Internal Btf (6)"
  end
  if value == 8 then
    return "Cross Type: Committed Btf (8)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_turquoise_replay_gtp_v26_3.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
lseg_turquoise_replay_gtp_v26_3.currency = {}

-- Size: Currency
lseg_turquoise_replay_gtp_v26_3.currency.size = 3

-- Display: Currency
lseg_turquoise_replay_gtp_v26_3.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_replay_gtp_v26_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Deferral Enrichment Type
lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type = {}

-- Size: Deferral Enrichment Type
lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.size = 1

-- Display: Deferral Enrichment Type
lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.display = function(value)
  return "Deferral Enrichment Type: "..value
end

-- Dissect: Deferral Enrichment Type
lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.deferral_enrichment_type, range, value, display)

  return offset + length, value
end

-- Deleted Order Quantity
lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity = {}

-- Size: Deleted Order Quantity
lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.size = 8

-- Display: Deleted Order Quantity
lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.display = function(value)
  return "Deleted Order Quantity: "..value
end

-- Translate: Deleted Order Quantity
lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Deleted Order Quantity
lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.deleted_order_quantity, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
lseg_turquoise_replay_gtp_v26_3.duplicative_indicator = {}

-- Size: Duplicative Indicator
lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.display = function(value)
  if value == "-" then
    return "Duplicative Indicator: Unique Trade Report (-)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- End Time
lseg_turquoise_replay_gtp_v26_3.end_time = {}

-- Size: End Time
lseg_turquoise_replay_gtp_v26_3.end_time.size = 8

-- Display: End Time
lseg_turquoise_replay_gtp_v26_3.end_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "End Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: End Time
lseg_turquoise_replay_gtp_v26_3.end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.end_time, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_turquoise_replay_gtp_v26_3.event_code = {}

-- Size: Event Code
lseg_turquoise_replay_gtp_v26_3.event_code.size = 1

-- Display: Event Code
lseg_turquoise_replay_gtp_v26_3.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_replay_gtp_v26_3.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Size
lseg_turquoise_replay_gtp_v26_3.executed_size = {}

-- Size: Executed Size
lseg_turquoise_replay_gtp_v26_3.executed_size.size = 8

-- Display: Executed Size
lseg_turquoise_replay_gtp_v26_3.executed_size.display = function(value)
  return "Executed Size: "..value
end

-- Translate: Executed Size
lseg_turquoise_replay_gtp_v26_3.executed_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Size
lseg_turquoise_replay_gtp_v26_3.executed_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.executed_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.executed_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.executed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.executed_size, range, value, display)

  return offset + length, value
end

-- Far Price
lseg_turquoise_replay_gtp_v26_3.far_price = {}

-- Size: Far Price
lseg_turquoise_replay_gtp_v26_3.far_price.size = 8

-- Display: Far Price
lseg_turquoise_replay_gtp_v26_3.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
lseg_turquoise_replay_gtp_v26_3.far_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Far Price
lseg_turquoise_replay_gtp_v26_3.far_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.far_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.far_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.far_price, range, value, display)

  return offset + length, value
end

-- First Message
lseg_turquoise_replay_gtp_v26_3.first_message = {}

-- Size: First Message
lseg_turquoise_replay_gtp_v26_3.first_message.size = 4

-- Display: First Message
lseg_turquoise_replay_gtp_v26_3.first_message.display = function(value)
  return "First Message: "..value
end

-- Dissect: First Message
lseg_turquoise_replay_gtp_v26_3.first_message.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.first_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.first_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.first_message, range, value, display)

  return offset + length, value
end

-- Hidden Execution Indicator
lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator = {}

-- Size: Hidden Execution Indicator
lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.size = 1

-- Display: Hidden Execution Indicator
lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.hidden_execution_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
lseg_turquoise_replay_gtp_v26_3.imbalance_quantity = {}

-- Size: Imbalance Quantity
lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_turquoise_replay_gtp_v26_3.instrument = {}

-- Size: Instrument
lseg_turquoise_replay_gtp_v26_3.instrument.size = 8

-- Display: Instrument
lseg_turquoise_replay_gtp_v26_3.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_replay_gtp_v26_3.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code = {}

-- Size: Instrument Identification Code
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.size = 12

-- Display: Instrument Identification Code
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.display = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code Type
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type = {}

-- Size: Instrument Identification Code Type
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.size = 4

-- Display: Instrument Identification Code Type
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.display = function(value)
  return "Instrument Identification Code Type: "..value
end

-- Dissect: Instrument Identification Code Type
lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Isin
lseg_turquoise_replay_gtp_v26_3.isin = {}

-- Size: Isin
lseg_turquoise_replay_gtp_v26_3.isin.size = 12

-- Display: Isin
lseg_turquoise_replay_gtp_v26_3.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_replay_gtp_v26_3.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.isin, range, value, display)

  return offset + length, value
end

-- Length
lseg_turquoise_replay_gtp_v26_3.length = {}

-- Size: Length
lseg_turquoise_replay_gtp_v26_3.length.size = 2

-- Display: Length
lseg_turquoise_replay_gtp_v26_3.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_replay_gtp_v26_3.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.length, range, value, display)

  return offset + length, value
end

-- Level Identifier
lseg_turquoise_replay_gtp_v26_3.level_identifier = {}

-- Size: Level Identifier
lseg_turquoise_replay_gtp_v26_3.level_identifier.size = 1

-- Display: Level Identifier
lseg_turquoise_replay_gtp_v26_3.level_identifier.display = function(value)
  return "Level Identifier: "..value
end

-- Dissect: Level Identifier
lseg_turquoise_replay_gtp_v26_3.level_identifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.level_identifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.level_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.level_identifier, range, value, display)

  return offset + length, value
end

-- Login Status
lseg_turquoise_replay_gtp_v26_3.login_status = {}

-- Size: Login Status
lseg_turquoise_replay_gtp_v26_3.login_status.size = 1

-- Display: Login Status
lseg_turquoise_replay_gtp_v26_3.login_status.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.login_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.login_status, range, value, display)

  return offset + length, value
end

-- Market Closing Price Flag
lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag = {}

-- Size: Market Closing Price Flag
lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.size = 4

-- Display: Market Closing Price Flag
lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.display = function(value)
  return "Market Closing Price Flag: "..value
end

-- Dissect: Market Closing Price Flag
lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.market_closing_price_flag, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_turquoise_replay_gtp_v26_3.market_data_group = {}

-- Size: Market Data Group
lseg_turquoise_replay_gtp_v26_3.market_data_group.size = 1

-- Display: Market Data Group
lseg_turquoise_replay_gtp_v26_3.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_replay_gtp_v26_3.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Market Mechanism
lseg_turquoise_replay_gtp_v26_3.market_mechanism = {}

-- Size: Market Mechanism
lseg_turquoise_replay_gtp_v26_3.market_mechanism.size = 1

-- Display: Market Mechanism
lseg_turquoise_replay_gtp_v26_3.market_mechanism.display = function(value)
  if value == "1" then
    return "Market Mechanism: Central Limit Order Book (1)"
  end
  if value == "3" then
    return "Market Mechanism: Dark Order Book (3)"
  end
  if value == "5" then
    return "Market Mechanism: Periodic Auction (5)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
lseg_turquoise_replay_gtp_v26_3.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_turquoise_replay_gtp_v26_3.message_count = {}

-- Size: Message Count
lseg_turquoise_replay_gtp_v26_3.message_count.size = 1

-- Display: Message Count
lseg_turquoise_replay_gtp_v26_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_replay_gtp_v26_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_replay_gtp_v26_3.message_length = {}

-- Size: Message Length
lseg_turquoise_replay_gtp_v26_3.message_length.size = 2

-- Display: Message Length
lseg_turquoise_replay_gtp_v26_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_replay_gtp_v26_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_turquoise_replay_gtp_v26_3.message_type = {}

-- Size: Message Type
lseg_turquoise_replay_gtp_v26_3.message_type.size = 1

-- Display: Message Type
lseg_turquoise_replay_gtp_v26_3.message_type.display = function(value)
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
  if value == 0x46 then
    return "Message Type: Add Order Incremental Message (0x46)"
  end
  if value == 0x55 then
    return "Message Type: Modify Order Message (0x55)"
  end
  if value == 0x44 then
    return "Message Type: Delete Order Message (0x44)"
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
  if value == 0x71 then
    return "Message Type: Trade Cross Message (0x71)"
  end
  if value == 0x77 then
    return "Message Type: Statistics Message (0x77)"
  end
  if value == 0x6A then
    return "Message Type: Statistics Update Message (0x6A)"
  end
  if value == 0x51 then
    return "Message Type: Mifid Ii Trade Message (0x51)"
  end
  if value == 0x56 then
    return "Message Type: Mifid Ii Trade Cross Message (0x56)"
  end
  if value == 0x57 then
    return "Message Type: Trade Summary Message (0x57)"
  end
  if value == 0x61 then
    return "Message Type: Analytics Message (0x61)"
  end
  if value == 0x62 then
    return "Message Type: Mifid Ii Order Book Update Message (0x62)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_replay_gtp_v26_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_replay_gtp_v26_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mi Fid Price
lseg_turquoise_replay_gtp_v26_3.mi_fid_price = {}

-- Size: Mi Fid Price
lseg_turquoise_replay_gtp_v26_3.mi_fid_price.size = 20

-- Display: Mi Fid Price
lseg_turquoise_replay_gtp_v26_3.mi_fid_price.display = function(value)
  return "Mi Fid Price: "..value
end

-- Dissect: Mi Fid Price
lseg_turquoise_replay_gtp_v26_3.mi_fid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.mi_fid_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.mi_fid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.mi_fid_price, range, value, display)

  return offset + length, value
end

-- Mi Fid Quantity
lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity = {}

-- Size: Mi Fid Quantity
lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.size = 20

-- Display: Mi Fid Quantity
lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.display = function(value)
  return "Mi Fid Quantity: "..value
end

-- Dissect: Mi Fid Quantity
lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.mi_fid_quantity, range, value, display)

  return offset + length, value
end

-- Modification Indicator
lseg_turquoise_replay_gtp_v26_3.modification_indicator = {}

-- Size: Modification Indicator
lseg_turquoise_replay_gtp_v26_3.modification_indicator.size = 1

-- Display: Modification Indicator
lseg_turquoise_replay_gtp_v26_3.modification_indicator.display = function(value)
  if value == "C" then
    return "Modification Indicator: Trade Cancellation (C)"
  end
  if value == "A" then
    return "Modification Indicator: Trade Amendment (A)"
  end
  if value == "-" then
    return "Modification Indicator: New Trade (-)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
lseg_turquoise_replay_gtp_v26_3.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Negotiation Indicator
lseg_turquoise_replay_gtp_v26_3.negotiation_indicator = {}

-- Size: Negotiation Indicator
lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.size = 1

-- Display: Negotiation Indicator
lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.display = function(value)
  if value == "8" then
    return "Negotiation Indicator: Negotiated Trade With Pretrade Transparency Waiver (8)"
  end
  if value == "-" then
    return "Negotiation Indicator: Not A Negotiated Trade (-)"
  end

  return "Negotiation Indicator: Unknown("..value..")"
end

-- Dissect: Negotiation Indicator
lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.negotiation_indicator, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_turquoise_replay_gtp_v26_3.new_end_time = {}

-- Size: New End Time
lseg_turquoise_replay_gtp_v26_3.new_end_time.size = 6

-- Display: New End Time
lseg_turquoise_replay_gtp_v26_3.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_replay_gtp_v26_3.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- New Price
lseg_turquoise_replay_gtp_v26_3.new_price = {}

-- Size: New Price
lseg_turquoise_replay_gtp_v26_3.new_price.size = 8

-- Display: New Price
lseg_turquoise_replay_gtp_v26_3.new_price.display = function(value)
  return "New Price: "..value
end

-- Translate: New Price
lseg_turquoise_replay_gtp_v26_3.new_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: New Price
lseg_turquoise_replay_gtp_v26_3.new_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.new_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.new_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Quantity
lseg_turquoise_replay_gtp_v26_3.new_quantity = {}

-- Size: New Quantity
lseg_turquoise_replay_gtp_v26_3.new_quantity.size = 8

-- Display: New Quantity
lseg_turquoise_replay_gtp_v26_3.new_quantity.display = function(value)
  return "New Quantity: "..value
end

-- Translate: New Quantity
lseg_turquoise_replay_gtp_v26_3.new_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: New Quantity
lseg_turquoise_replay_gtp_v26_3.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.new_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.new_quantity.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Notional Amount
lseg_turquoise_replay_gtp_v26_3.notional_amount = {}

-- Size: Notional Amount
lseg_turquoise_replay_gtp_v26_3.notional_amount.size = 20

-- Display: Notional Amount
lseg_turquoise_replay_gtp_v26_3.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
lseg_turquoise_replay_gtp_v26_3.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.notional_amount.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Currency
lseg_turquoise_replay_gtp_v26_3.notional_currency = {}

-- Size: Notional Currency
lseg_turquoise_replay_gtp_v26_3.notional_currency.size = 3

-- Display: Notional Currency
lseg_turquoise_replay_gtp_v26_3.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
lseg_turquoise_replay_gtp_v26_3.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Nt Pre Trade Waiver Flag
lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag = {}

-- Size: Nt Pre Trade Waiver Flag
lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.size = 4

-- Display: Nt Pre Trade Waiver Flag
lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.display = function(value)
  return "Nt Pre Trade Waiver Flag: "..value
end

-- Dissect: Nt Pre Trade Waiver Flag
lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.nt_pre_trade_waiver_flag, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_turquoise_replay_gtp_v26_3.number_of_trades = {}

-- Size: Number Of Trades
lseg_turquoise_replay_gtp_v26_3.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_turquoise_replay_gtp_v26_3.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_turquoise_replay_gtp_v26_3.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Number Of Trades Onbook Only
lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only = {}

-- Size: Number Of Trades Onbook Only
lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.size = 4

-- Display: Number Of Trades Onbook Only
lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.display = function(value)
  return "Number Of Trades Onbook Only: "..value
end

-- Dissect: Number Of Trades Onbook Only
lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.number_of_trades_onbook_only, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator = {}

-- Size: Off Book Automated Indicator
lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.display = function(value)
  if value == "-" then
    return "Off Book Automated Indicator: Unspecified Or Does Not Apply (-)"
  end

  return "Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Off Book Automated Indicator
lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Offer Limit Price
lseg_turquoise_replay_gtp_v26_3.offer_limit_price = {}

-- Size: Offer Limit Price
lseg_turquoise_replay_gtp_v26_3.offer_limit_price.size = 8

-- Display: Offer Limit Price
lseg_turquoise_replay_gtp_v26_3.offer_limit_price.display = function(value)
  return "Offer Limit Price: "..value
end

-- Translate: Offer Limit Price
lseg_turquoise_replay_gtp_v26_3.offer_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Limit Price
lseg_turquoise_replay_gtp_v26_3.offer_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.offer_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.offer_limit_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.offer_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_limit_price, range, value, display)

  return offset + length, value
end

-- Offer Limit Size
lseg_turquoise_replay_gtp_v26_3.offer_limit_size = {}

-- Size: Offer Limit Size
lseg_turquoise_replay_gtp_v26_3.offer_limit_size.size = 8

-- Display: Offer Limit Size
lseg_turquoise_replay_gtp_v26_3.offer_limit_size.display = function(value)
  return "Offer Limit Size: "..value
end

-- Translate: Offer Limit Size
lseg_turquoise_replay_gtp_v26_3.offer_limit_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Limit Size
lseg_turquoise_replay_gtp_v26_3.offer_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.offer_limit_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.offer_limit_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.offer_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_limit_size, range, value, display)

  return offset + length, value
end

-- Offer Market Size
lseg_turquoise_replay_gtp_v26_3.offer_market_size = {}

-- Size: Offer Market Size
lseg_turquoise_replay_gtp_v26_3.offer_market_size.size = 8

-- Display: Offer Market Size
lseg_turquoise_replay_gtp_v26_3.offer_market_size.display = function(value)
  return "Offer Market Size: "..value
end

-- Translate: Offer Market Size
lseg_turquoise_replay_gtp_v26_3.offer_market_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Market Size
lseg_turquoise_replay_gtp_v26_3.offer_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.offer_market_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.offer_market_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.offer_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_market_size, range, value, display)

  return offset + length, value
end

-- Opening Closing Price Indicator
lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator = {}

-- Size: Opening Closing Price Indicator
lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.size = 1

-- Display: Opening Closing Price Indicator
lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.display = function(value)
  return "Opening Closing Price Indicator: "..value
end

-- Dissect: Opening Closing Price Indicator
lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.opening_closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Order Book Side
lseg_turquoise_replay_gtp_v26_3.order_book_side = {}

-- Size: Order Book Side
lseg_turquoise_replay_gtp_v26_3.order_book_side.size = 4

-- Display: Order Book Side
lseg_turquoise_replay_gtp_v26_3.order_book_side.display = function(value)
  if value == "BUYI" then
    return "Order Book Side: Buy Side (BUYI)"
  end
  if value == "SELL" then
    return "Order Book Side: Sell Side (SELL)"
  end

  return "Order Book Side: Unknown("..value..")"
end

-- Dissect: Order Book Side
lseg_turquoise_replay_gtp_v26_3.order_book_side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.order_book_side.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.order_book_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_side, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_turquoise_replay_gtp_v26_3.order_book_type = {}

-- Size: Order Book Type
lseg_turquoise_replay_gtp_v26_3.order_book_type.size = 1

-- Display: Order Book Type
lseg_turquoise_replay_gtp_v26_3.order_book_type.display = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_turquoise_replay_gtp_v26_3.order_id = {}

-- Size: Order Id
lseg_turquoise_replay_gtp_v26_3.order_id.size = 8

-- Display: Order Id
lseg_turquoise_replay_gtp_v26_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_turquoise_replay_gtp_v26_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
lseg_turquoise_replay_gtp_v26_3.order_type = {}

-- Size: Order Type
lseg_turquoise_replay_gtp_v26_3.order_type.size = 1

-- Display: Order Type
lseg_turquoise_replay_gtp_v26_3.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
lseg_turquoise_replay_gtp_v26_3.order_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_type, range, value, display)

  return offset + length, value
end

-- Participant
lseg_turquoise_replay_gtp_v26_3.participant = {}

-- Size: Participant
lseg_turquoise_replay_gtp_v26_3.participant.size = 11

-- Display: Participant
lseg_turquoise_replay_gtp_v26_3.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
lseg_turquoise_replay_gtp_v26_3.participant.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.participant, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.size = 1

-- Display: Post Trade Deferral Reason
lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.display = function(value)
  if value == "-" then
    return "Post Trade Deferral Reason: Immediate Publication (-)"
  end

  return "Post Trade Deferral Reason: Unknown("..value..")"
end

-- Dissect: Post Trade Deferral Reason
lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Previous Price
lseg_turquoise_replay_gtp_v26_3.previous_price = {}

-- Size: Previous Price
lseg_turquoise_replay_gtp_v26_3.previous_price.size = 8

-- Display: Previous Price
lseg_turquoise_replay_gtp_v26_3.previous_price.display = function(value)
  return "Previous Price: "..value
end

-- Translate: Previous Price
lseg_turquoise_replay_gtp_v26_3.previous_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Price
lseg_turquoise_replay_gtp_v26_3.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.previous_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.previous_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Previous Quantity
lseg_turquoise_replay_gtp_v26_3.previous_quantity = {}

-- Size: Previous Quantity
lseg_turquoise_replay_gtp_v26_3.previous_quantity.size = 8

-- Display: Previous Quantity
lseg_turquoise_replay_gtp_v26_3.previous_quantity.display = function(value)
  return "Previous Quantity: "..value
end

-- Translate: Previous Quantity
lseg_turquoise_replay_gtp_v26_3.previous_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Quantity
lseg_turquoise_replay_gtp_v26_3.previous_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.previous_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.previous_quantity.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.previous_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.previous_quantity, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_turquoise_replay_gtp_v26_3.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Price Currency
lseg_turquoise_replay_gtp_v26_3.price_currency = {}

-- Size: Price Currency
lseg_turquoise_replay_gtp_v26_3.price_currency.size = 3

-- Display: Price Currency
lseg_turquoise_replay_gtp_v26_3.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
lseg_turquoise_replay_gtp_v26_3.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Formation Indicator
lseg_turquoise_replay_gtp_v26_3.price_formation_indicator = {}

-- Size: Price Formation Indicator
lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.size = 1

-- Display: Price Formation Indicator
lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.display = function(value)
  if value == "P" then
    return "Price Formation Indicator: Plain Vanilla Trade (P)"
  end

  return "Price Formation Indicator: Unknown("..value..")"
end

-- Dissect: Price Formation Indicator
lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_formation_indicator, range, value, display)

  return offset + length, value
end

-- Price Major Currency
lseg_turquoise_replay_gtp_v26_3.price_major_currency = {}

-- Size: Price Major Currency
lseg_turquoise_replay_gtp_v26_3.price_major_currency.size = 3

-- Display: Price Major Currency
lseg_turquoise_replay_gtp_v26_3.price_major_currency.display = function(value)
  return "Price Major Currency: "..value
end

-- Dissect: Price Major Currency
lseg_turquoise_replay_gtp_v26_3.price_major_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_major_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.price_major_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_major_currency, range, value, display)

  return offset + length, value
end

-- Price Mi Fid Decimal 20
lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20 = {}

-- Size: Price Mi Fid Decimal 20
lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.size = 20

-- Display: Price Mi Fid Decimal 20
lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.display = function(value)
  return "Price Mi Fid Decimal 20: "..value
end

-- Dissect: Price Mi Fid Decimal 20
lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_mi_fid_decimal_20, range, value, display)

  return offset + length, value
end

-- Price Notation
lseg_turquoise_replay_gtp_v26_3.price_notation = {}

-- Size: Price Notation
lseg_turquoise_replay_gtp_v26_3.price_notation.size = 4

-- Display: Price Notation
lseg_turquoise_replay_gtp_v26_3.price_notation.display = function(value)
  if value == "MONE" then
    return "Price Notation: Monetary Value (MONE)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
lseg_turquoise_replay_gtp_v26_3.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price Price 8
lseg_turquoise_replay_gtp_v26_3.price_price_8 = {}

-- Size: Price Price 8
lseg_turquoise_replay_gtp_v26_3.price_price_8.size = 8

-- Display: Price Price 8
lseg_turquoise_replay_gtp_v26_3.price_price_8.display = function(value)
  return "Price Price 8: "..value
end

-- Translate: Price Price 8
lseg_turquoise_replay_gtp_v26_3.price_price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Price 8
lseg_turquoise_replay_gtp_v26_3.price_price_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.price_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.price_price_8.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.price_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.price_price_8, range, value, display)

  return offset + length, value
end

-- Pt Algo Trade
lseg_turquoise_replay_gtp_v26_3.pt_algo_trade = {}

-- Size: Pt Algo Trade
lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.size = 4

-- Display: Pt Algo Trade
lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.display = function(value)
  return "Pt Algo Trade: "..value
end

-- Dissect: Pt Algo Trade
lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_algo_trade, range, value, display)

  return offset + length, value
end

-- Pt Amendment Flag
lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag = {}

-- Size: Pt Amendment Flag
lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.size = 4

-- Display: Pt Amendment Flag
lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.display = function(value)
  return "Pt Amendment Flag: "..value
end

-- Dissect: Pt Amendment Flag
lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_amendment_flag, range, value, display)

  return offset + length, value
end

-- Pt Cancellation Flag
lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag = {}

-- Size: Pt Cancellation Flag
lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.size = 4

-- Display: Pt Cancellation Flag
lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.display = function(value)
  return "Pt Cancellation Flag: "..value
end

-- Dissect: Pt Cancellation Flag
lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_cancellation_flag, range, value, display)

  return offset + length, value
end

-- Pt Ref Price Waiver Flag
lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag = {}

-- Size: Pt Ref Price Waiver Flag
lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.size = 4

-- Display: Pt Ref Price Waiver Flag
lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.display = function(value)
  return "Pt Ref Price Waiver Flag: "..value
end

-- Dissect: Pt Ref Price Waiver Flag
lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.pt_ref_price_waiver_flag, range, value, display)

  return offset + length, value
end

-- Publication Date And Time
lseg_turquoise_replay_gtp_v26_3.publication_date_and_time = {}

-- Size: Publication Date And Time
lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.size = 30

-- Display: Publication Date And Time
lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.display = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Quantity
lseg_turquoise_replay_gtp_v26_3.quantity = {}

-- Size: Quantity
lseg_turquoise_replay_gtp_v26_3.quantity.size = 20

-- Display: Quantity
lseg_turquoise_replay_gtp_v26_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
lseg_turquoise_replay_gtp_v26_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price Indicator
lseg_turquoise_replay_gtp_v26_3.reference_price_indicator = {}

-- Size: Reference Price Indicator
lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.size = 1

-- Display: Reference Price Indicator
lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.display = function(value)
  if value == "S" then
    return "Reference Price Indicator: Reference Price Trade (S)"
  end
  if value == "1" then
    return "Reference Price Indicator: Market Closing Price Trade (1)"
  end
  if value == "-" then
    return "Reference Price Indicator: Not A Reference Price Trade (-)"
  end

  return "Reference Price Indicator: Unknown("..value..")"
end

-- Dissect: Reference Price Indicator
lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Replay Status
lseg_turquoise_replay_gtp_v26_3.replay_status = {}

-- Size: Replay Status
lseg_turquoise_replay_gtp_v26_3.replay_status.size = 1

-- Display: Replay Status
lseg_turquoise_replay_gtp_v26_3.replay_status.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.replay_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.replay_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.replay_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_status, range, value, display)

  return offset + length, value
end

-- Request Id
lseg_turquoise_replay_gtp_v26_3.request_id = {}

-- Size: Request Id
lseg_turquoise_replay_gtp_v26_3.request_id.size = 4

-- Display: Request Id
lseg_turquoise_replay_gtp_v26_3.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
lseg_turquoise_replay_gtp_v26_3.request_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.request_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_turquoise_replay_gtp_v26_3.reserved_1 = {}

-- Size: Reserved 1
lseg_turquoise_replay_gtp_v26_3.reserved_1.size = 1

-- Display: Reserved 1
lseg_turquoise_replay_gtp_v26_3.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_turquoise_replay_gtp_v26_3.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 20
lseg_turquoise_replay_gtp_v26_3.reserved_20 = {}

-- Size: Reserved 20
lseg_turquoise_replay_gtp_v26_3.reserved_20.size = 20

-- Display: Reserved 20
lseg_turquoise_replay_gtp_v26_3.reserved_20.display = function(value)
  return "Reserved 20: "..value
end

-- Dissect: Reserved 20
lseg_turquoise_replay_gtp_v26_3.reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_20, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_turquoise_replay_gtp_v26_3.reserved_23 = {}

-- Size: Reserved 23
lseg_turquoise_replay_gtp_v26_3.reserved_23.size = 23

-- Display: Reserved 23
lseg_turquoise_replay_gtp_v26_3.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_replay_gtp_v26_3.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Reserved 3
lseg_turquoise_replay_gtp_v26_3.reserved_3 = {}

-- Size: Reserved 3
lseg_turquoise_replay_gtp_v26_3.reserved_3.size = 3

-- Display: Reserved 3
lseg_turquoise_replay_gtp_v26_3.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
lseg_turquoise_replay_gtp_v26_3.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 38
lseg_turquoise_replay_gtp_v26_3.reserved_38 = {}

-- Size: Reserved 38
lseg_turquoise_replay_gtp_v26_3.reserved_38.size = 38

-- Display: Reserved 38
lseg_turquoise_replay_gtp_v26_3.reserved_38.display = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_replay_gtp_v26_3.reserved_38.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_38.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_turquoise_replay_gtp_v26_3.reserved_4 = {}

-- Size: Reserved 4
lseg_turquoise_replay_gtp_v26_3.reserved_4.size = 4

-- Display: Reserved 4
lseg_turquoise_replay_gtp_v26_3.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_turquoise_replay_gtp_v26_3.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
lseg_turquoise_replay_gtp_v26_3.reserved_8 = {}

-- Size: Reserved 8
lseg_turquoise_replay_gtp_v26_3.reserved_8.size = 8

-- Display: Reserved 8
lseg_turquoise_replay_gtp_v26_3.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_turquoise_replay_gtp_v26_3.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Rfq Id
lseg_turquoise_replay_gtp_v26_3.rfq_id = {}

-- Size: Rfq Id
lseg_turquoise_replay_gtp_v26_3.rfq_id.size = 10

-- Display: Rfq Id
lseg_turquoise_replay_gtp_v26_3.rfq_id.display = function(value)
  return "Rfq Id: "..value
end

-- Dissect: Rfq Id
lseg_turquoise_replay_gtp_v26_3.rfq_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.rfq_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.rfq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.rfq_id, range, value, display)

  return offset + length, value
end

-- Second Reserved 4
lseg_turquoise_replay_gtp_v26_3.second_reserved_4 = {}

-- Size: Second Reserved 4
lseg_turquoise_replay_gtp_v26_3.second_reserved_4.size = 4

-- Display: Second Reserved 4
lseg_turquoise_replay_gtp_v26_3.second_reserved_4.display = function(value)
  return "Second Reserved 4: "..value
end

-- Dissect: Second Reserved 4
lseg_turquoise_replay_gtp_v26_3.second_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.second_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.second_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.second_reserved_4, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
lseg_turquoise_replay_gtp_v26_3.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_turquoise_replay_gtp_v26_3.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_turquoise_replay_gtp_v26_3.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_turquoise_replay_gtp_v26_3.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_replay_gtp_v26_3.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Segment
lseg_turquoise_replay_gtp_v26_3.segment = {}

-- Size: Segment
lseg_turquoise_replay_gtp_v26_3.segment.size = 6

-- Display: Segment
lseg_turquoise_replay_gtp_v26_3.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_replay_gtp_v26_3.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations = {}

-- Size: Sell Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.size = 4

-- Display: Sell Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.display = function(value)
  return "Sell Limit Order Cancellations: "..value
end

-- Dissect: Sell Limit Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_limit_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations = {}

-- Size: Sell Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.size = 4

-- Display: Sell Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.display = function(value)
  return "Sell Market Order Cancellations: "..value
end

-- Dissect: Sell Market Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_market_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations = {}

-- Size: Sell Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.size = 4

-- Display: Sell Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.display = function(value)
  return "Sell Order Cancellations: "..value
end

-- Dissect: Sell Order Cancellations
lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_order_cancellations, range, value, display)

  return offset + length, value
end

-- Sell Order Count
lseg_turquoise_replay_gtp_v26_3.sell_order_count = {}

-- Size: Sell Order Count
lseg_turquoise_replay_gtp_v26_3.sell_order_count.size = 4

-- Display: Sell Order Count
lseg_turquoise_replay_gtp_v26_3.sell_order_count.display = function(value)
  return "Sell Order Count: "..value
end

-- Dissect: Sell Order Count
lseg_turquoise_replay_gtp_v26_3.sell_order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.sell_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.sell_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_order_count, range, value, display)

  return offset + length, value
end

-- Sell Order Size
lseg_turquoise_replay_gtp_v26_3.sell_order_size = {}

-- Size: Sell Order Size
lseg_turquoise_replay_gtp_v26_3.sell_order_size.size = 8

-- Display: Sell Order Size
lseg_turquoise_replay_gtp_v26_3.sell_order_size.display = function(value)
  return "Sell Order Size: "..value
end

-- Translate: Sell Order Size
lseg_turquoise_replay_gtp_v26_3.sell_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sell Order Size
lseg_turquoise_replay_gtp_v26_3.sell_order_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.sell_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.sell_order_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.sell_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.sell_order_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_turquoise_replay_gtp_v26_3.sequence_number = {}

-- Size: Sequence Number
lseg_turquoise_replay_gtp_v26_3.sequence_number.size = 4

-- Display: Sequence Number
lseg_turquoise_replay_gtp_v26_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_replay_gtp_v26_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_turquoise_replay_gtp_v26_3.session_change_reason = {}

-- Size: Session Change Reason
lseg_turquoise_replay_gtp_v26_3.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_turquoise_replay_gtp_v26_3.session_change_reason.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Side
lseg_turquoise_replay_gtp_v26_3.side = {}

-- Size: Side
lseg_turquoise_replay_gtp_v26_3.side.size = 1

-- Display: Side
lseg_turquoise_replay_gtp_v26_3.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
lseg_turquoise_replay_gtp_v26_3.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.side, range, value, display)

  return offset + length, value
end

-- Size
lseg_turquoise_replay_gtp_v26_3.size = {}

-- Size: Size
lseg_turquoise_replay_gtp_v26_3.size.size = 8

-- Display: Size
lseg_turquoise_replay_gtp_v26_3.size.display = function(value)
  return "Size: "..value
end

-- Translate: Size
lseg_turquoise_replay_gtp_v26_3.size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Size
lseg_turquoise_replay_gtp_v26_3.size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.size, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_turquoise_replay_gtp_v26_3.source_venue = {}

-- Size: Source Venue
lseg_turquoise_replay_gtp_v26_3.source_venue.size = 2

-- Display: Source Venue
lseg_turquoise_replay_gtp_v26_3.source_venue.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Special Dividend Indicator
lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator = {}

-- Size: Special Dividend Indicator
lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.size = 1

-- Display: Special Dividend Indicator
lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.display = function(value)
  if value == "-" then
    return "Special Dividend Indicator: No Special Dividend Trade (-)"
  end

  return "Special Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Special Dividend Indicator
lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Start Time
lseg_turquoise_replay_gtp_v26_3.start_time = {}

-- Size: Start Time
lseg_turquoise_replay_gtp_v26_3.start_time.size = 8

-- Display: Start Time
lseg_turquoise_replay_gtp_v26_3.start_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Start Time
lseg_turquoise_replay_gtp_v26_3.start_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.start_time, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Statistic Price
lseg_turquoise_replay_gtp_v26_3.statistic_price = {}

-- Size: Statistic Price
lseg_turquoise_replay_gtp_v26_3.statistic_price.size = 8

-- Display: Statistic Price
lseg_turquoise_replay_gtp_v26_3.statistic_price.display = function(value)
  return "Statistic Price: "..value
end

-- Translate: Statistic Price
lseg_turquoise_replay_gtp_v26_3.statistic_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Price
lseg_turquoise_replay_gtp_v26_3.statistic_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.statistic_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.statistic_price.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.statistic_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.statistic_price, range, value, display)

  return offset + length, value
end

-- Statistic Size
lseg_turquoise_replay_gtp_v26_3.statistic_size = {}

-- Size: Statistic Size
lseg_turquoise_replay_gtp_v26_3.statistic_size.size = 8

-- Display: Statistic Size
lseg_turquoise_replay_gtp_v26_3.statistic_size.display = function(value)
  return "Statistic Size: "..value
end

-- Translate: Statistic Size
lseg_turquoise_replay_gtp_v26_3.statistic_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Statistic Size
lseg_turquoise_replay_gtp_v26_3.statistic_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.statistic_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.statistic_size.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.statistic_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.statistic_size, range, value, display)

  return offset + length, value
end

-- Statistic Type
lseg_turquoise_replay_gtp_v26_3.statistic_type = {}

-- Size: Statistic Type
lseg_turquoise_replay_gtp_v26_3.statistic_type.size = 2

-- Display: Statistic Type
lseg_turquoise_replay_gtp_v26_3.statistic_type.display = function(value)
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
    return "Statistic Type: Fifty Two Week Trade High All Trades (8)"
  end
  if value == 9 then
    return "Statistic Type: Fifty Two Week Trade Low All Trades (9)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
lseg_turquoise_replay_gtp_v26_3.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.statistic_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_turquoise_replay_gtp_v26_3.tick_id = {}

-- Size: Tick Id
lseg_turquoise_replay_gtp_v26_3.tick_id.size = 2

-- Display: Tick Id
lseg_turquoise_replay_gtp_v26_3.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_replay_gtp_v26_3.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_turquoise_replay_gtp_v26_3.timestamp = {}

-- Size: Timestamp
lseg_turquoise_replay_gtp_v26_3.timestamp.size = 8

-- Display: Timestamp
lseg_turquoise_replay_gtp_v26_3.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_replay_gtp_v26_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_executed_quantity = {}

-- Size: Total Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.size = 8

-- Display: Total Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.display = function(value)
  return "Total Executed Quantity: "..value
end

-- Translate: Total Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Total Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.total_executed_quantity, range, value, display)

  return offset + length, value
end

-- Total Hidden Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity = {}

-- Size: Total Hidden Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.size = 8

-- Display: Total Hidden Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.display = function(value)
  return "Total Hidden Executed Quantity: "..value
end

-- Translate: Total Hidden Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Total Hidden Executed Quantity
lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.total_hidden_executed_quantity, range, value, display)

  return offset + length, value
end

-- Trade Id
lseg_turquoise_replay_gtp_v26_3.trade_id = {}

-- Size: Trade Id
lseg_turquoise_replay_gtp_v26_3.trade_id.size = 8

-- Display: Trade Id
lseg_turquoise_replay_gtp_v26_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
lseg_turquoise_replay_gtp_v26_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Qualifier
lseg_turquoise_replay_gtp_v26_3.trade_qualifier = {}

-- Size: Trade Qualifier
lseg_turquoise_replay_gtp_v26_3.trade_qualifier.size = 1

-- Display: Trade Qualifier
lseg_turquoise_replay_gtp_v26_3.trade_qualifier.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trade_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.trade_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Trade Type
lseg_turquoise_replay_gtp_v26_3.trade_type = {}

-- Size: Trade Type
lseg_turquoise_replay_gtp_v26_3.trade_type.size = 1

-- Display: Trade Type
lseg_turquoise_replay_gtp_v26_3.trade_type.display = function(value)
  if value == 0 then
    return "Trade Type: Regular (0)"
  end
  if value == 2 then
    return "Trade Type: Auction Trade (2)"
  end
  if value == 9 then
    return "Trade Type: Trade Cancellation (9)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
lseg_turquoise_replay_gtp_v26_3.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Date And Time
lseg_turquoise_replay_gtp_v26_3.trading_date_and_time = {}

-- Size: Trading Date And Time
lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.size = 30

-- Display: Trading Date And Time
lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.display = function(value)
  return "Trading Date And Time: "..value
end

-- Dissect: Trading Date And Time
lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Trading Mode
lseg_turquoise_replay_gtp_v26_3.trading_mode = {}

-- Size: Trading Mode
lseg_turquoise_replay_gtp_v26_3.trading_mode.size = 1

-- Display: Trading Mode
lseg_turquoise_replay_gtp_v26_3.trading_mode.display = function(value)
  if value == "U" then
    return "Trading Mode: Unscheduled Auction (U)"
  end
  if value == "P" then
    return "Trading Mode: On Demand Auction (P)"
  end
  if value == "2" then
    return "Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Trading Mode: At Market Close Trading (3)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
lseg_turquoise_replay_gtp_v26_3.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_turquoise_replay_gtp_v26_3.trading_status = {}

-- Size: Trading Status
lseg_turquoise_replay_gtp_v26_3.trading_status.size = 1

-- Display: Trading Status
lseg_turquoise_replay_gtp_v26_3.trading_status.display = function(value)
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
lseg_turquoise_replay_gtp_v26_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trading System
lseg_turquoise_replay_gtp_v26_3.trading_system = {}

-- Size: Trading System
lseg_turquoise_replay_gtp_v26_3.trading_system.size = 4

-- Display: Trading System
lseg_turquoise_replay_gtp_v26_3.trading_system.display = function(value)
  if value == "CLOB" then
    return "Trading System: Central Limit Order Book (CLOB)"
  end
  if value == "PATS" then
    return "Trading System: Periodic Auction (PATS)"
  end

  return "Trading System: Unknown("..value..")"
end

-- Dissect: Trading System
lseg_turquoise_replay_gtp_v26_3.trading_system.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trading_system.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_system, range, value, display)

  return offset + length, value
end

-- Trading System Phase
lseg_turquoise_replay_gtp_v26_3.trading_system_phase = {}

-- Size: Trading System Phase
lseg_turquoise_replay_gtp_v26_3.trading_system_phase.size = 4

-- Display: Trading System Phase
lseg_turquoise_replay_gtp_v26_3.trading_system_phase.display = function(value)
  if value == "COTR" then
    return "Trading System Phase: Continuous Trading (COTR)"
  end
  if value == "ODAU" then
    return "Trading System Phase: On Demand Auction Frequent Batch Auction (ODAU)"
  end

  return "Trading System Phase: Unknown("..value..")"
end

-- Dissect: Trading System Phase
lseg_turquoise_replay_gtp_v26_3.trading_system_phase.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.trading_system_phase.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.trading_system_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trading_system_phase, range, value, display)

  return offset + length, value
end

-- Transaction Category
lseg_turquoise_replay_gtp_v26_3.transaction_category = {}

-- Size: Transaction Category
lseg_turquoise_replay_gtp_v26_3.transaction_category.size = 1

-- Display: Transaction Category
lseg_turquoise_replay_gtp_v26_3.transaction_category.display = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "-" then
    return "Transaction Category: None (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
lseg_turquoise_replay_gtp_v26_3.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Identification Code
lseg_turquoise_replay_gtp_v26_3.transaction_identification_code = {}

-- Size: Transaction Identification Code
lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.size = 52

-- Display: Transaction Identification Code
lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.display = function(value)
  return "Transaction Identification Code: "..value
end

-- Dissect: Transaction Identification Code
lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.transaction_identification_code, range, value, display)

  return offset + length, value
end

-- Transaction Time
lseg_turquoise_replay_gtp_v26_3.transaction_time = {}

-- Size: Transaction Time
lseg_turquoise_replay_gtp_v26_3.transaction_time.size = 8

-- Display: Transaction Time
lseg_turquoise_replay_gtp_v26_3.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_replay_gtp_v26_3.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Turnover
lseg_turquoise_replay_gtp_v26_3.turnover = {}

-- Size: Turnover
lseg_turquoise_replay_gtp_v26_3.turnover.size = 8

-- Display: Turnover
lseg_turquoise_replay_gtp_v26_3.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_turquoise_replay_gtp_v26_3.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_turquoise_replay_gtp_v26_3.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.turnover.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.turnover, range, value, display)

  return offset + length, value
end

-- Turnover Onbook Only
lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only = {}

-- Size: Turnover Onbook Only
lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.size = 8

-- Display: Turnover Onbook Only
lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.display = function(value)
  return "Turnover Onbook Only: "..value
end

-- Translate: Turnover Onbook Only
lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover Onbook Only
lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.turnover_onbook_only, range, value, display)

  return offset + length, value
end

-- Update Date And Time
lseg_turquoise_replay_gtp_v26_3.update_date_and_time = {}

-- Size: Update Date And Time
lseg_turquoise_replay_gtp_v26_3.update_date_and_time.size = 30

-- Display: Update Date And Time
lseg_turquoise_replay_gtp_v26_3.update_date_and_time.display = function(value)
  return "Update Date And Time: "..value
end

-- Dissect: Update Date And Time
lseg_turquoise_replay_gtp_v26_3.update_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.update_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_replay_gtp_v26_3.update_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.update_date_and_time, range, value, display)

  return offset + length, value
end

-- Username
lseg_turquoise_replay_gtp_v26_3.username = {}

-- Size: Username
lseg_turquoise_replay_gtp_v26_3.username.size = 8

-- Display: Username
lseg_turquoise_replay_gtp_v26_3.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
lseg_turquoise_replay_gtp_v26_3.username.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.username, range, value, display)

  return offset + length, value
end

-- Venue
lseg_turquoise_replay_gtp_v26_3.venue = {}

-- Size: Venue
lseg_turquoise_replay_gtp_v26_3.venue.size = 4

-- Display: Venue
lseg_turquoise_replay_gtp_v26_3.venue.display = function(value)
  return "Venue: "..value
end

-- Dissect: Venue
lseg_turquoise_replay_gtp_v26_3.venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.venue, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_turquoise_replay_gtp_v26_3.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
lseg_turquoise_replay_gtp_v26_3.venue_of_execution = {}

-- Size: Venue Of Execution
lseg_turquoise_replay_gtp_v26_3.venue_of_execution.size = 4

-- Display: Venue Of Execution
lseg_turquoise_replay_gtp_v26_3.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
lseg_turquoise_replay_gtp_v26_3.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_replay_gtp_v26_3.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Volume
lseg_turquoise_replay_gtp_v26_3.volume = {}

-- Size: Volume
lseg_turquoise_replay_gtp_v26_3.volume.size = 8

-- Display: Volume
lseg_turquoise_replay_gtp_v26_3.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_turquoise_replay_gtp_v26_3.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_turquoise_replay_gtp_v26_3.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.volume.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Onbook Only
lseg_turquoise_replay_gtp_v26_3.volume_onbook_only = {}

-- Size: Volume Onbook Only
lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.size = 8

-- Display: Volume Onbook Only
lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.display = function(value)
  return "Volume Onbook Only: "..value
end

-- Translate: Volume Onbook Only
lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Onbook Only
lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.volume_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_turquoise_replay_gtp_v26_3.vwap = {}

-- Size: Vwap
lseg_turquoise_replay_gtp_v26_3.vwap.size = 8

-- Display: Vwap
lseg_turquoise_replay_gtp_v26_3.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_turquoise_replay_gtp_v26_3.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_turquoise_replay_gtp_v26_3.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.vwap.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap, range, value, display)

  return offset + length, value
end

-- Vwap Buy
lseg_turquoise_replay_gtp_v26_3.vwap_buy = {}

-- Size: Vwap Buy
lseg_turquoise_replay_gtp_v26_3.vwap_buy.size = 8

-- Display: Vwap Buy
lseg_turquoise_replay_gtp_v26_3.vwap_buy.display = function(value)
  return "Vwap Buy: "..value
end

-- Translate: Vwap Buy
lseg_turquoise_replay_gtp_v26_3.vwap_buy.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap Buy
lseg_turquoise_replay_gtp_v26_3.vwap_buy.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.vwap_buy.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.vwap_buy.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.vwap_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap_buy, range, value, display)

  return offset + length, value
end

-- Vwap Onbook Only
lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only = {}

-- Size: Vwap Onbook Only
lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.size = 8

-- Display: Vwap Onbook Only
lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.display = function(value)
  return "Vwap Onbook Only: "..value
end

-- Translate: Vwap Onbook Only
lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap Onbook Only
lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap_onbook_only, range, value, display)

  return offset + length, value
end

-- Vwap Sell
lseg_turquoise_replay_gtp_v26_3.vwap_sell = {}

-- Size: Vwap Sell
lseg_turquoise_replay_gtp_v26_3.vwap_sell.size = 8

-- Display: Vwap Sell
lseg_turquoise_replay_gtp_v26_3.vwap_sell.display = function(value)
  return "Vwap Sell: "..value
end

-- Translate: Vwap Sell
lseg_turquoise_replay_gtp_v26_3.vwap_sell.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwap Sell
lseg_turquoise_replay_gtp_v26_3.vwap_sell.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_replay_gtp_v26_3.vwap_sell.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_replay_gtp_v26_3.vwap_sell.translate(raw)
  local display = lseg_turquoise_replay_gtp_v26_3.vwap_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.vwap_sell, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Turquoise Replay Gtp 26.3
-----------------------------------------------------------------------

-- Order Book Update
lseg_turquoise_replay_gtp_v26_3.order_book_update = {}

-- Size: Order Book Update
lseg_turquoise_replay_gtp_v26_3.order_book_update.size = 1

-- Display: Order Book Update
lseg_turquoise_replay_gtp_v26_3.order_book_update.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Last Price Level flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Last Price Level"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Book Update
lseg_turquoise_replay_gtp_v26_3.order_book_update.bits = function(range, value, packet, parent)

  -- Last Price Level: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.last_price_level, range, value)

  -- Reserved 17: 7 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved_17, range, value)
end

-- Dissect: Order Book Update
lseg_turquoise_replay_gtp_v26_3.order_book_update.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_replay_gtp_v26_3.order_book_update.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.order_book_update.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_update, range, display)

  if show.structs then
    lseg_turquoise_replay_gtp_v26_3.order_book_update.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mifid Ii Order Book Update Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message = {}

-- Size: Mifid Ii Order Book Update Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.level_identifier.size + 
  lseg_turquoise_replay_gtp_v26_3.update_date_and_time.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_side.size + 
  lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.size + 
  lseg_turquoise_replay_gtp_v26_3.price_currency.size + 
  lseg_turquoise_replay_gtp_v26_3.price_notation.size + 
  lseg_turquoise_replay_gtp_v26_3.quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.size + 
  lseg_turquoise_replay_gtp_v26_3.venue.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_system.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_system_phase.size + 
  lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_update.size

-- Display: Mifid Ii Order Book Update Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Order Book Update Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Level Identifier: UInt8
  index, level_identifier = lseg_turquoise_replay_gtp_v26_3.level_identifier.dissect(buffer, index, packet, parent)

  -- Update Date And Time: MiFID Date and Time
  index, update_date_and_time = lseg_turquoise_replay_gtp_v26_3.update_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: Alpha
  index, instrument_identification_code = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Order Book Side: Alpha
  index, order_book_side = lseg_turquoise_replay_gtp_v26_3.order_book_side.dissect(buffer, index, packet, parent)

  -- Price Mi Fid Decimal 20: MiFID Decimal
  index, price_mi_fid_decimal_20 = lseg_turquoise_replay_gtp_v26_3.price_mi_fid_decimal_20.dissect(buffer, index, packet, parent)

  -- Price Currency: Alpha
  index, price_currency = lseg_turquoise_replay_gtp_v26_3.price_currency.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = lseg_turquoise_replay_gtp_v26_3.price_notation.dissect(buffer, index, packet, parent)

  -- Quantity: MiFID Decimal
  index, quantity = lseg_turquoise_replay_gtp_v26_3.quantity.dissect(buffer, index, packet, parent)

  -- Aggregated No Of Orders And Quotes: MiFID Decimal
  index, aggregated_no_of_orders_and_quotes = lseg_turquoise_replay_gtp_v26_3.aggregated_no_of_orders_and_quotes.dissect(buffer, index, packet, parent)

  -- Venue: Alpha
  index, venue = lseg_turquoise_replay_gtp_v26_3.venue.dissect(buffer, index, packet, parent)

  -- Trading System: Alpha
  index, trading_system = lseg_turquoise_replay_gtp_v26_3.trading_system.dissect(buffer, index, packet, parent)

  -- Trading System Phase: Alpha
  index, trading_system_phase = lseg_turquoise_replay_gtp_v26_3.trading_system_phase.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: MiFID Date and Time
  index, publication_date_and_time = lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Order Book Update: Struct of 2 fields
  index, order_book_update = lseg_turquoise_replay_gtp_v26_3.order_book_update.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Order Book Update Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.mifid_ii_order_book_update_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Analytics Message
lseg_turquoise_replay_gtp_v26_3.analytics_message = {}

-- Size: Analytics Message
lseg_turquoise_replay_gtp_v26_3.analytics_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.start_time.size + 
  lseg_turquoise_replay_gtp_v26_3.end_time.size + 
  lseg_turquoise_replay_gtp_v26_3.buy_order_count.size + 
  lseg_turquoise_replay_gtp_v26_3.sell_order_count.size + 
  lseg_turquoise_replay_gtp_v26_3.buy_order_size.size + 
  lseg_turquoise_replay_gtp_v26_3.sell_order_size.size + 
  lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.size + 
  lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.size + 
  lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.size + 
  lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.size + 
  lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.size + 
  lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.size + 
  lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.size + 
  lseg_turquoise_replay_gtp_v26_3.vwap_buy.size + 
  lseg_turquoise_replay_gtp_v26_3.vwap_sell.size

-- Display: Analytics Message
lseg_turquoise_replay_gtp_v26_3.analytics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Analytics Message
lseg_turquoise_replay_gtp_v26_3.analytics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Start Time: UDT
  index, start_time = lseg_turquoise_replay_gtp_v26_3.start_time.dissect(buffer, index, packet, parent)

  -- End Time: UDT
  index, end_time = lseg_turquoise_replay_gtp_v26_3.end_time.dissect(buffer, index, packet, parent)

  -- Buy Order Count: UInt32
  index, buy_order_count = lseg_turquoise_replay_gtp_v26_3.buy_order_count.dissect(buffer, index, packet, parent)

  -- Sell Order Count: UInt32
  index, sell_order_count = lseg_turquoise_replay_gtp_v26_3.sell_order_count.dissect(buffer, index, packet, parent)

  -- Buy Order Size: Size4
  index, buy_order_size = lseg_turquoise_replay_gtp_v26_3.buy_order_size.dissect(buffer, index, packet, parent)

  -- Sell Order Size: Size4
  index, sell_order_size = lseg_turquoise_replay_gtp_v26_3.sell_order_size.dissect(buffer, index, packet, parent)

  -- Buy Order Cancellations: UInt32
  index, buy_order_cancellations = lseg_turquoise_replay_gtp_v26_3.buy_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Order Cancellations: UInt32
  index, sell_order_cancellations = lseg_turquoise_replay_gtp_v26_3.sell_order_cancellations.dissect(buffer, index, packet, parent)

  -- Buy Limit Order Cancellations: UInt32
  index, buy_limit_order_cancellations = lseg_turquoise_replay_gtp_v26_3.buy_limit_order_cancellations.dissect(buffer, index, packet, parent)

  -- Buy Market Order Cancellations: UInt32
  index, buy_market_order_cancellations = lseg_turquoise_replay_gtp_v26_3.buy_market_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Limit Order Cancellations: UInt32
  index, sell_limit_order_cancellations = lseg_turquoise_replay_gtp_v26_3.sell_limit_order_cancellations.dissect(buffer, index, packet, parent)

  -- Sell Market Order Cancellations: UInt32
  index, sell_market_order_cancellations = lseg_turquoise_replay_gtp_v26_3.sell_market_order_cancellations.dissect(buffer, index, packet, parent)

  -- Bid Ask Spread: Price
  index, bid_ask_spread = lseg_turquoise_replay_gtp_v26_3.bid_ask_spread.dissect(buffer, index, packet, parent)

  -- Vwap Buy: Price
  index, vwap_buy = lseg_turquoise_replay_gtp_v26_3.vwap_buy.dissect(buffer, index, packet, parent)

  -- Vwap Sell: Price
  index, vwap_sell = lseg_turquoise_replay_gtp_v26_3.vwap_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Analytics Message
lseg_turquoise_replay_gtp_v26_3.analytics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.analytics_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.analytics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.analytics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.analytics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Summary Message
lseg_turquoise_replay_gtp_v26_3.trade_summary_message = {}

-- Size: Trade Summary Message
lseg_turquoise_replay_gtp_v26_3.trade_summary_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_time.size + 
  lseg_turquoise_replay_gtp_v26_3.far_price.size + 
  lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.side.size + 
  lseg_turquoise_replay_gtp_v26_3.best_bid_size.size + 
  lseg_turquoise_replay_gtp_v26_3.best_bid_price.size + 
  lseg_turquoise_replay_gtp_v26_3.best_offer_size.size + 
  lseg_turquoise_replay_gtp_v26_3.best_offer_price.size

-- Display: Trade Summary Message
lseg_turquoise_replay_gtp_v26_3.trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Message
lseg_turquoise_replay_gtp_v26_3.trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Far Price: Price
  index, far_price = lseg_turquoise_replay_gtp_v26_3.far_price.dissect(buffer, index, packet, parent)

  -- Total Executed Quantity: Size
  index, total_executed_quantity = lseg_turquoise_replay_gtp_v26_3.total_executed_quantity.dissect(buffer, index, packet, parent)

  -- Total Hidden Executed Quantity: Size
  index, total_hidden_executed_quantity = lseg_turquoise_replay_gtp_v26_3.total_hidden_executed_quantity.dissect(buffer, index, packet, parent)

  -- Deleted Order Quantity: Size
  index, deleted_order_quantity = lseg_turquoise_replay_gtp_v26_3.deleted_order_quantity.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_turquoise_replay_gtp_v26_3.side.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Int Size
  index, best_bid_size = lseg_turquoise_replay_gtp_v26_3.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = lseg_turquoise_replay_gtp_v26_3.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Int Size
  index, best_offer_size = lseg_turquoise_replay_gtp_v26_3.best_offer_size.dissect(buffer, index, packet, parent)

  -- Best Offer Price: Price
  index, best_offer_price = lseg_turquoise_replay_gtp_v26_3.best_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Message
lseg_turquoise_replay_gtp_v26_3.trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_summary_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Mifid Ii Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message = {}

-- Size: Mifid Ii Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.size + 
  lseg_turquoise_replay_gtp_v26_3.cross_id.size + 
  lseg_turquoise_replay_gtp_v26_3.cross_type.size + 
  lseg_turquoise_replay_gtp_v26_3.mi_fid_price.size + 
  lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.size + 
  lseg_turquoise_replay_gtp_v26_3.price_notation.size + 
  lseg_turquoise_replay_gtp_v26_3.price_major_currency.size + 
  lseg_turquoise_replay_gtp_v26_3.notional_amount.size + 
  lseg_turquoise_replay_gtp_v26_3.notional_currency.size + 
  lseg_turquoise_replay_gtp_v26_3.venue_of_execution.size + 
  lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_4.size + 
  lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.size + 
  lseg_turquoise_replay_gtp_v26_3.second_reserved_4.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_1.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_3.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_20.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_system.size + 
  lseg_turquoise_replay_gtp_v26_3.market_mechanism.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_mode.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_category.size + 
  lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.modification_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.size + 
  lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.size + 
  lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.size

-- Display: Mifid Ii Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Transaction Identification Code: Alpha
  index, transaction_identification_code = lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.dissect(buffer, index, packet, parent)

  -- Cross Id: Alpha
  index, cross_id = lseg_turquoise_replay_gtp_v26_3.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = lseg_turquoise_replay_gtp_v26_3.cross_type.dissect(buffer, index, packet, parent)

  -- Mi Fid Price: MiFID Decimal
  index, mi_fid_price = lseg_turquoise_replay_gtp_v26_3.mi_fid_price.dissect(buffer, index, packet, parent)

  -- Mi Fid Quantity: MiFID Decimal
  index, mi_fid_quantity = lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.dissect(buffer, index, packet, parent)

  -- Trading Date And Time: MiFID Date and Time
  index, trading_date_and_time = lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: Alpha
  index, instrument_identification_code_type = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: Alpha
  index, instrument_identification_code = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = lseg_turquoise_replay_gtp_v26_3.price_notation.dissect(buffer, index, packet, parent)

  -- Price Major Currency: Alpha
  index, price_major_currency = lseg_turquoise_replay_gtp_v26_3.price_major_currency.dissect(buffer, index, packet, parent)

  -- Notional Amount: MiFID Decimal
  index, notional_amount = lseg_turquoise_replay_gtp_v26_3.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: Alpha
  index, notional_currency = lseg_turquoise_replay_gtp_v26_3.notional_currency.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = lseg_turquoise_replay_gtp_v26_3.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: MiFID Date and Time
  index, publication_date_and_time = lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = lseg_turquoise_replay_gtp_v26_3.reserved_4.dissect(buffer, index, packet, parent)

  -- Nt Pre Trade Waiver Flag: Alpha
  index, nt_pre_trade_waiver_flag = lseg_turquoise_replay_gtp_v26_3.nt_pre_trade_waiver_flag.dissect(buffer, index, packet, parent)

  -- Pt Algo Trade: Alpha
  index, pt_algo_trade = lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: Alpha
  index, second_reserved_4 = lseg_turquoise_replay_gtp_v26_3.second_reserved_4.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: Alpha
  index, pt_cancellation_flag = lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: Alpha
  index, pt_amendment_flag = lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_turquoise_replay_gtp_v26_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = lseg_turquoise_replay_gtp_v26_3.reserved_3.dissect(buffer, index, packet, parent)

  -- Reserved 20: MiFID Decimal
  index, reserved_20 = lseg_turquoise_replay_gtp_v26_3.reserved_20.dissect(buffer, index, packet, parent)

  -- Trading System: Alpha
  index, trading_system = lseg_turquoise_replay_gtp_v26_3.trading_system.dissect(buffer, index, packet, parent)

  -- Market Mechanism: Byte
  index, market_mechanism = lseg_turquoise_replay_gtp_v26_3.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Byte
  index, trading_mode = lseg_turquoise_replay_gtp_v26_3.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Byte
  index, transaction_category = lseg_turquoise_replay_gtp_v26_3.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Indicator: Byte
  index, negotiation_indicator = lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Agency Cross Indicator: Byte
  index, agency_cross_indicator = lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Byte
  index, modification_indicator = lseg_turquoise_replay_gtp_v26_3.modification_indicator.dissect(buffer, index, packet, parent)

  -- Reference Price Indicator: Byte
  index, reference_price_indicator = lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend Indicator: Byte
  index, special_dividend_indicator = lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: Byte
  index, off_book_automated_indicator = lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Indicator: Byte
  index, price_formation_indicator = lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Byte
  index, algorithmic_indicator = lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: Byte
  index, post_trade_deferral_reason = lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Enrichment Type: Byte
  index, deferral_enrichment_type = lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: Byte
  index, duplicative_indicator = lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.mifid_ii_trade_cross_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- Mifid Ii Trade Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message = {}

-- Size: Mifid Ii Trade Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_type.size + 
  lseg_turquoise_replay_gtp_v26_3.auction_type.size + 
  lseg_turquoise_replay_gtp_v26_3.mi_fid_price.size + 
  lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.size + 
  lseg_turquoise_replay_gtp_v26_3.price_notation.size + 
  lseg_turquoise_replay_gtp_v26_3.price_major_currency.size + 
  lseg_turquoise_replay_gtp_v26_3.notional_amount.size + 
  lseg_turquoise_replay_gtp_v26_3.notional_currency.size + 
  lseg_turquoise_replay_gtp_v26_3.venue_of_execution.size + 
  lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_system.size + 
  lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_1.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_3.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_20.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_4.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_qualifier.size + 
  lseg_turquoise_replay_gtp_v26_3.market_mechanism.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_mode.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_category.size + 
  lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.modification_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.size + 
  lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.size + 
  lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.size

-- Display: Mifid Ii Trade Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Transaction Identification Code: Alpha
  index, transaction_identification_code = lseg_turquoise_replay_gtp_v26_3.transaction_identification_code.dissect(buffer, index, packet, parent)

  -- Trade Type: UInt8
  index, trade_type = lseg_turquoise_replay_gtp_v26_3.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_turquoise_replay_gtp_v26_3.auction_type.dissect(buffer, index, packet, parent)

  -- Mi Fid Price: MiFID Decimal
  index, mi_fid_price = lseg_turquoise_replay_gtp_v26_3.mi_fid_price.dissect(buffer, index, packet, parent)

  -- Mi Fid Quantity: MiFID Decimal
  index, mi_fid_quantity = lseg_turquoise_replay_gtp_v26_3.mi_fid_quantity.dissect(buffer, index, packet, parent)

  -- Trading Date And Time: MiFID Date and Time
  index, trading_date_and_time = lseg_turquoise_replay_gtp_v26_3.trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: Alpha
  index, instrument_identification_code_type = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: Alpha
  index, instrument_identification_code = lseg_turquoise_replay_gtp_v26_3.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = lseg_turquoise_replay_gtp_v26_3.price_notation.dissect(buffer, index, packet, parent)

  -- Price Major Currency: Alpha
  index, price_major_currency = lseg_turquoise_replay_gtp_v26_3.price_major_currency.dissect(buffer, index, packet, parent)

  -- Notional Amount: MiFID Decimal
  index, notional_amount = lseg_turquoise_replay_gtp_v26_3.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: Alpha
  index, notional_currency = lseg_turquoise_replay_gtp_v26_3.notional_currency.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = lseg_turquoise_replay_gtp_v26_3.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: MiFID Date and Time
  index, publication_date_and_time = lseg_turquoise_replay_gtp_v26_3.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Pt Ref Price Waiver Flag: Alpha
  index, pt_ref_price_waiver_flag = lseg_turquoise_replay_gtp_v26_3.pt_ref_price_waiver_flag.dissect(buffer, index, packet, parent)

  -- Trading System: Alpha
  index, trading_system = lseg_turquoise_replay_gtp_v26_3.trading_system.dissect(buffer, index, packet, parent)

  -- Market Closing Price Flag: Alpha
  index, market_closing_price_flag = lseg_turquoise_replay_gtp_v26_3.market_closing_price_flag.dissect(buffer, index, packet, parent)

  -- Pt Algo Trade: Alpha
  index, pt_algo_trade = lseg_turquoise_replay_gtp_v26_3.pt_algo_trade.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: Alpha
  index, pt_cancellation_flag = lseg_turquoise_replay_gtp_v26_3.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: Alpha
  index, pt_amendment_flag = lseg_turquoise_replay_gtp_v26_3.pt_amendment_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_turquoise_replay_gtp_v26_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = lseg_turquoise_replay_gtp_v26_3.reserved_3.dissect(buffer, index, packet, parent)

  -- Reserved 20: MiFID Decimal
  index, reserved_20 = lseg_turquoise_replay_gtp_v26_3.reserved_20.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = lseg_turquoise_replay_gtp_v26_3.reserved_4.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Byte
  index, trade_qualifier = lseg_turquoise_replay_gtp_v26_3.trade_qualifier.dissect(buffer, index, packet, parent)

  -- Market Mechanism: Byte
  index, market_mechanism = lseg_turquoise_replay_gtp_v26_3.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Byte
  index, trading_mode = lseg_turquoise_replay_gtp_v26_3.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Byte
  index, transaction_category = lseg_turquoise_replay_gtp_v26_3.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Indicator: Byte
  index, negotiation_indicator = lseg_turquoise_replay_gtp_v26_3.negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Agency Cross Indicator: Byte
  index, agency_cross_indicator = lseg_turquoise_replay_gtp_v26_3.agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Byte
  index, modification_indicator = lseg_turquoise_replay_gtp_v26_3.modification_indicator.dissect(buffer, index, packet, parent)

  -- Reference Price Indicator: Byte
  index, reference_price_indicator = lseg_turquoise_replay_gtp_v26_3.reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend Indicator: Byte
  index, special_dividend_indicator = lseg_turquoise_replay_gtp_v26_3.special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: Byte
  index, off_book_automated_indicator = lseg_turquoise_replay_gtp_v26_3.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Indicator: Byte
  index, price_formation_indicator = lseg_turquoise_replay_gtp_v26_3.price_formation_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Byte
  index, algorithmic_indicator = lseg_turquoise_replay_gtp_v26_3.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: Byte
  index, post_trade_deferral_reason = lseg_turquoise_replay_gtp_v26_3.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Enrichment Type: Byte
  index, deferral_enrichment_type = lseg_turquoise_replay_gtp_v26_3.deferral_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: Byte
  index, duplicative_indicator = lseg_turquoise_replay_gtp_v26_3.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Message
lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.mifid_ii_trade_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Update Message
lseg_turquoise_replay_gtp_v26_3.statistics_update_message = {}

-- Size: Statistics Update Message
lseg_turquoise_replay_gtp_v26_3.statistics_update_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.statistic_type.size + 
  lseg_turquoise_replay_gtp_v26_3.statistic_price.size + 
  lseg_turquoise_replay_gtp_v26_3.statistic_size.size + 
  lseg_turquoise_replay_gtp_v26_3.auction_type.size + 
  lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.auction_info.size + 
  lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.size

-- Display: Statistics Update Message
lseg_turquoise_replay_gtp_v26_3.statistics_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Update Message
lseg_turquoise_replay_gtp_v26_3.statistics_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Statistic Type: UInt16
  index, statistic_type = lseg_turquoise_replay_gtp_v26_3.statistic_type.dissect(buffer, index, packet, parent)

  -- Statistic Price: Price
  index, statistic_price = lseg_turquoise_replay_gtp_v26_3.statistic_price.dissect(buffer, index, packet, parent)

  -- Statistic Size: Size
  index, statistic_size = lseg_turquoise_replay_gtp_v26_3.statistic_size.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_turquoise_replay_gtp_v26_3.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: Size
  index, imbalance_quantity = lseg_turquoise_replay_gtp_v26_3.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Auction Info: Byte
  index, auction_info = lseg_turquoise_replay_gtp_v26_3.auction_info.dissect(buffer, index, packet, parent)

  -- Opening Closing Price Indicator: Byte
  index, opening_closing_price_indicator = lseg_turquoise_replay_gtp_v26_3.opening_closing_price_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Update Message
lseg_turquoise_replay_gtp_v26_3.statistics_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.statistics_update_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.statistics_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.statistics_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.statistics_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
lseg_turquoise_replay_gtp_v26_3.statistics_message = {}

-- Size: Statistics Message
lseg_turquoise_replay_gtp_v26_3.statistics_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.volume.size + 
  lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.size + 
  lseg_turquoise_replay_gtp_v26_3.vwap.size + 
  lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.size + 
  lseg_turquoise_replay_gtp_v26_3.number_of_trades.size + 
  lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.size + 
  lseg_turquoise_replay_gtp_v26_3.turnover.size + 
  lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.size

-- Display: Statistics Message
lseg_turquoise_replay_gtp_v26_3.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
lseg_turquoise_replay_gtp_v26_3.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: Size4
  index, volume = lseg_turquoise_replay_gtp_v26_3.volume.dissect(buffer, index, packet, parent)

  -- Volume Onbook Only: Size4
  index, volume_onbook_only = lseg_turquoise_replay_gtp_v26_3.volume_onbook_only.dissect(buffer, index, packet, parent)

  -- Vwap: Price4
  index, vwap = lseg_turquoise_replay_gtp_v26_3.vwap.dissect(buffer, index, packet, parent)

  -- Vwap Onbook Only: Price4
  index, vwap_onbook_only = lseg_turquoise_replay_gtp_v26_3.vwap_onbook_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: UInt32
  index, number_of_trades = lseg_turquoise_replay_gtp_v26_3.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades Onbook Only: UInt32
  index, number_of_trades_onbook_only = lseg_turquoise_replay_gtp_v26_3.number_of_trades_onbook_only.dissect(buffer, index, packet, parent)

  -- Turnover: Price4
  index, turnover = lseg_turquoise_replay_gtp_v26_3.turnover.dissect(buffer, index, packet, parent)

  -- Turnover Onbook Only: Price4
  index, turnover_onbook_only = lseg_turquoise_replay_gtp_v26_3.turnover_onbook_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
lseg_turquoise_replay_gtp_v26_3.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.statistics_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
lseg_turquoise_replay_gtp_v26_3.trade_flags = {}

-- Size: Trade Flags
lseg_turquoise_replay_gtp_v26_3.trade_flags.size = 1

-- Display: Trade Flags
lseg_turquoise_replay_gtp_v26_3.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Cancellation flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Cancellation"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
lseg_turquoise_replay_gtp_v26_3.trade_flags.bits = function(range, value, packet, parent)

  -- Trade Cancellation: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_cancellation, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_7, range, value)
end

-- Dissect: Trade Flags
lseg_turquoise_replay_gtp_v26_3.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_replay_gtp_v26_3.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_flags, range, display)

  if show.structs then
    lseg_turquoise_replay_gtp_v26_3.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.trade_cross_message = {}

-- Size: Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.trade_cross_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_time.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.executed_size.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.price_price_8.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_8.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_id.size + 
  lseg_turquoise_replay_gtp_v26_3.cross_id.size + 
  lseg_turquoise_replay_gtp_v26_3.cross_type.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_flags.size

-- Display: Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.trade_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.trade_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: Size
  index, executed_size = lseg_turquoise_replay_gtp_v26_3.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = lseg_turquoise_replay_gtp_v26_3.price_price_8.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_turquoise_replay_gtp_v26_3.reserved_8.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = lseg_turquoise_replay_gtp_v26_3.trade_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Alpha
  index, cross_id = lseg_turquoise_replay_gtp_v26_3.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = lseg_turquoise_replay_gtp_v26_3.cross_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 2 fields
  index, trade_flags = lseg_turquoise_replay_gtp_v26_3.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cross Message
lseg_turquoise_replay_gtp_v26_3.trade_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_cross_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.trade_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.trade_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.trade_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
lseg_turquoise_replay_gtp_v26_3.trade_message = {}

-- Size: Trade Message
lseg_turquoise_replay_gtp_v26_3.trade_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_time.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.executed_size.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.price_price_8.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_8.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_id.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_type.size + 
  lseg_turquoise_replay_gtp_v26_3.auction_type.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_flags.size + 
  lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.size + 
  lseg_turquoise_replay_gtp_v26_3.trade_qualifier.size

-- Display: Trade Message
lseg_turquoise_replay_gtp_v26_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_turquoise_replay_gtp_v26_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: Size
  index, executed_size = lseg_turquoise_replay_gtp_v26_3.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = lseg_turquoise_replay_gtp_v26_3.price_price_8.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_turquoise_replay_gtp_v26_3.reserved_8.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = lseg_turquoise_replay_gtp_v26_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Type: UInt8
  index, trade_type = lseg_turquoise_replay_gtp_v26_3.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_turquoise_replay_gtp_v26_3.auction_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 2 fields
  index, trade_flags = lseg_turquoise_replay_gtp_v26_3.trade_flags.dissect(buffer, index, packet, parent)

  -- Hidden Execution Indicator: UInt8
  index, hidden_execution_indicator = lseg_turquoise_replay_gtp_v26_3.hidden_execution_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Byte
  index, trade_qualifier = lseg_turquoise_replay_gtp_v26_3.trade_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_turquoise_replay_gtp_v26_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.trade_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lseg_turquoise_replay_gtp_v26_3.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_type.size

-- Display: Order Book Clear Message
lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Flags
lseg_turquoise_replay_gtp_v26_3.top_of_book_flags = {}

-- Size: Top Of Book Flags
lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.size = 1

-- Display: Top Of Book Flags
lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bid Depth flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Bid Depth"
  end
  -- Is Offer Depth flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Offer Depth"
  end
  -- Is Retail Lp flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Retail Lp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Top Of Book Flags
lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.bits = function(range, value, packet, parent)

  -- Bid Depth: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.bid_depth, range, value)

  -- Offer Depth: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.offer_depth, range, value)

  -- Retail Lp: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.retail_lp, range, value)

  -- Reserved: 5 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.reserved, range, value)
end

-- Dissect: Top Of Book Flags
lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.top_of_book_flags, range, display)

  if show.structs then
    lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Top Of Book Message
lseg_turquoise_replay_gtp_v26_3.top_of_book_message = {}

-- Size: Top Of Book Message
lseg_turquoise_replay_gtp_v26_3.top_of_book_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.bid_market_size.size + 
  lseg_turquoise_replay_gtp_v26_3.bid_limit_price.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_8.size + 
  lseg_turquoise_replay_gtp_v26_3.bid_limit_size.size + 
  lseg_turquoise_replay_gtp_v26_3.offer_market_size.size + 
  lseg_turquoise_replay_gtp_v26_3.offer_limit_price.size + 
  lseg_turquoise_replay_gtp_v26_3.second_reserved_8.size + 
  lseg_turquoise_replay_gtp_v26_3.offer_limit_size.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_type.size + 
  lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.size

-- Display: Top Of Book Message
lseg_turquoise_replay_gtp_v26_3.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
lseg_turquoise_replay_gtp_v26_3.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Bid Market Size: Size
  index, bid_market_size = lseg_turquoise_replay_gtp_v26_3.bid_market_size.dissect(buffer, index, packet, parent)

  -- Bid Limit Price: Price
  index, bid_limit_price = lseg_turquoise_replay_gtp_v26_3.bid_limit_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_turquoise_replay_gtp_v26_3.reserved_8.dissect(buffer, index, packet, parent)

  -- Bid Limit Size: Size
  index, bid_limit_size = lseg_turquoise_replay_gtp_v26_3.bid_limit_size.dissect(buffer, index, packet, parent)

  -- Offer Market Size: Size
  index, offer_market_size = lseg_turquoise_replay_gtp_v26_3.offer_market_size.dissect(buffer, index, packet, parent)

  -- Offer Limit Price: Price
  index, offer_limit_price = lseg_turquoise_replay_gtp_v26_3.offer_limit_price.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Price
  index, second_reserved_8 = lseg_turquoise_replay_gtp_v26_3.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Offer Limit Size: Size
  index, offer_limit_size = lseg_turquoise_replay_gtp_v26_3.offer_limit_size.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  -- Top Of Book Flags: Struct of 4 fields
  index, top_of_book_flags = lseg_turquoise_replay_gtp_v26_3.top_of_book_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
lseg_turquoise_replay_gtp_v26_3.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.top_of_book_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
lseg_turquoise_replay_gtp_v26_3.delete_order_message = {}

-- Size: Delete Order Message
lseg_turquoise_replay_gtp_v26_3.delete_order_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.order_id.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.side.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_type.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.previous_price.size + 
  lseg_turquoise_replay_gtp_v26_3.previous_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_time.size

-- Display: Delete Order Message
lseg_turquoise_replay_gtp_v26_3.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
lseg_turquoise_replay_gtp_v26_3.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_turquoise_replay_gtp_v26_3.order_id.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_turquoise_replay_gtp_v26_3.side.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Previous Price: Price
  index, previous_price = lseg_turquoise_replay_gtp_v26_3.previous_price.dissect(buffer, index, packet, parent)

  -- Previous Quantity: Size
  index, previous_quantity = lseg_turquoise_replay_gtp_v26_3.previous_quantity.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
lseg_turquoise_replay_gtp_v26_3.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.delete_order_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Flags
lseg_turquoise_replay_gtp_v26_3.order_modify_flags = {}

-- Size: Order Modify Flags
lseg_turquoise_replay_gtp_v26_3.order_modify_flags.size = 1

-- Display: Order Modify Flags
lseg_turquoise_replay_gtp_v26_3.order_modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Priority flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modify Flags
lseg_turquoise_replay_gtp_v26_3.order_modify_flags.bits = function(range, value, packet, parent)

  -- Priority: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.priority, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_7, range, value)
end

-- Dissect: Order Modify Flags
lseg_turquoise_replay_gtp_v26_3.order_modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_replay_gtp_v26_3.order_modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.order_modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.order_modify_flags, range, display)

  if show.structs then
    lseg_turquoise_replay_gtp_v26_3.order_modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
lseg_turquoise_replay_gtp_v26_3.modify_order_message = {}

-- Size: Modify Order Message
lseg_turquoise_replay_gtp_v26_3.modify_order_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.order_id.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.side.size + 
  lseg_turquoise_replay_gtp_v26_3.order_modify_flags.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_type.size + 
  lseg_turquoise_replay_gtp_v26_3.new_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.new_price.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_8.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.previous_price.size + 
  lseg_turquoise_replay_gtp_v26_3.previous_quantity.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_time.size

-- Display: Modify Order Message
lseg_turquoise_replay_gtp_v26_3.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
lseg_turquoise_replay_gtp_v26_3.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_turquoise_replay_gtp_v26_3.order_id.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_turquoise_replay_gtp_v26_3.side.dissect(buffer, index, packet, parent)

  -- Order Modify Flags: Struct of 2 fields
  index, order_modify_flags = lseg_turquoise_replay_gtp_v26_3.order_modify_flags.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  -- New Quantity: Size
  index, new_quantity = lseg_turquoise_replay_gtp_v26_3.new_quantity.dissect(buffer, index, packet, parent)

  -- New Price: Price
  index, new_price = lseg_turquoise_replay_gtp_v26_3.new_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  index, reserved_8 = lseg_turquoise_replay_gtp_v26_3.reserved_8.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Previous Price: Price
  index, previous_price = lseg_turquoise_replay_gtp_v26_3.previous_price.dissect(buffer, index, packet, parent)

  -- Previous Quantity: Size
  index, previous_quantity = lseg_turquoise_replay_gtp_v26_3.previous_quantity.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
lseg_turquoise_replay_gtp_v26_3.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.modify_order_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Incremental Message
lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message = {}

-- Size: Add Order Incremental Message
lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.order_id.size + 
  lseg_turquoise_replay_gtp_v26_3.side.size + 
  lseg_turquoise_replay_gtp_v26_3.size.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.price_price_8.size + 
  lseg_turquoise_replay_gtp_v26_3.transaction_time.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_type.size + 
  lseg_turquoise_replay_gtp_v26_3.participant.size + 
  lseg_turquoise_replay_gtp_v26_3.order_type.size + 
  lseg_turquoise_replay_gtp_v26_3.rfq_id.size

-- Display: Add Order Incremental Message
lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Incremental Message
lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_turquoise_replay_gtp_v26_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_turquoise_replay_gtp_v26_3.side.dissect(buffer, index, packet, parent)

  -- Size: Size
  index, size = lseg_turquoise_replay_gtp_v26_3.size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price
  index, price_price_8 = lseg_turquoise_replay_gtp_v26_3.price_price_8.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_turquoise_replay_gtp_v26_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  -- Participant: Alpha
  index, participant = lseg_turquoise_replay_gtp_v26_3.participant.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = lseg_turquoise_replay_gtp_v26_3.order_type.dissect(buffer, index, packet, parent)

  -- Rfq Id: Alpha
  index, rfq_id = lseg_turquoise_replay_gtp_v26_3.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Incremental Message
lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.add_order_incremental_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_turquoise_replay_gtp_v26_3.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_turquoise_replay_gtp_v26_3.instrument_status_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_status.size + 
  lseg_turquoise_replay_gtp_v26_3.session_change_reason.size + 
  lseg_turquoise_replay_gtp_v26_3.new_end_time.size + 
  lseg_turquoise_replay_gtp_v26_3.order_book_type.size

-- Display: Instrument Status Message
lseg_turquoise_replay_gtp_v26_3.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_replay_gtp_v26_3.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_turquoise_replay_gtp_v26_3.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_turquoise_replay_gtp_v26_3.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_turquoise_replay_gtp_v26_3.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_turquoise_replay_gtp_v26_3.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_replay_gtp_v26_3.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Allowed Book Types
lseg_turquoise_replay_gtp_v26_3.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_turquoise_replay_gtp_v26_3.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_turquoise_replay_gtp_v26_3.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Electronic Order Book flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Electronic Order Book"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_replay_gtp_v26_3.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_3, range, value)

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.electronic_order_book, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.unused_4, range, value)
end

-- Dissect: Allowed Book Types
lseg_turquoise_replay_gtp_v26_3.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_replay_gtp_v26_3.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_replay_gtp_v26_3.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_turquoise_replay_gtp_v26_3.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Message
lseg_turquoise_replay_gtp_v26_3.instrument_directory_message = {}

-- Size: Instrument Directory Message
lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.instrument.size + 
  lseg_turquoise_replay_gtp_v26_3.isin.size + 
  lseg_turquoise_replay_gtp_v26_3.allowed_book_types.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size + 
  lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.size + 
  lseg_turquoise_replay_gtp_v26_3.tick_id.size + 
  lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.size + 
  lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.size + 
  lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.size + 
  lseg_turquoise_replay_gtp_v26_3.segment.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_23.size + 
  lseg_turquoise_replay_gtp_v26_3.currency.size + 
  lseg_turquoise_replay_gtp_v26_3.reserved_38.size

-- Display: Instrument Directory Message
lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_turquoise_replay_gtp_v26_3.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_turquoise_replay_gtp_v26_3.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_replay_gtp_v26_3.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_turquoise_replay_gtp_v26_3.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_turquoise_replay_gtp_v26_3.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: Price
  index, price_band_tolerances = lseg_turquoise_replay_gtp_v26_3.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_replay_gtp_v26_3.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_turquoise_replay_gtp_v26_3.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_turquoise_replay_gtp_v26_3.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: Alpha
  index, reserved_23 = lseg_turquoise_replay_gtp_v26_3.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_turquoise_replay_gtp_v26_3.currency.dissect(buffer, index, packet, parent)

  -- Reserved 38: Byte
  index, reserved_38 = lseg_turquoise_replay_gtp_v26_3.reserved_38.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_turquoise_replay_gtp_v26_3.system_event_message = {}

-- Size: System Event Message
lseg_turquoise_replay_gtp_v26_3.system_event_message.size =
  lseg_turquoise_replay_gtp_v26_3.timestamp.size + 
  lseg_turquoise_replay_gtp_v26_3.event_code.size + 
  lseg_turquoise_replay_gtp_v26_3.source_venue.size

-- Display: System Event Message
lseg_turquoise_replay_gtp_v26_3.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_replay_gtp_v26_3.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_turquoise_replay_gtp_v26_3.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_turquoise_replay_gtp_v26_3.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_turquoise_replay_gtp_v26_3.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_replay_gtp_v26_3.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.system_event_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay And Recovery Complete Message
lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message = {}

-- Size: Replay And Recovery Complete Message
lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.size =
  lseg_turquoise_replay_gtp_v26_3.request_id.size + 
  lseg_turquoise_replay_gtp_v26_3.trading_status.size

-- Display: Replay And Recovery Complete Message
lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay And Recovery Complete Message
lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: UInt32
  index, request_id = lseg_turquoise_replay_gtp_v26_3.request_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_turquoise_replay_gtp_v26_3.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay And Recovery Complete Message
lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_and_recovery_complete_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Response Message
lseg_turquoise_replay_gtp_v26_3.replay_response_message = {}

-- Size: Replay Response Message
lseg_turquoise_replay_gtp_v26_3.replay_response_message.size =
  lseg_turquoise_replay_gtp_v26_3.first_message.size + 
  lseg_turquoise_replay_gtp_v26_3.count.size + 
  lseg_turquoise_replay_gtp_v26_3.replay_status.size + 
  lseg_turquoise_replay_gtp_v26_3.request_id.size

-- Display: Replay Response Message
lseg_turquoise_replay_gtp_v26_3.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
lseg_turquoise_replay_gtp_v26_3.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- First Message: UInt32
  index, first_message = lseg_turquoise_replay_gtp_v26_3.first_message.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_turquoise_replay_gtp_v26_3.count.dissect(buffer, index, packet, parent)

  -- Replay Status: Byte
  index, replay_status = lseg_turquoise_replay_gtp_v26_3.replay_status.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_turquoise_replay_gtp_v26_3.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
lseg_turquoise_replay_gtp_v26_3.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_response_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
lseg_turquoise_replay_gtp_v26_3.login_response_message = {}

-- Size: Login Response Message
lseg_turquoise_replay_gtp_v26_3.login_response_message.size =
  lseg_turquoise_replay_gtp_v26_3.login_status.size

-- Display: Login Response Message
lseg_turquoise_replay_gtp_v26_3.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
lseg_turquoise_replay_gtp_v26_3.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: Byte
  index, login_status = lseg_turquoise_replay_gtp_v26_3.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
lseg_turquoise_replay_gtp_v26_3.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.login_response_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
lseg_turquoise_replay_gtp_v26_3.replay_request_message = {}

-- Size: Replay Request Message
lseg_turquoise_replay_gtp_v26_3.replay_request_message.size =
  lseg_turquoise_replay_gtp_v26_3.first_message.size + 
  lseg_turquoise_replay_gtp_v26_3.count.size + 
  lseg_turquoise_replay_gtp_v26_3.request_id.size

-- Display: Replay Request Message
lseg_turquoise_replay_gtp_v26_3.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
lseg_turquoise_replay_gtp_v26_3.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- First Message: UInt32
  index, first_message = lseg_turquoise_replay_gtp_v26_3.first_message.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_turquoise_replay_gtp_v26_3.count.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_turquoise_replay_gtp_v26_3.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
lseg_turquoise_replay_gtp_v26_3.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.replay_request_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
lseg_turquoise_replay_gtp_v26_3.login_request_message = {}

-- Size: Login Request Message
lseg_turquoise_replay_gtp_v26_3.login_request_message.size =
  lseg_turquoise_replay_gtp_v26_3.username.size

-- Display: Login Request Message
lseg_turquoise_replay_gtp_v26_3.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
lseg_turquoise_replay_gtp_v26_3.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = lseg_turquoise_replay_gtp_v26_3.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
lseg_turquoise_replay_gtp_v26_3.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.login_request_message, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_replay_gtp_v26_3.payload = {}

-- Dissect: Payload
lseg_turquoise_replay_gtp_v26_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return lseg_turquoise_replay_gtp_v26_3.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 0x03 then
    return lseg_turquoise_replay_gtp_v26_3.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return lseg_turquoise_replay_gtp_v26_3.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Response Message
  if message_type == 0x04 then
    return lseg_turquoise_replay_gtp_v26_3.replay_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay And Recovery Complete Message
  if message_type == 0x83 then
    return lseg_turquoise_replay_gtp_v26_3.replay_and_recovery_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_replay_gtp_v26_3.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_replay_gtp_v26_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_replay_gtp_v26_3.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Incremental Message
  if message_type == 0x46 then
    return lseg_turquoise_replay_gtp_v26_3.add_order_incremental_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x55 then
    return lseg_turquoise_replay_gtp_v26_3.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x44 then
    return lseg_turquoise_replay_gtp_v26_3.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x69 then
    return lseg_turquoise_replay_gtp_v26_3.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_turquoise_replay_gtp_v26_3.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_turquoise_replay_gtp_v26_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cross Message
  if message_type == 0x71 then
    return lseg_turquoise_replay_gtp_v26_3.trade_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return lseg_turquoise_replay_gtp_v26_3.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Update Message
  if message_type == 0x6A then
    return lseg_turquoise_replay_gtp_v26_3.statistics_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Message
  if message_type == 0x51 then
    return lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Cross Message
  if message_type == 0x56 then
    return lseg_turquoise_replay_gtp_v26_3.mifid_ii_trade_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Summary Message
  if message_type == 0x57 then
    return lseg_turquoise_replay_gtp_v26_3.trade_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Analytics Message
  if message_type == 0x61 then
    return lseg_turquoise_replay_gtp_v26_3.analytics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Order Book Update Message
  if message_type == 0x62 then
    return lseg_turquoise_replay_gtp_v26_3.mifid_ii_order_book_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_turquoise_replay_gtp_v26_3.message_header = {}

-- Size: Message Header
lseg_turquoise_replay_gtp_v26_3.message_header.size =
  lseg_turquoise_replay_gtp_v26_3.message_length.size + 
  lseg_turquoise_replay_gtp_v26_3.message_type.size

-- Display: Message Header
lseg_turquoise_replay_gtp_v26_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_replay_gtp_v26_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_replay_gtp_v26_3.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, message_type = lseg_turquoise_replay_gtp_v26_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_replay_gtp_v26_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_replay_gtp_v26_3.message = {}

-- Display: Message
lseg_turquoise_replay_gtp_v26_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_replay_gtp_v26_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_replay_gtp_v26_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 22 branches
  index = lseg_turquoise_replay_gtp_v26_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_replay_gtp_v26_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.message, buffer(offset, 0))
    local current = lseg_turquoise_replay_gtp_v26_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_turquoise_replay_gtp_v26_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_turquoise_replay_gtp_v26_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_turquoise_replay_gtp_v26_3.unit_header = {}

-- Size: Unit Header
lseg_turquoise_replay_gtp_v26_3.unit_header.size =
  lseg_turquoise_replay_gtp_v26_3.length.size + 
  lseg_turquoise_replay_gtp_v26_3.message_count.size + 
  lseg_turquoise_replay_gtp_v26_3.market_data_group.size + 
  lseg_turquoise_replay_gtp_v26_3.sequence_number.size

-- Display: Unit Header
lseg_turquoise_replay_gtp_v26_3.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_replay_gtp_v26_3.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_replay_gtp_v26_3.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_replay_gtp_v26_3.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_replay_gtp_v26_3.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_replay_gtp_v26_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_replay_gtp_v26_3.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_replay_gtp_v26_3.fields.unit_header, buffer(offset, 0))
    local index = lseg_turquoise_replay_gtp_v26_3.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_replay_gtp_v26_3.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_replay_gtp_v26_3.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_turquoise_replay_gtp_v26_3.packet = {}

-- Verify required size of Tcp packet
lseg_turquoise_replay_gtp_v26_3.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_turquoise_replay_gtp_v26_3.unit_header.size
end

-- Dissect Packet
lseg_turquoise_replay_gtp_v26_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_replay_gtp_v26_3.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_turquoise_replay_gtp_v26_3.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_turquoise_replay_gtp_v26_3.init()
end

-- Dissector for Lseg Turquoise Replay Gtp 26.3
function omi_lseg_turquoise_replay_gtp_v26_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_replay_gtp_v26_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_replay_gtp_v26_3, buffer(), omi_lseg_turquoise_replay_gtp_v26_3.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_replay_gtp_v26_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Turquoise Replay Gtp 26.3 (Tcp)
local function omi_lseg_turquoise_replay_gtp_v26_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_replay_gtp_v26_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_replay_gtp_v26_3
  omi_lseg_turquoise_replay_gtp_v26_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Replay Gtp 26.3
omi_lseg_turquoise_replay_gtp_v26_3:register_heuristic("tcp", omi_lseg_turquoise_replay_gtp_v26_3_tcp_heuristic)

-- Register Lseg Turquoise Replay Gtp 26.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_turquoise_replay_gtp_v26_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 26.3
--   Date: Tuesday, March 3, 2026
--   Specification: gtp-002-technical-guide-turquoise-issue-26-3.pdf
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
