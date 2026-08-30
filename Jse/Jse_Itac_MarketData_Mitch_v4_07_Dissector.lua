-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jse Itac MarketData Mitch 4.07 Protocol
local omi_jse_itac_marketdata_mitch_v4_07 = Proto("Omi.Jse.Itac.MarketData.Mitch.v4.07", "Jse Itac MarketData Mitch 4.07")

-- Protocol table
local jse_itac_marketdata_mitch_v4_07 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jse Itac MarketData Mitch 4.07 Fields
omi_jse_itac_marketdata_mitch_v4_07.fields.action = ProtoField.new("Action", "jse.itac.marketdata.mitch.v4.07.action", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.action_type = ProtoField.new("Action Type", "jse.itac.marketdata.mitch.v4.07.actiontype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.add_attributed_order_flags = ProtoField.new("Add Attributed Order Flags", "jse.itac.marketdata.mitch.v4.07.addattributedorderflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.add_order_flags = ProtoField.new("Add Order Flags", "jse.itac.marketdata.mitch.v4.07.addorderflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.attribution = ProtoField.new("Attribution", "jse.itac.marketdata.mitch.v4.07.attribution", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.auction_type = ProtoField.new("Auction Type", "jse.itac.marketdata.mitch.v4.07.auctiontype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.book_type_byte_1 = ProtoField.new("Book Type Byte 1", "jse.itac.marketdata.mitch.v4.07.booktypebyte1", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.book_type_u_int_81 = ProtoField.new("Book Type U Int 81", "jse.itac.marketdata.mitch.v4.07.booktypeuint81", ftypes.UINT8)
omi_jse_itac_marketdata_mitch_v4_07.fields.bulletin_board = ProtoField.new("Bulletin Board", "jse.itac.marketdata.mitch.v4.07.bulletinboard", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_jse_itac_marketdata_mitch_v4_07.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "jse.itac.marketdata.mitch.v4.07.contractmultiplier", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.corporate_action = ProtoField.new("Corporate Action", "jse.itac.marketdata.mitch.v4.07.corporateaction", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.count = ProtoField.new("Count", "jse.itac.marketdata.mitch.v4.07.count", ftypes.UINT16)
omi_jse_itac_marketdata_mitch_v4_07.fields.coupon = ProtoField.new("Coupon", "jse.itac.marketdata.mitch.v4.07.coupon", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.crossed_order = ProtoField.new("Crossed Order", "jse.itac.marketdata.mitch.v4.07.crossedorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_jse_itac_marketdata_mitch_v4_07.fields.crossed_order_trade = ProtoField.new("Crossed Order Trade", "jse.itac.marketdata.mitch.v4.07.crossedordertrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_jse_itac_marketdata_mitch_v4_07.fields.delta = ProtoField.new("Delta", "jse.itac.marketdata.mitch.v4.07.delta", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.display_quantity = ProtoField.new("Display Quantity", "jse.itac.marketdata.mitch.v4.07.displayquantity", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.event_code = ProtoField.new("Event Code", "jse.itac.marketdata.mitch.v4.07.eventcode", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.executed_quantity = ProtoField.new("Executed Quantity", "jse.itac.marketdata.mitch.v4.07.executedquantity", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.exercise_style = ProtoField.new("Exercise Style", "jse.itac.marketdata.mitch.v4.07.exercisestyle", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.expiration_date = ProtoField.new("Expiration Date", "jse.itac.marketdata.mitch.v4.07.expirationdate", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.first_message = ProtoField.new("First Message", "jse.itac.marketdata.mitch.v4.07.firstmessage", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.fx_auction = ProtoField.new("Fx Auction", "jse.itac.marketdata.mitch.v4.07.fxauction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_jse_itac_marketdata_mitch_v4_07.fields.fx_auction_trade = ProtoField.new("Fx Auction Trade", "jse.itac.marketdata.mitch.v4.07.fxauctiontrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_jse_itac_marketdata_mitch_v4_07.fields.gamma = ProtoField.new("Gamma", "jse.itac.marketdata.mitch.v4.07.gamma", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.headline = ProtoField.new("Headline", "jse.itac.marketdata.mitch.v4.07.headline", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.high_price = ProtoField.new("High Price", "jse.itac.marketdata.mitch.v4.07.highprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "jse.itac.marketdata.mitch.v4.07.imbalancedirection", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.indicative_bid_price = ProtoField.new("Indicative Bid Price", "jse.itac.marketdata.mitch.v4.07.indicativebidprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.indicative_offer_price = ProtoField.new("Indicative Offer Price", "jse.itac.marketdata.mitch.v4.07.indicativeofferprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.instrument_id = ProtoField.new("Instrument Id", "jse.itac.marketdata.mitch.v4.07.instrumentid", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.instrument_sub_category = ProtoField.new("Instrument Sub Category", "jse.itac.marketdata.mitch.v4.07.instrumentsubcategory", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.instruments = ProtoField.new("Instruments", "jse.itac.marketdata.mitch.v4.07.instruments", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.inverse_order_book = ProtoField.new("Inverse Order Book", "jse.itac.marketdata.mitch.v4.07.inverseorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_jse_itac_marketdata_mitch_v4_07.fields.isin = ProtoField.new("Isin", "jse.itac.marketdata.mitch.v4.07.isin", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.issue_date = ProtoField.new("Issue Date", "jse.itac.marketdata.mitch.v4.07.issuedate", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.issuer = ProtoField.new("Issuer", "jse.itac.marketdata.mitch.v4.07.issuer", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.last_opt_px = ProtoField.new("Last Opt Px", "jse.itac.marketdata.mitch.v4.07.lastoptpx", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "jse.itac.marketdata.mitch.v4.07.leg1symbol", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "jse.itac.marketdata.mitch.v4.07.leg2symbol", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.length = ProtoField.new("Length", "jse.itac.marketdata.mitch.v4.07.length", ftypes.UINT16)
omi_jse_itac_marketdata_mitch_v4_07.fields.low_price = ProtoField.new("Low Price", "jse.itac.marketdata.mitch.v4.07.lowprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.market_data_group = ProtoField.new("Market Data Group", "jse.itac.marketdata.mitch.v4.07.marketdatagroup", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.market_order = ProtoField.new("Market Order", "jse.itac.marketdata.mitch.v4.07.marketorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_jse_itac_marketdata_mitch_v4_07.fields.market_order_quantity = ProtoField.new("Market Order Quantity", "jse.itac.marketdata.mitch.v4.07.marketorderquantity", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.message_count = ProtoField.new("Message Count", "jse.itac.marketdata.mitch.v4.07.messagecount", ftypes.UINT8)
omi_jse_itac_marketdata_mitch_v4_07.fields.message_length = ProtoField.new("Message Length", "jse.itac.marketdata.mitch.v4.07.messagelength", ftypes.UINT16)
omi_jse_itac_marketdata_mitch_v4_07.fields.message_type = ProtoField.new("Message Type", "jse.itac.marketdata.mitch.v4.07.messagetype", ftypes.UINT8)
omi_jse_itac_marketdata_mitch_v4_07.fields.nanosecond = ProtoField.new("Nanosecond", "jse.itac.marketdata.mitch.v4.07.nanosecond", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.negotiated_trades = ProtoField.new("Negotiated Trades", "jse.itac.marketdata.mitch.v4.07.negotiatedtrades", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_jse_itac_marketdata_mitch_v4_07.fields.new_end_time = ProtoField.new("New End Time", "jse.itac.marketdata.mitch.v4.07.newendtime", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.new_price = ProtoField.new("New Price", "jse.itac.marketdata.mitch.v4.07.newprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.new_quantity = ProtoField.new("New Quantity", "jse.itac.marketdata.mitch.v4.07.newquantity", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.notional_delta_exposure = ProtoField.new("Notional Delta Exposure", "jse.itac.marketdata.mitch.v4.07.notionaldeltaexposure", ftypes.DOUBLE)
omi_jse_itac_marketdata_mitch_v4_07.fields.notional_exposure = ProtoField.new("Notional Exposure", "jse.itac.marketdata.mitch.v4.07.notionalexposure", ftypes.DOUBLE)
omi_jse_itac_marketdata_mitch_v4_07.fields.number_of_trades = ProtoField.new("Number Of Trades", "jse.itac.marketdata.mitch.v4.07.numberoftrades", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.off_book = ProtoField.new("Off Book", "jse.itac.marketdata.mitch.v4.07.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_jse_itac_marketdata_mitch_v4_07.fields.off_book_rfq_trade_type = ProtoField.new("Off Book Rfq Trade Type", "jse.itac.marketdata.mitch.v4.07.offbookrfqtradetype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.off_book_trade_type = ProtoField.new("Off Book Trade Type", "jse.itac.marketdata.mitch.v4.07.offbooktradetype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "jse.itac.marketdata.mitch.v4.07.opencloseindicator", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.open_interest = ProtoField.new("Open Interest", "jse.itac.marketdata.mitch.v4.07.openinterest", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.option_type = ProtoField.new("Option Type", "jse.itac.marketdata.mitch.v4.07.optiontype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_count = ProtoField.new("Order Count", "jse.itac.marketdata.mitch.v4.07.ordercount", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_id = ProtoField.new("Order Id", "jse.itac.marketdata.mitch.v4.07.orderid", ftypes.UINT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_modified_flags = ProtoField.new("Order Modified Flags", "jse.itac.marketdata.mitch.v4.07.ordermodifiedflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.paired_quantity = ProtoField.new("Paired Quantity", "jse.itac.marketdata.mitch.v4.07.pairedquantity", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.password = ProtoField.new("Password", "jse.itac.marketdata.mitch.v4.07.password", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.previous_close_price = ProtoField.new("Previous Close Price", "jse.itac.marketdata.mitch.v4.07.previouscloseprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.price = ProtoField.new("Price", "jse.itac.marketdata.mitch.v4.07.price", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.printable = ProtoField.new("Printable", "jse.itac.marketdata.mitch.v4.07.printable", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.priority_flag = ProtoField.new("Priority Flag", "jse.itac.marketdata.mitch.v4.07.priorityflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_jse_itac_marketdata_mitch_v4_07.fields.pt_amendment_flag = ProtoField.new("Pt Amendment Flag", "jse.itac.marketdata.mitch.v4.07.ptamendmentflag", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.pt_cancellation_flag = ProtoField.new("Pt Cancellation Flag", "jse.itac.marketdata.mitch.v4.07.ptcancellationflag", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.quantity = ProtoField.new("Quantity", "jse.itac.marketdata.mitch.v4.07.quantity", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.reason = ProtoField.new("Reason", "jse.itac.marketdata.mitch.v4.07.reason", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.recover_from_time = ProtoField.new("Recover From Time", "jse.itac.marketdata.mitch.v4.07.recoverfromtime", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.recovery_trade_flags = ProtoField.new("Recovery Trade Flags", "jse.itac.marketdata.mitch.v4.07.recoverytradeflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.regular = ProtoField.new("Regular", "jse.itac.marketdata.mitch.v4.07.regular", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_jse_itac_marketdata_mitch_v4_07.fields.request_id = ProtoField.new("Request Id", "jse.itac.marketdata.mitch.v4.07.requestid", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.reserve_field = ProtoField.new("Reserve Field", "jse.itac.marketdata.mitch.v4.07.reservefield", ftypes.UINT16)
omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_2 = ProtoField.new("Reserved 2", "jse.itac.marketdata.mitch.v4.07.reserved2", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_4 = ProtoField.new("Reserved 4", "jse.itac.marketdata.mitch.v4.07.reserved4", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_8 = ProtoField.new("Reserved 8", "jse.itac.marketdata.mitch.v4.07.reserved8", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_a = ProtoField.new("Reserved A", "jse.itac.marketdata.mitch.v4.07.reserveda", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_b = ProtoField.new("Reserved B", "jse.itac.marketdata.mitch.v4.07.reservedb", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.rfq_id = ProtoField.new("Rfq Id", "jse.itac.marketdata.mitch.v4.07.rfqid", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.rho = ProtoField.new("Rho", "jse.itac.marketdata.mitch.v4.07.rho", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.seconds = ProtoField.new("Seconds", "jse.itac.marketdata.mitch.v4.07.seconds", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.segment = ProtoField.new("Segment", "jse.itac.marketdata.mitch.v4.07.segment", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.sequence_number = ProtoField.new("Sequence Number", "jse.itac.marketdata.mitch.v4.07.sequencenumber", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.session_change_reason = ProtoField.new("Session Change Reason", "jse.itac.marketdata.mitch.v4.07.sessionchangereason", ftypes.UINT8)
omi_jse_itac_marketdata_mitch_v4_07.fields.settlement_method = ProtoField.new("Settlement Method", "jse.itac.marketdata.mitch.v4.07.settlementmethod", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.side = ProtoField.new("Side", "jse.itac.marketdata.mitch.v4.07.side", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_type = ProtoField.new("Snapshot Type", "jse.itac.marketdata.mitch.v4.07.snapshottype", ftypes.UINT8)
omi_jse_itac_marketdata_mitch_v4_07.fields.splits = ProtoField.new("Splits", "jse.itac.marketdata.mitch.v4.07.splits", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.statistic_type = ProtoField.new("Statistic Type", "jse.itac.marketdata.mitch.v4.07.statistictype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.status = ProtoField.new("Status", "jse.itac.marketdata.mitch.v4.07.status", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.strike_price = ProtoField.new("Strike Price", "jse.itac.marketdata.mitch.v4.07.strikeprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.sub_book = ProtoField.new("Sub Book", "jse.itac.marketdata.mitch.v4.07.subbook", ftypes.UINT8)
omi_jse_itac_marketdata_mitch_v4_07.fields.sub_book_flags = ProtoField.new("Sub Book Flags", "jse.itac.marketdata.mitch.v4.07.subbookflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.symbol = ProtoField.new("Symbol", "jse.itac.marketdata.mitch.v4.07.symbol", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_directory_flags = ProtoField.new("Symbol Directory Flags", "jse.itac.marketdata.mitch.v4.07.symboldirectoryflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_status = ProtoField.new("Symbol Status", "jse.itac.marketdata.mitch.v4.07.symbolstatus", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_status_flags = ProtoField.new("Symbol Status Flags", "jse.itac.marketdata.mitch.v4.07.symbolstatusflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.text = ProtoField.new("Text", "jse.itac.marketdata.mitch.v4.07.text", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.theoretical_price = ProtoField.new("Theoretical Price", "jse.itac.marketdata.mitch.v4.07.theoreticalprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.theta = ProtoField.new("Theta", "jse.itac.marketdata.mitch.v4.07.theta", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.tidm = ProtoField.new("Tidm", "jse.itac.marketdata.mitch.v4.07.tidm", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.time = ProtoField.new("Time", "jse.itac.marketdata.mitch.v4.07.time", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_condition_flag = ProtoField.new("Trade Condition Flag", "jse.itac.marketdata.mitch.v4.07.tradeconditionflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_date = ProtoField.new("Trade Date", "jse.itac.marketdata.mitch.v4.07.tradedate", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_flags = ProtoField.new("Trade Flags", "jse.itac.marketdata.mitch.v4.07.tradeflags", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_id = ProtoField.new("Trade Id", "jse.itac.marketdata.mitch.v4.07.tradeid", ftypes.UINT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_sub_type = ProtoField.new("Trade Sub Type", "jse.itac.marketdata.mitch.v4.07.tradesubtype", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_time = ProtoField.new("Trade Time", "jse.itac.marketdata.mitch.v4.07.tradetime", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.trading_status = ProtoField.new("Trading Status", "jse.itac.marketdata.mitch.v4.07.tradingstatus", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.turnover = ProtoField.new("Turnover", "jse.itac.marketdata.mitch.v4.07.turnover", ftypes.DOUBLE)
omi_jse_itac_marketdata_mitch_v4_07.fields.underlying = ProtoField.new("Underlying", "jse.itac.marketdata.mitch.v4.07.underlying", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.underlying_reference_price = ProtoField.new("Underlying Reference Price", "jse.itac.marketdata.mitch.v4.07.underlyingreferenceprice", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.underlyings = ProtoField.new("Underlyings", "jse.itac.marketdata.mitch.v4.07.underlyings", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_2 = ProtoField.new("Unused 2", "jse.itac.marketdata.mitch.v4.07.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_3 = ProtoField.new("Unused 3", "jse.itac.marketdata.mitch.v4.07.unused3", ftypes.UINT8, nil, base.DEC, 0x1C)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_4 = ProtoField.new("Unused 4", "jse.itac.marketdata.mitch.v4.07.unused4", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_5 = ProtoField.new("Unused 5", "jse.itac.marketdata.mitch.v4.07.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_6 = ProtoField.new("Unused 6", "jse.itac.marketdata.mitch.v4.07.unused6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_7 = ProtoField.new("Unused 7", "jse.itac.marketdata.mitch.v4.07.unused7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_jse_itac_marketdata_mitch_v4_07.fields.unused_8 = ProtoField.new("Unused 8", "jse.itac.marketdata.mitch.v4.07.unused8", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_jse_itac_marketdata_mitch_v4_07.fields.urgency = ProtoField.new("Urgency", "jse.itac.marketdata.mitch.v4.07.urgency", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.username = ProtoField.new("Username", "jse.itac.marketdata.mitch.v4.07.username", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.vega = ProtoField.new("Vega", "jse.itac.marketdata.mitch.v4.07.vega", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "jse.itac.marketdata.mitch.v4.07.venueofexecution", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.volatility = ProtoField.new("Volatility", "jse.itac.marketdata.mitch.v4.07.volatility", ftypes.INT64)
omi_jse_itac_marketdata_mitch_v4_07.fields.volume = ProtoField.new("Volume", "jse.itac.marketdata.mitch.v4.07.volume", ftypes.UINT32)
omi_jse_itac_marketdata_mitch_v4_07.fields.vwap = ProtoField.new("Vwap", "jse.itac.marketdata.mitch.v4.07.vwap", ftypes.INT64)

-- Jse Itac MarketData Mitch 4.07 Headers
omi_jse_itac_marketdata_mitch_v4_07.fields.message = ProtoField.new("Message", "jse.itac.marketdata.mitch.v4.07.message", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.message_header = ProtoField.new("Message Header", "jse.itac.marketdata.mitch.v4.07.messageheader", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.packet = ProtoField.new("Packet", "jse.itac.marketdata.mitch.v4.07.packet", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.unit_header = ProtoField.new("Unit Header", "jse.itac.marketdata.mitch.v4.07.unitheader", ftypes.STRING)

-- Jse Itac MarketData 4.07 Application Messages
omi_jse_itac_marketdata_mitch_v4_07.fields.add_attributed_order_message = ProtoField.new("Add Attributed Order Message", "jse.itac.marketdata.mitch.v4.07.addattributedordermessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.add_order_message = ProtoField.new("Add Order Message", "jse.itac.marketdata.mitch.v4.07.addordermessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.auction_info_message = ProtoField.new("Auction Info Message", "jse.itac.marketdata.mitch.v4.07.auctioninfomessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "jse.itac.marketdata.mitch.v4.07.auctiontrademessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.extended_statistics_message = ProtoField.new("Extended Statistics Message", "jse.itac.marketdata.mitch.v4.07.extendedstatisticsmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.indicative_quote_info_message = ProtoField.new("Indicative Quote Info Message", "jse.itac.marketdata.mitch.v4.07.indicativequoteinfomessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.login_request_message = ProtoField.new("Login Request Message", "jse.itac.marketdata.mitch.v4.07.loginrequestmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.login_response_message = ProtoField.new("Login Response Message", "jse.itac.marketdata.mitch.v4.07.loginresponsemessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.logout_request_message = ProtoField.new("Logout Request Message", "jse.itac.marketdata.mitch.v4.07.logoutrequestmessage", ftypes.BYTES)
omi_jse_itac_marketdata_mitch_v4_07.fields.news_message = ProtoField.new("News Message", "jse.itac.marketdata.mitch.v4.07.newsmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.off_book_trade_message = ProtoField.new("Off Book Trade Message", "jse.itac.marketdata.mitch.v4.07.offbooktrademessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "jse.itac.marketdata.mitch.v4.07.orderbookclearmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "jse.itac.marketdata.mitch.v4.07.orderdeletedmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_executed_message = ProtoField.new("Order Executed Message", "jse.itac.marketdata.mitch.v4.07.orderexecutedmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_executed_with_price_size_message = ProtoField.new("Order Executed With Price Size Message", "jse.itac.marketdata.mitch.v4.07.orderexecutedwithpricesizemessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.order_modified_message = ProtoField.new("Order Modified Message", "jse.itac.marketdata.mitch.v4.07.ordermodifiedmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.recovery_trade_message = ProtoField.new("Recovery Trade Message", "jse.itac.marketdata.mitch.v4.07.recoverytrademessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.replay_request_message = ProtoField.new("Replay Request Message", "jse.itac.marketdata.mitch.v4.07.replayrequestmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.replay_response_message = ProtoField.new("Replay Response Message", "jse.itac.marketdata.mitch.v4.07.replayresponsemessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "jse.itac.marketdata.mitch.v4.07.snapshotcompletemessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_request_message = ProtoField.new("Snapshot Request Message", "jse.itac.marketdata.mitch.v4.07.snapshotrequestmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_response_message = ProtoField.new("Snapshot Response Message", "jse.itac.marketdata.mitch.v4.07.snapshotresponsemessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.statistics_message = ProtoField.new("Statistics Message", "jse.itac.marketdata.mitch.v4.07.statisticsmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_directory_message = ProtoField.new("Symbol Directory Message", "jse.itac.marketdata.mitch.v4.07.symboldirectorymessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "jse.itac.marketdata.mitch.v4.07.symbolstatusmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.system_event_message = ProtoField.new("System Event Message", "jse.itac.marketdata.mitch.v4.07.systemeventmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.time_message = ProtoField.new("Time Message", "jse.itac.marketdata.mitch.v4.07.timemessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "jse.itac.marketdata.mitch.v4.07.topofbookmessage", ftypes.STRING)
omi_jse_itac_marketdata_mitch_v4_07.fields.trade_message = ProtoField.new("Trade Message", "jse.itac.marketdata.mitch.v4.07.trademessage", ftypes.STRING)

-- Jse Itac MarketData Mitch 4.07 generated fields
omi_jse_itac_marketdata_mitch_v4_07.fields.message_index = ProtoField.new("Message Index", "jse.itac.marketdata.mitch.v4.07.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jse Itac MarketData Mitch 4.07 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Jse Itac MarketData Mitch 4.07 Show Options
omi_jse_itac_marketdata_mitch_v4_07.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jse_itac_marketdata_mitch_v4_07.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jse_itac_marketdata_mitch_v4_07.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_jse_itac_marketdata_mitch_v4_07.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_jse_itac_marketdata_mitch_v4_07.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jse_itac_marketdata_mitch_v4_07.prefs.show_application_messages then
    show.application_messages = omi_jse_itac_marketdata_mitch_v4_07.prefs.show_application_messages
  end
  if show.headers ~= omi_jse_itac_marketdata_mitch_v4_07.prefs.show_headers then
    show.headers = omi_jse_itac_marketdata_mitch_v4_07.prefs.show_headers
  end
  if show.structs ~= omi_jse_itac_marketdata_mitch_v4_07.prefs.show_structs then
    show.structs = omi_jse_itac_marketdata_mitch_v4_07.prefs.show_structs
  end
  if show.indexes ~= omi_jse_itac_marketdata_mitch_v4_07.prefs.show_indexes then
    show.indexes = omi_jse_itac_marketdata_mitch_v4_07.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Jse Itac MarketData Mitch 4.07 Fields
-----------------------------------------------------------------------

-- Action
jse_itac_marketdata_mitch_v4_07.action = {}

-- Size: Action
jse_itac_marketdata_mitch_v4_07.action.size = 1

-- Display: Action
jse_itac_marketdata_mitch_v4_07.action.display = function(value)
  if value == "1" then
    return "Action: Update (1)"
  end
  if value == "2" then
    return "Action: Delete (2)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
jse_itac_marketdata_mitch_v4_07.action.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.action, range, value, display)

  return offset + length, value
end

-- Action Type
jse_itac_marketdata_mitch_v4_07.action_type = {}

-- Size: Action Type
jse_itac_marketdata_mitch_v4_07.action_type.size = 1

-- Display: Action Type
jse_itac_marketdata_mitch_v4_07.action_type.display = function(value)
  if value == "C" then
    return "Action Type: Cancelled Trade (C)"
  end
  if value == "N" then
    return "Action Type: Trade (N)"
  end

  return "Action Type: Unknown("..value..")"
end

-- Dissect: Action Type
jse_itac_marketdata_mitch_v4_07.action_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.action_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.action_type, range, value, display)

  return offset + length, value
end

-- Attribution
jse_itac_marketdata_mitch_v4_07.attribution = {}

-- Size: Attribution
jse_itac_marketdata_mitch_v4_07.attribution.size = 11

-- Display: Attribution
jse_itac_marketdata_mitch_v4_07.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
jse_itac_marketdata_mitch_v4_07.attribution.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.attribution.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.attribution, range, value, display)

  return offset + length, value
end

-- Auction Type
jse_itac_marketdata_mitch_v4_07.auction_type = {}

-- Size: Auction Type
jse_itac_marketdata_mitch_v4_07.auction_type.size = 1

-- Display: Auction Type
jse_itac_marketdata_mitch_v4_07.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "A" then
    return "Auction Type: Volatility Auction (A)"
  end
  if value == "E" then
    return "Auction Type: Re Opening Auction (E)"
  end
  if value == "K" then
    return "Auction Type: Intra Day Auction (K)"
  end
  if value == "L" then
    return "Auction Type: Futures Close Out Auction (L)"
  end
  if value == "D" then
    return "Auction Type: End Of Day Volume Auction Call (D)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
jse_itac_marketdata_mitch_v4_07.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Book Type Byte 1
jse_itac_marketdata_mitch_v4_07.book_type_byte_1 = {}

-- Size: Book Type Byte 1
jse_itac_marketdata_mitch_v4_07.book_type_byte_1.size = 1

-- Display: Book Type Byte 1
jse_itac_marketdata_mitch_v4_07.book_type_byte_1.display = function(value)
  return "Book Type Byte 1: "..value
end

-- Dissect: Book Type Byte 1
jse_itac_marketdata_mitch_v4_07.book_type_byte_1.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.book_type_byte_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.book_type_byte_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.book_type_byte_1, range, value, display)

  return offset + length, value
end

-- Book Type U Int 81
jse_itac_marketdata_mitch_v4_07.book_type_u_int_81 = {}

-- Size: Book Type U Int 81
jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.size = 1

-- Display: Book Type U Int 81
jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.display = function(value)
  return "Book Type U Int 81: "..value
end

-- Dissect: Book Type U Int 81
jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.book_type_u_int_81, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
jse_itac_marketdata_mitch_v4_07.contract_multiplier = {}

-- Size: Contract Multiplier
jse_itac_marketdata_mitch_v4_07.contract_multiplier.size = 8

-- Display: Contract Multiplier
jse_itac_marketdata_mitch_v4_07.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
jse_itac_marketdata_mitch_v4_07.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Corporate Action
jse_itac_marketdata_mitch_v4_07.corporate_action = {}

-- Size: Corporate Action
jse_itac_marketdata_mitch_v4_07.corporate_action.size = 189

-- Display: Corporate Action
jse_itac_marketdata_mitch_v4_07.corporate_action.display = function(value)
  return "Corporate Action: "..value
end

-- Dissect: Corporate Action
jse_itac_marketdata_mitch_v4_07.corporate_action.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.corporate_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.corporate_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.corporate_action, range, value, display)

  return offset + length, value
end

-- Count
jse_itac_marketdata_mitch_v4_07.count = {}

-- Size: Count
jse_itac_marketdata_mitch_v4_07.count.size = 2

-- Display: Count
jse_itac_marketdata_mitch_v4_07.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
jse_itac_marketdata_mitch_v4_07.count.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.count, range, value, display)

  return offset + length, value
end

-- Coupon
jse_itac_marketdata_mitch_v4_07.coupon = {}

-- Size: Coupon
jse_itac_marketdata_mitch_v4_07.coupon.size = 8

-- Display: Coupon
jse_itac_marketdata_mitch_v4_07.coupon.display = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
jse_itac_marketdata_mitch_v4_07.coupon.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.coupon.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.coupon, range, value, display)

  return offset + length, value
end

-- Delta
jse_itac_marketdata_mitch_v4_07.delta = {}

-- Size: Delta
jse_itac_marketdata_mitch_v4_07.delta.size = 8

-- Display: Delta
jse_itac_marketdata_mitch_v4_07.delta.display = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
jse_itac_marketdata_mitch_v4_07.delta.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.delta.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.delta, range, value, display)

  return offset + length, value
end

-- Display Quantity
jse_itac_marketdata_mitch_v4_07.display_quantity = {}

-- Size: Display Quantity
jse_itac_marketdata_mitch_v4_07.display_quantity.size = 4

-- Display: Display Quantity
jse_itac_marketdata_mitch_v4_07.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
jse_itac_marketdata_mitch_v4_07.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Event Code
jse_itac_marketdata_mitch_v4_07.event_code = {}

-- Size: Event Code
jse_itac_marketdata_mitch_v4_07.event_code.size = 1

-- Display: Event Code
jse_itac_marketdata_mitch_v4_07.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
jse_itac_marketdata_mitch_v4_07.event_code.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jse_itac_marketdata_mitch_v4_07.executed_quantity = {}

-- Size: Executed Quantity
jse_itac_marketdata_mitch_v4_07.executed_quantity.size = 4

-- Display: Executed Quantity
jse_itac_marketdata_mitch_v4_07.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jse_itac_marketdata_mitch_v4_07.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Exercise Style
jse_itac_marketdata_mitch_v4_07.exercise_style = {}

-- Size: Exercise Style
jse_itac_marketdata_mitch_v4_07.exercise_style.size = 1

-- Display: Exercise Style
jse_itac_marketdata_mitch_v4_07.exercise_style.display = function(value)
  if value == " " then
    return "Exercise Style: Not An Option (<whitespace>)"
  end
  if value == "A" then
    return "Exercise Style: American (A)"
  end
  if value == "E" then
    return "Exercise Style: European (E)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
jse_itac_marketdata_mitch_v4_07.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.exercise_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Expiration Date
jse_itac_marketdata_mitch_v4_07.expiration_date = {}

-- Size: Expiration Date
jse_itac_marketdata_mitch_v4_07.expiration_date.size = 8

-- Display: Expiration Date
jse_itac_marketdata_mitch_v4_07.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
jse_itac_marketdata_mitch_v4_07.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.expiration_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- First Message
jse_itac_marketdata_mitch_v4_07.first_message = {}

-- Size: First Message
jse_itac_marketdata_mitch_v4_07.first_message.size = 4

-- Display: First Message
jse_itac_marketdata_mitch_v4_07.first_message.display = function(value)
  return "First Message: "..value
end

-- Dissect: First Message
jse_itac_marketdata_mitch_v4_07.first_message.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.first_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.first_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.first_message, range, value, display)

  return offset + length, value
end

-- Gamma
jse_itac_marketdata_mitch_v4_07.gamma = {}

-- Size: Gamma
jse_itac_marketdata_mitch_v4_07.gamma.size = 8

-- Display: Gamma
jse_itac_marketdata_mitch_v4_07.gamma.display = function(value)
  return "Gamma: "..value
end

-- Dissect: Gamma
jse_itac_marketdata_mitch_v4_07.gamma.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.gamma.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.gamma.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.gamma, range, value, display)

  return offset + length, value
end

-- Headline
jse_itac_marketdata_mitch_v4_07.headline = {}

-- Size: Headline
jse_itac_marketdata_mitch_v4_07.headline.size = 100

-- Display: Headline
jse_itac_marketdata_mitch_v4_07.headline.display = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
jse_itac_marketdata_mitch_v4_07.headline.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.headline.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.headline, range, value, display)

  return offset + length, value
end

-- High Price
jse_itac_marketdata_mitch_v4_07.high_price = {}

-- Size: High Price
jse_itac_marketdata_mitch_v4_07.high_price.size = 8

-- Display: High Price
jse_itac_marketdata_mitch_v4_07.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
jse_itac_marketdata_mitch_v4_07.high_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.high_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.high_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
jse_itac_marketdata_mitch_v4_07.imbalance_direction = {}

-- Size: Imbalance Direction
jse_itac_marketdata_mitch_v4_07.imbalance_direction.size = 1

-- Display: Imbalance Direction
jse_itac_marketdata_mitch_v4_07.imbalance_direction.display = function(value)
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders For Auction (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
jse_itac_marketdata_mitch_v4_07.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Indicative Bid Price
jse_itac_marketdata_mitch_v4_07.indicative_bid_price = {}

-- Size: Indicative Bid Price
jse_itac_marketdata_mitch_v4_07.indicative_bid_price.size = 8

-- Display: Indicative Bid Price
jse_itac_marketdata_mitch_v4_07.indicative_bid_price.display = function(value)
  return "Indicative Bid Price: "..value
end

-- Dissect: Indicative Bid Price
jse_itac_marketdata_mitch_v4_07.indicative_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.indicative_bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.indicative_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.indicative_bid_price, range, value, display)

  return offset + length, value
end

-- Indicative Offer Price
jse_itac_marketdata_mitch_v4_07.indicative_offer_price = {}

-- Size: Indicative Offer Price
jse_itac_marketdata_mitch_v4_07.indicative_offer_price.size = 8

-- Display: Indicative Offer Price
jse_itac_marketdata_mitch_v4_07.indicative_offer_price.display = function(value)
  return "Indicative Offer Price: "..value
end

-- Dissect: Indicative Offer Price
jse_itac_marketdata_mitch_v4_07.indicative_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.indicative_offer_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.indicative_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.indicative_offer_price, range, value, display)

  return offset + length, value
end

-- Instrument Id
jse_itac_marketdata_mitch_v4_07.instrument_id = {}

-- Size: Instrument Id
jse_itac_marketdata_mitch_v4_07.instrument_id.size = 4

-- Display: Instrument Id
jse_itac_marketdata_mitch_v4_07.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
jse_itac_marketdata_mitch_v4_07.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Sub Category
jse_itac_marketdata_mitch_v4_07.instrument_sub_category = {}

-- Size: Instrument Sub Category
jse_itac_marketdata_mitch_v4_07.instrument_sub_category.size = 30

-- Display: Instrument Sub Category
jse_itac_marketdata_mitch_v4_07.instrument_sub_category.display = function(value)
  return "Instrument Sub Category: "..value
end

-- Dissect: Instrument Sub Category
jse_itac_marketdata_mitch_v4_07.instrument_sub_category.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.instrument_sub_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.instrument_sub_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.instrument_sub_category, range, value, display)

  return offset + length, value
end

-- Instruments
jse_itac_marketdata_mitch_v4_07.instruments = {}

-- Size: Instruments
jse_itac_marketdata_mitch_v4_07.instruments.size = 100

-- Display: Instruments
jse_itac_marketdata_mitch_v4_07.instruments.display = function(value)
  return "Instruments: "..value
end

-- Dissect: Instruments
jse_itac_marketdata_mitch_v4_07.instruments.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.instruments.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.instruments, range, value, display)

  return offset + length, value
end

-- Isin
jse_itac_marketdata_mitch_v4_07.isin = {}

-- Size: Isin
jse_itac_marketdata_mitch_v4_07.isin.size = 12

-- Display: Isin
jse_itac_marketdata_mitch_v4_07.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
jse_itac_marketdata_mitch_v4_07.isin.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.isin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.isin, range, value, display)

  return offset + length, value
end

-- Issue Date
jse_itac_marketdata_mitch_v4_07.issue_date = {}

-- Size: Issue Date
jse_itac_marketdata_mitch_v4_07.issue_date.size = 8

-- Display: Issue Date
jse_itac_marketdata_mitch_v4_07.issue_date.display = function(value)
  return "Issue Date: "..value
end

-- Dissect: Issue Date
jse_itac_marketdata_mitch_v4_07.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.issue_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer
jse_itac_marketdata_mitch_v4_07.issuer = {}

-- Size: Issuer
jse_itac_marketdata_mitch_v4_07.issuer.size = 6

-- Display: Issuer
jse_itac_marketdata_mitch_v4_07.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
jse_itac_marketdata_mitch_v4_07.issuer.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.issuer.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.issuer, range, value, display)

  return offset + length, value
end

-- Last Opt Px
jse_itac_marketdata_mitch_v4_07.last_opt_px = {}

-- Size: Last Opt Px
jse_itac_marketdata_mitch_v4_07.last_opt_px.size = 8

-- Display: Last Opt Px
jse_itac_marketdata_mitch_v4_07.last_opt_px.display = function(value)
  return "Last Opt Px: "..value
end

-- Dissect: Last Opt Px
jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.last_opt_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.last_opt_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.last_opt_px, range, value, display)

  return offset + length, value
end

-- Leg 1 Symbol
jse_itac_marketdata_mitch_v4_07.leg_1_symbol = {}

-- Size: Leg 1 Symbol
jse_itac_marketdata_mitch_v4_07.leg_1_symbol.size = 25

-- Display: Leg 1 Symbol
jse_itac_marketdata_mitch_v4_07.leg_1_symbol.display = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
jse_itac_marketdata_mitch_v4_07.leg_1_symbol.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.leg_1_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.leg_1_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Leg 2 Symbol
jse_itac_marketdata_mitch_v4_07.leg_2_symbol = {}

-- Size: Leg 2 Symbol
jse_itac_marketdata_mitch_v4_07.leg_2_symbol.size = 25

-- Display: Leg 2 Symbol
jse_itac_marketdata_mitch_v4_07.leg_2_symbol.display = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
jse_itac_marketdata_mitch_v4_07.leg_2_symbol.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.leg_2_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.leg_2_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Length
jse_itac_marketdata_mitch_v4_07.length = {}

-- Size: Length
jse_itac_marketdata_mitch_v4_07.length.size = 2

-- Display: Length
jse_itac_marketdata_mitch_v4_07.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
jse_itac_marketdata_mitch_v4_07.length.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.length, range, value, display)

  return offset + length, value
end

-- Low Price
jse_itac_marketdata_mitch_v4_07.low_price = {}

-- Size: Low Price
jse_itac_marketdata_mitch_v4_07.low_price.size = 8

-- Display: Low Price
jse_itac_marketdata_mitch_v4_07.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
jse_itac_marketdata_mitch_v4_07.low_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.low_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Data Group
jse_itac_marketdata_mitch_v4_07.market_data_group = {}

-- Size: Market Data Group
jse_itac_marketdata_mitch_v4_07.market_data_group.size = 1

-- Display: Market Data Group
jse_itac_marketdata_mitch_v4_07.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
jse_itac_marketdata_mitch_v4_07.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Market Order Quantity
jse_itac_marketdata_mitch_v4_07.market_order_quantity = {}

-- Size: Market Order Quantity
jse_itac_marketdata_mitch_v4_07.market_order_quantity.size = 4

-- Display: Market Order Quantity
jse_itac_marketdata_mitch_v4_07.market_order_quantity.display = function(value)
  return "Market Order Quantity: "..value
end

-- Dissect: Market Order Quantity
jse_itac_marketdata_mitch_v4_07.market_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.market_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.market_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.market_order_quantity, range, value, display)

  return offset + length, value
end

-- Message Count
jse_itac_marketdata_mitch_v4_07.message_count = {}

-- Size: Message Count
jse_itac_marketdata_mitch_v4_07.message_count.size = 1

-- Display: Message Count
jse_itac_marketdata_mitch_v4_07.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jse_itac_marketdata_mitch_v4_07.message_count.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
jse_itac_marketdata_mitch_v4_07.message_length = {}

-- Size: Message Length
jse_itac_marketdata_mitch_v4_07.message_length.size = 2

-- Display: Message Length
jse_itac_marketdata_mitch_v4_07.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jse_itac_marketdata_mitch_v4_07.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
jse_itac_marketdata_mitch_v4_07.message_type = {}

-- Size: Message Type
jse_itac_marketdata_mitch_v4_07.message_type.size = 1

-- Display: Message Type
jse_itac_marketdata_mitch_v4_07.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Request Message (0x01)"
  end
  if value == 0x03 then
    return "Message Type: Replay Request Message (0x03)"
  end
  if value == 0x81 then
    return "Message Type: Snapshot Request Message (0x81)"
  end
  if value == 0x05 then
    return "Message Type: Logout Request Message (0x05)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x04 then
    return "Message Type: Replay Response Message (0x04)"
  end
  if value == 0x82 then
    return "Message Type: Snapshot Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Snapshot Complete Message (0x83)"
  end
  if value == 0x54 then
    return "Message Type: Time Message (0x54)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x52 then
    return "Message Type: Symbol Directory Message (0x52)"
  end
  if value == 0x48 then
    return "Message Type: Symbol Status Message (0x48)"
  end
  if value == 0x41 then
    return "Message Type: Add Order Message (0x41)"
  end
  if value == 0x46 then
    return "Message Type: Add Attributed Order Message (0x46)"
  end
  if value == 0x44 then
    return "Message Type: Order Deleted Message (0x44)"
  end
  if value == 0x55 then
    return "Message Type: Order Modified Message (0x55)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x45 then
    return "Message Type: Order Executed Message (0x45)"
  end
  if value == 0x43 then
    return "Message Type: Order Executed With Price Size Message (0x43)"
  end
  if value == 0x50 then
    return "Message Type: Trade Message (0x50)"
  end
  if value == 0x51 then
    return "Message Type: Auction Trade Message (0x51)"
  end
  if value == 0x78 then
    return "Message Type: Off Book Trade Message (0x78)"
  end
  if value == 0x76 then
    return "Message Type: Recovery Trade Message (0x76)"
  end
  if value == 0x49 then
    return "Message Type: Auction Info Message (0x49)"
  end
  if value == 0x77 then
    return "Message Type: Statistics Message (0x77)"
  end
  if value == 0x80 then
    return "Message Type: Extended Statistics Message (0x80)"
  end
  if value == 0x75 then
    return "Message Type: News Message (0x75)"
  end
  if value == 0x71 then
    return "Message Type: Top Of Book Message (0x71)"
  end
  if value == 0x69 then
    return "Message Type: Indicative Quote Info Message (0x69)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jse_itac_marketdata_mitch_v4_07.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jse_itac_marketdata_mitch_v4_07.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanosecond
jse_itac_marketdata_mitch_v4_07.nanosecond = {}

-- Size: Nanosecond
jse_itac_marketdata_mitch_v4_07.nanosecond.size = 4

-- Display: Nanosecond
jse_itac_marketdata_mitch_v4_07.nanosecond.display = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
jse_itac_marketdata_mitch_v4_07.nanosecond.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.nanosecond.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.nanosecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- New End Time
jse_itac_marketdata_mitch_v4_07.new_end_time = {}

-- Size: New End Time
jse_itac_marketdata_mitch_v4_07.new_end_time.size = 12

-- Display: New End Time
jse_itac_marketdata_mitch_v4_07.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
jse_itac_marketdata_mitch_v4_07.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.new_end_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- New Price
jse_itac_marketdata_mitch_v4_07.new_price = {}

-- Size: New Price
jse_itac_marketdata_mitch_v4_07.new_price.size = 8

-- Display: New Price
jse_itac_marketdata_mitch_v4_07.new_price.display = function(value)
  return "New Price: "..value
end

-- Dissect: New Price
jse_itac_marketdata_mitch_v4_07.new_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.new_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Quantity
jse_itac_marketdata_mitch_v4_07.new_quantity = {}

-- Size: New Quantity
jse_itac_marketdata_mitch_v4_07.new_quantity.size = 4

-- Display: New Quantity
jse_itac_marketdata_mitch_v4_07.new_quantity.display = function(value)
  return "New Quantity: "..value
end

-- Dissect: New Quantity
jse_itac_marketdata_mitch_v4_07.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.new_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Notional Delta Exposure
jse_itac_marketdata_mitch_v4_07.notional_delta_exposure = {}

-- Size: Notional Delta Exposure
jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.size = 8

-- Display: Notional Delta Exposure
jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.display = function(value)
  return "Notional Delta Exposure: "..value
end

-- Translate: Notional Delta Exposure
jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Notional Delta Exposure
jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.translate(raw)
  local display = jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.notional_delta_exposure, range, value, display)

  return offset + length, value
end

-- Notional Exposure
jse_itac_marketdata_mitch_v4_07.notional_exposure = {}

-- Size: Notional Exposure
jse_itac_marketdata_mitch_v4_07.notional_exposure.size = 8

-- Display: Notional Exposure
jse_itac_marketdata_mitch_v4_07.notional_exposure.display = function(value)
  return "Notional Exposure: "..value
end

-- Translate: Notional Exposure
jse_itac_marketdata_mitch_v4_07.notional_exposure.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Notional Exposure
jse_itac_marketdata_mitch_v4_07.notional_exposure.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.notional_exposure.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_marketdata_mitch_v4_07.notional_exposure.translate(raw)
  local display = jse_itac_marketdata_mitch_v4_07.notional_exposure.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.notional_exposure, range, value, display)

  return offset + length, value
end

-- Number Of Trades
jse_itac_marketdata_mitch_v4_07.number_of_trades = {}

-- Size: Number Of Trades
jse_itac_marketdata_mitch_v4_07.number_of_trades.size = 4

-- Display: Number Of Trades
jse_itac_marketdata_mitch_v4_07.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
jse_itac_marketdata_mitch_v4_07.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Off Book Rfq Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type = {}

-- Size: Off Book Rfq Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.size = 4

-- Display: Off Book Rfq Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.display = function(value)
  return "Off Book Rfq Trade Type: "..value
end

-- Dissect: Off Book Rfq Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.off_book_rfq_trade_type, range, value, display)

  return offset + length, value
end

-- Off Book Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_trade_type = {}

-- Size: Off Book Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_trade_type.size = 4

-- Display: Off Book Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_trade_type.display = function(value)
  if value == "17" then
    return "Off Book Trade Type: Off Book Post Contra Trade (17)"
  end
  if value == "24" then
    return "Off Book Trade Type: On Book Post Contra Trade (24)"
  end
  if value == "2001" then
    return "Off Book Trade Type: Block Trade (2001)"
  end
  if value == "2002" then
    return "Off Book Trade Type: Corporate Finance Trade (2002)"
  end
  if value == "2003" then
    return "Off Book Trade Type: Late Trade (2003)"
  end
  if value == "2004" then
    return "Off Book Trade Type: Namibia Trade (2004)"
  end
  if value == "2005" then
    return "Off Book Trade Type: Delta Trade (2005)"
  end
  if value == "2006" then
    return "Off Book Trade Type: Off Order Book Principal Trade (2006)"
  end
  if value == "2007" then
    return "Off Book Trade Type: Option Exercised (2007)"
  end
  if value == "2008" then
    return "Off Book Trade Type: Trade Option Exercised (2008)"
  end
  if value == "2009" then
    return "Off Book Trade Type: Portfolio Trade (2009)"
  end
  if value == "2011" then
    return "Off Book Trade Type: Warrant Exercised (2011)"
  end
  if value == "2013" then
    return "Off Book Trade Type: Give Up Trade (2013)"
  end
  if value == "3001" then
    return "Off Book Trade Type: Book Build (3001)"
  end
  if value == "3015" then
    return "Off Book Trade Type: Off Book Post Contra Trade Non Published (3015)"
  end
  if value == "4001" then
    return "Off Book Trade Type: Generic Reported Trade (4001)"
  end
  if value == "4004" then
    return "Off Book Trade Type: Back To Back With An Otc Transaction (4004)"
  end
  if value == "4006" then
    return "Off Book Trade Type: Member Is Buyer And Seller For Two Different Clients (4006)"
  end
  if value == "4007" then
    return "Off Book Trade Type: Repurchase Agreement Or Sell Buy Back (4007)"
  end
  if value == "4008" then
    return "Off Book Trade Type: Reverse Repurchase Agreement (4008)"
  end
  if value == "4009" then
    return "Off Book Trade Type: Single Equity Security Transaction (4009)"
  end

  return "Off Book Trade Type: Unknown("..value..")"
end

-- Dissect: Off Book Trade Type
jse_itac_marketdata_mitch_v4_07.off_book_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.off_book_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.off_book_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.off_book_trade_type, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
jse_itac_marketdata_mitch_v4_07.open_close_indicator = {}

-- Size: Open Close Indicator
jse_itac_marketdata_mitch_v4_07.open_close_indicator.size = 1

-- Display: Open Close Indicator
jse_itac_marketdata_mitch_v4_07.open_close_indicator.display = function(value)
  if value == "A" then
    return "Open Close Indicator: Ut (A)"
  end
  if value == "B" then
    return "Open Close Indicator: At (B)"
  end
  if value == "C" then
    return "Open Close Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Open Close Indicator: Last At (D)"
  end
  if value == "E" then
    return "Open Close Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Open Close Indicator: Manual (F)"
  end
  if value == "H" then
    return "Open Close Indicator: Vwap (H)"
  end
  if value == "I" then
    return "Open Close Indicator: Previous Close (I)"
  end
  if value == "J" then
    return "Open Close Indicator: Zero (J)"
  end
  if value == "L" then
    return "Open Close Indicator: Vwap Of N Volume (L)"
  end
  if value == "U" then
    return "Open Close Indicator: Best Bid (U)"
  end
  if value == "V" then
    return "Open Close Indicator: Best Offer (V)"
  end
  if value == "Y" then
    return "Open Close Indicator: Reference Price (Y)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
jse_itac_marketdata_mitch_v4_07.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Open Interest
jse_itac_marketdata_mitch_v4_07.open_interest = {}

-- Size: Open Interest
jse_itac_marketdata_mitch_v4_07.open_interest.size = 8

-- Display: Open Interest
jse_itac_marketdata_mitch_v4_07.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
jse_itac_marketdata_mitch_v4_07.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Option Type
jse_itac_marketdata_mitch_v4_07.option_type = {}

-- Size: Option Type
jse_itac_marketdata_mitch_v4_07.option_type.size = 1

-- Display: Option Type
jse_itac_marketdata_mitch_v4_07.option_type.display = function(value)
  if value == " " then
    return "Option Type: Not An Option (<whitespace>)"
  end
  if value == "C" then
    return "Option Type: Call Option (C)"
  end
  if value == "P" then
    return "Option Type: Put Option (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
jse_itac_marketdata_mitch_v4_07.option_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Count
jse_itac_marketdata_mitch_v4_07.order_count = {}

-- Size: Order Count
jse_itac_marketdata_mitch_v4_07.order_count.size = 4

-- Display: Order Count
jse_itac_marketdata_mitch_v4_07.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
jse_itac_marketdata_mitch_v4_07.order_count.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
jse_itac_marketdata_mitch_v4_07.order_id = {}

-- Size: Order Id
jse_itac_marketdata_mitch_v4_07.order_id.size = 8

-- Display: Order Id
jse_itac_marketdata_mitch_v4_07.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
jse_itac_marketdata_mitch_v4_07.order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = jse_itac_marketdata_mitch_v4_07.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_id, range, value, display)

  return offset + length, value
end

-- Paired Quantity
jse_itac_marketdata_mitch_v4_07.paired_quantity = {}

-- Size: Paired Quantity
jse_itac_marketdata_mitch_v4_07.paired_quantity.size = 4

-- Display: Paired Quantity
jse_itac_marketdata_mitch_v4_07.paired_quantity.display = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
jse_itac_marketdata_mitch_v4_07.paired_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.paired_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.paired_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Password
jse_itac_marketdata_mitch_v4_07.password = {}

-- Size: Password
jse_itac_marketdata_mitch_v4_07.password.size = 10

-- Display: Password
jse_itac_marketdata_mitch_v4_07.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
jse_itac_marketdata_mitch_v4_07.password.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.password, range, value, display)

  return offset + length, value
end

-- Previous Close Price
jse_itac_marketdata_mitch_v4_07.previous_close_price = {}

-- Size: Previous Close Price
jse_itac_marketdata_mitch_v4_07.previous_close_price.size = 8

-- Display: Previous Close Price
jse_itac_marketdata_mitch_v4_07.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Dissect: Previous Close Price
jse_itac_marketdata_mitch_v4_07.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.previous_close_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Price
jse_itac_marketdata_mitch_v4_07.price = {}

-- Size: Price
jse_itac_marketdata_mitch_v4_07.price.size = 8

-- Display: Price
jse_itac_marketdata_mitch_v4_07.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
jse_itac_marketdata_mitch_v4_07.price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.price, range, value, display)

  return offset + length, value
end

-- Printable
jse_itac_marketdata_mitch_v4_07.printable = {}

-- Size: Printable
jse_itac_marketdata_mitch_v4_07.printable.size = 1

-- Display: Printable
jse_itac_marketdata_mitch_v4_07.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
jse_itac_marketdata_mitch_v4_07.printable.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.printable, range, value, display)

  return offset + length, value
end

-- Pt Amendment Flag
jse_itac_marketdata_mitch_v4_07.pt_amendment_flag = {}

-- Size: Pt Amendment Flag
jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.size = 4

-- Display: Pt Amendment Flag
jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.display = function(value)
  return "Pt Amendment Flag: "..value
end

-- Dissect: Pt Amendment Flag
jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.pt_amendment_flag, range, value, display)

  return offset + length, value
end

-- Pt Cancellation Flag
jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag = {}

-- Size: Pt Cancellation Flag
jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.size = 4

-- Display: Pt Cancellation Flag
jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.display = function(value)
  return "Pt Cancellation Flag: "..value
end

-- Dissect: Pt Cancellation Flag
jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.pt_cancellation_flag, range, value, display)

  return offset + length, value
end

-- Quantity
jse_itac_marketdata_mitch_v4_07.quantity = {}

-- Size: Quantity
jse_itac_marketdata_mitch_v4_07.quantity.size = 4

-- Display: Quantity
jse_itac_marketdata_mitch_v4_07.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jse_itac_marketdata_mitch_v4_07.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
jse_itac_marketdata_mitch_v4_07.reason = {}

-- Size: Reason
jse_itac_marketdata_mitch_v4_07.reason.size = 4

-- Display: Reason
jse_itac_marketdata_mitch_v4_07.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
jse_itac_marketdata_mitch_v4_07.reason.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reason, range, value, display)

  return offset + length, value
end

-- Recover From Time
jse_itac_marketdata_mitch_v4_07.recover_from_time = {}

-- Size: Recover From Time
jse_itac_marketdata_mitch_v4_07.recover_from_time.size = 8

-- Display: Recover From Time
jse_itac_marketdata_mitch_v4_07.recover_from_time.display = function(value)
  return "Recover From Time: "..value
end

-- Dissect: Recover From Time
jse_itac_marketdata_mitch_v4_07.recover_from_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.recover_from_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.recover_from_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.recover_from_time, range, value, display)

  return offset + length, value
end

-- Request Id
jse_itac_marketdata_mitch_v4_07.request_id = {}

-- Size: Request Id
jse_itac_marketdata_mitch_v4_07.request_id.size = 4

-- Display: Request Id
jse_itac_marketdata_mitch_v4_07.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
jse_itac_marketdata_mitch_v4_07.request_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.request_id, range, value, display)

  return offset + length, value
end

-- Reserve Field
jse_itac_marketdata_mitch_v4_07.reserve_field = {}

-- Size: Reserve Field
jse_itac_marketdata_mitch_v4_07.reserve_field.size = 2

-- Display: Reserve Field
jse_itac_marketdata_mitch_v4_07.reserve_field.display = function(value)
  return "Reserve Field: "..value
end

-- Dissect: Reserve Field
jse_itac_marketdata_mitch_v4_07.reserve_field.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reserve_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.reserve_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reserve_field, range, value, display)

  return offset + length, value
end

-- Reserved 2
jse_itac_marketdata_mitch_v4_07.reserved_2 = {}

-- Size: Reserved 2
jse_itac_marketdata_mitch_v4_07.reserved_2.size = 1

-- Display: Reserved 2
jse_itac_marketdata_mitch_v4_07.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
jse_itac_marketdata_mitch_v4_07.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
jse_itac_marketdata_mitch_v4_07.reserved_4 = {}

-- Size: Reserved 4
jse_itac_marketdata_mitch_v4_07.reserved_4.size = 4

-- Display: Reserved 4
jse_itac_marketdata_mitch_v4_07.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
jse_itac_marketdata_mitch_v4_07.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
jse_itac_marketdata_mitch_v4_07.reserved_8 = {}

-- Size: Reserved 8
jse_itac_marketdata_mitch_v4_07.reserved_8.size = 8

-- Display: Reserved 8
jse_itac_marketdata_mitch_v4_07.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
jse_itac_marketdata_mitch_v4_07.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved A
jse_itac_marketdata_mitch_v4_07.reserved_a = {}

-- Size: Reserved A
jse_itac_marketdata_mitch_v4_07.reserved_a.size = 1

-- Display: Reserved A
jse_itac_marketdata_mitch_v4_07.reserved_a.display = function(value)
  return "Reserved A: "..value
end

-- Dissect: Reserved A
jse_itac_marketdata_mitch_v4_07.reserved_a.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reserved_a.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.reserved_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_a, range, value, display)

  return offset + length, value
end

-- Reserved B
jse_itac_marketdata_mitch_v4_07.reserved_b = {}

-- Size: Reserved B
jse_itac_marketdata_mitch_v4_07.reserved_b.size = 1

-- Display: Reserved B
jse_itac_marketdata_mitch_v4_07.reserved_b.display = function(value)
  return "Reserved B: "..value
end

-- Dissect: Reserved B
jse_itac_marketdata_mitch_v4_07.reserved_b.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.reserved_b.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.reserved_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.reserved_b, range, value, display)

  return offset + length, value
end

-- Rfq Id
jse_itac_marketdata_mitch_v4_07.rfq_id = {}

-- Size: Rfq Id
jse_itac_marketdata_mitch_v4_07.rfq_id.size = 10

-- Display: Rfq Id
jse_itac_marketdata_mitch_v4_07.rfq_id.display = function(value)
  return "Rfq Id: "..value
end

-- Dissect: Rfq Id
jse_itac_marketdata_mitch_v4_07.rfq_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.rfq_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.rfq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.rfq_id, range, value, display)

  return offset + length, value
end

-- Rho
jse_itac_marketdata_mitch_v4_07.rho = {}

-- Size: Rho
jse_itac_marketdata_mitch_v4_07.rho.size = 8

-- Display: Rho
jse_itac_marketdata_mitch_v4_07.rho.display = function(value)
  return "Rho: "..value
end

-- Dissect: Rho
jse_itac_marketdata_mitch_v4_07.rho.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.rho.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.rho.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.rho, range, value, display)

  return offset + length, value
end

-- Seconds
jse_itac_marketdata_mitch_v4_07.seconds = {}

-- Size: Seconds
jse_itac_marketdata_mitch_v4_07.seconds.size = 4

-- Display: Seconds
jse_itac_marketdata_mitch_v4_07.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
jse_itac_marketdata_mitch_v4_07.seconds.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.seconds, range, value, display)

  return offset + length, value
end

-- Segment
jse_itac_marketdata_mitch_v4_07.segment = {}

-- Size: Segment
jse_itac_marketdata_mitch_v4_07.segment.size = 6

-- Display: Segment
jse_itac_marketdata_mitch_v4_07.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
jse_itac_marketdata_mitch_v4_07.segment.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.segment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
jse_itac_marketdata_mitch_v4_07.sequence_number = {}

-- Size: Sequence Number
jse_itac_marketdata_mitch_v4_07.sequence_number.size = 4

-- Display: Sequence Number
jse_itac_marketdata_mitch_v4_07.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jse_itac_marketdata_mitch_v4_07.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
jse_itac_marketdata_mitch_v4_07.session_change_reason = {}

-- Size: Session Change Reason
jse_itac_marketdata_mitch_v4_07.session_change_reason.size = 1

-- Display: Session Change Reason
jse_itac_marketdata_mitch_v4_07.session_change_reason.display = function(value)
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
    return "Session Change Reason: Circuit Breaker Tripped (5)"
  end
  if value == 9 then
    return "Session Change Reason: Unavailable Recovery Service Only (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
jse_itac_marketdata_mitch_v4_07.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Settlement Method
jse_itac_marketdata_mitch_v4_07.settlement_method = {}

-- Size: Settlement Method
jse_itac_marketdata_mitch_v4_07.settlement_method.size = 1

-- Display: Settlement Method
jse_itac_marketdata_mitch_v4_07.settlement_method.display = function(value)
  if value == " " then
    return "Settlement Method: No Settlement Method (<whitespace>)"
  end
  if value == "C" then
    return "Settlement Method: Cash (C)"
  end
  if value == "P" then
    return "Settlement Method: Physical (P)"
  end

  return "Settlement Method: Unknown("..value..")"
end

-- Dissect: Settlement Method
jse_itac_marketdata_mitch_v4_07.settlement_method.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.settlement_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.settlement_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.settlement_method, range, value, display)

  return offset + length, value
end

-- Side
jse_itac_marketdata_mitch_v4_07.side = {}

-- Size: Side
jse_itac_marketdata_mitch_v4_07.side.size = 1

-- Display: Side
jse_itac_marketdata_mitch_v4_07.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
jse_itac_marketdata_mitch_v4_07.side.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.side, range, value, display)

  return offset + length, value
end

-- Snapshot Type
jse_itac_marketdata_mitch_v4_07.snapshot_type = {}

-- Size: Snapshot Type
jse_itac_marketdata_mitch_v4_07.snapshot_type.size = 1

-- Display: Snapshot Type
jse_itac_marketdata_mitch_v4_07.snapshot_type.display = function(value)
  if value == 0 then
    return "Snapshot Type: Order Book (0)"
  end
  if value == 1 then
    return "Snapshot Type: Instrument Status (1)"
  end
  if value == 2 then
    return "Snapshot Type: Instrument (2)"
  end
  if value == 3 then
    return "Snapshot Type: Trades (3)"
  end
  if value == 4 then
    return "Snapshot Type: Statistics (4)"
  end
  if value == 5 then
    return "Snapshot Type: News (5)"
  end
  if value == 8 then
    return "Snapshot Type: Top Of Book (8)"
  end

  return "Snapshot Type: Unknown("..value..")"
end

-- Dissect: Snapshot Type
jse_itac_marketdata_mitch_v4_07.snapshot_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.snapshot_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.snapshot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_type, range, value, display)

  return offset + length, value
end

-- Splits
jse_itac_marketdata_mitch_v4_07.splits = {}

-- Size: Splits
jse_itac_marketdata_mitch_v4_07.splits.size = 4

-- Display: Splits
jse_itac_marketdata_mitch_v4_07.splits.display = function(value)
  return "Splits: "..value
end

-- Dissect: Splits
jse_itac_marketdata_mitch_v4_07.splits.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.splits, range, value, display)

  return offset + length, value
end

-- Statistic Type
jse_itac_marketdata_mitch_v4_07.statistic_type = {}

-- Size: Statistic Type
jse_itac_marketdata_mitch_v4_07.statistic_type.size = 1

-- Display: Statistic Type
jse_itac_marketdata_mitch_v4_07.statistic_type.display = function(value)
  if value == "O" then
    return "Statistic Type: Opening Price (O)"
  end
  if value == "C" then
    return "Statistic Type: Closing Price (C)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
jse_itac_marketdata_mitch_v4_07.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Status
jse_itac_marketdata_mitch_v4_07.status = {}

-- Size: Status
jse_itac_marketdata_mitch_v4_07.status.size = 1

-- Display: Status
jse_itac_marketdata_mitch_v4_07.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
jse_itac_marketdata_mitch_v4_07.status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
jse_itac_marketdata_mitch_v4_07.strike_price = {}

-- Size: Strike Price
jse_itac_marketdata_mitch_v4_07.strike_price.size = 8

-- Display: Strike Price
jse_itac_marketdata_mitch_v4_07.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
jse_itac_marketdata_mitch_v4_07.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Sub Book
jse_itac_marketdata_mitch_v4_07.sub_book = {}

-- Size: Sub Book
jse_itac_marketdata_mitch_v4_07.sub_book.size = 1

-- Display: Sub Book
jse_itac_marketdata_mitch_v4_07.sub_book.display = function(value)
  return "Sub Book: "..value
end

-- Dissect: Sub Book
jse_itac_marketdata_mitch_v4_07.sub_book.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.sub_book.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.sub_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.sub_book, range, value, display)

  return offset + length, value
end

-- Symbol
jse_itac_marketdata_mitch_v4_07.symbol = {}

-- Size: Symbol
jse_itac_marketdata_mitch_v4_07.symbol.size = 25

-- Display: Symbol
jse_itac_marketdata_mitch_v4_07.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
jse_itac_marketdata_mitch_v4_07.symbol.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Status
jse_itac_marketdata_mitch_v4_07.symbol_status = {}

-- Size: Symbol Status
jse_itac_marketdata_mitch_v4_07.symbol_status.size = 1

-- Display: Symbol Status
jse_itac_marketdata_mitch_v4_07.symbol_status.display = function(value)
  if value == " " then
    return "Symbol Status: Active (<whitespace>)"
  end
  if value == "H" then
    return "Symbol Status: Halted (H)"
  end
  if value == "S" then
    return "Symbol Status: Suspended (S)"
  end
  if value == "a" then
    return "Symbol Status: Inactive (a)"
  end

  return "Symbol Status: Unknown("..value..")"
end

-- Dissect: Symbol Status
jse_itac_marketdata_mitch_v4_07.symbol_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.symbol_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.symbol_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_status, range, value, display)

  return offset + length, value
end

-- Text
jse_itac_marketdata_mitch_v4_07.text = {}

-- Size: Text
jse_itac_marketdata_mitch_v4_07.text.size = 750

-- Display: Text
jse_itac_marketdata_mitch_v4_07.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
jse_itac_marketdata_mitch_v4_07.text.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.text, range, value, display)

  return offset + length, value
end

-- Theoretical Price
jse_itac_marketdata_mitch_v4_07.theoretical_price = {}

-- Size: Theoretical Price
jse_itac_marketdata_mitch_v4_07.theoretical_price.size = 8

-- Display: Theoretical Price
jse_itac_marketdata_mitch_v4_07.theoretical_price.display = function(value)
  return "Theoretical Price: "..value
end

-- Dissect: Theoretical Price
jse_itac_marketdata_mitch_v4_07.theoretical_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.theoretical_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.theoretical_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.theoretical_price, range, value, display)

  return offset + length, value
end

-- Theta
jse_itac_marketdata_mitch_v4_07.theta = {}

-- Size: Theta
jse_itac_marketdata_mitch_v4_07.theta.size = 8

-- Display: Theta
jse_itac_marketdata_mitch_v4_07.theta.display = function(value)
  return "Theta: "..value
end

-- Dissect: Theta
jse_itac_marketdata_mitch_v4_07.theta.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.theta.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.theta.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.theta, range, value, display)

  return offset + length, value
end

-- Tidm
jse_itac_marketdata_mitch_v4_07.tidm = {}

-- Size: Tidm
jse_itac_marketdata_mitch_v4_07.tidm.size = 12

-- Display: Tidm
jse_itac_marketdata_mitch_v4_07.tidm.display = function(value)
  return "Tidm: "..value
end

-- Dissect: Tidm
jse_itac_marketdata_mitch_v4_07.tidm.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.tidm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.tidm.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.tidm, range, value, display)

  return offset + length, value
end

-- Time
jse_itac_marketdata_mitch_v4_07.time = {}

-- Size: Time
jse_itac_marketdata_mitch_v4_07.time.size = 8

-- Display: Time
jse_itac_marketdata_mitch_v4_07.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
jse_itac_marketdata_mitch_v4_07.time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.time, range, value, display)

  return offset + length, value
end

-- Trade Date
jse_itac_marketdata_mitch_v4_07.trade_date = {}

-- Size: Trade Date
jse_itac_marketdata_mitch_v4_07.trade_date.size = 8

-- Display: Trade Date
jse_itac_marketdata_mitch_v4_07.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
jse_itac_marketdata_mitch_v4_07.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.trade_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
jse_itac_marketdata_mitch_v4_07.trade_id = {}

-- Size: Trade Id
jse_itac_marketdata_mitch_v4_07.trade_id.size = 8

-- Display: Trade Id
jse_itac_marketdata_mitch_v4_07.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
jse_itac_marketdata_mitch_v4_07.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = jse_itac_marketdata_mitch_v4_07.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Sub Type
jse_itac_marketdata_mitch_v4_07.trade_sub_type = {}

-- Size: Trade Sub Type
jse_itac_marketdata_mitch_v4_07.trade_sub_type.size = 4

-- Display: Trade Sub Type
jse_itac_marketdata_mitch_v4_07.trade_sub_type.display = function(value)
  if value == "0001" then
    return "Trade Sub Type: Regular (0001)"
  end
  if value == "0002" then
    return "Trade Sub Type: Exchange For Physical (0002)"
  end
  if value == "0003" then
    return "Trade Sub Type: Repo (0003)"
  end
  if value == "0004" then
    return "Trade Sub Type: Sharia (0004)"
  end

  return "Trade Sub Type: Unknown("..value..")"
end

-- Dissect: Trade Sub Type
jse_itac_marketdata_mitch_v4_07.trade_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.trade_sub_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.trade_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_sub_type, range, value, display)

  return offset + length, value
end

-- Trade Time
jse_itac_marketdata_mitch_v4_07.trade_time = {}

-- Size: Trade Time
jse_itac_marketdata_mitch_v4_07.trade_time.size = 8

-- Display: Trade Time
jse_itac_marketdata_mitch_v4_07.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
jse_itac_marketdata_mitch_v4_07.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.trade_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trading Status
jse_itac_marketdata_mitch_v4_07.trading_status = {}

-- Size: Trading Status
jse_itac_marketdata_mitch_v4_07.trading_status.size = 1

-- Display: Trading Status
jse_itac_marketdata_mitch_v4_07.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Or Start Trade Reporting (T)"
  end
  if value == "a" then
    return "Trading Status: Opening Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Market Close (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Volatility Auction Call (e)"
  end
  if value == "E" then
    return "Trading Status: End Of Day Volume Auction Call (E)"
  end
  if value == "f" then
    return "Trading Status: Re Opening Auction Call (f)"
  end
  if value == "l" then
    return "Trading Status: Pause (l)"
  end
  if value == "p" then
    return "Trading Status: Futures Close Out (p)"
  end
  if value == "s" then
    return "Trading Status: Closing Price Cross (s)"
  end
  if value == "u" then
    return "Trading Status: Intra Day Auction Call (u)"
  end
  if value == "v" then
    return "Trading Status: End Trade Reporting (v)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "y" then
    return "Trading Status: Start Of Trading (y)"
  end
  if value == "z" then
    return "Trading Status: Closing Price Publication (z)"
  end
  if value == "Z" then
    return "Trading Status: Fx Auction Call (Z)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
jse_itac_marketdata_mitch_v4_07.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Turnover
jse_itac_marketdata_mitch_v4_07.turnover = {}

-- Size: Turnover
jse_itac_marketdata_mitch_v4_07.turnover.size = 8

-- Display: Turnover
jse_itac_marketdata_mitch_v4_07.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
jse_itac_marketdata_mitch_v4_07.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
jse_itac_marketdata_mitch_v4_07.turnover.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_marketdata_mitch_v4_07.turnover.translate(raw)
  local display = jse_itac_marketdata_mitch_v4_07.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.turnover, range, value, display)

  return offset + length, value
end

-- Underlying
jse_itac_marketdata_mitch_v4_07.underlying = {}

-- Size: Underlying
jse_itac_marketdata_mitch_v4_07.underlying.size = 25

-- Display: Underlying
jse_itac_marketdata_mitch_v4_07.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
jse_itac_marketdata_mitch_v4_07.underlying.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.underlying, range, value, display)

  return offset + length, value
end

-- Underlying Reference Price
jse_itac_marketdata_mitch_v4_07.underlying_reference_price = {}

-- Size: Underlying Reference Price
jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size = 8

-- Display: Underlying Reference Price
jse_itac_marketdata_mitch_v4_07.underlying_reference_price.display = function(value)
  return "Underlying Reference Price: "..value
end

-- Dissect: Underlying Reference Price
jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.underlying_reference_price, range, value, display)

  return offset + length, value
end

-- Underlyings
jse_itac_marketdata_mitch_v4_07.underlyings = {}

-- Size: Underlyings
jse_itac_marketdata_mitch_v4_07.underlyings.size = 100

-- Display: Underlyings
jse_itac_marketdata_mitch_v4_07.underlyings.display = function(value)
  return "Underlyings: "..value
end

-- Dissect: Underlyings
jse_itac_marketdata_mitch_v4_07.underlyings.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.underlyings.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.underlyings.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.underlyings, range, value, display)

  return offset + length, value
end

-- Urgency
jse_itac_marketdata_mitch_v4_07.urgency = {}

-- Size: Urgency
jse_itac_marketdata_mitch_v4_07.urgency.size = 1

-- Display: Urgency
jse_itac_marketdata_mitch_v4_07.urgency.display = function(value)
  if value == "0" then
    return "Urgency: Regular (0)"
  end
  if value == "1" then
    return "Urgency: High Priority (1)"
  end
  if value == "2" then
    return "Urgency: Low Priority (2)"
  end

  return "Urgency: Unknown("..value..")"
end

-- Dissect: Urgency
jse_itac_marketdata_mitch_v4_07.urgency.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.urgency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.urgency.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.urgency, range, value, display)

  return offset + length, value
end

-- Username
jse_itac_marketdata_mitch_v4_07.username = {}

-- Size: Username
jse_itac_marketdata_mitch_v4_07.username.size = 6

-- Display: Username
jse_itac_marketdata_mitch_v4_07.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
jse_itac_marketdata_mitch_v4_07.username.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.username, range, value, display)

  return offset + length, value
end

-- Vega
jse_itac_marketdata_mitch_v4_07.vega = {}

-- Size: Vega
jse_itac_marketdata_mitch_v4_07.vega.size = 8

-- Display: Vega
jse_itac_marketdata_mitch_v4_07.vega.display = function(value)
  return "Vega: "..value
end

-- Dissect: Vega
jse_itac_marketdata_mitch_v4_07.vega.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.vega.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.vega, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
jse_itac_marketdata_mitch_v4_07.venue_of_execution = {}

-- Size: Venue Of Execution
jse_itac_marketdata_mitch_v4_07.venue_of_execution.size = 4

-- Display: Venue Of Execution
jse_itac_marketdata_mitch_v4_07.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
jse_itac_marketdata_mitch_v4_07.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.venue_of_execution.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_marketdata_mitch_v4_07.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Volatility
jse_itac_marketdata_mitch_v4_07.volatility = {}

-- Size: Volatility
jse_itac_marketdata_mitch_v4_07.volatility.size = 8

-- Display: Volatility
jse_itac_marketdata_mitch_v4_07.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
jse_itac_marketdata_mitch_v4_07.volatility.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.volatility.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume
jse_itac_marketdata_mitch_v4_07.volume = {}

-- Size: Volume
jse_itac_marketdata_mitch_v4_07.volume.size = 4

-- Display: Volume
jse_itac_marketdata_mitch_v4_07.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
jse_itac_marketdata_mitch_v4_07.volume.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.volume, range, value, display)

  return offset + length, value
end

-- Vwap
jse_itac_marketdata_mitch_v4_07.vwap = {}

-- Size: Vwap
jse_itac_marketdata_mitch_v4_07.vwap.size = 8

-- Display: Vwap
jse_itac_marketdata_mitch_v4_07.vwap.display = function(value)
  return "Vwap: "..value
end

-- Dissect: Vwap
jse_itac_marketdata_mitch_v4_07.vwap.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_marketdata_mitch_v4_07.vwap.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = jse_itac_marketdata_mitch_v4_07.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.vwap, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jse Itac MarketData Mitch 4.07
-----------------------------------------------------------------------

-- Indicative Quote Info Message
jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message = {}

-- Size: Indicative Quote Info Message
jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.rfq_id.size + 
  jse_itac_marketdata_mitch_v4_07.indicative_bid_price.size + 
  jse_itac_marketdata_mitch_v4_07.indicative_offer_price.size

-- Display: Indicative Quote Info Message
jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Quote Info Message
jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Rfq Id: Alpha
  index, rfq_id = jse_itac_marketdata_mitch_v4_07.rfq_id.dissect(buffer, index, packet, parent)

  -- Indicative Bid Price: Price
  index, indicative_bid_price = jse_itac_marketdata_mitch_v4_07.indicative_bid_price.dissect(buffer, index, packet, parent)

  -- Indicative Offer Price: Price
  index, indicative_offer_price = jse_itac_marketdata_mitch_v4_07.indicative_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Quote Info Message
jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.indicative_quote_info_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Sub Book Flags
jse_itac_marketdata_mitch_v4_07.sub_book_flags = {}

-- Size: Sub Book Flags
jse_itac_marketdata_mitch_v4_07.sub_book_flags.size = 1

-- Display: Sub Book Flags
jse_itac_marketdata_mitch_v4_07.sub_book_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Regular flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Regular"
  end
  -- Is Off Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Off Book"
  end
  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end
  -- Is Negotiated Trades flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Negotiated Trades"
  end
  -- Is Fx Auction flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Fx Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sub Book Flags
jse_itac_marketdata_mitch_v4_07.sub_book_flags.bits = function(range, value, packet, parent)

  -- Regular: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.regular, range, value)

  -- Off Book: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.off_book, range, value)

  -- Unused 3: 3 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_3, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.bulletin_board, range, value)

  -- Negotiated Trades: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.negotiated_trades, range, value)

  -- Fx Auction: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.fx_auction, range, value)
end

-- Dissect: Sub Book Flags
jse_itac_marketdata_mitch_v4_07.sub_book_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.sub_book_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.sub_book_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.sub_book_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.sub_book_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Top Of Book Message
jse_itac_marketdata_mitch_v4_07.top_of_book_message = {}

-- Size: Top Of Book Message
jse_itac_marketdata_mitch_v4_07.top_of_book_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserve_field.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book_flags.size + 
  jse_itac_marketdata_mitch_v4_07.action.size + 
  jse_itac_marketdata_mitch_v4_07.side.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.quantity.size + 
  jse_itac_marketdata_mitch_v4_07.market_order_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_2.size + 
  jse_itac_marketdata_mitch_v4_07.splits.size

-- Display: Top Of Book Message
jse_itac_marketdata_mitch_v4_07.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
jse_itac_marketdata_mitch_v4_07.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserve Field: UInt16
  index, reserve_field = jse_itac_marketdata_mitch_v4_07.reserve_field.dissect(buffer, index, packet, parent)

  -- Sub Book Flags: Struct of 6 fields
  index, sub_book_flags = jse_itac_marketdata_mitch_v4_07.sub_book_flags.dissect(buffer, index, packet, parent)

  -- Action: Byte
  index, action = jse_itac_marketdata_mitch_v4_07.action.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = jse_itac_marketdata_mitch_v4_07.side.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = jse_itac_marketdata_mitch_v4_07.quantity.dissect(buffer, index, packet, parent)

  -- Market Order Quantity: UInt32
  index, market_order_quantity = jse_itac_marketdata_mitch_v4_07.market_order_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 2: Byte
  index, reserved_2 = jse_itac_marketdata_mitch_v4_07.reserved_2.dissect(buffer, index, packet, parent)

  -- Splits: UInt32
  index, splits = jse_itac_marketdata_mitch_v4_07.splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
jse_itac_marketdata_mitch_v4_07.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.top_of_book_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
jse_itac_marketdata_mitch_v4_07.news_message = {}

-- Size: News Message
jse_itac_marketdata_mitch_v4_07.news_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.time.size + 
  jse_itac_marketdata_mitch_v4_07.urgency.size + 
  jse_itac_marketdata_mitch_v4_07.headline.size + 
  jse_itac_marketdata_mitch_v4_07.text.size + 
  jse_itac_marketdata_mitch_v4_07.instruments.size + 
  jse_itac_marketdata_mitch_v4_07.underlyings.size

-- Display: News Message
jse_itac_marketdata_mitch_v4_07.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
jse_itac_marketdata_mitch_v4_07.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Time: Time
  index, time = jse_itac_marketdata_mitch_v4_07.time.dissect(buffer, index, packet, parent)

  -- Urgency: Byte
  index, urgency = jse_itac_marketdata_mitch_v4_07.urgency.dissect(buffer, index, packet, parent)

  -- Headline: Alpha
  index, headline = jse_itac_marketdata_mitch_v4_07.headline.dissect(buffer, index, packet, parent)

  -- Text: Alpha
  index, text = jse_itac_marketdata_mitch_v4_07.text.dissect(buffer, index, packet, parent)

  -- Instruments: Alpha
  index, instruments = jse_itac_marketdata_mitch_v4_07.instruments.dissect(buffer, index, packet, parent)

  -- Underlyings: Alpha
  index, underlyings = jse_itac_marketdata_mitch_v4_07.underlyings.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
jse_itac_marketdata_mitch_v4_07.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.news_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Statistics Message
jse_itac_marketdata_mitch_v4_07.extended_statistics_message = {}

-- Size: Extended Statistics Message
jse_itac_marketdata_mitch_v4_07.extended_statistics_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.high_price.size + 
  jse_itac_marketdata_mitch_v4_07.low_price.size + 
  jse_itac_marketdata_mitch_v4_07.vwap.size + 
  jse_itac_marketdata_mitch_v4_07.volume.size + 
  jse_itac_marketdata_mitch_v4_07.turnover.size + 
  jse_itac_marketdata_mitch_v4_07.number_of_trades.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_8.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book.size + 
  jse_itac_marketdata_mitch_v4_07.notional_exposure.size + 
  jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.size + 
  jse_itac_marketdata_mitch_v4_07.open_interest.size + 
  jse_itac_marketdata_mitch_v4_07.theoretical_price.size + 
  jse_itac_marketdata_mitch_v4_07.delta.size + 
  jse_itac_marketdata_mitch_v4_07.gamma.size + 
  jse_itac_marketdata_mitch_v4_07.vega.size + 
  jse_itac_marketdata_mitch_v4_07.theta.size + 
  jse_itac_marketdata_mitch_v4_07.rho.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size

-- Display: Extended Statistics Message
jse_itac_marketdata_mitch_v4_07.extended_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Statistics Message
jse_itac_marketdata_mitch_v4_07.extended_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- High Price: Price
  index, high_price = jse_itac_marketdata_mitch_v4_07.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Price
  index, low_price = jse_itac_marketdata_mitch_v4_07.low_price.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = jse_itac_marketdata_mitch_v4_07.vwap.dissect(buffer, index, packet, parent)

  -- Volume: UInt32
  index, volume = jse_itac_marketdata_mitch_v4_07.volume.dissect(buffer, index, packet, parent)

  -- Turnover: Price i4
  index, turnover = jse_itac_marketdata_mitch_v4_07.turnover.dissect(buffer, index, packet, parent)

  -- Number Of Trades: UInt32
  index, number_of_trades = jse_itac_marketdata_mitch_v4_07.number_of_trades.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alpha
  index, reserved_8 = jse_itac_marketdata_mitch_v4_07.reserved_8.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = jse_itac_marketdata_mitch_v4_07.sub_book.dissect(buffer, index, packet, parent)

  -- Notional Exposure: Price i4
  index, notional_exposure = jse_itac_marketdata_mitch_v4_07.notional_exposure.dissect(buffer, index, packet, parent)

  -- Notional Delta Exposure: Price i4
  index, notional_delta_exposure = jse_itac_marketdata_mitch_v4_07.notional_delta_exposure.dissect(buffer, index, packet, parent)

  -- Open Interest: Price
  index, open_interest = jse_itac_marketdata_mitch_v4_07.open_interest.dissect(buffer, index, packet, parent)

  -- Theoretical Price: Price
  index, theoretical_price = jse_itac_marketdata_mitch_v4_07.theoretical_price.dissect(buffer, index, packet, parent)

  -- Delta: Price
  index, delta = jse_itac_marketdata_mitch_v4_07.delta.dissect(buffer, index, packet, parent)

  -- Gamma: Price
  index, gamma = jse_itac_marketdata_mitch_v4_07.gamma.dissect(buffer, index, packet, parent)

  -- Vega: Price
  index, vega = jse_itac_marketdata_mitch_v4_07.vega.dissect(buffer, index, packet, parent)

  -- Theta: Price
  index, theta = jse_itac_marketdata_mitch_v4_07.theta.dissect(buffer, index, packet, parent)

  -- Rho: Price
  index, rho = jse_itac_marketdata_mitch_v4_07.rho.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Statistics Message
jse_itac_marketdata_mitch_v4_07.extended_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.extended_statistics_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.extended_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.extended_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.extended_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
jse_itac_marketdata_mitch_v4_07.statistics_message = {}

-- Size: Statistics Message
jse_itac_marketdata_mitch_v4_07.statistics_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.statistic_type.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.open_close_indicator.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book.size

-- Display: Statistics Message
jse_itac_marketdata_mitch_v4_07.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
jse_itac_marketdata_mitch_v4_07.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Statistic Type: Alpha
  index, statistic_type = jse_itac_marketdata_mitch_v4_07.statistic_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alpha
  index, open_close_indicator = jse_itac_marketdata_mitch_v4_07.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = jse_itac_marketdata_mitch_v4_07.sub_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
jse_itac_marketdata_mitch_v4_07.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.statistics_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Info Message
jse_itac_marketdata_mitch_v4_07.auction_info_message = {}

-- Size: Auction Info Message
jse_itac_marketdata_mitch_v4_07.auction_info_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.paired_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_4.size + 
  jse_itac_marketdata_mitch_v4_07.imbalance_direction.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.auction_type.size

-- Display: Auction Info Message
jse_itac_marketdata_mitch_v4_07.auction_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Info Message
jse_itac_marketdata_mitch_v4_07.auction_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Paired Quantity: UInt32
  index, paired_quantity = jse_itac_marketdata_mitch_v4_07.paired_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 4: UInt32
  index, reserved_4 = jse_itac_marketdata_mitch_v4_07.reserved_4.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Byte
  index, imbalance_direction = jse_itac_marketdata_mitch_v4_07.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = jse_itac_marketdata_mitch_v4_07.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Info Message
jse_itac_marketdata_mitch_v4_07.auction_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.auction_info_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.auction_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.auction_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.auction_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Trade Flags
jse_itac_marketdata_mitch_v4_07.recovery_trade_flags = {}

-- Size: Recovery Trade Flags
jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.size = 1

-- Display: Recovery Trade Flags
jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Condition Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Condition Flag"
  end
  -- Is Crossed Order flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Crossed Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Recovery Trade Flags
jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.bits = function(range, value, packet, parent)

  -- Trade Condition Flag: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_condition_flag, range, value)

  -- Crossed Order: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.crossed_order, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_6, range, value)
end

-- Dissect: Recovery Trade Flags
jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.recovery_trade_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Recovery Trade Message
jse_itac_marketdata_mitch_v4_07.recovery_trade_message = {}

-- Size: Recovery Trade Message
jse_itac_marketdata_mitch_v4_07.recovery_trade_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.executed_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.trade_id.size + 
  jse_itac_marketdata_mitch_v4_07.auction_type.size + 
  jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.size + 
  jse_itac_marketdata_mitch_v4_07.trade_time.size + 
  jse_itac_marketdata_mitch_v4_07.trade_date.size + 
  jse_itac_marketdata_mitch_v4_07.action_type.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book.size + 
  jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.size + 
  jse_itac_marketdata_mitch_v4_07.last_opt_px.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size + 
  jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size + 
  jse_itac_marketdata_mitch_v4_07.venue_of_execution.size + 
  jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.size + 
  jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.size

-- Display: Recovery Trade Message
jse_itac_marketdata_mitch_v4_07.recovery_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Trade Message
jse_itac_marketdata_mitch_v4_07.recovery_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = jse_itac_marketdata_mitch_v4_07.executed_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = jse_itac_marketdata_mitch_v4_07.trade_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = jse_itac_marketdata_mitch_v4_07.auction_type.dissect(buffer, index, packet, parent)

  -- Off Book Rfq Trade Type: Alpha
  index, off_book_rfq_trade_type = jse_itac_marketdata_mitch_v4_07.off_book_rfq_trade_type.dissect(buffer, index, packet, parent)

  -- Trade Time: Time
  index, trade_time = jse_itac_marketdata_mitch_v4_07.trade_time.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = jse_itac_marketdata_mitch_v4_07.trade_date.dissect(buffer, index, packet, parent)

  -- Action Type: Byte
  index, action_type = jse_itac_marketdata_mitch_v4_07.action_type.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = jse_itac_marketdata_mitch_v4_07.sub_book.dissect(buffer, index, packet, parent)

  -- Recovery Trade Flags: Struct of 3 fields
  index, recovery_trade_flags = jse_itac_marketdata_mitch_v4_07.recovery_trade_flags.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Price
  index, underlying_reference_price = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = jse_itac_marketdata_mitch_v4_07.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: Alpha
  index, pt_cancellation_flag = jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: Alpha
  index, pt_amendment_flag = jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Trade Message
jse_itac_marketdata_mitch_v4_07.recovery_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.recovery_trade_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.recovery_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.recovery_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.recovery_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Off Book Trade Message
jse_itac_marketdata_mitch_v4_07.off_book_trade_message = {}

-- Size: Off Book Trade Message
jse_itac_marketdata_mitch_v4_07.off_book_trade_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.executed_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.trade_id.size + 
  jse_itac_marketdata_mitch_v4_07.off_book_trade_type.size + 
  jse_itac_marketdata_mitch_v4_07.trade_time.size + 
  jse_itac_marketdata_mitch_v4_07.trade_date.size + 
  jse_itac_marketdata_mitch_v4_07.last_opt_px.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size + 
  jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size + 
  jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.size

-- Display: Off Book Trade Message
jse_itac_marketdata_mitch_v4_07.off_book_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Off Book Trade Message
jse_itac_marketdata_mitch_v4_07.off_book_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = jse_itac_marketdata_mitch_v4_07.executed_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = jse_itac_marketdata_mitch_v4_07.trade_id.dissect(buffer, index, packet, parent)

  -- Off Book Trade Type: Alpha
  index, off_book_trade_type = jse_itac_marketdata_mitch_v4_07.off_book_trade_type.dissect(buffer, index, packet, parent)

  -- Trade Time: Time
  index, trade_time = jse_itac_marketdata_mitch_v4_07.trade_time.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = jse_itac_marketdata_mitch_v4_07.trade_date.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Price
  index, underlying_reference_price = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: Alpha
  index, pt_cancellation_flag = jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Off Book Trade Message
jse_itac_marketdata_mitch_v4_07.off_book_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.off_book_trade_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.off_book_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.off_book_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.off_book_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
jse_itac_marketdata_mitch_v4_07.auction_trade_message = {}

-- Size: Auction Trade Message
jse_itac_marketdata_mitch_v4_07.auction_trade_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.quantity.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.trade_id.size + 
  jse_itac_marketdata_mitch_v4_07.auction_type.size + 
  jse_itac_marketdata_mitch_v4_07.last_opt_px.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size + 
  jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size + 
  jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.size + 
  jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.size + 
  jse_itac_marketdata_mitch_v4_07.venue_of_execution.size

-- Display: Auction Trade Message
jse_itac_marketdata_mitch_v4_07.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
jse_itac_marketdata_mitch_v4_07.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = jse_itac_marketdata_mitch_v4_07.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = jse_itac_marketdata_mitch_v4_07.trade_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = jse_itac_marketdata_mitch_v4_07.auction_type.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Price
  index, underlying_reference_price = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: Alpha
  index, pt_cancellation_flag = jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: Alpha
  index, pt_amendment_flag = jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = jse_itac_marketdata_mitch_v4_07.venue_of_execution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
jse_itac_marketdata_mitch_v4_07.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.auction_trade_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
jse_itac_marketdata_mitch_v4_07.trade_flags = {}

-- Size: Trade Flags
jse_itac_marketdata_mitch_v4_07.trade_flags.size = 1

-- Display: Trade Flags
jse_itac_marketdata_mitch_v4_07.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Condition Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Condition Flag"
  end
  -- Is Crossed Order Trade flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Crossed Order Trade"
  end
  -- Is Fx Auction Trade flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Fx Auction Trade"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
jse_itac_marketdata_mitch_v4_07.trade_flags.bits = function(range, value, packet, parent)

  -- Trade Condition Flag: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_condition_flag, range, value)

  -- Crossed Order Trade: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.crossed_order_trade, range, value)

  -- Fx Auction Trade: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.fx_auction_trade, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_5, range, value)
end

-- Dissect: Trade Flags
jse_itac_marketdata_mitch_v4_07.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
jse_itac_marketdata_mitch_v4_07.trade_message = {}

-- Size: Trade Message
jse_itac_marketdata_mitch_v4_07.trade_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.executed_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.trade_id.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book.size + 
  jse_itac_marketdata_mitch_v4_07.trade_flags.size + 
  jse_itac_marketdata_mitch_v4_07.trade_sub_type.size + 
  jse_itac_marketdata_mitch_v4_07.last_opt_px.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size + 
  jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size + 
  jse_itac_marketdata_mitch_v4_07.venue_of_execution.size + 
  jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.size + 
  jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.size

-- Display: Trade Message
jse_itac_marketdata_mitch_v4_07.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
jse_itac_marketdata_mitch_v4_07.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = jse_itac_marketdata_mitch_v4_07.executed_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = jse_itac_marketdata_mitch_v4_07.trade_id.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = jse_itac_marketdata_mitch_v4_07.sub_book.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 4 fields
  index, trade_flags = jse_itac_marketdata_mitch_v4_07.trade_flags.dissect(buffer, index, packet, parent)

  -- Trade Sub Type: Alpha
  index, trade_sub_type = jse_itac_marketdata_mitch_v4_07.trade_sub_type.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Price
  index, underlying_reference_price = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = jse_itac_marketdata_mitch_v4_07.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: Alpha
  index, pt_cancellation_flag = jse_itac_marketdata_mitch_v4_07.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: Alpha
  index, pt_amendment_flag = jse_itac_marketdata_mitch_v4_07.pt_amendment_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
jse_itac_marketdata_mitch_v4_07.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.trade_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Size Message
jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message = {}

-- Size: Order Executed With Price Size Message
jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.order_id.size + 
  jse_itac_marketdata_mitch_v4_07.executed_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.display_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.trade_id.size + 
  jse_itac_marketdata_mitch_v4_07.printable.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.last_opt_px.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size + 
  jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size + 
  jse_itac_marketdata_mitch_v4_07.venue_of_execution.size

-- Display: Order Executed With Price Size Message
jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Size Message
jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = jse_itac_marketdata_mitch_v4_07.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = jse_itac_marketdata_mitch_v4_07.executed_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: UInt32
  index, display_quantity = jse_itac_marketdata_mitch_v4_07.display_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = jse_itac_marketdata_mitch_v4_07.trade_id.dissect(buffer, index, packet, parent)

  -- Printable: Byte
  index, printable = jse_itac_marketdata_mitch_v4_07.printable.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Price
  index, underlying_reference_price = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = jse_itac_marketdata_mitch_v4_07.venue_of_execution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Size Message
jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_executed_with_price_size_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
jse_itac_marketdata_mitch_v4_07.order_executed_message = {}

-- Size: Order Executed Message
jse_itac_marketdata_mitch_v4_07.order_executed_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.order_id.size + 
  jse_itac_marketdata_mitch_v4_07.executed_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.trade_id.size + 
  jse_itac_marketdata_mitch_v4_07.last_opt_px.size + 
  jse_itac_marketdata_mitch_v4_07.volatility.size + 
  jse_itac_marketdata_mitch_v4_07.underlying_reference_price.size + 
  jse_itac_marketdata_mitch_v4_07.venue_of_execution.size

-- Display: Order Executed Message
jse_itac_marketdata_mitch_v4_07.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jse_itac_marketdata_mitch_v4_07.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = jse_itac_marketdata_mitch_v4_07.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = jse_itac_marketdata_mitch_v4_07.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = jse_itac_marketdata_mitch_v4_07.trade_id.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_marketdata_mitch_v4_07.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_marketdata_mitch_v4_07.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Price
  index, underlying_reference_price = jse_itac_marketdata_mitch_v4_07.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: Alpha
  index, venue_of_execution = jse_itac_marketdata_mitch_v4_07.venue_of_execution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jse_itac_marketdata_mitch_v4_07.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_executed_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
jse_itac_marketdata_mitch_v4_07.order_book_clear_message = {}

-- Size: Order Book Clear Message
jse_itac_marketdata_mitch_v4_07.order_book_clear_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book.size + 
  jse_itac_marketdata_mitch_v4_07.book_type_byte_1.size

-- Display: Order Book Clear Message
jse_itac_marketdata_mitch_v4_07.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
jse_itac_marketdata_mitch_v4_07.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = jse_itac_marketdata_mitch_v4_07.sub_book.dissect(buffer, index, packet, parent)

  -- Book Type Byte 1: Byte
  index, book_type_byte_1 = jse_itac_marketdata_mitch_v4_07.book_type_byte_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
jse_itac_marketdata_mitch_v4_07.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_book_clear_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Flags
jse_itac_marketdata_mitch_v4_07.order_modified_flags = {}

-- Size: Order Modified Flags
jse_itac_marketdata_mitch_v4_07.order_modified_flags.size = 1

-- Display: Order Modified Flags
jse_itac_marketdata_mitch_v4_07.order_modified_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Priority Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Priority Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modified Flags
jse_itac_marketdata_mitch_v4_07.order_modified_flags.bits = function(range, value, packet, parent)

  -- Priority Flag: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.priority_flag, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_7, range, value)
end

-- Dissect: Order Modified Flags
jse_itac_marketdata_mitch_v4_07.order_modified_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.order_modified_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.order_modified_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_modified_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.order_modified_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modified Message
jse_itac_marketdata_mitch_v4_07.order_modified_message = {}

-- Size: Order Modified Message
jse_itac_marketdata_mitch_v4_07.order_modified_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.order_id.size + 
  jse_itac_marketdata_mitch_v4_07.new_quantity.size + 
  jse_itac_marketdata_mitch_v4_07.new_price.size + 
  jse_itac_marketdata_mitch_v4_07.order_modified_flags.size

-- Display: Order Modified Message
jse_itac_marketdata_mitch_v4_07.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
jse_itac_marketdata_mitch_v4_07.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = jse_itac_marketdata_mitch_v4_07.order_id.dissect(buffer, index, packet, parent)

  -- New Quantity: UInt32
  index, new_quantity = jse_itac_marketdata_mitch_v4_07.new_quantity.dissect(buffer, index, packet, parent)

  -- New Price: Price
  index, new_price = jse_itac_marketdata_mitch_v4_07.new_price.dissect(buffer, index, packet, parent)

  -- Order Modified Flags: Struct of 2 fields
  index, order_modified_flags = jse_itac_marketdata_mitch_v4_07.order_modified_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
jse_itac_marketdata_mitch_v4_07.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_modified_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
jse_itac_marketdata_mitch_v4_07.order_deleted_message = {}

-- Size: Order Deleted Message
jse_itac_marketdata_mitch_v4_07.order_deleted_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.order_id.size

-- Display: Order Deleted Message
jse_itac_marketdata_mitch_v4_07.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
jse_itac_marketdata_mitch_v4_07.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = jse_itac_marketdata_mitch_v4_07.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
jse_itac_marketdata_mitch_v4_07.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.order_deleted_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Attributed Order Flags
jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags = {}

-- Size: Add Attributed Order Flags
jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.size = 1

-- Display: Add Attributed Order Flags
jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Regular flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Regular"
  end
  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Attributed Order Flags
jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.bits = function(range, value, packet, parent)

  -- Regular: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.regular, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_4, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.bulletin_board, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_2, range, value)
end

-- Dissect: Add Attributed Order Flags
jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.add_attributed_order_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Attributed Order Message
jse_itac_marketdata_mitch_v4_07.add_attributed_order_message = {}

-- Size: Add Attributed Order Message
jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.order_id.size + 
  jse_itac_marketdata_mitch_v4_07.side.size + 
  jse_itac_marketdata_mitch_v4_07.quantity.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.attribution.size + 
  jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.size

-- Display: Add Attributed Order Message
jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Attributed Order Message
jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = jse_itac_marketdata_mitch_v4_07.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = jse_itac_marketdata_mitch_v4_07.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = jse_itac_marketdata_mitch_v4_07.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = jse_itac_marketdata_mitch_v4_07.attribution.dissect(buffer, index, packet, parent)

  -- Add Attributed Order Flags: Struct of 4 fields
  index, add_attributed_order_flags = jse_itac_marketdata_mitch_v4_07.add_attributed_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Attributed Order Message
jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.add_attributed_order_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Flags
jse_itac_marketdata_mitch_v4_07.add_order_flags = {}

-- Size: Add Order Flags
jse_itac_marketdata_mitch_v4_07.add_order_flags.size = 1

-- Display: Add Order Flags
jse_itac_marketdata_mitch_v4_07.add_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Market Order"
  end
  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Order Flags
jse_itac_marketdata_mitch_v4_07.add_order_flags.bits = function(range, value, packet, parent)

  -- Unused 4: 4 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_4, range, value)

  -- Market Order: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.market_order, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.bulletin_board, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_2, range, value)
end

-- Dissect: Add Order Flags
jse_itac_marketdata_mitch_v4_07.add_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.add_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.add_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.add_order_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.add_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Message
jse_itac_marketdata_mitch_v4_07.add_order_message = {}

-- Size: Add Order Message
jse_itac_marketdata_mitch_v4_07.add_order_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.order_id.size + 
  jse_itac_marketdata_mitch_v4_07.side.size + 
  jse_itac_marketdata_mitch_v4_07.quantity.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.price.size + 
  jse_itac_marketdata_mitch_v4_07.add_order_flags.size + 
  jse_itac_marketdata_mitch_v4_07.rfq_id.size

-- Display: Add Order Message
jse_itac_marketdata_mitch_v4_07.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
jse_itac_marketdata_mitch_v4_07.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = jse_itac_marketdata_mitch_v4_07.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = jse_itac_marketdata_mitch_v4_07.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = jse_itac_marketdata_mitch_v4_07.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jse_itac_marketdata_mitch_v4_07.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 4 fields
  index, add_order_flags = jse_itac_marketdata_mitch_v4_07.add_order_flags.dissect(buffer, index, packet, parent)

  -- Rfq Id: Alpha
  index, rfq_id = jse_itac_marketdata_mitch_v4_07.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
jse_itac_marketdata_mitch_v4_07.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.add_order_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Flags
jse_itac_marketdata_mitch_v4_07.symbol_status_flags = {}

-- Size: Symbol Status Flags
jse_itac_marketdata_mitch_v4_07.symbol_status_flags.size = 1

-- Display: Symbol Status Flags
jse_itac_marketdata_mitch_v4_07.symbol_status_flags.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Status Flags
jse_itac_marketdata_mitch_v4_07.symbol_status_flags.bits = function(range, value, packet, parent)

  -- Unused 8: 8 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_8, range, value)
end

-- Dissect: Symbol Status Flags
jse_itac_marketdata_mitch_v4_07.symbol_status_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.symbol_status_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.symbol_status_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_status_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.symbol_status_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
jse_itac_marketdata_mitch_v4_07.symbol_status_message = {}

-- Size: Symbol Status Message
jse_itac_marketdata_mitch_v4_07.symbol_status_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.trading_status.size + 
  jse_itac_marketdata_mitch_v4_07.symbol_status_flags.size + 
  jse_itac_marketdata_mitch_v4_07.reason.size + 
  jse_itac_marketdata_mitch_v4_07.session_change_reason.size + 
  jse_itac_marketdata_mitch_v4_07.new_end_time.size + 
  jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.size

-- Display: Symbol Status Message
jse_itac_marketdata_mitch_v4_07.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
jse_itac_marketdata_mitch_v4_07.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = jse_itac_marketdata_mitch_v4_07.trading_status.dissect(buffer, index, packet, parent)

  -- Symbol Status Flags: Struct of 1 fields
  index, symbol_status_flags = jse_itac_marketdata_mitch_v4_07.symbol_status_flags.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = jse_itac_marketdata_mitch_v4_07.reason.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = jse_itac_marketdata_mitch_v4_07.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Extended Time
  index, new_end_time = jse_itac_marketdata_mitch_v4_07.new_end_time.dissect(buffer, index, packet, parent)

  -- Book Type U Int 81: UInt8
  index, book_type_u_int_81 = jse_itac_marketdata_mitch_v4_07.book_type_u_int_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
jse_itac_marketdata_mitch_v4_07.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_status_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Directory Flags
jse_itac_marketdata_mitch_v4_07.symbol_directory_flags = {}

-- Size: Symbol Directory Flags
jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.size = 1

-- Display: Symbol Directory Flags
jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Inverse Order Book flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Inverse Order Book"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Directory Flags
jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.bits = function(range, value, packet, parent)

  -- Inverse Order Book: 1 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.inverse_order_book, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unused_7, range, value)
end

-- Dissect: Symbol Directory Flags
jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_directory_flags, range, display)

  if show.structs then
    jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Directory Message
jse_itac_marketdata_mitch_v4_07.symbol_directory_message = {}

-- Calculate size of: Symbol Directory Message
jse_itac_marketdata_mitch_v4_07.symbol_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + jse_itac_marketdata_mitch_v4_07.nanosecond.size

  index = index + jse_itac_marketdata_mitch_v4_07.instrument_id.size

  index = index + jse_itac_marketdata_mitch_v4_07.reserved_a.size

  index = index + jse_itac_marketdata_mitch_v4_07.reserved_b.size

  index = index + jse_itac_marketdata_mitch_v4_07.symbol_status.size

  index = index + jse_itac_marketdata_mitch_v4_07.isin.size

  index = index + jse_itac_marketdata_mitch_v4_07.symbol.size

  index = index + jse_itac_marketdata_mitch_v4_07.tidm.size

  index = index + jse_itac_marketdata_mitch_v4_07.segment.size

  index = index + jse_itac_marketdata_mitch_v4_07.previous_close_price.size

  index = index + jse_itac_marketdata_mitch_v4_07.expiration_date.size

  index = index + jse_itac_marketdata_mitch_v4_07.underlying.size

  index = index + jse_itac_marketdata_mitch_v4_07.strike_price.size

  index = index + jse_itac_marketdata_mitch_v4_07.option_type.size

  index = index + jse_itac_marketdata_mitch_v4_07.issuer.size

  index = index + jse_itac_marketdata_mitch_v4_07.issue_date.size

  index = index + jse_itac_marketdata_mitch_v4_07.coupon.size

  index = index + jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.size

  index = index + jse_itac_marketdata_mitch_v4_07.sub_book_flags.size

  index = index + jse_itac_marketdata_mitch_v4_07.corporate_action.size

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 332 then
    index = index + jse_itac_marketdata_mitch_v4_07.leg_1_symbol.size

  end

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 332 then
    index = index + jse_itac_marketdata_mitch_v4_07.leg_2_symbol.size

  end

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 332 then
    index = index + jse_itac_marketdata_mitch_v4_07.contract_multiplier.size

  end

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 332 then
    index = index + jse_itac_marketdata_mitch_v4_07.settlement_method.size

  end

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 332 then
    index = index + jse_itac_marketdata_mitch_v4_07.instrument_sub_category.size

  end

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 332 then
    index = index + jse_itac_marketdata_mitch_v4_07.exercise_style.size

  end

  return index
end

-- Display: Symbol Directory Message
jse_itac_marketdata_mitch_v4_07.symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Directory Message
jse_itac_marketdata_mitch_v4_07.symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Symbol Status: Alpha
  index, symbol_status = jse_itac_marketdata_mitch_v4_07.symbol_status.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = jse_itac_marketdata_mitch_v4_07.isin.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = jse_itac_marketdata_mitch_v4_07.symbol.dissect(buffer, index, packet, parent)

  -- Tidm: Alpha
  index, tidm = jse_itac_marketdata_mitch_v4_07.tidm.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = jse_itac_marketdata_mitch_v4_07.segment.dissect(buffer, index, packet, parent)

  -- Previous Close Price: Price
  index, previous_close_price = jse_itac_marketdata_mitch_v4_07.previous_close_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = jse_itac_marketdata_mitch_v4_07.expiration_date.dissect(buffer, index, packet, parent)

  -- Underlying: Alpha
  index, underlying = jse_itac_marketdata_mitch_v4_07.underlying.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = jse_itac_marketdata_mitch_v4_07.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = jse_itac_marketdata_mitch_v4_07.option_type.dissect(buffer, index, packet, parent)

  -- Issuer: Alpha
  index, issuer = jse_itac_marketdata_mitch_v4_07.issuer.dissect(buffer, index, packet, parent)

  -- Issue Date: Date
  index, issue_date = jse_itac_marketdata_mitch_v4_07.issue_date.dissect(buffer, index, packet, parent)

  -- Coupon: Price
  index, coupon = jse_itac_marketdata_mitch_v4_07.coupon.dissect(buffer, index, packet, parent)

  -- Symbol Directory Flags: Struct of 2 fields
  index, symbol_directory_flags = jse_itac_marketdata_mitch_v4_07.symbol_directory_flags.dissect(buffer, index, packet, parent)

  -- Sub Book Flags: Struct of 6 fields
  index, sub_book_flags = jse_itac_marketdata_mitch_v4_07.sub_book_flags.dissect(buffer, index, packet, parent)

  -- Corporate Action: Alpha
  index, corporate_action = jse_itac_marketdata_mitch_v4_07.corporate_action.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime optional field: Leg 1 Symbol
  local leg_1_symbol = nil

  local leg_1_symbol_exists = message_length > 332

  if leg_1_symbol_exists then
    index, leg_1_symbol = jse_itac_marketdata_mitch_v4_07.leg_1_symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leg 2 Symbol
  local leg_2_symbol = nil

  local leg_2_symbol_exists = message_length > 332

  if leg_2_symbol_exists then
    index, leg_2_symbol = jse_itac_marketdata_mitch_v4_07.leg_2_symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Contract Multiplier
  local contract_multiplier = nil

  local contract_multiplier_exists = message_length > 332

  if contract_multiplier_exists then
    index, contract_multiplier = jse_itac_marketdata_mitch_v4_07.contract_multiplier.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Settlement Method
  local settlement_method = nil

  local settlement_method_exists = message_length > 332

  if settlement_method_exists then
    index, settlement_method = jse_itac_marketdata_mitch_v4_07.settlement_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Instrument Sub Category
  local instrument_sub_category = nil

  local instrument_sub_category_exists = message_length > 332

  if instrument_sub_category_exists then
    index, instrument_sub_category = jse_itac_marketdata_mitch_v4_07.instrument_sub_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exercise Style
  local exercise_style = nil

  local exercise_style_exists = message_length > 332

  if exercise_style_exists then
    index, exercise_style = jse_itac_marketdata_mitch_v4_07.exercise_style.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Symbol Directory Message
jse_itac_marketdata_mitch_v4_07.symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.symbol_directory_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
jse_itac_marketdata_mitch_v4_07.system_event_message = {}

-- Size: System Event Message
jse_itac_marketdata_mitch_v4_07.system_event_message.size =
  jse_itac_marketdata_mitch_v4_07.nanosecond.size + 
  jse_itac_marketdata_mitch_v4_07.event_code.size

-- Display: System Event Message
jse_itac_marketdata_mitch_v4_07.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jse_itac_marketdata_mitch_v4_07.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = jse_itac_marketdata_mitch_v4_07.nanosecond.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = jse_itac_marketdata_mitch_v4_07.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jse_itac_marketdata_mitch_v4_07.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.system_event_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
jse_itac_marketdata_mitch_v4_07.time_message = {}

-- Size: Time Message
jse_itac_marketdata_mitch_v4_07.time_message.size =
  jse_itac_marketdata_mitch_v4_07.seconds.size

-- Display: Time Message
jse_itac_marketdata_mitch_v4_07.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
jse_itac_marketdata_mitch_v4_07.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: UInt32
  index, seconds = jse_itac_marketdata_mitch_v4_07.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
jse_itac_marketdata_mitch_v4_07.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.time_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Complete Message
jse_itac_marketdata_mitch_v4_07.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.size =
  jse_itac_marketdata_mitch_v4_07.sequence_number.size + 
  jse_itac_marketdata_mitch_v4_07.segment.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book_flags.size + 
  jse_itac_marketdata_mitch_v4_07.trading_status.size

-- Display: Snapshot Complete Message
jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = jse_itac_marketdata_mitch_v4_07.sequence_number.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = jse_itac_marketdata_mitch_v4_07.segment.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Sub Book Flags: Struct of 6 fields
  index, sub_book_flags = jse_itac_marketdata_mitch_v4_07.sub_book_flags.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = jse_itac_marketdata_mitch_v4_07.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_complete_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Response Message
jse_itac_marketdata_mitch_v4_07.snapshot_response_message = {}

-- Size: Snapshot Response Message
jse_itac_marketdata_mitch_v4_07.snapshot_response_message.size =
  jse_itac_marketdata_mitch_v4_07.sequence_number.size + 
  jse_itac_marketdata_mitch_v4_07.order_count.size + 
  jse_itac_marketdata_mitch_v4_07.status.size + 
  jse_itac_marketdata_mitch_v4_07.snapshot_type.size + 
  jse_itac_marketdata_mitch_v4_07.request_id.size

-- Display: Snapshot Response Message
jse_itac_marketdata_mitch_v4_07.snapshot_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Response Message
jse_itac_marketdata_mitch_v4_07.snapshot_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = jse_itac_marketdata_mitch_v4_07.sequence_number.dissect(buffer, index, packet, parent)

  -- Order Count: UInt32
  index, order_count = jse_itac_marketdata_mitch_v4_07.order_count.dissect(buffer, index, packet, parent)

  -- Status: Byte
  index, status = jse_itac_marketdata_mitch_v4_07.status.dissect(buffer, index, packet, parent)

  -- Snapshot Type: UInt8
  index, snapshot_type = jse_itac_marketdata_mitch_v4_07.snapshot_type.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = jse_itac_marketdata_mitch_v4_07.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Response Message
jse_itac_marketdata_mitch_v4_07.snapshot_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_response_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.snapshot_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.snapshot_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.snapshot_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Response Message
jse_itac_marketdata_mitch_v4_07.replay_response_message = {}

-- Size: Replay Response Message
jse_itac_marketdata_mitch_v4_07.replay_response_message.size =
  jse_itac_marketdata_mitch_v4_07.market_data_group.size + 
  jse_itac_marketdata_mitch_v4_07.first_message.size + 
  jse_itac_marketdata_mitch_v4_07.count.size + 
  jse_itac_marketdata_mitch_v4_07.status.size

-- Display: Replay Response Message
jse_itac_marketdata_mitch_v4_07.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
jse_itac_marketdata_mitch_v4_07.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Byte
  index, market_data_group = jse_itac_marketdata_mitch_v4_07.market_data_group.dissect(buffer, index, packet, parent)

  -- First Message: UInt32
  index, first_message = jse_itac_marketdata_mitch_v4_07.first_message.dissect(buffer, index, packet, parent)

  -- Count: UInt16
  index, count = jse_itac_marketdata_mitch_v4_07.count.dissect(buffer, index, packet, parent)

  -- Status: Byte
  index, status = jse_itac_marketdata_mitch_v4_07.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
jse_itac_marketdata_mitch_v4_07.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.replay_response_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
jse_itac_marketdata_mitch_v4_07.login_response_message = {}

-- Size: Login Response Message
jse_itac_marketdata_mitch_v4_07.login_response_message.size =
  jse_itac_marketdata_mitch_v4_07.status.size

-- Display: Login Response Message
jse_itac_marketdata_mitch_v4_07.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
jse_itac_marketdata_mitch_v4_07.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status: Byte
  index, status = jse_itac_marketdata_mitch_v4_07.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
jse_itac_marketdata_mitch_v4_07.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.login_response_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Request Message
jse_itac_marketdata_mitch_v4_07.snapshot_request_message = {}

-- Size: Snapshot Request Message
jse_itac_marketdata_mitch_v4_07.snapshot_request_message.size =
  jse_itac_marketdata_mitch_v4_07.sequence_number.size + 
  jse_itac_marketdata_mitch_v4_07.segment.size + 
  jse_itac_marketdata_mitch_v4_07.instrument_id.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_a.size + 
  jse_itac_marketdata_mitch_v4_07.reserved_b.size + 
  jse_itac_marketdata_mitch_v4_07.sub_book_flags.size + 
  jse_itac_marketdata_mitch_v4_07.snapshot_type.size + 
  jse_itac_marketdata_mitch_v4_07.recover_from_time.size + 
  jse_itac_marketdata_mitch_v4_07.request_id.size

-- Display: Snapshot Request Message
jse_itac_marketdata_mitch_v4_07.snapshot_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Request Message
jse_itac_marketdata_mitch_v4_07.snapshot_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = jse_itac_marketdata_mitch_v4_07.sequence_number.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = jse_itac_marketdata_mitch_v4_07.segment.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = jse_itac_marketdata_mitch_v4_07.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = jse_itac_marketdata_mitch_v4_07.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = jse_itac_marketdata_mitch_v4_07.reserved_b.dissect(buffer, index, packet, parent)

  -- Sub Book Flags: Struct of 6 fields
  index, sub_book_flags = jse_itac_marketdata_mitch_v4_07.sub_book_flags.dissect(buffer, index, packet, parent)

  -- Snapshot Type: UInt8
  index, snapshot_type = jse_itac_marketdata_mitch_v4_07.snapshot_type.dissect(buffer, index, packet, parent)

  -- Recover From Time: Time
  index, recover_from_time = jse_itac_marketdata_mitch_v4_07.recover_from_time.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = jse_itac_marketdata_mitch_v4_07.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Request Message
jse_itac_marketdata_mitch_v4_07.snapshot_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.snapshot_request_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.snapshot_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.snapshot_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.snapshot_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
jse_itac_marketdata_mitch_v4_07.replay_request_message = {}

-- Size: Replay Request Message
jse_itac_marketdata_mitch_v4_07.replay_request_message.size =
  jse_itac_marketdata_mitch_v4_07.market_data_group.size + 
  jse_itac_marketdata_mitch_v4_07.first_message.size + 
  jse_itac_marketdata_mitch_v4_07.count.size

-- Display: Replay Request Message
jse_itac_marketdata_mitch_v4_07.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
jse_itac_marketdata_mitch_v4_07.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Group: Byte
  index, market_data_group = jse_itac_marketdata_mitch_v4_07.market_data_group.dissect(buffer, index, packet, parent)

  -- First Message: UInt32
  index, first_message = jse_itac_marketdata_mitch_v4_07.first_message.dissect(buffer, index, packet, parent)

  -- Count: UInt16
  index, count = jse_itac_marketdata_mitch_v4_07.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
jse_itac_marketdata_mitch_v4_07.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.replay_request_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
jse_itac_marketdata_mitch_v4_07.login_request_message = {}

-- Size: Login Request Message
jse_itac_marketdata_mitch_v4_07.login_request_message.size =
  jse_itac_marketdata_mitch_v4_07.username.size + 
  jse_itac_marketdata_mitch_v4_07.password.size

-- Display: Login Request Message
jse_itac_marketdata_mitch_v4_07.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
jse_itac_marketdata_mitch_v4_07.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = jse_itac_marketdata_mitch_v4_07.username.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = jse_itac_marketdata_mitch_v4_07.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
jse_itac_marketdata_mitch_v4_07.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.login_request_message, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jse_itac_marketdata_mitch_v4_07.payload = {}

-- Dissect: Payload
jse_itac_marketdata_mitch_v4_07.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return jse_itac_marketdata_mitch_v4_07.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 0x03 then
    return jse_itac_marketdata_mitch_v4_07.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Request Message
  if message_type == 0x81 then
    return jse_itac_marketdata_mitch_v4_07.snapshot_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 0x05 then
    return offset
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return jse_itac_marketdata_mitch_v4_07.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Response Message
  if message_type == 0x04 then
    return jse_itac_marketdata_mitch_v4_07.replay_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Response Message
  if message_type == 0x82 then
    return jse_itac_marketdata_mitch_v4_07.snapshot_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if message_type == 0x83 then
    return jse_itac_marketdata_mitch_v4_07.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x54 then
    return jse_itac_marketdata_mitch_v4_07.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return jse_itac_marketdata_mitch_v4_07.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Directory Message
  if message_type == 0x52 then
    return jse_itac_marketdata_mitch_v4_07.symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == 0x48 then
    return jse_itac_marketdata_mitch_v4_07.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x41 then
    return jse_itac_marketdata_mitch_v4_07.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Attributed Order Message
  if message_type == 0x46 then
    return jse_itac_marketdata_mitch_v4_07.add_attributed_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == 0x44 then
    return jse_itac_marketdata_mitch_v4_07.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x55 then
    return jse_itac_marketdata_mitch_v4_07.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return jse_itac_marketdata_mitch_v4_07.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x45 then
    return jse_itac_marketdata_mitch_v4_07.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Size Message
  if message_type == 0x43 then
    return jse_itac_marketdata_mitch_v4_07.order_executed_with_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return jse_itac_marketdata_mitch_v4_07.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0x51 then
    return jse_itac_marketdata_mitch_v4_07.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Off Book Trade Message
  if message_type == 0x78 then
    return jse_itac_marketdata_mitch_v4_07.off_book_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Trade Message
  if message_type == 0x76 then
    return jse_itac_marketdata_mitch_v4_07.recovery_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Info Message
  if message_type == 0x49 then
    return jse_itac_marketdata_mitch_v4_07.auction_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return jse_itac_marketdata_mitch_v4_07.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Statistics Message
  if message_type == 0x80 then
    return jse_itac_marketdata_mitch_v4_07.extended_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x75 then
    return jse_itac_marketdata_mitch_v4_07.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x71 then
    return jse_itac_marketdata_mitch_v4_07.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Quote Info Message
  if message_type == 0x69 then
    return jse_itac_marketdata_mitch_v4_07.indicative_quote_info_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
jse_itac_marketdata_mitch_v4_07.message_header = {}

-- Size: Message Header
jse_itac_marketdata_mitch_v4_07.message_header.size =
  jse_itac_marketdata_mitch_v4_07.message_length.size + 
  jse_itac_marketdata_mitch_v4_07.message_type.size

-- Display: Message Header
jse_itac_marketdata_mitch_v4_07.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jse_itac_marketdata_mitch_v4_07.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = jse_itac_marketdata_mitch_v4_07.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 29 values
  index, message_type = jse_itac_marketdata_mitch_v4_07.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jse_itac_marketdata_mitch_v4_07.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.message_header, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jse_itac_marketdata_mitch_v4_07.message = {}

-- Display: Message
jse_itac_marketdata_mitch_v4_07.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jse_itac_marketdata_mitch_v4_07.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jse_itac_marketdata_mitch_v4_07.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 29 branches
  index = jse_itac_marketdata_mitch_v4_07.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jse_itac_marketdata_mitch_v4_07.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.message, buffer(offset, 0))
    local current = jse_itac_marketdata_mitch_v4_07.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jse_itac_marketdata_mitch_v4_07.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jse_itac_marketdata_mitch_v4_07.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
jse_itac_marketdata_mitch_v4_07.unit_header = {}

-- Size: Unit Header
jse_itac_marketdata_mitch_v4_07.unit_header.size =
  jse_itac_marketdata_mitch_v4_07.length.size + 
  jse_itac_marketdata_mitch_v4_07.message_count.size + 
  jse_itac_marketdata_mitch_v4_07.market_data_group.size + 
  jse_itac_marketdata_mitch_v4_07.sequence_number.size

-- Display: Unit Header
jse_itac_marketdata_mitch_v4_07.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
jse_itac_marketdata_mitch_v4_07.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = jse_itac_marketdata_mitch_v4_07.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = jse_itac_marketdata_mitch_v4_07.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: Byte
  index, market_data_group = jse_itac_marketdata_mitch_v4_07.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = jse_itac_marketdata_mitch_v4_07.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
jse_itac_marketdata_mitch_v4_07.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_marketdata_mitch_v4_07.fields.unit_header, buffer(offset, 0))
    local index = jse_itac_marketdata_mitch_v4_07.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_marketdata_mitch_v4_07.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_marketdata_mitch_v4_07.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
jse_itac_marketdata_mitch_v4_07.packet = {}

-- Verify required size of Udp packet
jse_itac_marketdata_mitch_v4_07.packet.requiredsize = function(buffer)
  return buffer:len() >= jse_itac_marketdata_mitch_v4_07.unit_header.size
end

-- Dissect Packet
jse_itac_marketdata_mitch_v4_07.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = jse_itac_marketdata_mitch_v4_07.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = jse_itac_marketdata_mitch_v4_07.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jse_itac_marketdata_mitch_v4_07.init()
end

-- Dissector for Jse Itac MarketData Mitch 4.07
function omi_jse_itac_marketdata_mitch_v4_07.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jse_itac_marketdata_mitch_v4_07.name

  -- Dissect protocol
  local protocol = parent:add(omi_jse_itac_marketdata_mitch_v4_07, buffer(), omi_jse_itac_marketdata_mitch_v4_07.description, "("..buffer:len().." Bytes)")
  return jse_itac_marketdata_mitch_v4_07.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jse Itac MarketData Mitch 4.07 (Udp)
local function omi_jse_itac_marketdata_mitch_v4_07_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jse_itac_marketdata_mitch_v4_07.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jse_itac_marketdata_mitch_v4_07
  omi_jse_itac_marketdata_mitch_v4_07.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jse Itac MarketData Mitch 4.07
omi_jse_itac_marketdata_mitch_v4_07:register_heuristic("udp", omi_jse_itac_marketdata_mitch_v4_07_udp_heuristic)

-- Register Jse Itac MarketData Mitch 4.07 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_jse_itac_marketdata_mitch_v4_07)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: JSE Limited
--   Version: 4.07
--   Date: Monday, April 20, 2026
--   Specification: JSE Volume 05 - Market Data Gateway MITCH-UDP (407).pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
