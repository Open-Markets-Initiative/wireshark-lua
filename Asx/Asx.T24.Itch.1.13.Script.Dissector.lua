-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx T24 Itch 1.13 Protocol
local asx_t24_itch_1_13 = Proto("Asx.T24.Itch.1.13.Lua", "Asx T24 Itch 1.13")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Asx T24 Itch 1.13 Format Options
format.ad_hoc_text_message = true
format.anomalous_order_threshold_publish = true
format.custom_market_executed = true
format.custom_market_order_added = true
format.custom_market_order_deleted = true
format.custom_market_order_replaced = true
format.custom_market_trade = true
format.equilibrium_price_auction_info = true
format.future_symbol_directory = true
format.implied_order_added = true
format.implied_order_deleted = true
format.implied_order_replaced = true
format.market_settlement = true
format.market_updates = true
format.message = true
format.message_header = true
format.open__high__low__last_trade_adjustment = true
format.option_symbol_directory = true
format.order_added = true
format.order_book_state = true
format.order_deleted = true
format.order_executed = true
format.order_executed_with_price = true
format.order_replaced = true
format.order_volume_cancelled = true
format.packet = true
format.packet_header = true
format.request_for_quote = true
format.session = true
format.spread_executed = true
format.spread_symbol_directory = true
format.system_event = true
format.time_message = true
format.trade_cancellation = true
format.trade_spread_execution_chain = true
format.volume_and_open_interest = true
format.payload = true

-- Asx T24 Itch 1.13 Element Dissection Options
show.ad_hoc_text_message = true
show.anomalous_order_threshold_publish = true
show.custom_market_executed = true
show.custom_market_order_added = true
show.custom_market_order_deleted = true
show.custom_market_order_replaced = true
show.custom_market_trade = true
show.equilibrium_price_auction_info = true
show.future_symbol_directory = true
show.implied_order_added = true
show.implied_order_deleted = true
show.implied_order_replaced = true
show.market_settlement = true
show.market_updates = true
show.message = true
show.message_header = true
show.open__high__low__last_trade_adjustment = true
show.option_symbol_directory = true
show.order_added = true
show.order_book_state = true
show.order_deleted = true
show.order_executed = true
show.order_executed_with_price = true
show.order_replaced = true
show.order_volume_cancelled = true
show.packet = true
show.packet_header = true
show.request_for_quote = true
show.session = true
show.spread_executed = true
show.spread_symbol_directory = true
show.system_event = true
show.time_message = true
show.trade_cancellation = true
show.trade_spread_execution_chain = true
show.volume_and_open_interest = true
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx T24 Itch 1.13 Fields
asx_t24_itch_1_13.fields.activated = ProtoField.new("Activated", "asx.t24.itch.1.13.activated", ftypes.STRING)
asx_t24_itch_1_13.fields.ad_hoc_text_message = ProtoField.new("Ad Hoc Text Message", "asx.t24.itch.1.13.adhoctextmessage", ftypes.STRING)
asx_t24_itch_1_13.fields.anomalous_order_threshold_publish = ProtoField.new("Anomalous Order Threshold Publish", "asx.t24.itch.1.13.anomalousorderthresholdpublish", ftypes.STRING)
asx_t24_itch_1_13.fields.aot_lower_price = ProtoField.new("AOT Lower Price", "asx.t24.itch.1.13.aotlowerprice", ftypes.INT32)
asx_t24_itch_1_13.fields.aot_price = ProtoField.new("AOT Price", "asx.t24.itch.1.13.aotprice", ftypes.INT32)
asx_t24_itch_1_13.fields.aot_upper_price = ProtoField.new("AOT Upper Price", "asx.t24.itch.1.13.aotupperprice", ftypes.INT32)
asx_t24_itch_1_13.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.t24.itch.1.13.bestaskprice", ftypes.INT32)
asx_t24_itch_1_13.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.t24.itch.1.13.bestaskquantity", ftypes.UINT32)
asx_t24_itch_1_13.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.t24.itch.1.13.bestbidprice", ftypes.INT32)
asx_t24_itch_1_13.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.t24.itch.1.13.bestbidquantity", ftypes.UINT32)
asx_t24_itch_1_13.fields.buyer = ProtoField.new("Buyer", "asx.t24.itch.1.13.buyer", ftypes.UINT32)
asx_t24_itch_1_13.fields.buyer_order_number = ProtoField.new("Buyer Order Number", "asx.t24.itch.1.13.buyerordernumber", ftypes.UINT64)
asx_t24_itch_1_13.fields.buyer_quantity_remaining = ProtoField.new("Buyer Quantity Remaining", "asx.t24.itch.1.13.buyerquantityremaining", ftypes.UINT32)
asx_t24_itch_1_13.fields.buying_order_number = ProtoField.new("Buying Order Number", "asx.t24.itch.1.13.buyingordernumber", ftypes.UINT64)
asx_t24_itch_1_13.fields.contract_number = ProtoField.new("Contract Number", "asx.t24.itch.1.13.contractnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_number_leg_1 = ProtoField.new("Contract Number Leg 1", "asx.t24.itch.1.13.contractnumberleg1", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_number_leg_2 = ProtoField.new("Contract Number Leg 2", "asx.t24.itch.1.13.contractnumberleg2", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_number_leg_3 = ProtoField.new("Contract Number Leg 3", "asx.t24.itch.1.13.contractnumberleg3", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_number_leg_4 = ProtoField.new("Contract Number Leg 4", "asx.t24.itch.1.13.contractnumberleg4", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_number_leg_5 = ProtoField.new("Contract Number Leg 5", "asx.t24.itch.1.13.contractnumberleg5", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_number_leg_6 = ProtoField.new("Contract Number Leg 6", "asx.t24.itch.1.13.contractnumberleg6", ftypes.UINT32)
asx_t24_itch_1_13.fields.contract_type = ProtoField.new("Contract Type", "asx.t24.itch.1.13.contracttype", ftypes.STRING)
asx_t24_itch_1_13.fields.count = ProtoField.new("Count", "asx.t24.itch.1.13.count", ftypes.UINT16)
asx_t24_itch_1_13.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.t24.itch.1.13.couponrate", ftypes.UINT16)
asx_t24_itch_1_13.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.t24.itch.1.13.cumulativevolume", ftypes.UINT32)
asx_t24_itch_1_13.fields.currency = ProtoField.new("Currency", "asx.t24.itch.1.13.currency", ftypes.STRING)
asx_t24_itch_1_13.fields.custom_market_executed = ProtoField.new("Custom Market Executed", "asx.t24.itch.1.13.custommarketexecuted", ftypes.STRING)
asx_t24_itch_1_13.fields.custom_market_order_added = ProtoField.new("Custom Market Order Added", "asx.t24.itch.1.13.custommarketorderadded", ftypes.STRING)
asx_t24_itch_1_13.fields.custom_market_order_deleted = ProtoField.new("Custom Market Order Deleted", "asx.t24.itch.1.13.custommarketorderdeleted", ftypes.STRING)
asx_t24_itch_1_13.fields.custom_market_order_number = ProtoField.new("Custom Market Order Number", "asx.t24.itch.1.13.custommarketordernumber", ftypes.UINT64)
asx_t24_itch_1_13.fields.custom_market_order_replaced = ProtoField.new("Custom Market Order Replaced", "asx.t24.itch.1.13.custommarketorderreplaced", ftypes.STRING)
asx_t24_itch_1_13.fields.custom_market_quantity_remaining = ProtoField.new("Custom Market Quantity Remaining", "asx.t24.itch.1.13.custommarketquantityremaining", ftypes.UINT32)
asx_t24_itch_1_13.fields.custom_market_trade = ProtoField.new("Custom Market Trade", "asx.t24.itch.1.13.custommarkettrade", ftypes.STRING)
asx_t24_itch_1_13.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.t24.itch.1.13.equilibriumprice", ftypes.INT32)
asx_t24_itch_1_13.fields.equilibrium_price_auction_info = ProtoField.new("Equilibrium Price Auction Info", "asx.t24.itch.1.13.equilibriumpriceauctioninfo", ftypes.STRING)
asx_t24_itch_1_13.fields.etr_lower_price = ProtoField.new("ETR Lower Price", "asx.t24.itch.1.13.etrlowerprice", ftypes.INT32)
asx_t24_itch_1_13.fields.etr_price = ProtoField.new("ETR Price", "asx.t24.itch.1.13.etrprice", ftypes.INT32)
asx_t24_itch_1_13.fields.etr_upper_price = ProtoField.new("ETR Upper Price", "asx.t24.itch.1.13.etrupperprice", ftypes.INT32)
asx_t24_itch_1_13.fields.event_code = ProtoField.new("Event Code", "asx.t24.itch.1.13.eventcode", ftypes.STRING)
asx_t24_itch_1_13.fields.exchange = ProtoField.new("Exchange", "asx.t24.itch.1.13.exchange", ftypes.STRING)
asx_t24_itch_1_13.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.t24.itch.1.13.executedquantity", ftypes.UINT32)
asx_t24_itch_1_13.fields.expiry_month = ProtoField.new("Expiry Month", "asx.t24.itch.1.13.expirymonth", ftypes.UINT8)
asx_t24_itch_1_13.fields.expiry_year = ProtoField.new("Expiry Year", "asx.t24.itch.1.13.expiryyear", ftypes.UINT16)
asx_t24_itch_1_13.fields.financial_type = ProtoField.new("Financial Type", "asx.t24.itch.1.13.financialtype", ftypes.STRING)
asx_t24_itch_1_13.fields.first_leg_contract_number = ProtoField.new("First Leg Contract Number", "asx.t24.itch.1.13.firstlegcontractnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.future_symbol_directory = ProtoField.new("Future Symbol Directory", "asx.t24.itch.1.13.futuresymboldirectory", ftypes.STRING)
asx_t24_itch_1_13.fields.highest_trade = ProtoField.new("Highest Trade", "asx.t24.itch.1.13.highesttrade", ftypes.INT32)
asx_t24_itch_1_13.fields.highest_traded_price = ProtoField.new("Highest Traded Price", "asx.t24.itch.1.13.highesttradedprice", ftypes.UINT8, nil, base.DEC, "0x02")
asx_t24_itch_1_13.fields.implied_order_added = ProtoField.new("Implied Order Added", "asx.t24.itch.1.13.impliedorderadded", ftypes.STRING)
asx_t24_itch_1_13.fields.implied_order_deleted = ProtoField.new("Implied Order Deleted", "asx.t24.itch.1.13.impliedorderdeleted", ftypes.STRING)
asx_t24_itch_1_13.fields.implied_order_replaced = ProtoField.new("Implied Order Replaced", "asx.t24.itch.1.13.impliedorderreplaced", ftypes.STRING)
asx_t24_itch_1_13.fields.instrument = ProtoField.new("Instrument", "asx.t24.itch.1.13.instrument", ftypes.STRING)
asx_t24_itch_1_13.fields.last_trade = ProtoField.new("Last Trade", "asx.t24.itch.1.13.lasttrade", ftypes.INT32)
asx_t24_itch_1_13.fields.last_traded_price = ProtoField.new("Last Traded Price", "asx.t24.itch.1.13.lasttradedprice", ftypes.UINT8, nil, base.DEC, "0x10")
asx_t24_itch_1_13.fields.last_traded_volume = ProtoField.new("Last Traded Volume", "asx.t24.itch.1.13.lasttradedvolume", ftypes.UINT8, nil, base.DEC, "0x20")
asx_t24_itch_1_13.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.t24.itch.1.13.lasttradingdate", ftypes.UINT32)
asx_t24_itch_1_13.fields.last_volume = ProtoField.new("Last Volume", "asx.t24.itch.1.13.lastvolume", ftypes.UINT32)
asx_t24_itch_1_13.fields.legs = ProtoField.new("Legs", "asx.t24.itch.1.13.legs", ftypes.UINT8)
asx_t24_itch_1_13.fields.length = ProtoField.new("Length", "asx.t24.itch.1.13.length", ftypes.UINT16)
asx_t24_itch_1_13.fields.lot_size_or_face_value = ProtoField.new("Lot Size or Face Value", "asx.t24.itch.1.13.lotsizeorfacevalue", ftypes.UINT32)
asx_t24_itch_1_13.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.t24.itch.1.13.lowesttrade", ftypes.INT32)
asx_t24_itch_1_13.fields.lowest_traded_price = ProtoField.new("Lowest Traded Price", "asx.t24.itch.1.13.lowesttradedprice", ftypes.UINT8, nil, base.DEC, "0x04")
asx_t24_itch_1_13.fields.market_settlement = ProtoField.new("Market Settlement", "asx.t24.itch.1.13.marketsettlement", ftypes.STRING)
asx_t24_itch_1_13.fields.market_updates = ProtoField.new("Market Updates", "asx.t24.itch.1.13.marketupdates", ftypes.STRING)
asx_t24_itch_1_13.fields.match_number = ProtoField.new("Match Number", "asx.t24.itch.1.13.matchnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.maturity_value = ProtoField.new("Maturity Value", "asx.t24.itch.1.13.maturityvalue", ftypes.UINT8)
asx_t24_itch_1_13.fields.message = ProtoField.new("Message", "asx.t24.itch.1.13.message", ftypes.STRING)
asx_t24_itch_1_13.fields.message_header = ProtoField.new("Message Header", "asx.t24.itch.1.13.messageheader", ftypes.STRING)
asx_t24_itch_1_13.fields.message_type = ProtoField.new("Message Type", "asx.t24.itch.1.13.messagetype", ftypes.STRING)
asx_t24_itch_1_13.fields.open_interest = ProtoField.new("Open Interest", "asx.t24.itch.1.13.openinterest", ftypes.UINT32)
asx_t24_itch_1_13.fields.open__high__low__last_trade_adjustment = ProtoField.new("Open, High, Low, Last Trade Adjustment", "asx.t24.itch.1.13.openhighlowlasttradeadjustment", ftypes.STRING)
asx_t24_itch_1_13.fields.opening_trade = ProtoField.new("Opening Trade", "asx.t24.itch.1.13.openingtrade", ftypes.INT32)
asx_t24_itch_1_13.fields.opening_trade_price = ProtoField.new("Opening Trade Price", "asx.t24.itch.1.13.openingtradeprice", ftypes.UINT8, nil, base.DEC, "0x01")
asx_t24_itch_1_13.fields.option_symbol_directory = ProtoField.new("Option Symbol Directory", "asx.t24.itch.1.13.optionsymboldirectory", ftypes.STRING)
asx_t24_itch_1_13.fields.option_type = ProtoField.new("Option Type", "asx.t24.itch.1.13.optiontype", ftypes.STRING)
asx_t24_itch_1_13.fields.order_added = ProtoField.new("Order Added", "asx.t24.itch.1.13.orderadded", ftypes.STRING)
asx_t24_itch_1_13.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.t24.itch.1.13.orderbookpriority", ftypes.UINT32)
asx_t24_itch_1_13.fields.order_book_state = ProtoField.new("Order Book State", "asx.t24.itch.1.13.orderbookstate", ftypes.STRING)
asx_t24_itch_1_13.fields.order_deleted = ProtoField.new("Order Deleted", "asx.t24.itch.1.13.orderdeleted", ftypes.STRING)
asx_t24_itch_1_13.fields.order_executed = ProtoField.new("Order Executed", "asx.t24.itch.1.13.orderexecuted", ftypes.STRING)
asx_t24_itch_1_13.fields.order_executed_with_price = ProtoField.new("Order Executed with Price", "asx.t24.itch.1.13.orderexecutedwithprice", ftypes.STRING)
asx_t24_itch_1_13.fields.order_number = ProtoField.new("Order Number", "asx.t24.itch.1.13.ordernumber", ftypes.UINT64)
asx_t24_itch_1_13.fields.order_replaced = ProtoField.new("Order Replaced", "asx.t24.itch.1.13.orderreplaced", ftypes.STRING)
asx_t24_itch_1_13.fields.order_volume_cancelled = ProtoField.new("Order Volume Cancelled", "asx.t24.itch.1.13.ordervolumecancelled", ftypes.STRING)
asx_t24_itch_1_13.fields.packet = ProtoField.new("Packet", "asx.t24.itch.1.13.packet", ftypes.STRING)
asx_t24_itch_1_13.fields.packet_header = ProtoField.new("Packet Header", "asx.t24.itch.1.13.packetheader", ftypes.STRING)
asx_t24_itch_1_13.fields.payload = ProtoField.new("Payload", "asx.t24.itch.1.13.payload", ftypes.STRING)
asx_t24_itch_1_13.fields.payments_per_year = ProtoField.new("Payments per Year", "asx.t24.itch.1.13.paymentsperyear", ftypes.UINT8)
asx_t24_itch_1_13.fields.price = ProtoField.new("Price", "asx.t24.itch.1.13.price", ftypes.INT32)
asx_t24_itch_1_13.fields.price_decimal_position = ProtoField.new("Price Decimal Position", "asx.t24.itch.1.13.pricedecimalposition", ftypes.UINT8)
asx_t24_itch_1_13.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.t24.itch.1.13.pricefractionaldenominator", ftypes.UINT32)
asx_t24_itch_1_13.fields.price_leg_1 = ProtoField.new("Price Leg 1", "asx.t24.itch.1.13.priceleg1", ftypes.INT32)
asx_t24_itch_1_13.fields.price_leg_2 = ProtoField.new("Price Leg 2", "asx.t24.itch.1.13.priceleg2", ftypes.INT32)
asx_t24_itch_1_13.fields.price_leg_3 = ProtoField.new("Price Leg 3", "asx.t24.itch.1.13.priceleg3", ftypes.INT32)
asx_t24_itch_1_13.fields.price_leg_4 = ProtoField.new("Price Leg 4", "asx.t24.itch.1.13.priceleg4", ftypes.INT32)
asx_t24_itch_1_13.fields.price_leg_5 = ProtoField.new("Price Leg 5", "asx.t24.itch.1.13.priceleg5", ftypes.INT32)
asx_t24_itch_1_13.fields.price_leg_6 = ProtoField.new("Price Leg 6", "asx.t24.itch.1.13.priceleg6", ftypes.INT32)
asx_t24_itch_1_13.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.t24.itch.1.13.priceminimumtick", ftypes.UINT16)
asx_t24_itch_1_13.fields.primary_ratio = ProtoField.new("Primary Ratio", "asx.t24.itch.1.13.primaryratio", ftypes.UINT8)
asx_t24_itch_1_13.fields.printable = ProtoField.new("Printable", "asx.t24.itch.1.13.printable", ftypes.STRING)
asx_t24_itch_1_13.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.t24.itch.1.13.priordaysettlement", ftypes.INT32)
asx_t24_itch_1_13.fields.protocol_version = ProtoField.new("Protocol Version", "asx.t24.itch.1.13.protocolversion", ftypes.STRING)
asx_t24_itch_1_13.fields.quantity = ProtoField.new("Quantity", "asx.t24.itch.1.13.quantity", ftypes.UINT32)
asx_t24_itch_1_13.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.t24.itch.1.13.quantityremaining", ftypes.UINT32)
asx_t24_itch_1_13.fields.ratio_leg_1 = ProtoField.new("Ratio Leg 1", "asx.t24.itch.1.13.ratioleg1", ftypes.UINT16)
asx_t24_itch_1_13.fields.ratio_leg_2 = ProtoField.new("Ratio Leg 2", "asx.t24.itch.1.13.ratioleg2", ftypes.UINT16)
asx_t24_itch_1_13.fields.ratio_leg_3 = ProtoField.new("Ratio Leg 3", "asx.t24.itch.1.13.ratioleg3", ftypes.UINT16)
asx_t24_itch_1_13.fields.ratio_leg_4 = ProtoField.new("Ratio Leg 4", "asx.t24.itch.1.13.ratioleg4", ftypes.UINT16)
asx_t24_itch_1_13.fields.ratio_leg_5 = ProtoField.new("Ratio Leg 5", "asx.t24.itch.1.13.ratioleg5", ftypes.UINT16)
asx_t24_itch_1_13.fields.ratio_leg_6 = ProtoField.new("Ratio Leg 6", "asx.t24.itch.1.13.ratioleg6", ftypes.UINT16)
asx_t24_itch_1_13.fields.request_for_quote = ProtoField.new("Request for Quote", "asx.t24.itch.1.13.requestforquote", ftypes.STRING)
asx_t24_itch_1_13.fields.reserved = ProtoField.new("Reserved", "asx.t24.itch.1.13.reserved", ftypes.UINT8, nil, base.DEC, "0xC0")
asx_t24_itch_1_13.fields.second = ProtoField.new("Second", "asx.t24.itch.1.13.second", ftypes.UINT32)
asx_t24_itch_1_13.fields.second_leg_contract_number = ProtoField.new("Second Leg Contract Number", "asx.t24.itch.1.13.secondlegcontractnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.secondary_ratio = ProtoField.new("Secondary Ratio", "asx.t24.itch.1.13.secondaryratio", ftypes.UINT8)
asx_t24_itch_1_13.fields.seller_contract_number = ProtoField.new("Seller Contract Number", "asx.t24.itch.1.13.sellercontractnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.seller_quantity_remaining = ProtoField.new("Seller Quantity Remaining", "asx.t24.itch.1.13.sellerquantityremaining", ftypes.UINT32)
asx_t24_itch_1_13.fields.selling_order_number = ProtoField.new("Selling Order Number", "asx.t24.itch.1.13.sellingordernumber", ftypes.UINT64)
asx_t24_itch_1_13.fields.sequence = ProtoField.new("Sequence", "asx.t24.itch.1.13.sequence", ftypes.UINT64)
asx_t24_itch_1_13.fields.session = ProtoField.new("Session", "asx.t24.itch.1.13.session", ftypes.STRING)
asx_t24_itch_1_13.fields.session_week = ProtoField.new("Session Week", "asx.t24.itch.1.13.sessionweek", ftypes.STRING)
asx_t24_itch_1_13.fields.session_year = ProtoField.new("Session Year", "asx.t24.itch.1.13.sessionyear", ftypes.STRING)
asx_t24_itch_1_13.fields.settlement_price = ProtoField.new("Settlement Price", "asx.t24.itch.1.13.settlementprice", ftypes.INT32)
asx_t24_itch_1_13.fields.settlement_type = ProtoField.new("Settlement Type", "asx.t24.itch.1.13.settlementtype", ftypes.STRING)
asx_t24_itch_1_13.fields.side = ProtoField.new("Side", "asx.t24.itch.1.13.side", ftypes.STRING)
asx_t24_itch_1_13.fields.side_leg_1 = ProtoField.new("Side Leg 1", "asx.t24.itch.1.13.sideleg1", ftypes.STRING)
asx_t24_itch_1_13.fields.side_leg_2 = ProtoField.new("Side Leg 2", "asx.t24.itch.1.13.sideleg2", ftypes.STRING)
asx_t24_itch_1_13.fields.side_leg_3 = ProtoField.new("Side Leg 3", "asx.t24.itch.1.13.sideleg3", ftypes.STRING)
asx_t24_itch_1_13.fields.side_leg_4 = ProtoField.new("Side Leg 4", "asx.t24.itch.1.13.sideleg4", ftypes.STRING)
asx_t24_itch_1_13.fields.side_leg_5 = ProtoField.new("Side Leg 5", "asx.t24.itch.1.13.sideleg5", ftypes.STRING)
asx_t24_itch_1_13.fields.side_leg_6 = ProtoField.new("Side Leg 6", "asx.t24.itch.1.13.sideleg6", ftypes.STRING)
asx_t24_itch_1_13.fields.side_of_buyer = ProtoField.new("Side of Buyer", "asx.t24.itch.1.13.sideofbuyer", ftypes.STRING)
asx_t24_itch_1_13.fields.side_of_seller = ProtoField.new("Side of Seller", "asx.t24.itch.1.13.sideofseller", ftypes.STRING)
asx_t24_itch_1_13.fields.source_id = ProtoField.new("Source Id", "asx.t24.itch.1.13.sourceid", ftypes.STRING)
asx_t24_itch_1_13.fields.spread_executed = ProtoField.new("Spread Executed", "asx.t24.itch.1.13.spreadexecuted", ftypes.STRING)
asx_t24_itch_1_13.fields.spread_symbol_directory = ProtoField.new("Spread Symbol Directory", "asx.t24.itch.1.13.spreadsymboldirectory", ftypes.STRING)
asx_t24_itch_1_13.fields.spread_trade_price = ProtoField.new("Spread Trade Price", "asx.t24.itch.1.13.spreadtradeprice", ftypes.INT32)
asx_t24_itch_1_13.fields.strike = ProtoField.new("Strike", "asx.t24.itch.1.13.strike", ftypes.UINT32)
asx_t24_itch_1_13.fields.strike_price_decimal_position = ProtoField.new("Strike Price Decimal Position", "asx.t24.itch.1.13.strikepricedecimalposition", ftypes.UINT8)
asx_t24_itch_1_13.fields.strike_price_fractional_denominator = ProtoField.new("Strike Price Fractional Denominator", "asx.t24.itch.1.13.strikepricefractionaldenominator", ftypes.UINT32)
asx_t24_itch_1_13.fields.strike_price_minimum_tick = ProtoField.new("Strike Price Minimum Tick", "asx.t24.itch.1.13.strikepriceminimumtick", ftypes.UINT16)
asx_t24_itch_1_13.fields.system_event = ProtoField.new("System Event", "asx.t24.itch.1.13.systemevent", ftypes.STRING)
asx_t24_itch_1_13.fields.text_message = ProtoField.new("Text message", "asx.t24.itch.1.13.textmessage", ftypes.STRING)
asx_t24_itch_1_13.fields.time_message = ProtoField.new("Time Message", "asx.t24.itch.1.13.timemessage", ftypes.STRING)
asx_t24_itch_1_13.fields.timestamp = ProtoField.new("Timestamp", "asx.t24.itch.1.13.timestamp", ftypes.UINT32)
asx_t24_itch_1_13.fields.total_traded_volume = ProtoField.new("Total Traded Volume", "asx.t24.itch.1.13.totaltradedvolume", ftypes.UINT32)
asx_t24_itch_1_13.fields.total_traded_volume_and_total_trades = ProtoField.new("Total Traded Volume and Total Trades", "asx.t24.itch.1.13.totaltradedvolumeandtotaltrades", ftypes.UINT8, nil, base.DEC, "0x08")
asx_t24_itch_1_13.fields.total_trades = ProtoField.new("Total Trades", "asx.t24.itch.1.13.totaltrades", ftypes.UINT32)
asx_t24_itch_1_13.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "asx.t24.itch.1.13.tradecancellation", ftypes.STRING)
asx_t24_itch_1_13.fields.trade_date = ProtoField.new("Trade Date", "asx.t24.itch.1.13.tradedate", ftypes.UINT16)
asx_t24_itch_1_13.fields.trade_price = ProtoField.new("Trade Price", "asx.t24.itch.1.13.tradeprice", ftypes.INT32)
asx_t24_itch_1_13.fields.trade_side_of_leg = ProtoField.new("Trade Side of Leg", "asx.t24.itch.1.13.tradesideofleg", ftypes.STRING)
asx_t24_itch_1_13.fields.trade_side_of_noncustom_order = ProtoField.new("Trade Side of NonCustom Order", "asx.t24.itch.1.13.tradesideofnoncustomorder", ftypes.STRING)
asx_t24_itch_1_13.fields.trade_spread_execution_chain = ProtoField.new("Trade Spread Execution Chain", "asx.t24.itch.1.13.tradespreadexecutionchain", ftypes.STRING)
asx_t24_itch_1_13.fields.trade_type = ProtoField.new("Trade Type", "asx.t24.itch.1.13.tradetype", ftypes.STRING)
asx_t24_itch_1_13.fields.traded_contract_number = ProtoField.new("Traded Contract Number", "asx.t24.itch.1.13.tradedcontractnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.trading_service = ProtoField.new("Trading Service", "asx.t24.itch.1.13.tradingservice", ftypes.STRING)
asx_t24_itch_1_13.fields.trading_status = ProtoField.new("Trading Status", "asx.t24.itch.1.13.tradingstatus", ftypes.STRING)
asx_t24_itch_1_13.fields.underlying_contract_number = ProtoField.new("Underlying Contract Number", "asx.t24.itch.1.13.underlyingcontractnumber", ftypes.UINT32)
asx_t24_itch_1_13.fields.voi_trade_date = ProtoField.new("VOI Trade Date", "asx.t24.itch.1.13.voitradedate", ftypes.UINT16)
asx_t24_itch_1_13.fields.volatility = ProtoField.new("Volatility", "asx.t24.itch.1.13.volatility", ftypes.UINT32)
asx_t24_itch_1_13.fields.volume_and_open_interest = ProtoField.new("Volume and Open Interest", "asx.t24.itch.1.13.volumeandopeninterest", ftypes.STRING)

-----------------------------------------------------------------------
-- Dissect Asx T24 Itch 1.13
-----------------------------------------------------------------------

-- Size: VOI Trade Date
size_of.voi_trade_date = 2

-- Display: VOI Trade Date
display.voi_trade_date = function(value)
  return "VOI Trade Date: "..value
end

-- Dissect: VOI Trade Date
dissect.voi_trade_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.voi_trade_date)
  local value = range:uint()
  local display = display.voi_trade_date(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.voi_trade_date, range, value, display)

  return offset + size_of.voi_trade_date
end

-- Size: Open Interest
size_of.open_interest = 4

-- Display: Open Interest
display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
dissect.open_interest = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_interest)
  local value = range:uint()
  local display = display.open_interest(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.open_interest, range, value, display)

  return offset + size_of.open_interest
end

-- Size: Cumulative Volume
size_of.cumulative_volume = 4

-- Display: Cumulative Volume
display.cumulative_volume = function(value)
  return "Cumulative Volume: "..value
end

-- Dissect: Cumulative Volume
dissect.cumulative_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cumulative_volume)
  local value = range:uint()
  local display = display.cumulative_volume(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.cumulative_volume, range, value, display)

  return offset + size_of.cumulative_volume
end

-- Size: Contract Number
size_of.contract_number = 4

-- Display: Contract Number
display.contract_number = function(value)
  return "Contract Number: "..value
end

-- Dissect: Contract Number
dissect.contract_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number)
  local value = range:uint()
  local display = display.contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number, range, value, display)

  return offset + size_of.contract_number
end

-- Size: Trade Date
size_of.trade_date = 2

-- Display: Trade Date
display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
dissect.trade_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_date)
  local value = range:uint()
  local display = display.trade_date(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trade_date, range, value, display)

  return offset + size_of.trade_date
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Volume and Open Interest
display.volume_and_open_interest = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Volume and Open Interest
dissect.volume_and_open_interest_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Cumulative Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cumulative_volume(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index = dissect.open_interest(buffer, index, packet, parent)

  -- VOI Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.voi_trade_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume and Open Interest
dissect.volume_and_open_interest = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.volume_and_open_interest then
    local range = buffer(offset, 20)
    local display = display.volume_and_open_interest(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.volume_and_open_interest, range, display)
  end

  return dissect.volume_and_open_interest_fields(buffer, offset, packet, parent)
end

-- Size: ETR Lower Price
size_of.etr_lower_price = 4

-- Display: ETR Lower Price
display.etr_lower_price = function(value)
  return "ETR Lower Price: "..value
end

-- Dissect: ETR Lower Price
dissect.etr_lower_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.etr_lower_price)
  local value = range:int()
  local display = display.etr_lower_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.etr_lower_price, range, value, display)

  return offset + size_of.etr_lower_price
end

-- Size: ETR Upper Price
size_of.etr_upper_price = 4

-- Display: ETR Upper Price
display.etr_upper_price = function(value)
  return "ETR Upper Price: "..value
end

-- Dissect: ETR Upper Price
dissect.etr_upper_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.etr_upper_price)
  local value = range:int()
  local display = display.etr_upper_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.etr_upper_price, range, value, display)

  return offset + size_of.etr_upper_price
end

-- Size: ETR Price
size_of.etr_price = 4

-- Display: ETR Price
display.etr_price = function(value)
  return "ETR Price: "..value
end

-- Dissect: ETR Price
dissect.etr_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.etr_price)
  local value = range:int()
  local display = display.etr_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.etr_price, range, value, display)

  return offset + size_of.etr_price
end

-- Size: AOT Lower Price
size_of.aot_lower_price = 4

-- Display: AOT Lower Price
display.aot_lower_price = function(value)
  return "AOT Lower Price: "..value
end

-- Dissect: AOT Lower Price
dissect.aot_lower_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.aot_lower_price)
  local value = range:int()
  local display = display.aot_lower_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.aot_lower_price, range, value, display)

  return offset + size_of.aot_lower_price
end

-- Size: AOT Upper Price
size_of.aot_upper_price = 4

-- Display: AOT Upper Price
display.aot_upper_price = function(value)
  return "AOT Upper Price: "..value
end

-- Dissect: AOT Upper Price
dissect.aot_upper_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.aot_upper_price)
  local value = range:int()
  local display = display.aot_upper_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.aot_upper_price, range, value, display)

  return offset + size_of.aot_upper_price
end

-- Size: AOT Price
size_of.aot_price = 4

-- Display: AOT Price
display.aot_price = function(value)
  return "AOT Price: "..value
end

-- Dissect: AOT Price
dissect.aot_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.aot_price)
  local value = range:int()
  local display = display.aot_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.aot_price, range, value, display)

  return offset + size_of.aot_price
end

-- Display: Anomalous Order Threshold Publish
display.anomalous_order_threshold_publish = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish
dissect.anomalous_order_threshold_publish_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- AOT Price: 4 Byte Signed Fixed Width Integer
  index = dissect.aot_price(buffer, index, packet, parent)

  -- AOT Upper Price: 4 Byte Signed Fixed Width Integer
  index = dissect.aot_upper_price(buffer, index, packet, parent)

  -- AOT Lower Price: 4 Byte Signed Fixed Width Integer
  index = dissect.aot_lower_price(buffer, index, packet, parent)

  -- ETR Price: 4 Byte Signed Fixed Width Integer
  index = dissect.etr_price(buffer, index, packet, parent)

  -- ETR Upper Price: 4 Byte Signed Fixed Width Integer
  index = dissect.etr_upper_price(buffer, index, packet, parent)

  -- ETR Lower Price: 4 Byte Signed Fixed Width Integer
  index = dissect.etr_lower_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish
dissect.anomalous_order_threshold_publish = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.anomalous_order_threshold_publish then
    local range = buffer(offset, 34)
    local display = display.anomalous_order_threshold_publish(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.anomalous_order_threshold_publish, range, display)
  end

  return dissect.anomalous_order_threshold_publish_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
size_of.quantity = 4

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quantity)
  local value = range:uint()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.quantity, range, value, display)

  return offset + size_of.quantity
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:int()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price, range, value, display)

  return offset + size_of.price
end

-- Display: Request for Quote
display.request_for_quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request for Quote
dissect.request_for_quote_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Request for Quote
dissect.request_for_quote = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_quote then
    local range = buffer(offset, 18)
    local display = display.request_for_quote(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.request_for_quote, range, display)
  end

  return dissect.request_for_quote_fields(buffer, offset, packet, parent)
end

-- Size: Text message
size_of.text_message = 100

-- Display: Text message
display.text_message = function(value)
  return "Text message: "..value
end

-- Dissect: Text message
dissect.text_message = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.text_message)
  local value = range:string()
  local display = display.text_message(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.text_message, range, value, display)

  return offset + size_of.text_message
end

-- Size: Source Id
size_of.source_id = 6

-- Display: Source Id
display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
dissect.source_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_id)
  local value = range:string()
  local display = display.source_id(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.source_id, range, value, display)

  return offset + size_of.source_id
end

-- Display: Ad Hoc Text Message
display.ad_hoc_text_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ad Hoc Text Message
dissect.ad_hoc_text_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Source Id: 6 Byte Ascii String
  index = dissect.source_id(buffer, index, packet, parent)

  -- Text message: 100 Byte Ascii String
  index = dissect.text_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Ad Hoc Text Message
dissect.ad_hoc_text_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ad_hoc_text_message then
    local range = buffer(offset, 112)
    local display = display.ad_hoc_text_message(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.ad_hoc_text_message, range, display)
  end

  return dissect.ad_hoc_text_message_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Type
size_of.settlement_type = 1

-- Display: Settlement Type
display.settlement_type = function(value)
  return "Settlement Type: "..value
end

-- Dissect: Settlement Type
dissect.settlement_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.settlement_type)
  local value = range:string()
  local display = display.settlement_type(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.settlement_type, range, value, display)

  return offset + size_of.settlement_type
end

-- Size: Volatility
size_of.volatility = 4

-- Display: Volatility
display.volatility = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
dissect.volatility = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volatility)
  local value = range:uint()
  local display = display.volatility(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.volatility, range, value, display)

  return offset + size_of.volatility
end

-- Size: Settlement Price
size_of.settlement_price = 4

-- Display: Settlement Price
display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
dissect.settlement_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.settlement_price)
  local value = range:int()
  local display = display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.settlement_price, range, value, display)

  return offset + size_of.settlement_price
end

-- Display: Market Settlement
display.market_settlement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Settlement
dissect.market_settlement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Settlement Price: 4 Byte Signed Fixed Width Integer
  index = dissect.settlement_price(buffer, index, packet, parent)

  -- Volatility: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volatility(buffer, index, packet, parent)

  -- Settlement Type: 1 Byte Ascii String
  index = dissect.settlement_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement
dissect.market_settlement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_settlement then
    local range = buffer(offset, 19)
    local display = display.market_settlement(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.market_settlement, range, display)
  end

  return dissect.market_settlement_fields(buffer, offset, packet, parent)
end

-- Display: Market Updates
display.market_updates = function(buffer, packet, parent)
  local display = ""

  -- Is Last Traded Volume flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Last Traded Volume|"
  end
  -- Is Last Traded Price flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Last Traded Price|"
  end
  -- Is Total Traded Volume and Total Trades flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Total Traded Volume and Total Trades|"
  end
  -- Is Lowest Traded Price flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Lowest Traded Price|"
  end
  -- Is Highest Traded Price flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Highest Traded Price|"
  end
  -- Is Opening Trade Price flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Opening Trade Price|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Market Updates
dissect.market_updates_bits = function(buffer, offset, packet, parent)

  -- Reserved: 2 Bit
  parent:add(asx_t24_itch_1_13.fields.reserved, buffer(offset, 1))

  -- Last Traded Volume: 1 Bit
  parent:add(asx_t24_itch_1_13.fields.last_traded_volume, buffer(offset, 1))

  -- Last Traded Price: 1 Bit
  parent:add(asx_t24_itch_1_13.fields.last_traded_price, buffer(offset, 1))

  -- Total Traded Volume and Total Trades: 1 Bit
  parent:add(asx_t24_itch_1_13.fields.total_traded_volume_and_total_trades, buffer(offset, 1))

  -- Lowest Traded Price: 1 Bit
  parent:add(asx_t24_itch_1_13.fields.lowest_traded_price, buffer(offset, 1))

  -- Highest Traded Price: 1 Bit
  parent:add(asx_t24_itch_1_13.fields.highest_traded_price, buffer(offset, 1))

  -- Opening Trade Price: 1 Bit
  parent:add(asx_t24_itch_1_13.fields.opening_trade_price, buffer(offset, 1))
end

-- Dissect: Market Updates
dissect.market_updates = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.market_updates(range, packet, parent)
  local element = parent:add(asx_t24_itch_1_13.fields.market_updates, range, display)

  if show.market_updates then
    dissect.market_updates_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Size: Total Trades
size_of.total_trades = 4

-- Display: Total Trades
display.total_trades = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
dissect.total_trades = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_trades)
  local value = range:uint()
  local display = display.total_trades(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.total_trades, range, value, display)

  return offset + size_of.total_trades
end

-- Size: Total Traded Volume
size_of.total_traded_volume = 4

-- Display: Total Traded Volume
display.total_traded_volume = function(value)
  return "Total Traded Volume: "..value
end

-- Dissect: Total Traded Volume
dissect.total_traded_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_traded_volume)
  local value = range:uint()
  local display = display.total_traded_volume(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.total_traded_volume, range, value, display)

  return offset + size_of.total_traded_volume
end

-- Size: Last Volume
size_of.last_volume = 4

-- Display: Last Volume
display.last_volume = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
dissect.last_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_volume)
  local value = range:uint()
  local display = display.last_volume(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.last_volume, range, value, display)

  return offset + size_of.last_volume
end

-- Size: Last Trade
size_of.last_trade = 4

-- Display: Last Trade
display.last_trade = function(value)
  return "Last Trade: "..value
end

-- Dissect: Last Trade
dissect.last_trade = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_trade)
  local value = range:int()
  local display = display.last_trade(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.last_trade, range, value, display)

  return offset + size_of.last_trade
end

-- Size: Lowest Trade
size_of.lowest_trade = 4

-- Display: Lowest Trade
display.lowest_trade = function(value)
  return "Lowest Trade: "..value
end

-- Dissect: Lowest Trade
dissect.lowest_trade = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lowest_trade)
  local value = range:int()
  local display = display.lowest_trade(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.lowest_trade, range, value, display)

  return offset + size_of.lowest_trade
end

-- Size: Highest Trade
size_of.highest_trade = 4

-- Display: Highest Trade
display.highest_trade = function(value)
  return "Highest Trade: "..value
end

-- Dissect: Highest Trade
dissect.highest_trade = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.highest_trade)
  local value = range:int()
  local display = display.highest_trade(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.highest_trade, range, value, display)

  return offset + size_of.highest_trade
end

-- Size: Opening Trade
size_of.opening_trade = 4

-- Display: Opening Trade
display.opening_trade = function(value)
  return "Opening Trade: "..value
end

-- Dissect: Opening Trade
dissect.opening_trade = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_trade)
  local value = range:int()
  local display = display.opening_trade(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.opening_trade, range, value, display)

  return offset + size_of.opening_trade
end

-- Display: Open, High, Low, Last Trade Adjustment
display.open__high__low__last_trade_adjustment = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open, High, Low, Last Trade Adjustment
dissect.open__high__low__last_trade_adjustment_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Opening Trade: 4 Byte Signed Fixed Width Integer
  index = dissect.opening_trade(buffer, index, packet, parent)

  -- Highest Trade: 4 Byte Signed Fixed Width Integer
  index = dissect.highest_trade(buffer, index, packet, parent)

  -- Lowest Trade: 4 Byte Signed Fixed Width Integer
  index = dissect.lowest_trade(buffer, index, packet, parent)

  -- Last Trade: 4 Byte Signed Fixed Width Integer
  index = dissect.last_trade(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_volume(buffer, index, packet, parent)

  -- Total Traded Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.total_traded_volume(buffer, index, packet, parent)

  -- Total Trades: 4 Byte Unsigned Fixed Width Integer
  index = dissect.total_trades(buffer, index, packet, parent)

  -- Market Updates: 1 Byte Unsigned Fixed Width Integer: Struct of 7 fields
  index = dissect.market_updates(buffer, index, packet, parent)

  return index
end

-- Dissect: Open, High, Low, Last Trade Adjustment
dissect.open__high__low__last_trade_adjustment = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open__high__low__last_trade_adjustment then
    local range = buffer(offset, 39)
    local display = display.open__high__low__last_trade_adjustment(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.open__high__low__last_trade_adjustment, range, display)
  end

  return dissect.open__high__low__last_trade_adjustment_fields(buffer, offset, packet, parent)
end

-- Size: Best Ask Quantity
size_of.best_ask_quantity = 4

-- Display: Best Ask Quantity
display.best_ask_quantity = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
dissect.best_ask_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_ask_quantity)
  local value = range:uint()
  local display = display.best_ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.best_ask_quantity, range, value, display)

  return offset + size_of.best_ask_quantity
end

-- Size: Best Bid Quantity
size_of.best_bid_quantity = 4

-- Display: Best Bid Quantity
display.best_bid_quantity = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
dissect.best_bid_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_bid_quantity)
  local value = range:uint()
  local display = display.best_bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.best_bid_quantity, range, value, display)

  return offset + size_of.best_bid_quantity
end

-- Size: Best Ask Price
size_of.best_ask_price = 4

-- Display: Best Ask Price
display.best_ask_price = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
dissect.best_ask_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_ask_price)
  local value = range:int()
  local display = display.best_ask_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.best_ask_price, range, value, display)

  return offset + size_of.best_ask_price
end

-- Size: Best Bid Price
size_of.best_bid_price = 4

-- Display: Best Bid Price
display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
dissect.best_bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_bid_price)
  local value = range:int()
  local display = display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.best_bid_price, range, value, display)

  return offset + size_of.best_bid_price
end

-- Size: Equilibrium Price
size_of.equilibrium_price = 4

-- Display: Equilibrium Price
display.equilibrium_price = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
dissect.equilibrium_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.equilibrium_price)
  local value = range:int()
  local display = display.equilibrium_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.equilibrium_price, range, value, display)

  return offset + size_of.equilibrium_price
end

-- Display: Equilibrium Price Auction Info
display.equilibrium_price_auction_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equilibrium Price Auction Info
dissect.equilibrium_price_auction_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Equilibrium Price: 4 Byte Signed Fixed Width Integer
  index = dissect.equilibrium_price(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_ask_price(buffer, index, packet, parent)

  -- Best Bid Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_quantity(buffer, index, packet, parent)

  -- Best Ask Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_ask_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Auction Info
dissect.equilibrium_price_auction_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equilibrium_price_auction_info then
    local range = buffer(offset, 30)
    local display = display.equilibrium_price_auction_info(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.equilibrium_price_auction_info, range, display)
  end

  return dissect.equilibrium_price_auction_info_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
size_of.match_number = 4

-- Display: Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.match_number)
  local value = range:uint()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.match_number, range, value, display)

  return offset + size_of.match_number
end

-- Display: Trade Cancellation
display.trade_cancellation = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancellation
dissect.trade_cancellation_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation
dissect.trade_cancellation = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancellation then
    local range = buffer(offset, 10)
    local display = display.trade_cancellation(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.trade_cancellation, range, display)
  end

  return dissect.trade_cancellation_fields(buffer, offset, packet, parent)
end

-- Size: Printable
size_of.printable = 1

-- Display: Printable
display.printable = function(value)
  if value == "N" then
    return "Printable: Non printable (N)"
  end
  if value == "Y" then
    return "Printable: printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
dissect.printable = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.printable)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.printable, range, value, display)

  return offset + size_of.printable
end

-- Size: Trade Side of NonCustom Order
size_of.trade_side_of_noncustom_order = 1

-- Display: Trade Side of NonCustom Order
display.trade_side_of_noncustom_order = function(value)
  return "Trade Side of NonCustom Order: "..value
end

-- Dissect: Trade Side of NonCustom Order
dissect.trade_side_of_noncustom_order = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_side_of_noncustom_order)
  local value = range:string()
  local display = display.trade_side_of_noncustom_order(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trade_side_of_noncustom_order, range, value, display)

  return offset + size_of.trade_side_of_noncustom_order
end

-- Size: Traded Contract Number
size_of.traded_contract_number = 4

-- Display: Traded Contract Number
display.traded_contract_number = function(value)
  return "Traded Contract Number: "..value
end

-- Dissect: Traded Contract Number
dissect.traded_contract_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.traded_contract_number)
  local value = range:uint()
  local display = display.traded_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.traded_contract_number, range, value, display)

  return offset + size_of.traded_contract_number
end

-- Size: Trade Price
size_of.trade_price = 4

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_price)
  local value = range:int()
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trade_price, range, value, display)

  return offset + size_of.trade_price
end

-- Size: Executed Quantity
size_of.executed_quantity = 4

-- Display: Executed Quantity
display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
dissect.executed_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.executed_quantity)
  local value = range:uint()
  local display = display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.executed_quantity, range, value, display)

  return offset + size_of.executed_quantity
end

-- Size: Trade Type
size_of.trade_type = 1

-- Display: Trade Type
display.trade_type = function(value)
  if value == "T" then
    return "Trade Type: Normal (T)"
  end
  if value == "t" then
    return "Trade Type: Crossing Normal (t)"
  end
  if value == "W" then
    return "Trade Type: Sweeping (W)"
  end
  if value == "w" then
    return "Trade Type: Crossing Sweeping (w)"
  end
  if value == "L" then
    return "Trade Type: Levelling (L)"
  end
  if value == "l" then
    return "Trade Type: Crossing Levelling (l)"
  end
  if value == "S" then
    return "Trade Type: Spread to Underlying (S)"
  end
  if value == "s" then
    return "Trade Type: Crossing Spread to Underlying (s)"
  end
  if value == "R" then
    return "Trade Type: IntraSpread (R)"
  end
  if value == "r" then
    return "Trade Type: Crossing Intra Spread (r)"
  end
  if value == "Q" then
    return "Trade Type: Inter Spread (Q)"
  end
  if value == "q" then
    return "Trade Type: Crossing Inter Spread (q)"
  end
  if value == "U" then
    return "Trade Type: Custom (U)"
  end
  if value == "u" then
    return "Trade Type: Crossing Custom (u)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
dissect.trade_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_type)
  local value = range:string()
  local display = display.trade_type(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trade_type, range, value, display)

  return offset + size_of.trade_type
end

-- Size: Custom Market Quantity Remaining
size_of.custom_market_quantity_remaining = 4

-- Display: Custom Market Quantity Remaining
display.custom_market_quantity_remaining = function(value)
  return "Custom Market Quantity Remaining: "..value
end

-- Dissect: Custom Market Quantity Remaining
dissect.custom_market_quantity_remaining = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.custom_market_quantity_remaining)
  local value = range:uint()
  local display = display.custom_market_quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.custom_market_quantity_remaining, range, value, display)

  return offset + size_of.custom_market_quantity_remaining
end

-- Size: Custom Market Order Number
size_of.custom_market_order_number = 8

-- Display: Custom Market Order Number
display.custom_market_order_number = function(value)
  return "Custom Market Order Number: "..value
end

-- Dissect: Custom Market Order Number
dissect.custom_market_order_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.custom_market_order_number)
  local value = range:uint64()
  local display = display.custom_market_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.custom_market_order_number, range, value, display)

  return offset + size_of.custom_market_order_number
end

-- Size: Quantity Remaining
size_of.quantity_remaining = 4

-- Display: Quantity Remaining
display.quantity_remaining = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
dissect.quantity_remaining = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quantity_remaining)
  local value = range:uint()
  local display = display.quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.quantity_remaining, range, value, display)

  return offset + size_of.quantity_remaining
end

-- Size: Order Number
size_of.order_number = 8

-- Display: Order Number
display.order_number = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
dissect.order_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_number)
  local value = range:uint64()
  local display = display.order_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.order_number, range, value, display)

  return offset + size_of.order_number
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side, range, value, display)

  return offset + size_of.side
end

-- Display: Custom Market Trade
display.custom_market_trade = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Trade
dissect.custom_market_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity_remaining(buffer, index, packet, parent)

  -- Custom Market Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.custom_market_order_number(buffer, index, packet, parent)

  -- Custom Market Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.custom_market_quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index = dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.traded_contract_number(buffer, index, packet, parent)

  -- Trade Side of NonCustom Order: 1 Byte Ascii String
  index = dissect.trade_side_of_noncustom_order(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Trade
dissect.custom_market_trade = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_trade then
    local range = buffer(offset, 54)
    local display = display.custom_market_trade(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.custom_market_trade, range, display)
  end

  return dissect.custom_market_trade_fields(buffer, offset, packet, parent)
end

-- Size: Trade Side of Leg
size_of.trade_side_of_leg = 1

-- Display: Trade Side of Leg
display.trade_side_of_leg = function(value)
  return "Trade Side of Leg: "..value
end

-- Dissect: Trade Side of Leg
dissect.trade_side_of_leg = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_side_of_leg)
  local value = range:string()
  local display = display.trade_side_of_leg(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trade_side_of_leg, range, value, display)

  return offset + size_of.trade_side_of_leg
end

-- Display: Custom Market Executed
display.custom_market_executed = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Executed
dissect.custom_market_executed_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index = dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.traded_contract_number(buffer, index, packet, parent)

  -- Trade Side of Leg: 1 Byte Ascii String
  index = dissect.trade_side_of_leg(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Executed
dissect.custom_market_executed = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_executed then
    local range = buffer(offset, 37)
    local display = display.custom_market_executed(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.custom_market_executed, range, display)
  end

  return dissect.custom_market_executed_fields(buffer, offset, packet, parent)
end

-- Size: Spread Trade Price
size_of.spread_trade_price = 4

-- Display: Spread Trade Price
display.spread_trade_price = function(value)
  return "Spread Trade Price: "..value
end

-- Dissect: Spread Trade Price
dissect.spread_trade_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.spread_trade_price)
  local value = range:int()
  local display = display.spread_trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.spread_trade_price, range, value, display)

  return offset + size_of.spread_trade_price
end

-- Size: Seller Quantity Remaining
size_of.seller_quantity_remaining = 4

-- Display: Seller Quantity Remaining
display.seller_quantity_remaining = function(value)
  return "Seller Quantity Remaining: "..value
end

-- Dissect: Seller Quantity Remaining
dissect.seller_quantity_remaining = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.seller_quantity_remaining)
  local value = range:uint()
  local display = display.seller_quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.seller_quantity_remaining, range, value, display)

  return offset + size_of.seller_quantity_remaining
end

-- Size: Selling Order Number
size_of.selling_order_number = 8

-- Display: Selling Order Number
display.selling_order_number = function(value)
  return "Selling Order Number: "..value
end

-- Dissect: Selling Order Number
dissect.selling_order_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.selling_order_number)
  local value = range:uint64()
  local display = display.selling_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.selling_order_number, range, value, display)

  return offset + size_of.selling_order_number
end

-- Size: Side of Seller
size_of.side_of_seller = 1

-- Display: Side of Seller
display.side_of_seller = function(value)
  return "Side of Seller: "..value
end

-- Dissect: Side of Seller
dissect.side_of_seller = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_of_seller)
  local value = range:string()
  local display = display.side_of_seller(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_of_seller, range, value, display)

  return offset + size_of.side_of_seller
end

-- Size: Seller Contract Number
size_of.seller_contract_number = 4

-- Display: Seller Contract Number
display.seller_contract_number = function(value)
  return "Seller Contract Number: "..value
end

-- Dissect: Seller Contract Number
dissect.seller_contract_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.seller_contract_number)
  local value = range:uint()
  local display = display.seller_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.seller_contract_number, range, value, display)

  return offset + size_of.seller_contract_number
end

-- Size: Buyer Quantity Remaining
size_of.buyer_quantity_remaining = 4

-- Display: Buyer Quantity Remaining
display.buyer_quantity_remaining = function(value)
  return "Buyer Quantity Remaining: "..value
end

-- Dissect: Buyer Quantity Remaining
dissect.buyer_quantity_remaining = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buyer_quantity_remaining)
  local value = range:uint()
  local display = display.buyer_quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.buyer_quantity_remaining, range, value, display)

  return offset + size_of.buyer_quantity_remaining
end

-- Size: Buyer Order Number
size_of.buyer_order_number = 8

-- Display: Buyer Order Number
display.buyer_order_number = function(value)
  return "Buyer Order Number: "..value
end

-- Dissect: Buyer Order Number
dissect.buyer_order_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buyer_order_number)
  local value = range:uint64()
  local display = display.buyer_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.buyer_order_number, range, value, display)

  return offset + size_of.buyer_order_number
end

-- Size: Side of Buyer
size_of.side_of_buyer = 1

-- Display: Side of Buyer
display.side_of_buyer = function(value)
  return "Side of Buyer: "..value
end

-- Dissect: Side of Buyer
dissect.side_of_buyer = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_of_buyer)
  local value = range:string()
  local display = display.side_of_buyer(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_of_buyer, range, value, display)

  return offset + size_of.side_of_buyer
end

-- Size: Buyer
size_of.buyer = 4

-- Display: Buyer
display.buyer = function(value)
  return "Buyer: "..value
end

-- Dissect: Buyer
dissect.buyer = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buyer)
  local value = range:uint()
  local display = display.buyer(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.buyer, range, value, display)

  return offset + size_of.buyer
end

-- Display: Trade Spread Execution Chain
display.trade_spread_execution_chain = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Spread Execution Chain
dissect.trade_spread_execution_chain_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Buyer: 4 Byte Unsigned Fixed Width Integer
  index = dissect.buyer(buffer, index, packet, parent)

  -- Side of Buyer: 1 Byte Ascii String
  index = dissect.side_of_buyer(buffer, index, packet, parent)

  -- Buyer Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.buyer_order_number(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.buyer_quantity_remaining(buffer, index, packet, parent)

  -- Seller Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seller_contract_number(buffer, index, packet, parent)

  -- Side of Seller: 1 Byte Ascii String
  index = dissect.side_of_seller(buffer, index, packet, parent)

  -- Selling Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.selling_order_number(buffer, index, packet, parent)

  -- Seller Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seller_quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index = dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.traded_contract_number(buffer, index, packet, parent)

  -- Spread Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.spread_trade_price(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Spread Execution Chain
dissect.trade_spread_execution_chain = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_spread_execution_chain then
    local range = buffer(offset, 62)
    local display = display.trade_spread_execution_chain(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.trade_spread_execution_chain, range, display)
  end

  return dissect.trade_spread_execution_chain_fields(buffer, offset, packet, parent)
end

-- Display: Spread Executed
display.spread_executed = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Executed
dissect.spread_executed_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index = dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.traded_contract_number(buffer, index, packet, parent)

  -- Spread Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.spread_trade_price(buffer, index, packet, parent)

  -- Trade Side of Leg: 1 Byte Ascii String
  index = dissect.trade_side_of_leg(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Executed
dissect.spread_executed = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_executed then
    local range = buffer(offset, 46)
    local display = display.spread_executed(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.spread_executed, range, display)
  end

  return dissect.spread_executed_fields(buffer, offset, packet, parent)
end

-- Size: Buying Order Number
size_of.buying_order_number = 8

-- Display: Buying Order Number
display.buying_order_number = function(value)
  return "Buying Order Number: "..value
end

-- Dissect: Buying Order Number
dissect.buying_order_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buying_order_number)
  local value = range:uint64()
  local display = display.buying_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.buying_order_number, range, value, display)

  return offset + size_of.buying_order_number
end

-- Display: Order Executed with Price
display.order_executed_with_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed with Price
dissect.order_executed_with_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Buying Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.buying_order_number(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.buyer_quantity_remaining(buffer, index, packet, parent)

  -- Selling Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.selling_order_number(buffer, index, packet, parent)

  -- Seller Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seller_quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index = dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed with Price
dissect.order_executed_with_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price then
    local range = buffer(offset, 47)
    local display = display.order_executed_with_price(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_executed_with_price, range, display)
  end

  return dissect.order_executed_with_price_fields(buffer, offset, packet, parent)
end

-- Display: Order Executed
display.order_executed = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed
dissect.order_executed_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index = dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed
dissect.order_executed = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed then
    local range = buffer(offset, 36)
    local display = display.order_executed(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_executed, range, display)
  end

  return dissect.order_executed_fields(buffer, offset, packet, parent)
end

-- Display: Custom Market Order Deleted
display.custom_market_order_deleted = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Order Deleted
dissect.custom_market_order_deleted_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Deleted
dissect.custom_market_order_deleted = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_order_deleted then
    local range = buffer(offset, 14)
    local display = display.custom_market_order_deleted(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.custom_market_order_deleted, range, display)
  end

  return dissect.custom_market_order_deleted_fields(buffer, offset, packet, parent)
end

-- Size: Order Book Priority
size_of.order_book_priority = 4

-- Display: Order Book Priority
display.order_book_priority = function(value)
  return "Order Book Priority: "..value
end

-- Dissect: Order Book Priority
dissect.order_book_priority = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_book_priority)
  local value = range:uint()
  local display = display.order_book_priority(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.order_book_priority, range, value, display)

  return offset + size_of.order_book_priority
end

-- Display: Custom Market Order Replaced
display.custom_market_order_replaced = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Order Replaced
dissect.custom_market_order_replaced_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Replaced
dissect.custom_market_order_replaced = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_order_replaced then
    local range = buffer(offset, 22)
    local display = display.custom_market_order_replaced(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.custom_market_order_replaced, range, display)
  end

  return dissect.custom_market_order_replaced_fields(buffer, offset, packet, parent)
end

-- Size: Price Leg 6
size_of.price_leg_6 = 4

-- Display: Price Leg 6
display.price_leg_6 = function(value)
  return "Price Leg 6: "..value
end

-- Dissect: Price Leg 6
dissect.price_leg_6 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_leg_6)
  local value = range:int()
  local display = display.price_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_leg_6, range, value, display)

  return offset + size_of.price_leg_6
end

-- Size: Ratio Leg 6
size_of.ratio_leg_6 = 2

-- Display: Ratio Leg 6
display.ratio_leg_6 = function(value)
  return "Ratio Leg 6: "..value
end

-- Dissect: Ratio Leg 6
dissect.ratio_leg_6 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ratio_leg_6)
  local value = range:uint()
  local display = display.ratio_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.ratio_leg_6, range, value, display)

  return offset + size_of.ratio_leg_6
end

-- Size: Side Leg 6
size_of.side_leg_6 = 1

-- Display: Side Leg 6
display.side_leg_6 = function(value)
  return "Side Leg 6: "..value
end

-- Dissect: Side Leg 6
dissect.side_leg_6 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_leg_6)
  local value = range:string()
  local display = display.side_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_leg_6, range, value, display)

  return offset + size_of.side_leg_6
end

-- Size: Contract Number Leg 6
size_of.contract_number_leg_6 = 4

-- Display: Contract Number Leg 6
display.contract_number_leg_6 = function(value)
  return "Contract Number Leg 6: "..value
end

-- Dissect: Contract Number Leg 6
dissect.contract_number_leg_6 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number_leg_6)
  local value = range:uint()
  local display = display.contract_number_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number_leg_6, range, value, display)

  return offset + size_of.contract_number_leg_6
end

-- Size: Price Leg 5
size_of.price_leg_5 = 4

-- Display: Price Leg 5
display.price_leg_5 = function(value)
  return "Price Leg 5: "..value
end

-- Dissect: Price Leg 5
dissect.price_leg_5 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_leg_5)
  local value = range:int()
  local display = display.price_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_leg_5, range, value, display)

  return offset + size_of.price_leg_5
end

-- Size: Ratio Leg 5
size_of.ratio_leg_5 = 2

-- Display: Ratio Leg 5
display.ratio_leg_5 = function(value)
  return "Ratio Leg 5: "..value
end

-- Dissect: Ratio Leg 5
dissect.ratio_leg_5 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ratio_leg_5)
  local value = range:uint()
  local display = display.ratio_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.ratio_leg_5, range, value, display)

  return offset + size_of.ratio_leg_5
end

-- Size: Side Leg 5
size_of.side_leg_5 = 1

-- Display: Side Leg 5
display.side_leg_5 = function(value)
  return "Side Leg 5: "..value
end

-- Dissect: Side Leg 5
dissect.side_leg_5 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_leg_5)
  local value = range:string()
  local display = display.side_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_leg_5, range, value, display)

  return offset + size_of.side_leg_5
end

-- Size: Contract Number Leg 5
size_of.contract_number_leg_5 = 4

-- Display: Contract Number Leg 5
display.contract_number_leg_5 = function(value)
  return "Contract Number Leg 5: "..value
end

-- Dissect: Contract Number Leg 5
dissect.contract_number_leg_5 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number_leg_5)
  local value = range:uint()
  local display = display.contract_number_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number_leg_5, range, value, display)

  return offset + size_of.contract_number_leg_5
end

-- Size: Price Leg 4
size_of.price_leg_4 = 4

-- Display: Price Leg 4
display.price_leg_4 = function(value)
  return "Price Leg 4: "..value
end

-- Dissect: Price Leg 4
dissect.price_leg_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_leg_4)
  local value = range:int()
  local display = display.price_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_leg_4, range, value, display)

  return offset + size_of.price_leg_4
end

-- Size: Ratio Leg 4
size_of.ratio_leg_4 = 2

-- Display: Ratio Leg 4
display.ratio_leg_4 = function(value)
  return "Ratio Leg 4: "..value
end

-- Dissect: Ratio Leg 4
dissect.ratio_leg_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ratio_leg_4)
  local value = range:uint()
  local display = display.ratio_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.ratio_leg_4, range, value, display)

  return offset + size_of.ratio_leg_4
end

-- Size: Side Leg 4
size_of.side_leg_4 = 1

-- Display: Side Leg 4
display.side_leg_4 = function(value)
  return "Side Leg 4: "..value
end

-- Dissect: Side Leg 4
dissect.side_leg_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_leg_4)
  local value = range:string()
  local display = display.side_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_leg_4, range, value, display)

  return offset + size_of.side_leg_4
end

-- Size: Contract Number Leg 4
size_of.contract_number_leg_4 = 4

-- Display: Contract Number Leg 4
display.contract_number_leg_4 = function(value)
  return "Contract Number Leg 4: "..value
end

-- Dissect: Contract Number Leg 4
dissect.contract_number_leg_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number_leg_4)
  local value = range:uint()
  local display = display.contract_number_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number_leg_4, range, value, display)

  return offset + size_of.contract_number_leg_4
end

-- Size: Price Leg 3
size_of.price_leg_3 = 4

-- Display: Price Leg 3
display.price_leg_3 = function(value)
  return "Price Leg 3: "..value
end

-- Dissect: Price Leg 3
dissect.price_leg_3 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_leg_3)
  local value = range:int()
  local display = display.price_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_leg_3, range, value, display)

  return offset + size_of.price_leg_3
end

-- Size: Ratio Leg 3
size_of.ratio_leg_3 = 2

-- Display: Ratio Leg 3
display.ratio_leg_3 = function(value)
  return "Ratio Leg 3: "..value
end

-- Dissect: Ratio Leg 3
dissect.ratio_leg_3 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ratio_leg_3)
  local value = range:uint()
  local display = display.ratio_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.ratio_leg_3, range, value, display)

  return offset + size_of.ratio_leg_3
end

-- Size: Side Leg 3
size_of.side_leg_3 = 1

-- Display: Side Leg 3
display.side_leg_3 = function(value)
  return "Side Leg 3: "..value
end

-- Dissect: Side Leg 3
dissect.side_leg_3 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_leg_3)
  local value = range:string()
  local display = display.side_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_leg_3, range, value, display)

  return offset + size_of.side_leg_3
end

-- Size: Contract Number Leg 3
size_of.contract_number_leg_3 = 4

-- Display: Contract Number Leg 3
display.contract_number_leg_3 = function(value)
  return "Contract Number Leg 3: "..value
end

-- Dissect: Contract Number Leg 3
dissect.contract_number_leg_3 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number_leg_3)
  local value = range:uint()
  local display = display.contract_number_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number_leg_3, range, value, display)

  return offset + size_of.contract_number_leg_3
end

-- Size: Price Leg 2
size_of.price_leg_2 = 4

-- Display: Price Leg 2
display.price_leg_2 = function(value)
  return "Price Leg 2: "..value
end

-- Dissect: Price Leg 2
dissect.price_leg_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_leg_2)
  local value = range:int()
  local display = display.price_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_leg_2, range, value, display)

  return offset + size_of.price_leg_2
end

-- Size: Ratio Leg 2
size_of.ratio_leg_2 = 2

-- Display: Ratio Leg 2
display.ratio_leg_2 = function(value)
  return "Ratio Leg 2: "..value
end

-- Dissect: Ratio Leg 2
dissect.ratio_leg_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ratio_leg_2)
  local value = range:uint()
  local display = display.ratio_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.ratio_leg_2, range, value, display)

  return offset + size_of.ratio_leg_2
end

-- Size: Side Leg 2
size_of.side_leg_2 = 1

-- Display: Side Leg 2
display.side_leg_2 = function(value)
  return "Side Leg 2: "..value
end

-- Dissect: Side Leg 2
dissect.side_leg_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_leg_2)
  local value = range:string()
  local display = display.side_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_leg_2, range, value, display)

  return offset + size_of.side_leg_2
end

-- Size: Contract Number Leg 2
size_of.contract_number_leg_2 = 4

-- Display: Contract Number Leg 2
display.contract_number_leg_2 = function(value)
  return "Contract Number Leg 2: "..value
end

-- Dissect: Contract Number Leg 2
dissect.contract_number_leg_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number_leg_2)
  local value = range:uint()
  local display = display.contract_number_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number_leg_2, range, value, display)

  return offset + size_of.contract_number_leg_2
end

-- Size: Price Leg 1
size_of.price_leg_1 = 4

-- Display: Price Leg 1
display.price_leg_1 = function(value)
  return "Price Leg 1: "..value
end

-- Dissect: Price Leg 1
dissect.price_leg_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_leg_1)
  local value = range:int()
  local display = display.price_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_leg_1, range, value, display)

  return offset + size_of.price_leg_1
end

-- Size: Ratio Leg 1
size_of.ratio_leg_1 = 2

-- Display: Ratio Leg 1
display.ratio_leg_1 = function(value)
  return "Ratio Leg 1: "..value
end

-- Dissect: Ratio Leg 1
dissect.ratio_leg_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ratio_leg_1)
  local value = range:uint()
  local display = display.ratio_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.ratio_leg_1, range, value, display)

  return offset + size_of.ratio_leg_1
end

-- Size: Side Leg 1
size_of.side_leg_1 = 1

-- Display: Side Leg 1
display.side_leg_1 = function(value)
  return "Side Leg 1: "..value
end

-- Dissect: Side Leg 1
dissect.side_leg_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_leg_1)
  local value = range:string()
  local display = display.side_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.side_leg_1, range, value, display)

  return offset + size_of.side_leg_1
end

-- Size: Contract Number Leg 1
size_of.contract_number_leg_1 = 4

-- Display: Contract Number Leg 1
display.contract_number_leg_1 = function(value)
  return "Contract Number Leg 1: "..value
end

-- Dissect: Contract Number Leg 1
dissect.contract_number_leg_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_number_leg_1)
  local value = range:uint()
  local display = display.contract_number_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_number_leg_1, range, value, display)

  return offset + size_of.contract_number_leg_1
end

-- Size: Legs
size_of.legs = 1

-- Display: Legs
display.legs = function(value)
  return "Legs: "..value
end

-- Dissect: Legs
dissect.legs = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.legs)
  local value = range:uint()
  local display = display.legs(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.legs, range, value, display)

  return offset + size_of.legs
end

-- Display: Custom Market Order Added
display.custom_market_order_added = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Order Added
dissect.custom_market_order_added_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index = dissect.legs(buffer, index, packet, parent)

  -- Contract Number Leg 1: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number_leg_1(buffer, index, packet, parent)

  -- Side Leg 1: 1 Byte Ascii String
  index = dissect.side_leg_1(buffer, index, packet, parent)

  -- Ratio Leg 1: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ratio_leg_1(buffer, index, packet, parent)

  -- Price Leg 1: 4 Byte Signed Fixed Width Integer
  index = dissect.price_leg_1(buffer, index, packet, parent)

  -- Contract Number Leg 2: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number_leg_2(buffer, index, packet, parent)

  -- Side Leg 2: 1 Byte Ascii String
  index = dissect.side_leg_2(buffer, index, packet, parent)

  -- Ratio Leg 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ratio_leg_2(buffer, index, packet, parent)

  -- Price Leg 2: 4 Byte Signed Fixed Width Integer
  index = dissect.price_leg_2(buffer, index, packet, parent)

  -- Contract Number Leg 3: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number_leg_3(buffer, index, packet, parent)

  -- Side Leg 3: 1 Byte Ascii String
  index = dissect.side_leg_3(buffer, index, packet, parent)

  -- Ratio Leg 3: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ratio_leg_3(buffer, index, packet, parent)

  -- Price Leg 3: 4 Byte Signed Fixed Width Integer
  index = dissect.price_leg_3(buffer, index, packet, parent)

  -- Contract Number Leg 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number_leg_4(buffer, index, packet, parent)

  -- Side Leg 4: 1 Byte Ascii String
  index = dissect.side_leg_4(buffer, index, packet, parent)

  -- Ratio Leg 4: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ratio_leg_4(buffer, index, packet, parent)

  -- Price Leg 4: 4 Byte Signed Fixed Width Integer
  index = dissect.price_leg_4(buffer, index, packet, parent)

  -- Contract Number Leg 5: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number_leg_5(buffer, index, packet, parent)

  -- Side Leg 5: 1 Byte Ascii String
  index = dissect.side_leg_5(buffer, index, packet, parent)

  -- Ratio Leg 5: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ratio_leg_5(buffer, index, packet, parent)

  -- Price Leg 5: 4 Byte Signed Fixed Width Integer
  index = dissect.price_leg_5(buffer, index, packet, parent)

  -- Contract Number Leg 6: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number_leg_6(buffer, index, packet, parent)

  -- Side Leg 6: 1 Byte Ascii String
  index = dissect.side_leg_6(buffer, index, packet, parent)

  -- Ratio Leg 6: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ratio_leg_6(buffer, index, packet, parent)

  -- Price Leg 6: 4 Byte Signed Fixed Width Integer
  index = dissect.price_leg_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Added
dissect.custom_market_order_added = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_order_added then
    local range = buffer(offset, 89)
    local display = display.custom_market_order_added(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.custom_market_order_added, range, display)
  end

  return dissect.custom_market_order_added_fields(buffer, offset, packet, parent)
end

-- Display: Implied Order Deleted
display.implied_order_deleted = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Deleted
dissect.implied_order_deleted_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted
dissect.implied_order_deleted = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_deleted then
    local range = buffer(offset, 19)
    local display = display.implied_order_deleted(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.implied_order_deleted, range, display)
  end

  return dissect.implied_order_deleted_fields(buffer, offset, packet, parent)
end

-- Display: Implied Order Replaced
display.implied_order_replaced = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Replaced
dissect.implied_order_replaced_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced
dissect.implied_order_replaced = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_replaced then
    local range = buffer(offset, 31)
    local display = display.implied_order_replaced(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.implied_order_replaced, range, display)
  end

  return dissect.implied_order_replaced_fields(buffer, offset, packet, parent)
end

-- Display: Implied Order Added
display.implied_order_added = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Added
dissect.implied_order_added_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added
dissect.implied_order_added = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_added then
    local range = buffer(offset, 31)
    local display = display.implied_order_added(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.implied_order_added, range, display)
  end

  return dissect.implied_order_added_fields(buffer, offset, packet, parent)
end

-- Display: Order Deleted
display.order_deleted = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Deleted
dissect.order_deleted_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted
dissect.order_deleted = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_deleted then
    local range = buffer(offset, 19)
    local display = display.order_deleted(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_deleted, range, display)
  end

  return dissect.order_deleted_fields(buffer, offset, packet, parent)
end

-- Display: Order Volume Cancelled
display.order_volume_cancelled = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Volume Cancelled
dissect.order_volume_cancelled_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled
dissect.order_volume_cancelled = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_volume_cancelled then
    local range = buffer(offset, 23)
    local display = display.order_volume_cancelled(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_volume_cancelled, range, display)
  end

  return dissect.order_volume_cancelled_fields(buffer, offset, packet, parent)
end

-- Display: Order Replaced
display.order_replaced = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replaced
dissect.order_replaced_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced
dissect.order_replaced = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replaced then
    local range = buffer(offset, 31)
    local display = display.order_replaced(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_replaced, range, display)
  end

  return dissect.order_replaced_fields(buffer, offset, packet, parent)
end

-- Display: Order Added
display.order_added = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Added
dissect.order_added_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added
dissect.order_added = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_added then
    local range = buffer(offset, 31)
    local display = display.order_added(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_added, range, display)
  end

  return dissect.order_added_fields(buffer, offset, packet, parent)
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
  if value == "p" then
    return "Trading Status: Pending (p)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "P" then
    return "Trading Status: PreOpen (P)"
  end
  if value == "C" then
    return "Trading Status: Closed (C)"
  end
  if value == "l" then
    return "Trading Status: Levelling (l)"
  end
  if value == "L" then
    return "Trading Status: Locked (L)"
  end
  if value == "O" then
    return "Trading Status: Opened (O)"
  end
  if value == "U" then
    return "Trading Status: Unavailable (U)"
  end
  if value == "d" then
    return "Trading Status: Pre Price Discovery (d)"
  end
  if value == "I" then
    return "Trading Status: Inactive (I)"
  end
  if value == "D" then
    return "Trading Status: Price Discovery (D)"
  end
  if value == "A" then
    return "Trading Status: Activated (A)"
  end
  if value == "R" then
    return "Trading Status: Regulatory Halt (R)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_status)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trading_status, range, value, display)

  return offset + size_of.trading_status
end

-- Display: Order Book State
display.order_book_state = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book State
dissect.order_book_state_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 13 values
  index = dissect.trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State
dissect.order_book_state = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_state then
    local range = buffer(offset, 11)
    local display = display.order_book_state(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.order_book_state, range, display)
  end

  return dissect.order_book_state_fields(buffer, offset, packet, parent)
end

-- Size: Activated
size_of.activated = 1

-- Display: Activated
display.activated = function(value)
  if value == "Y" then
    return "Activated: active (Y)"
  end
  if value == "N" then
    return "Activated: inactive (N)"
  end

  return "Activated: Unknown("..value..")"
end

-- Dissect: Activated
dissect.activated = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.activated)
  local value = range:string()
  local display = display.activated(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.activated, range, value, display)

  return offset + size_of.activated
end

-- Size: Payments per Year
size_of.payments_per_year = 1

-- Display: Payments per Year
display.payments_per_year = function(value)
  return "Payments per Year: "..value
end

-- Dissect: Payments per Year
dissect.payments_per_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.payments_per_year)
  local value = range:uint()
  local display = display.payments_per_year(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.payments_per_year, range, value, display)

  return offset + size_of.payments_per_year
end

-- Size: Coupon Rate
size_of.coupon_rate = 2

-- Display: Coupon Rate
display.coupon_rate = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
dissect.coupon_rate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.coupon_rate)
  local value = range:uint()
  local display = display.coupon_rate(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.coupon_rate, range, value, display)

  return offset + size_of.coupon_rate
end

-- Size: Maturity Value
size_of.maturity_value = 1

-- Display: Maturity Value
display.maturity_value = function(value)
  return "Maturity Value: "..value
end

-- Dissect: Maturity Value
dissect.maturity_value = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.maturity_value)
  local value = range:uint()
  local display = display.maturity_value(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.maturity_value, range, value, display)

  return offset + size_of.maturity_value
end

-- Size: Lot Size or Face Value
size_of.lot_size_or_face_value = 4

-- Display: Lot Size or Face Value
display.lot_size_or_face_value = function(value)
  return "Lot Size or Face Value: "..value
end

-- Dissect: Lot Size or Face Value
dissect.lot_size_or_face_value = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lot_size_or_face_value)
  local value = range:uint()
  local display = display.lot_size_or_face_value(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.lot_size_or_face_value, range, value, display)

  return offset + size_of.lot_size_or_face_value
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.currency)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.currency, range, value, display)

  return offset + size_of.currency
end

-- Size: Financial Type
size_of.financial_type = 1

-- Display: Financial Type
display.financial_type = function(value)
  if value == "C" then
    return "Financial Type: Commodity (C)"
  end
  if value == "D" then
    return "Financial Type: Cfd (D)"
  end
  if value == "E" then
    return "Financial Type: Equity (E)"
  end
  if value == "X" then
    return "Financial Type: Government Bond (X)"
  end
  if value == "B" then
    return "Financial Type: Bank Bill (B)"
  end

  return "Financial Type: Unknown("..value..")"
end

-- Dissect: Financial Type
dissect.financial_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.financial_type)
  local value = range:string()
  local display = display.financial_type(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.financial_type, range, value, display)

  return offset + size_of.financial_type
end

-- Size: Prior Day Settlement
size_of.prior_day_settlement = 4

-- Display: Prior Day Settlement
display.prior_day_settlement = function(value)
  return "Prior Day Settlement: "..value
end

-- Dissect: Prior Day Settlement
dissect.prior_day_settlement = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.prior_day_settlement)
  local value = range:int()
  local display = display.prior_day_settlement(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.prior_day_settlement, range, value, display)

  return offset + size_of.prior_day_settlement
end

-- Size: Last Trading Date
size_of.last_trading_date = 4

-- Display: Last Trading Date
display.last_trading_date = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
dissect.last_trading_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_trading_date)
  local value = range:uint()
  local display = display.last_trading_date(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.last_trading_date, range, value, display)

  return offset + size_of.last_trading_date
end

-- Size: Strike Price Minimum Tick
size_of.strike_price_minimum_tick = 2

-- Display: Strike Price Minimum Tick
display.strike_price_minimum_tick = function(value)
  return "Strike Price Minimum Tick: "..value
end

-- Dissect: Strike Price Minimum Tick
dissect.strike_price_minimum_tick = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price_minimum_tick)
  local value = range:uint()
  local display = display.strike_price_minimum_tick(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.strike_price_minimum_tick, range, value, display)

  return offset + size_of.strike_price_minimum_tick
end

-- Size: Strike Price Fractional Denominator
size_of.strike_price_fractional_denominator = 4

-- Display: Strike Price Fractional Denominator
display.strike_price_fractional_denominator = function(value)
  return "Strike Price Fractional Denominator: "..value
end

-- Dissect: Strike Price Fractional Denominator
dissect.strike_price_fractional_denominator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price_fractional_denominator)
  local value = range:uint()
  local display = display.strike_price_fractional_denominator(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.strike_price_fractional_denominator, range, value, display)

  return offset + size_of.strike_price_fractional_denominator
end

-- Size: Strike Price Decimal Position
size_of.strike_price_decimal_position = 1

-- Display: Strike Price Decimal Position
display.strike_price_decimal_position = function(value)
  return "Strike Price Decimal Position: "..value
end

-- Dissect: Strike Price Decimal Position
dissect.strike_price_decimal_position = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price_decimal_position)
  local value = range:uint()
  local display = display.strike_price_decimal_position(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.strike_price_decimal_position, range, value, display)

  return offset + size_of.strike_price_decimal_position
end

-- Size: Price Minimum Tick
size_of.price_minimum_tick = 2

-- Display: Price Minimum Tick
display.price_minimum_tick = function(value)
  return "Price Minimum Tick: "..value
end

-- Dissect: Price Minimum Tick
dissect.price_minimum_tick = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_minimum_tick)
  local value = range:uint()
  local display = display.price_minimum_tick(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_minimum_tick, range, value, display)

  return offset + size_of.price_minimum_tick
end

-- Size: Price Fractional Denominator
size_of.price_fractional_denominator = 4

-- Display: Price Fractional Denominator
display.price_fractional_denominator = function(value)
  return "Price Fractional Denominator: "..value
end

-- Dissect: Price Fractional Denominator
dissect.price_fractional_denominator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_fractional_denominator)
  local value = range:uint()
  local display = display.price_fractional_denominator(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_fractional_denominator, range, value, display)

  return offset + size_of.price_fractional_denominator
end

-- Size: Price Decimal Position
size_of.price_decimal_position = 1

-- Display: Price Decimal Position
display.price_decimal_position = function(value)
  return "Price Decimal Position: "..value
end

-- Dissect: Price Decimal Position
dissect.price_decimal_position = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_decimal_position)
  local value = range:uint()
  local display = display.price_decimal_position(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.price_decimal_position, range, value, display)

  return offset + size_of.price_decimal_position
end

-- Size: Underlying Contract Number
size_of.underlying_contract_number = 4

-- Display: Underlying Contract Number
display.underlying_contract_number = function(value)
  return "Underlying Contract Number: "..value
end

-- Dissect: Underlying Contract Number
dissect.underlying_contract_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_contract_number)
  local value = range:uint()
  local display = display.underlying_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.underlying_contract_number, range, value, display)

  return offset + size_of.underlying_contract_number
end

-- Size: Strike
size_of.strike = 4

-- Display: Strike
display.strike = function(value)
  return "Strike: "..value
end

-- Dissect: Strike
dissect.strike = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike)
  local value = range:uint()
  local display = display.strike(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.strike, range, value, display)

  return offset + size_of.strike
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "C" then
    return "Option Type: Call (C)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_type)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.option_type, range, value, display)

  return offset + size_of.option_type
end

-- Size: Expiry Month
size_of.expiry_month = 1

-- Display: Expiry Month
display.expiry_month = function(value)
  return "Expiry Month: "..value
end

-- Dissect: Expiry Month
dissect.expiry_month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiry_month)
  local value = range:uint()
  local display = display.expiry_month(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.expiry_month, range, value, display)

  return offset + size_of.expiry_month
end

-- Size: Expiry Year
size_of.expiry_year = 2

-- Display: Expiry Year
display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
dissect.expiry_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiry_year)
  local value = range:uint()
  local display = display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.expiry_year, range, value, display)

  return offset + size_of.expiry_year
end

-- Size: Contract Type
size_of.contract_type = 1

-- Display: Contract Type
display.contract_type = function(value)
  if value == "F" then
    return "Contract Type: Cfut (F)"
  end
  if value == "O" then
    return "Contract Type: Copta (O)"
  end
  if value == "E" then
    return "Contract Type: Eopta (E)"
  end
  if value == "N" then
    return "Contract Type: Oopt (N)"
  end
  if value == "S" then
    return "Contract Type: Csprd (S)"
  end
  if value == "A" then
    return "Contract Type: Sprd (A)"
  end
  if value == "D" then
    return "Contract Type: Sfut (D)"
  end

  return "Contract Type: Unknown("..value..")"
end

-- Dissect: Contract Type
dissect.contract_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_type)
  local value = range:string()
  local display = display.contract_type(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.contract_type, range, value, display)

  return offset + size_of.contract_type
end

-- Size: Instrument
size_of.instrument = 6

-- Display: Instrument
display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
dissect.instrument = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.instrument)
  local value = range:string()
  local display = display.instrument(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.instrument, range, value, display)

  return offset + size_of.instrument
end

-- Size: Exchange
size_of.exchange = 6

-- Display: Exchange
display.exchange = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
dissect.exchange = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange)
  local value = range:string()
  local display = display.exchange(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.exchange, range, value, display)

  return offset + size_of.exchange
end

-- Display: Option Symbol Directory
display.option_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Symbol Directory
dissect.option_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index = dissect.exchange(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index = dissect.instrument(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index = dissect.contract_type(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiry_month(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.option_type(buffer, index, packet, parent)

  -- Strike: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike(buffer, index, packet, parent)

  -- Underlying Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_contract_number(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_decimal_position(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Strike Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_decimal_position(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_fractional_denominator(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_minimum_tick(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_trading_date(buffer, index, packet, parent)

  -- Prior Day Settlement: 4 Byte Signed Fixed Width Integer
  index = dissect.prior_day_settlement(buffer, index, packet, parent)

  -- Volatility: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volatility(buffer, index, packet, parent)

  -- Financial Type: 1 Byte Ascii String Enum with 5 values
  index = dissect.financial_type(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Lot Size or Face Value: 4 Byte Unsigned Fixed Width Integer
  index = dissect.lot_size_or_face_value(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_value(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index = dissect.coupon_rate(buffer, index, packet, parent)

  -- Payments per Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.payments_per_year(buffer, index, packet, parent)

  -- Activated: 1 Byte Ascii String Enum with 2 values
  index = dissect.activated(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol Directory
dissect.option_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_symbol_directory then
    local range = buffer(offset, 74)
    local display = display.option_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.option_symbol_directory, range, display)
  end

  return dissect.option_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Ratio
size_of.secondary_ratio = 1

-- Display: Secondary Ratio
display.secondary_ratio = function(value)
  return "Secondary Ratio: "..value
end

-- Dissect: Secondary Ratio
dissect.secondary_ratio = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.secondary_ratio)
  local value = range:uint()
  local display = display.secondary_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.secondary_ratio, range, value, display)

  return offset + size_of.secondary_ratio
end

-- Size: Primary Ratio
size_of.primary_ratio = 1

-- Display: Primary Ratio
display.primary_ratio = function(value)
  return "Primary Ratio: "..value
end

-- Dissect: Primary Ratio
dissect.primary_ratio = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.primary_ratio)
  local value = range:uint()
  local display = display.primary_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.primary_ratio, range, value, display)

  return offset + size_of.primary_ratio
end

-- Size: Second Leg Contract Number
size_of.second_leg_contract_number = 4

-- Display: Second Leg Contract Number
display.second_leg_contract_number = function(value)
  return "Second Leg Contract Number: "..value
end

-- Dissect: Second Leg Contract Number
dissect.second_leg_contract_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second_leg_contract_number)
  local value = range:uint()
  local display = display.second_leg_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.second_leg_contract_number, range, value, display)

  return offset + size_of.second_leg_contract_number
end

-- Size: First Leg Contract Number
size_of.first_leg_contract_number = 4

-- Display: First Leg Contract Number
display.first_leg_contract_number = function(value)
  return "First Leg Contract Number: "..value
end

-- Dissect: First Leg Contract Number
dissect.first_leg_contract_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.first_leg_contract_number)
  local value = range:uint()
  local display = display.first_leg_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.first_leg_contract_number, range, value, display)

  return offset + size_of.first_leg_contract_number
end

-- Display: Spread Symbol Directory
display.spread_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Symbol Directory
dissect.spread_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index = dissect.exchange(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index = dissect.contract_type(buffer, index, packet, parent)

  -- First Leg Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.first_leg_contract_number(buffer, index, packet, parent)

  -- Second Leg Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.second_leg_contract_number(buffer, index, packet, parent)

  -- Primary Ratio: 1 Byte Unsigned Fixed Width Integer
  index = dissect.primary_ratio(buffer, index, packet, parent)

  -- Secondary Ratio: 1 Byte Unsigned Fixed Width Integer
  index = dissect.secondary_ratio(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_decimal_position(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price_minimum_tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Symbol Directory
dissect.spread_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_symbol_directory then
    local range = buffer(offset, 34)
    local display = display.spread_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.spread_symbol_directory, range, display)
  end

  return dissect.spread_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Display: Future Symbol Directory
display.future_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Symbol Directory
dissect.future_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contract_number(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index = dissect.exchange(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index = dissect.instrument(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index = dissect.contract_type(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiry_month(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_decimal_position(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_trading_date(buffer, index, packet, parent)

  -- Prior Day Settlement: 4 Byte Signed Fixed Width Integer
  index = dissect.prior_day_settlement(buffer, index, packet, parent)

  -- Financial Type: 1 Byte Ascii String Enum with 5 values
  index = dissect.financial_type(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Lot Size or Face Value: 4 Byte Unsigned Fixed Width Integer
  index = dissect.lot_size_or_face_value(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_value(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index = dissect.coupon_rate(buffer, index, packet, parent)

  -- Payments per Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.payments_per_year(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory
dissect.future_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_symbol_directory then
    local range = buffer(offset, 53)
    local display = display.future_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.future_symbol_directory, range, display)
  end

  return dissect.future_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  if value == "O" then
    return "Event Code: Open (O)"
  end
  if value == "S" then
    return "Event Code: Start (S)"
  end
  if value == "C" then
    return "Event Code: End (C)"
  end
  if value == "P" then
    return "Event Code: Paused (P)"
  end
  if value == "R" then
    return "Event Code: Resumed (R)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_code)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.event_code, range, value, display)

  return offset + size_of.event_code
end

-- Display: System Event
display.system_event = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event
dissect.system_event_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 5 values
  index = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event
dissect.system_event = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event then
    local range = buffer(offset, 7)
    local display = display.system_event(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.system_event, range, display)
  end

  return dissect.system_event_fields(buffer, offset, packet, parent)
end

-- Size: Second
size_of.second = 4

-- Display: Second
display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
dissect.second = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second)
  local value = range:uint()
  local display = display.second(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.second, range, value, display)

  return offset + size_of.second
end

-- Display: Time Message
display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index = dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local range = buffer(offset, 4)
    local display = display.time_message(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.time_message, range, display)
  end

  return dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Time Message
  if code == "T" then
    return 4
  end
  -- Size of System Event
  if code == "S" then
    return 7
  end
  -- Size of Future Symbol Directory
  if code == "f" then
    return 53
  end
  -- Size of Spread Symbol Directory
  if code == "g" then
    return 34
  end
  -- Size of Option Symbol Directory
  if code == "h" then
    return 74
  end
  -- Size of Order Book State
  if code == "O" then
    return 11
  end
  -- Size of Order Added
  if code == "A" then
    return 31
  end
  -- Size of Order Replaced
  if code == "U" then
    return 31
  end
  -- Size of Order Volume Cancelled
  if code == "X" then
    return 23
  end
  -- Size of Order Deleted
  if code == "D" then
    return 19
  end
  -- Size of Implied Order Added
  if code == "j" then
    return 31
  end
  -- Size of Implied Order Replaced
  if code == "l" then
    return 31
  end
  -- Size of Implied Order Deleted
  if code == "k" then
    return 19
  end
  -- Size of Custom Market Order Added
  if code == "m" then
    return 89
  end
  -- Size of Custom Market Order Replaced
  if code == "n" then
    return 22
  end
  -- Size of Custom Market Order Deleted
  if code == "r" then
    return 14
  end
  -- Size of Order Executed
  if code == "E" then
    return 36
  end
  -- Size of Order Executed with Price
  if code == "C" then
    return 47
  end
  -- Size of Spread Executed
  if code == "e" then
    return 46
  end
  -- Size of Trade Spread Execution Chain
  if code == "P" then
    return 62
  end
  -- Size of Custom Market Executed
  if code == "u" then
    return 37
  end
  -- Size of Custom Market Trade
  if code == "p" then
    return 54
  end
  -- Size of Trade Cancellation
  if code == "B" then
    return 10
  end
  -- Size of Equilibrium Price Auction Info
  if code == "Z" then
    return 30
  end
  -- Size of Open, High, Low, Last Trade Adjustment
  if code == "t" then
    return 39
  end
  -- Size of Market Settlement
  if code == "Y" then
    return 19
  end
  -- Size of Ad Hoc Text Message
  if code == "x" then
    return 112
  end
  -- Size of Request for Quote
  if code == "q" then
    return 18
  end
  -- Size of Anomalous Order Threshold Publish
  if code == "W" then
    return 34
  end
  -- Size of Volume and Open Interest
  if code == "V" then
    return 20
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Time Message
  if code == "T" then
    return dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event
  if code == "S" then
    return dissect.system_event(buffer, offset, packet, parent)
  end
  -- Dissect Future Symbol Directory
  if code == "f" then
    return dissect.future_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Spread Symbol Directory
  if code == "g" then
    return dissect.spread_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Option Symbol Directory
  if code == "h" then
    return dissect.option_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State
  if code == "O" then
    return dissect.order_book_state(buffer, offset, packet, parent)
  end
  -- Dissect Order Added
  if code == "A" then
    return dissect.order_added(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced
  if code == "U" then
    return dissect.order_replaced(buffer, offset, packet, parent)
  end
  -- Dissect Order Volume Cancelled
  if code == "X" then
    return dissect.order_volume_cancelled(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted
  if code == "D" then
    return dissect.order_deleted(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Added
  if code == "j" then
    return dissect.implied_order_added(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Replaced
  if code == "l" then
    return dissect.implied_order_replaced(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Deleted
  if code == "k" then
    return dissect.implied_order_deleted(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Added
  if code == "m" then
    return dissect.custom_market_order_added(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Replaced
  if code == "n" then
    return dissect.custom_market_order_replaced(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Deleted
  if code == "r" then
    return dissect.custom_market_order_deleted(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed
  if code == "E" then
    return dissect.order_executed(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed with Price
  if code == "C" then
    return dissect.order_executed_with_price(buffer, offset, packet, parent)
  end
  -- Dissect Spread Executed
  if code == "e" then
    return dissect.spread_executed(buffer, offset, packet, parent)
  end
  -- Dissect Trade Spread Execution Chain
  if code == "P" then
    return dissect.trade_spread_execution_chain(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Executed
  if code == "u" then
    return dissect.custom_market_executed(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Trade
  if code == "p" then
    return dissect.custom_market_trade(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation
  if code == "B" then
    return dissect.trade_cancellation(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Auction Info
  if code == "Z" then
    return dissect.equilibrium_price_auction_info(buffer, offset, packet, parent)
  end
  -- Dissect Open, High, Low, Last Trade Adjustment
  if code == "t" then
    return dissect.open__high__low__last_trade_adjustment(buffer, offset, packet, parent)
  end
  -- Dissect Market Settlement
  if code == "Y" then
    return dissect.market_settlement(buffer, offset, packet, parent)
  end
  -- Dissect Ad Hoc Text Message
  if code == "x" then
    return dissect.ad_hoc_text_message(buffer, offset, packet, parent)
  end
  -- Dissect Request for Quote
  if code == "q" then
    return dissect.request_for_quote(buffer, offset, packet, parent)
  end
  -- Dissect Anomalous Order Threshold Publish
  if code == "W" then
    return dissect.anomalous_order_threshold_publish(buffer, offset, packet, parent)
  end
  -- Dissect Volume and Open Interest
  if code == "V" then
    return dissect.volume_and_open_interest(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse Payload type dependency
  local code = buffer(offset - 1, 1):string()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(asx_t24_itch_1_13.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "T" then
    return "Message Type: Time Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event (S)"
  end
  if value == "f" then
    return "Message Type: Future Symbol Directory (f)"
  end
  if value == "g" then
    return "Message Type: Spread Symbol Directory (g)"
  end
  if value == "h" then
    return "Message Type: Option Symbol Directory (h)"
  end
  if value == "O" then
    return "Message Type: Order Book State (O)"
  end
  if value == "A" then
    return "Message Type: Order Added (A)"
  end
  if value == "U" then
    return "Message Type: Order Replaced (U)"
  end
  if value == "X" then
    return "Message Type: Order Volume Cancelled (X)"
  end
  if value == "D" then
    return "Message Type: Order Deleted (D)"
  end
  if value == "j" then
    return "Message Type: Implied Order Added (j)"
  end
  if value == "l" then
    return "Message Type: Implied Order Replaced (l)"
  end
  if value == "k" then
    return "Message Type: Implied Order Deleted (k)"
  end
  if value == "m" then
    return "Message Type: Custom Market Order Added (m)"
  end
  if value == "n" then
    return "Message Type: Custom Market Order Replaced (n)"
  end
  if value == "r" then
    return "Message Type: Custom Market Order Deleted (r)"
  end
  if value == "E" then
    return "Message Type: Order Executed (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed with Price (C)"
  end
  if value == "e" then
    return "Message Type: Spread Executed (e)"
  end
  if value == "P" then
    return "Message Type: Trade Spread Execution Chain (P)"
  end
  if value == "u" then
    return "Message Type: Custom Market Executed (u)"
  end
  if value == "p" then
    return "Message Type: Custom Market Trade (p)"
  end
  if value == "B" then
    return "Message Type: Trade Cancellation (B)"
  end
  if value == "Z" then
    return "Message Type: Equilibrium Price Auction Info (Z)"
  end
  if value == "t" then
    return "Message Type: Open, High, Low, Last Trade Adjustment (t)"
  end
  if value == "Y" then
    return "Message Type: Market Settlement (Y)"
  end
  if value == "x" then
    return "Message Type: Ad Hoc Text Message (x)"
  end
  if value == "q" then
    return "Message Type: Request for Quote (q)"
  end
  if value == "W" then
    return "Message Type: Anomalous Order Threshold Publish (W)"
  end
  if value == "V" then
    return "Message Type: Volume and Open Interest (V)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.length, range, value, display)

  return offset + size_of.length
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 30 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 30 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
size_of.count = 2

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
size_of.sequence = 8

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.sequence, range, value, display)

  return offset + size_of.sequence
end

-- Size: Trading Service
size_of.trading_service = 3

-- Display: Trading Service
display.trading_service = function(value)
  return "Trading Service: "..value
end

-- Dissect: Trading Service
dissect.trading_service = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_service)
  local value = range:string()
  local display = display.trading_service(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.trading_service, range, value, display)

  return offset + size_of.trading_service
end

-- Size: Session Week
size_of.session_week = 2

-- Display: Session Week
display.session_week = function(value)
  return "Session Week: "..value
end

-- Dissect: Session Week
dissect.session_week = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_week)
  local value = range:string()
  local display = display.session_week(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.session_week, range, value, display)

  return offset + size_of.session_week
end

-- Size: Session Year
size_of.session_year = 2

-- Display: Session Year
display.session_year = function(value)
  return "Session Year: "..value
end

-- Dissect: Session Year
dissect.session_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_year)
  local value = range:string()
  local display = display.session_year(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.session_year, range, value, display)

  return offset + size_of.session_year
end

-- Size: Protocol Version
size_of.protocol_version = 3

-- Display: Protocol Version
display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
dissect.protocol_version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.protocol_version)
  local value = range:string()
  local display = display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(asx_t24_itch_1_13.fields.protocol_version, range, value, display)

  return offset + size_of.protocol_version
end

-- Display: Session
display.session = function(buffer, packet, parent)
  return buffer(0, 10):string()
end

-- Dissect Fields: Session
dissect.session_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Version: 3 Byte Ascii String
  index = dissect.protocol_version(buffer, index, packet, parent)

  -- Session Year: 2 Byte Ascii String
  index = dissect.session_year(buffer, index, packet, parent)

  -- Session Week: 2 Byte Ascii String
  index = dissect.session_week(buffer, index, packet, parent)

  -- Trading Service: 3 Byte Ascii String
  index = dissect.trading_service(buffer, index, packet, parent)

  return index
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.session then
    local range = buffer(offset, 10)
    local display = display.session(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.session, range, display)
  end

  return dissect.session_fields(buffer, offset, packet, parent)
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String: Struct of 4 fields
  index = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 20)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(asx_t24_itch_1_13.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function asx_t24_itch_1_13.init()
end

-- Dissector for Asx T24 Itch 1.13
function asx_t24_itch_1_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = asx_t24_itch_1_13.name

  -- Dissect protocol
  local protocol = parent:add(asx_t24_itch_1_13, buffer(), asx_t24_itch_1_13.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, asx_t24_itch_1_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.asx_t24_itch_1_13_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx T24 Itch 1.13
local function asx_t24_itch_1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.asx_t24_itch_1_13_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = asx_t24_itch_1_13
  asx_t24_itch_1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Asx T24 Itch 1.13 Heuristic
asx_t24_itch_1_13:register_heuristic("udp", asx_t24_itch_1_13_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.13
-- Date: Tuesday, July 15, 2014
-- Script:
-- Source Version: 1.3.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
