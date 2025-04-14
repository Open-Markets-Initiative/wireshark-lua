-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Protocol
local asx_securities_t24_itch_v1_13 = Proto("Asx.Securities.T24.Itch.v1.13.Lua", "Asx Securities T24 Itch 1.13")

-- Component Tables
local show = {}
local format = {}
local asx_securities_t24_itch_v1_13_display = {}
local asx_securities_t24_itch_v1_13_dissect = {}
local asx_securities_t24_itch_v1_13_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Fields
asx_securities_t24_itch_v1_13.fields.activated = ProtoField.new("Activated", "asx.securities.t24.itch.v1.13.activated", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.ad_hoc_text = ProtoField.new("Ad Hoc Text", "asx.securities.t24.itch.v1.13.adhoctext", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.anomalous_order_threshold_publish = ProtoField.new("Anomalous Order Threshold Publish", "asx.securities.t24.itch.v1.13.anomalousorderthresholdpublish", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.aot_lower_price = ProtoField.new("Aot Lower Price", "asx.securities.t24.itch.v1.13.aotlowerprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.aot_price = ProtoField.new("Aot Price", "asx.securities.t24.itch.v1.13.aotprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.aot_upper_price = ProtoField.new("Aot Upper Price", "asx.securities.t24.itch.v1.13.aotupperprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.securities.t24.itch.v1.13.bestaskprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.securities.t24.itch.v1.13.bestaskquantity", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.securities.t24.itch.v1.13.bestbidprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.securities.t24.itch.v1.13.bestbidquantity", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.buyer = ProtoField.new("Buyer", "asx.securities.t24.itch.v1.13.buyer", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.buyer_order_number = ProtoField.new("Buyer Order Number", "asx.securities.t24.itch.v1.13.buyerordernumber", ftypes.UINT64)
asx_securities_t24_itch_v1_13.fields.buyer_quantity_remaining = ProtoField.new("Buyer Quantity Remaining", "asx.securities.t24.itch.v1.13.buyerquantityremaining", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.buying_order_number = ProtoField.new("Buying Order Number", "asx.securities.t24.itch.v1.13.buyingordernumber", ftypes.UINT64)
asx_securities_t24_itch_v1_13.fields.contract_number = ProtoField.new("Contract Number", "asx.securities.t24.itch.v1.13.contractnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_number_leg_1 = ProtoField.new("Contract Number Leg 1", "asx.securities.t24.itch.v1.13.contractnumberleg1", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_number_leg_2 = ProtoField.new("Contract Number Leg 2", "asx.securities.t24.itch.v1.13.contractnumberleg2", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_number_leg_3 = ProtoField.new("Contract Number Leg 3", "asx.securities.t24.itch.v1.13.contractnumberleg3", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_number_leg_4 = ProtoField.new("Contract Number Leg 4", "asx.securities.t24.itch.v1.13.contractnumberleg4", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_number_leg_5 = ProtoField.new("Contract Number Leg 5", "asx.securities.t24.itch.v1.13.contractnumberleg5", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_number_leg_6 = ProtoField.new("Contract Number Leg 6", "asx.securities.t24.itch.v1.13.contractnumberleg6", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.contract_type = ProtoField.new("Contract Type", "asx.securities.t24.itch.v1.13.contracttype", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.count = ProtoField.new("Count", "asx.securities.t24.itch.v1.13.count", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.securities.t24.itch.v1.13.couponrate", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.securities.t24.itch.v1.13.cumulativevolume", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.currency = ProtoField.new("Currency", "asx.securities.t24.itch.v1.13.currency", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.custom_market_executed = ProtoField.new("Custom Market Executed", "asx.securities.t24.itch.v1.13.custommarketexecuted", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.custom_market_order_added = ProtoField.new("Custom Market Order Added", "asx.securities.t24.itch.v1.13.custommarketorderadded", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.custom_market_order_deleted = ProtoField.new("Custom Market Order Deleted", "asx.securities.t24.itch.v1.13.custommarketorderdeleted", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.custom_market_order_number = ProtoField.new("Custom Market Order Number", "asx.securities.t24.itch.v1.13.custommarketordernumber", ftypes.UINT64)
asx_securities_t24_itch_v1_13.fields.custom_market_order_replaced = ProtoField.new("Custom Market Order Replaced", "asx.securities.t24.itch.v1.13.custommarketorderreplaced", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.custom_market_quantity_remaining = ProtoField.new("Custom Market Quantity Remaining", "asx.securities.t24.itch.v1.13.custommarketquantityremaining", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.custom_market_trade = ProtoField.new("Custom Market Trade", "asx.securities.t24.itch.v1.13.custommarkettrade", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.t24.itch.v1.13.equilibriumprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.equilibrium_price_auction_info = ProtoField.new("Equilibrium Price Auction Info", "asx.securities.t24.itch.v1.13.equilibriumpriceauctioninfo", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.etr_lower_price = ProtoField.new("Etr Lower Price", "asx.securities.t24.itch.v1.13.etrlowerprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.etr_price = ProtoField.new("Etr Price", "asx.securities.t24.itch.v1.13.etrprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.etr_upper_price = ProtoField.new("Etr Upper Price", "asx.securities.t24.itch.v1.13.etrupperprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.event_code = ProtoField.new("Event Code", "asx.securities.t24.itch.v1.13.eventcode", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.exchange = ProtoField.new("Exchange", "asx.securities.t24.itch.v1.13.exchange", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.t24.itch.v1.13.executedquantity", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.expiry_month = ProtoField.new("Expiry Month", "asx.securities.t24.itch.v1.13.expirymonth", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.expiry_year = ProtoField.new("Expiry Year", "asx.securities.t24.itch.v1.13.expiryyear", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.financial_type = ProtoField.new("Financial Type", "asx.securities.t24.itch.v1.13.financialtype", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.first_leg_contract_number = ProtoField.new("First Leg Contract Number", "asx.securities.t24.itch.v1.13.firstlegcontractnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.future_symbol_directory = ProtoField.new("Future Symbol Directory", "asx.securities.t24.itch.v1.13.futuresymboldirectory", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.highest_trade = ProtoField.new("Highest Trade", "asx.securities.t24.itch.v1.13.highesttrade", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.highest_traded_price = ProtoField.new("Highest Traded Price", "asx.securities.t24.itch.v1.13.highesttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
asx_securities_t24_itch_v1_13.fields.implied_order_added = ProtoField.new("Implied Order Added", "asx.securities.t24.itch.v1.13.impliedorderadded", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.implied_order_deleted = ProtoField.new("Implied Order Deleted", "asx.securities.t24.itch.v1.13.impliedorderdeleted", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.implied_order_replaced = ProtoField.new("Implied Order Replaced", "asx.securities.t24.itch.v1.13.impliedorderreplaced", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.instrument = ProtoField.new("Instrument", "asx.securities.t24.itch.v1.13.instrument", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.last_trade = ProtoField.new("Last Trade", "asx.securities.t24.itch.v1.13.lasttrade", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.last_traded_price = ProtoField.new("Last Traded Price", "asx.securities.t24.itch.v1.13.lasttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
asx_securities_t24_itch_v1_13.fields.last_traded_volume = ProtoField.new("Last Traded Volume", "asx.securities.t24.itch.v1.13.lasttradedvolume", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
asx_securities_t24_itch_v1_13.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.securities.t24.itch.v1.13.lasttradingdate", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.last_volume = ProtoField.new("Last Volume", "asx.securities.t24.itch.v1.13.lastvolume", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.legs = ProtoField.new("Legs", "asx.securities.t24.itch.v1.13.legs", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.length = ProtoField.new("Length", "asx.securities.t24.itch.v1.13.length", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.lot_size_or_face_value = ProtoField.new("Lot Size Or Face Value", "asx.securities.t24.itch.v1.13.lotsizeorfacevalue", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.securities.t24.itch.v1.13.lowesttrade", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.lowest_traded_price = ProtoField.new("Lowest Traded Price", "asx.securities.t24.itch.v1.13.lowesttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
asx_securities_t24_itch_v1_13.fields.market_settlement = ProtoField.new("Market Settlement", "asx.securities.t24.itch.v1.13.marketsettlement", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.market_updates = ProtoField.new("Market Updates", "asx.securities.t24.itch.v1.13.marketupdates", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.match_number = ProtoField.new("Match Number", "asx.securities.t24.itch.v1.13.matchnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.maturity_value = ProtoField.new("Maturity Value", "asx.securities.t24.itch.v1.13.maturityvalue", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.message = ProtoField.new("Message", "asx.securities.t24.itch.v1.13.message", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.message_header = ProtoField.new("Message Header", "asx.securities.t24.itch.v1.13.messageheader", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.message_type = ProtoField.new("Message Type", "asx.securities.t24.itch.v1.13.messagetype", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.open_high_low_last_trade_adjustment = ProtoField.new("Open High Low Last Trade Adjustment", "asx.securities.t24.itch.v1.13.openhighlowlasttradeadjustment", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.open_interest = ProtoField.new("Open Interest", "asx.securities.t24.itch.v1.13.openinterest", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.opening_trade = ProtoField.new("Opening Trade", "asx.securities.t24.itch.v1.13.openingtrade", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.opening_trade_price = ProtoField.new("Opening Trade Price", "asx.securities.t24.itch.v1.13.openingtradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
asx_securities_t24_itch_v1_13.fields.option_symbol_directory = ProtoField.new("Option Symbol Directory", "asx.securities.t24.itch.v1.13.optionsymboldirectory", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.option_type = ProtoField.new("Option Type", "asx.securities.t24.itch.v1.13.optiontype", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_added = ProtoField.new("Order Added", "asx.securities.t24.itch.v1.13.orderadded", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.securities.t24.itch.v1.13.orderbookpriority", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.order_book_state = ProtoField.new("Order Book State", "asx.securities.t24.itch.v1.13.orderbookstate", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_deleted = ProtoField.new("Order Deleted", "asx.securities.t24.itch.v1.13.orderdeleted", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_executed = ProtoField.new("Order Executed", "asx.securities.t24.itch.v1.13.orderexecuted", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_executed_with_price = ProtoField.new("Order Executed With Price", "asx.securities.t24.itch.v1.13.orderexecutedwithprice", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_number = ProtoField.new("Order Number", "asx.securities.t24.itch.v1.13.ordernumber", ftypes.UINT64)
asx_securities_t24_itch_v1_13.fields.order_replaced = ProtoField.new("Order Replaced", "asx.securities.t24.itch.v1.13.orderreplaced", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.order_volume_cancelled = ProtoField.new("Order Volume Cancelled", "asx.securities.t24.itch.v1.13.ordervolumecancelled", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.packet = ProtoField.new("Packet", "asx.securities.t24.itch.v1.13.packet", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.t24.itch.v1.13.packetheader", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.payload = ProtoField.new("Payload", "asx.securities.t24.itch.v1.13.payload", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.payments_per_year = ProtoField.new("Payments Per Year", "asx.securities.t24.itch.v1.13.paymentsperyear", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.price = ProtoField.new("Price", "asx.securities.t24.itch.v1.13.price", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_decimal_position = ProtoField.new("Price Decimal Position", "asx.securities.t24.itch.v1.13.pricedecimalposition", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.securities.t24.itch.v1.13.pricefractionaldenominator", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.price_leg_1 = ProtoField.new("Price Leg 1", "asx.securities.t24.itch.v1.13.priceleg1", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_leg_2 = ProtoField.new("Price Leg 2", "asx.securities.t24.itch.v1.13.priceleg2", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_leg_3 = ProtoField.new("Price Leg 3", "asx.securities.t24.itch.v1.13.priceleg3", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_leg_4 = ProtoField.new("Price Leg 4", "asx.securities.t24.itch.v1.13.priceleg4", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_leg_5 = ProtoField.new("Price Leg 5", "asx.securities.t24.itch.v1.13.priceleg5", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_leg_6 = ProtoField.new("Price Leg 6", "asx.securities.t24.itch.v1.13.priceleg6", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.securities.t24.itch.v1.13.priceminimumtick", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.primary_ratio = ProtoField.new("Primary Ratio", "asx.securities.t24.itch.v1.13.primaryratio", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.printable = ProtoField.new("Printable", "asx.securities.t24.itch.v1.13.printable", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.securities.t24.itch.v1.13.priordaysettlement", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.protocol_version = ProtoField.new("Protocol Version", "asx.securities.t24.itch.v1.13.protocolversion", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.quantity = ProtoField.new("Quantity", "asx.securities.t24.itch.v1.13.quantity", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.securities.t24.itch.v1.13.quantityremaining", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.ratio_leg_1 = ProtoField.new("Ratio Leg 1", "asx.securities.t24.itch.v1.13.ratioleg1", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.ratio_leg_2 = ProtoField.new("Ratio Leg 2", "asx.securities.t24.itch.v1.13.ratioleg2", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.ratio_leg_3 = ProtoField.new("Ratio Leg 3", "asx.securities.t24.itch.v1.13.ratioleg3", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.ratio_leg_4 = ProtoField.new("Ratio Leg 4", "asx.securities.t24.itch.v1.13.ratioleg4", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.ratio_leg_5 = ProtoField.new("Ratio Leg 5", "asx.securities.t24.itch.v1.13.ratioleg5", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.ratio_leg_6 = ProtoField.new("Ratio Leg 6", "asx.securities.t24.itch.v1.13.ratioleg6", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.request_for_quote = ProtoField.new("Request For Quote", "asx.securities.t24.itch.v1.13.requestforquote", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.reserved = ProtoField.new("Reserved", "asx.securities.t24.itch.v1.13.reserved", ftypes.UINT8, nil, base.DEC, 0xC0)
asx_securities_t24_itch_v1_13.fields.second = ProtoField.new("Second", "asx.securities.t24.itch.v1.13.second", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.second_leg_contract_number = ProtoField.new("Second Leg Contract Number", "asx.securities.t24.itch.v1.13.secondlegcontractnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.secondary_ratio = ProtoField.new("Secondary Ratio", "asx.securities.t24.itch.v1.13.secondaryratio", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.seller_contract_number = ProtoField.new("Seller Contract Number", "asx.securities.t24.itch.v1.13.sellercontractnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.seller_quantity_remaining = ProtoField.new("Seller Quantity Remaining", "asx.securities.t24.itch.v1.13.sellerquantityremaining", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.selling_order_number = ProtoField.new("Selling Order Number", "asx.securities.t24.itch.v1.13.sellingordernumber", ftypes.UINT64)
asx_securities_t24_itch_v1_13.fields.sequence = ProtoField.new("Sequence", "asx.securities.t24.itch.v1.13.sequence", ftypes.UINT64)
asx_securities_t24_itch_v1_13.fields.session = ProtoField.new("Session", "asx.securities.t24.itch.v1.13.session", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.session_week = ProtoField.new("Session Week", "asx.securities.t24.itch.v1.13.sessionweek", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.session_year = ProtoField.new("Session Year", "asx.securities.t24.itch.v1.13.sessionyear", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.settlement_price = ProtoField.new("Settlement Price", "asx.securities.t24.itch.v1.13.settlementprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.settlement_type = ProtoField.new("Settlement Type", "asx.securities.t24.itch.v1.13.settlementtype", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side = ProtoField.new("Side", "asx.securities.t24.itch.v1.13.side", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_leg_1 = ProtoField.new("Side Leg 1", "asx.securities.t24.itch.v1.13.sideleg1", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_leg_2 = ProtoField.new("Side Leg 2", "asx.securities.t24.itch.v1.13.sideleg2", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_leg_3 = ProtoField.new("Side Leg 3", "asx.securities.t24.itch.v1.13.sideleg3", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_leg_4 = ProtoField.new("Side Leg 4", "asx.securities.t24.itch.v1.13.sideleg4", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_leg_5 = ProtoField.new("Side Leg 5", "asx.securities.t24.itch.v1.13.sideleg5", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_leg_6 = ProtoField.new("Side Leg 6", "asx.securities.t24.itch.v1.13.sideleg6", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_of_buyer = ProtoField.new("Side Of Buyer", "asx.securities.t24.itch.v1.13.sideofbuyer", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.side_of_seller = ProtoField.new("Side Of Seller", "asx.securities.t24.itch.v1.13.sideofseller", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.source_id = ProtoField.new("Source Id", "asx.securities.t24.itch.v1.13.sourceid", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.spread_executed = ProtoField.new("Spread Executed", "asx.securities.t24.itch.v1.13.spreadexecuted", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.spread_symbol_directory = ProtoField.new("Spread Symbol Directory", "asx.securities.t24.itch.v1.13.spreadsymboldirectory", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.spread_trade_price = ProtoField.new("Spread Trade Price", "asx.securities.t24.itch.v1.13.spreadtradeprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.strike = ProtoField.new("Strike", "asx.securities.t24.itch.v1.13.strike", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.strike_price_decimal_position = ProtoField.new("Strike Price Decimal Position", "asx.securities.t24.itch.v1.13.strikepricedecimalposition", ftypes.UINT8)
asx_securities_t24_itch_v1_13.fields.strike_price_fractional_denominator = ProtoField.new("Strike Price Fractional Denominator", "asx.securities.t24.itch.v1.13.strikepricefractionaldenominator", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.strike_price_minimum_tick = ProtoField.new("Strike Price Minimum Tick", "asx.securities.t24.itch.v1.13.strikepriceminimumtick", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.system_event = ProtoField.new("System Event", "asx.securities.t24.itch.v1.13.systemevent", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.text_message = ProtoField.new("Text Message", "asx.securities.t24.itch.v1.13.textmessage", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.time_message = ProtoField.new("Time Message", "asx.securities.t24.itch.v1.13.timemessage", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.timestamp = ProtoField.new("Timestamp", "asx.securities.t24.itch.v1.13.timestamp", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.total_traded_volume = ProtoField.new("Total Traded Volume", "asx.securities.t24.itch.v1.13.totaltradedvolume", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.total_traded_volume_and_total_trades = ProtoField.new("Total Traded Volume and Total Trades", "asx.securities.t24.itch.v1.13.totaltradedvolumeandtotaltrades", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
asx_securities_t24_itch_v1_13.fields.total_trades = ProtoField.new("Total Trades", "asx.securities.t24.itch.v1.13.totaltrades", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "asx.securities.t24.itch.v1.13.tradecancellation", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.trade_date = ProtoField.new("Trade Date", "asx.securities.t24.itch.v1.13.tradedate", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.t24.itch.v1.13.tradeprice", ftypes.INT32)
asx_securities_t24_itch_v1_13.fields.trade_side_of_leg = ProtoField.new("Trade Side Of Leg", "asx.securities.t24.itch.v1.13.tradesideofleg", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.trade_side_of_non_custom_order = ProtoField.new("Trade Side Of Non Custom Order", "asx.securities.t24.itch.v1.13.tradesideofnoncustomorder", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.trade_spread_execution_chain = ProtoField.new("Trade Spread Execution Chain", "asx.securities.t24.itch.v1.13.tradespreadexecutionchain", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.trade_type = ProtoField.new("Trade Type", "asx.securities.t24.itch.v1.13.tradetype", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.traded_contract_number = ProtoField.new("Traded Contract Number", "asx.securities.t24.itch.v1.13.tradedcontractnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.trading_service = ProtoField.new("Trading Service", "asx.securities.t24.itch.v1.13.tradingservice", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.trading_status = ProtoField.new("Trading Status", "asx.securities.t24.itch.v1.13.tradingstatus", ftypes.STRING)
asx_securities_t24_itch_v1_13.fields.underlying_contract_number = ProtoField.new("Underlying Contract Number", "asx.securities.t24.itch.v1.13.underlyingcontractnumber", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.voi_trade_date = ProtoField.new("Voi Trade Date", "asx.securities.t24.itch.v1.13.voitradedate", ftypes.UINT16)
asx_securities_t24_itch_v1_13.fields.volatility = ProtoField.new("Volatility", "asx.securities.t24.itch.v1.13.volatility", ftypes.UINT32)
asx_securities_t24_itch_v1_13.fields.volume_and_open_interest = ProtoField.new("Volume And Open Interest", "asx.securities.t24.itch.v1.13.volumeandopeninterest", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Element Dissection Options
show.ad_hoc_text = true
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
show.open_high_low_last_trade_adjustment = true
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

-- Register Asx Securities T24 Itch 1.13 Show Options
asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text = Pref.bool("Show Ad Hoc Text", show.ad_hoc_text, "Parse and add Ad Hoc Text to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish = Pref.bool("Show Anomalous Order Threshold Publish", show.anomalous_order_threshold_publish, "Parse and add Anomalous Order Threshold Publish to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed = Pref.bool("Show Custom Market Executed", show.custom_market_executed, "Parse and add Custom Market Executed to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added = Pref.bool("Show Custom Market Order Added", show.custom_market_order_added, "Parse and add Custom Market Order Added to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted = Pref.bool("Show Custom Market Order Deleted", show.custom_market_order_deleted, "Parse and add Custom Market Order Deleted to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced = Pref.bool("Show Custom Market Order Replaced", show.custom_market_order_replaced, "Parse and add Custom Market Order Replaced to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade = Pref.bool("Show Custom Market Trade", show.custom_market_trade, "Parse and add Custom Market Trade to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info = Pref.bool("Show Equilibrium Price Auction Info", show.equilibrium_price_auction_info, "Parse and add Equilibrium Price Auction Info to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory = Pref.bool("Show Future Symbol Directory", show.future_symbol_directory, "Parse and add Future Symbol Directory to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_implied_order_added = Pref.bool("Show Implied Order Added", show.implied_order_added, "Parse and add Implied Order Added to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted = Pref.bool("Show Implied Order Deleted", show.implied_order_deleted, "Parse and add Implied Order Deleted to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced = Pref.bool("Show Implied Order Replaced", show.implied_order_replaced, "Parse and add Implied Order Replaced to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_market_settlement = Pref.bool("Show Market Settlement", show.market_settlement, "Parse and add Market Settlement to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_market_updates = Pref.bool("Show Market Updates", show.market_updates, "Parse and add Market Updates to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment = Pref.bool("Show Open High Low Last Trade Adjustment", show.open_high_low_last_trade_adjustment, "Parse and add Open High Low Last Trade Adjustment to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory = Pref.bool("Show Option Symbol Directory", show.option_symbol_directory, "Parse and add Option Symbol Directory to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_added = Pref.bool("Show Order Added", show.order_added, "Parse and add Order Added to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_book_state = Pref.bool("Show Order Book State", show.order_book_state, "Parse and add Order Book State to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_deleted = Pref.bool("Show Order Deleted", show.order_deleted, "Parse and add Order Deleted to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_executed = Pref.bool("Show Order Executed", show.order_executed, "Parse and add Order Executed to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price = Pref.bool("Show Order Executed With Price", show.order_executed_with_price, "Parse and add Order Executed With Price to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_replaced = Pref.bool("Show Order Replaced", show.order_replaced, "Parse and add Order Replaced to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled = Pref.bool("Show Order Volume Cancelled", show.order_volume_cancelled, "Parse and add Order Volume Cancelled to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_request_for_quote = Pref.bool("Show Request For Quote", show.request_for_quote, "Parse and add Request For Quote to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_session = Pref.bool("Show Session", show.session, "Parse and add Session to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_spread_executed = Pref.bool("Show Spread Executed", show.spread_executed, "Parse and add Spread Executed to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory = Pref.bool("Show Spread Symbol Directory", show.spread_symbol_directory, "Parse and add Spread Symbol Directory to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_system_event = Pref.bool("Show System Event", show.system_event, "Parse and add System Event to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation = Pref.bool("Show Trade Cancellation", show.trade_cancellation, "Parse and add Trade Cancellation to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain = Pref.bool("Show Trade Spread Execution Chain", show.trade_spread_execution_chain, "Parse and add Trade Spread Execution Chain to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest = Pref.bool("Show Volume And Open Interest", show.volume_and_open_interest, "Parse and add Volume And Open Interest to protocol tree")
asx_securities_t24_itch_v1_13.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function asx_securities_t24_itch_v1_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ad_hoc_text ~= asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text then
    show.ad_hoc_text = asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text
    changed = true
  end
  if show.anomalous_order_threshold_publish ~= asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish then
    show.anomalous_order_threshold_publish = asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish
    changed = true
  end
  if show.custom_market_executed ~= asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed then
    show.custom_market_executed = asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed
    changed = true
  end
  if show.custom_market_order_added ~= asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added then
    show.custom_market_order_added = asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added
    changed = true
  end
  if show.custom_market_order_deleted ~= asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted then
    show.custom_market_order_deleted = asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted
    changed = true
  end
  if show.custom_market_order_replaced ~= asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced then
    show.custom_market_order_replaced = asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced
    changed = true
  end
  if show.custom_market_trade ~= asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade then
    show.custom_market_trade = asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade
    changed = true
  end
  if show.equilibrium_price_auction_info ~= asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info then
    show.equilibrium_price_auction_info = asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info
    changed = true
  end
  if show.future_symbol_directory ~= asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory then
    show.future_symbol_directory = asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory
    changed = true
  end
  if show.implied_order_added ~= asx_securities_t24_itch_v1_13.prefs.show_implied_order_added then
    show.implied_order_added = asx_securities_t24_itch_v1_13.prefs.show_implied_order_added
    changed = true
  end
  if show.implied_order_deleted ~= asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted then
    show.implied_order_deleted = asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted
    changed = true
  end
  if show.implied_order_replaced ~= asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced then
    show.implied_order_replaced = asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced
    changed = true
  end
  if show.market_settlement ~= asx_securities_t24_itch_v1_13.prefs.show_market_settlement then
    show.market_settlement = asx_securities_t24_itch_v1_13.prefs.show_market_settlement
    changed = true
  end
  if show.market_updates ~= asx_securities_t24_itch_v1_13.prefs.show_market_updates then
    show.market_updates = asx_securities_t24_itch_v1_13.prefs.show_market_updates
    changed = true
  end
  if show.message ~= asx_securities_t24_itch_v1_13.prefs.show_message then
    show.message = asx_securities_t24_itch_v1_13.prefs.show_message
    changed = true
  end
  if show.message_header ~= asx_securities_t24_itch_v1_13.prefs.show_message_header then
    show.message_header = asx_securities_t24_itch_v1_13.prefs.show_message_header
    changed = true
  end
  if show.open_high_low_last_trade_adjustment ~= asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment then
    show.open_high_low_last_trade_adjustment = asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment
    changed = true
  end
  if show.option_symbol_directory ~= asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory then
    show.option_symbol_directory = asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory
    changed = true
  end
  if show.order_added ~= asx_securities_t24_itch_v1_13.prefs.show_order_added then
    show.order_added = asx_securities_t24_itch_v1_13.prefs.show_order_added
    changed = true
  end
  if show.order_book_state ~= asx_securities_t24_itch_v1_13.prefs.show_order_book_state then
    show.order_book_state = asx_securities_t24_itch_v1_13.prefs.show_order_book_state
    changed = true
  end
  if show.order_deleted ~= asx_securities_t24_itch_v1_13.prefs.show_order_deleted then
    show.order_deleted = asx_securities_t24_itch_v1_13.prefs.show_order_deleted
    changed = true
  end
  if show.order_executed ~= asx_securities_t24_itch_v1_13.prefs.show_order_executed then
    show.order_executed = asx_securities_t24_itch_v1_13.prefs.show_order_executed
    changed = true
  end
  if show.order_executed_with_price ~= asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price then
    show.order_executed_with_price = asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price
    changed = true
  end
  if show.order_replaced ~= asx_securities_t24_itch_v1_13.prefs.show_order_replaced then
    show.order_replaced = asx_securities_t24_itch_v1_13.prefs.show_order_replaced
    changed = true
  end
  if show.order_volume_cancelled ~= asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled then
    show.order_volume_cancelled = asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled
    changed = true
  end
  if show.packet ~= asx_securities_t24_itch_v1_13.prefs.show_packet then
    show.packet = asx_securities_t24_itch_v1_13.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= asx_securities_t24_itch_v1_13.prefs.show_packet_header then
    show.packet_header = asx_securities_t24_itch_v1_13.prefs.show_packet_header
    changed = true
  end
  if show.request_for_quote ~= asx_securities_t24_itch_v1_13.prefs.show_request_for_quote then
    show.request_for_quote = asx_securities_t24_itch_v1_13.prefs.show_request_for_quote
    changed = true
  end
  if show.session ~= asx_securities_t24_itch_v1_13.prefs.show_session then
    show.session = asx_securities_t24_itch_v1_13.prefs.show_session
    changed = true
  end
  if show.spread_executed ~= asx_securities_t24_itch_v1_13.prefs.show_spread_executed then
    show.spread_executed = asx_securities_t24_itch_v1_13.prefs.show_spread_executed
    changed = true
  end
  if show.spread_symbol_directory ~= asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory then
    show.spread_symbol_directory = asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory
    changed = true
  end
  if show.system_event ~= asx_securities_t24_itch_v1_13.prefs.show_system_event then
    show.system_event = asx_securities_t24_itch_v1_13.prefs.show_system_event
    changed = true
  end
  if show.time_message ~= asx_securities_t24_itch_v1_13.prefs.show_time_message then
    show.time_message = asx_securities_t24_itch_v1_13.prefs.show_time_message
    changed = true
  end
  if show.trade_cancellation ~= asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation then
    show.trade_cancellation = asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation
    changed = true
  end
  if show.trade_spread_execution_chain ~= asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain then
    show.trade_spread_execution_chain = asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain
    changed = true
  end
  if show.volume_and_open_interest ~= asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest then
    show.volume_and_open_interest = asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest
    changed = true
  end
  if show.payload ~= asx_securities_t24_itch_v1_13.prefs.show_payload then
    show.payload = asx_securities_t24_itch_v1_13.prefs.show_payload
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
-- Dissect Asx Securities T24 Itch 1.13
-----------------------------------------------------------------------

-- Size: Voi Trade Date
asx_securities_t24_itch_v1_13_size_of.voi_trade_date = 2

-- Display: Voi Trade Date
asx_securities_t24_itch_v1_13_display.voi_trade_date = function(value)
  return "Voi Trade Date: "..value
end

-- Dissect: Voi Trade Date
asx_securities_t24_itch_v1_13_dissect.voi_trade_date = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.voi_trade_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.voi_trade_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.voi_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
asx_securities_t24_itch_v1_13_size_of.open_interest = 4

-- Display: Open Interest
asx_securities_t24_itch_v1_13_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
asx_securities_t24_itch_v1_13_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.open_interest
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Cumulative Volume
asx_securities_t24_itch_v1_13_size_of.cumulative_volume = 4

-- Display: Cumulative Volume
asx_securities_t24_itch_v1_13_display.cumulative_volume = function(value)
  return "Cumulative Volume: "..value
end

-- Dissect: Cumulative Volume
asx_securities_t24_itch_v1_13_dissect.cumulative_volume = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.cumulative_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.cumulative_volume(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.cumulative_volume, range, value, display)

  return offset + length, value
end

-- Size: Contract Number
asx_securities_t24_itch_v1_13_size_of.contract_number = 4

-- Display: Contract Number
asx_securities_t24_itch_v1_13_display.contract_number = function(value)
  return "Contract Number: "..value
end

-- Dissect: Contract Number
asx_securities_t24_itch_v1_13_dissect.contract_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
asx_securities_t24_itch_v1_13_size_of.trade_date = 2

-- Display: Trade Date
asx_securities_t24_itch_v1_13_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
asx_securities_t24_itch_v1_13_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
asx_securities_t24_itch_v1_13_size_of.timestamp = 4

-- Display: Timestamp
asx_securities_t24_itch_v1_13_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
asx_securities_t24_itch_v1_13_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Volume And Open Interest
asx_securities_t24_itch_v1_13_size_of.volume_and_open_interest = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.cumulative_volume

  index = index + asx_securities_t24_itch_v1_13_size_of.open_interest

  index = index + asx_securities_t24_itch_v1_13_size_of.voi_trade_date

  return index
end

-- Display: Volume And Open Interest
asx_securities_t24_itch_v1_13_display.volume_and_open_interest = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Volume And Open Interest
asx_securities_t24_itch_v1_13_dissect.volume_and_open_interest_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Cumulative Volume: 4 Byte Unsigned Fixed Width Integer
  index, cumulative_volume = asx_securities_t24_itch_v1_13_dissect.cumulative_volume(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = asx_securities_t24_itch_v1_13_dissect.open_interest(buffer, index, packet, parent)

  -- Voi Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, voi_trade_date = asx_securities_t24_itch_v1_13_dissect.voi_trade_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume And Open Interest
asx_securities_t24_itch_v1_13_dissect.volume_and_open_interest = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.volume_and_open_interest then
    local length = asx_securities_t24_itch_v1_13_size_of.volume_and_open_interest(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.volume_and_open_interest(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.volume_and_open_interest, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.volume_and_open_interest_fields(buffer, offset, packet, parent)
end

-- Size: Etr Lower Price
asx_securities_t24_itch_v1_13_size_of.etr_lower_price = 4

-- Display: Etr Lower Price
asx_securities_t24_itch_v1_13_display.etr_lower_price = function(value)
  return "Etr Lower Price: "..value
end

-- Dissect: Etr Lower Price
asx_securities_t24_itch_v1_13_dissect.etr_lower_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.etr_lower_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.etr_lower_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.etr_lower_price, range, value, display)

  return offset + length, value
end

-- Size: Etr Upper Price
asx_securities_t24_itch_v1_13_size_of.etr_upper_price = 4

-- Display: Etr Upper Price
asx_securities_t24_itch_v1_13_display.etr_upper_price = function(value)
  return "Etr Upper Price: "..value
end

-- Dissect: Etr Upper Price
asx_securities_t24_itch_v1_13_dissect.etr_upper_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.etr_upper_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.etr_upper_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.etr_upper_price, range, value, display)

  return offset + length, value
end

-- Size: Etr Price
asx_securities_t24_itch_v1_13_size_of.etr_price = 4

-- Display: Etr Price
asx_securities_t24_itch_v1_13_display.etr_price = function(value)
  return "Etr Price: "..value
end

-- Dissect: Etr Price
asx_securities_t24_itch_v1_13_dissect.etr_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.etr_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.etr_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.etr_price, range, value, display)

  return offset + length, value
end

-- Size: Aot Lower Price
asx_securities_t24_itch_v1_13_size_of.aot_lower_price = 4

-- Display: Aot Lower Price
asx_securities_t24_itch_v1_13_display.aot_lower_price = function(value)
  return "Aot Lower Price: "..value
end

-- Dissect: Aot Lower Price
asx_securities_t24_itch_v1_13_dissect.aot_lower_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.aot_lower_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.aot_lower_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.aot_lower_price, range, value, display)

  return offset + length, value
end

-- Size: Aot Upper Price
asx_securities_t24_itch_v1_13_size_of.aot_upper_price = 4

-- Display: Aot Upper Price
asx_securities_t24_itch_v1_13_display.aot_upper_price = function(value)
  return "Aot Upper Price: "..value
end

-- Dissect: Aot Upper Price
asx_securities_t24_itch_v1_13_dissect.aot_upper_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.aot_upper_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.aot_upper_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.aot_upper_price, range, value, display)

  return offset + length, value
end

-- Size: Aot Price
asx_securities_t24_itch_v1_13_size_of.aot_price = 4

-- Display: Aot Price
asx_securities_t24_itch_v1_13_display.aot_price = function(value)
  return "Aot Price: "..value
end

-- Dissect: Aot Price
asx_securities_t24_itch_v1_13_dissect.aot_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.aot_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.aot_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.aot_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13_size_of.anomalous_order_threshold_publish = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.aot_price

  index = index + asx_securities_t24_itch_v1_13_size_of.aot_upper_price

  index = index + asx_securities_t24_itch_v1_13_size_of.aot_lower_price

  index = index + asx_securities_t24_itch_v1_13_size_of.etr_price

  index = index + asx_securities_t24_itch_v1_13_size_of.etr_upper_price

  index = index + asx_securities_t24_itch_v1_13_size_of.etr_lower_price

  return index
end

-- Display: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13_display.anomalous_order_threshold_publish = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13_dissect.anomalous_order_threshold_publish_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Aot Price: 4 Byte Signed Fixed Width Integer
  index, aot_price = asx_securities_t24_itch_v1_13_dissect.aot_price(buffer, index, packet, parent)

  -- Aot Upper Price: 4 Byte Signed Fixed Width Integer
  index, aot_upper_price = asx_securities_t24_itch_v1_13_dissect.aot_upper_price(buffer, index, packet, parent)

  -- Aot Lower Price: 4 Byte Signed Fixed Width Integer
  index, aot_lower_price = asx_securities_t24_itch_v1_13_dissect.aot_lower_price(buffer, index, packet, parent)

  -- Etr Price: 4 Byte Signed Fixed Width Integer
  index, etr_price = asx_securities_t24_itch_v1_13_dissect.etr_price(buffer, index, packet, parent)

  -- Etr Upper Price: 4 Byte Signed Fixed Width Integer
  index, etr_upper_price = asx_securities_t24_itch_v1_13_dissect.etr_upper_price(buffer, index, packet, parent)

  -- Etr Lower Price: 4 Byte Signed Fixed Width Integer
  index, etr_lower_price = asx_securities_t24_itch_v1_13_dissect.etr_lower_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13_dissect.anomalous_order_threshold_publish = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.anomalous_order_threshold_publish then
    local length = asx_securities_t24_itch_v1_13_size_of.anomalous_order_threshold_publish(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.anomalous_order_threshold_publish(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.anomalous_order_threshold_publish, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.anomalous_order_threshold_publish_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
asx_securities_t24_itch_v1_13_size_of.quantity = 4

-- Display: Quantity
asx_securities_t24_itch_v1_13_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_t24_itch_v1_13_dissect.quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Price
asx_securities_t24_itch_v1_13_size_of.price = 4

-- Display: Price
asx_securities_t24_itch_v1_13_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
asx_securities_t24_itch_v1_13_dissect.price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request For Quote
asx_securities_t24_itch_v1_13_size_of.request_for_quote = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.price

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  return index
end

-- Display: Request For Quote
asx_securities_t24_itch_v1_13_display.request_for_quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Quote
asx_securities_t24_itch_v1_13_dissect.request_for_quote_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
asx_securities_t24_itch_v1_13_dissect.request_for_quote = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_quote then
    local length = asx_securities_t24_itch_v1_13_size_of.request_for_quote(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.request_for_quote(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.request_for_quote, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.request_for_quote_fields(buffer, offset, packet, parent)
end

-- Size: Text Message
asx_securities_t24_itch_v1_13_size_of.text_message = 100

-- Display: Text Message
asx_securities_t24_itch_v1_13_display.text_message = function(value)
  return "Text Message: "..value
end

-- Dissect: Text Message
asx_securities_t24_itch_v1_13_dissect.text_message = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.text_message
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13_display.text_message(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.text_message, range, value, display)

  return offset + length, value
end

-- Size: Source Id
asx_securities_t24_itch_v1_13_size_of.source_id = 6

-- Display: Source Id
asx_securities_t24_itch_v1_13_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
asx_securities_t24_itch_v1_13_dissect.source_id = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.source_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13_display.source_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ad Hoc Text
asx_securities_t24_itch_v1_13_size_of.ad_hoc_text = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.source_id

  index = index + asx_securities_t24_itch_v1_13_size_of.text_message

  return index
end

-- Display: Ad Hoc Text
asx_securities_t24_itch_v1_13_display.ad_hoc_text = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ad Hoc Text
asx_securities_t24_itch_v1_13_dissect.ad_hoc_text_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Source Id: 6 Byte Ascii String
  index, source_id = asx_securities_t24_itch_v1_13_dissect.source_id(buffer, index, packet, parent)

  -- Text Message: 100 Byte Ascii String
  index, text_message = asx_securities_t24_itch_v1_13_dissect.text_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Ad Hoc Text
asx_securities_t24_itch_v1_13_dissect.ad_hoc_text = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ad_hoc_text then
    local length = asx_securities_t24_itch_v1_13_size_of.ad_hoc_text(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.ad_hoc_text(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.ad_hoc_text, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.ad_hoc_text_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Type
asx_securities_t24_itch_v1_13_size_of.settlement_type = 1

-- Display: Settlement Type
asx_securities_t24_itch_v1_13_display.settlement_type = function(value)
  return "Settlement Type: "..value
end

-- Dissect: Settlement Type
asx_securities_t24_itch_v1_13_dissect.settlement_type = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.settlement_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.settlement_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Size: Volatility
asx_securities_t24_itch_v1_13_size_of.volatility = 4

-- Display: Volatility
asx_securities_t24_itch_v1_13_display.volatility = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
asx_securities_t24_itch_v1_13_dissect.volatility = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.volatility
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.volatility(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.volatility, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
asx_securities_t24_itch_v1_13_size_of.settlement_price = 4

-- Display: Settlement Price
asx_securities_t24_itch_v1_13_display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
asx_securities_t24_itch_v1_13_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.settlement_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Settlement
asx_securities_t24_itch_v1_13_size_of.market_settlement = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.settlement_price

  index = index + asx_securities_t24_itch_v1_13_size_of.volatility

  index = index + asx_securities_t24_itch_v1_13_size_of.settlement_type

  return index
end

-- Display: Market Settlement
asx_securities_t24_itch_v1_13_display.market_settlement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Settlement
asx_securities_t24_itch_v1_13_dissect.market_settlement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Settlement Price: 4 Byte Signed Fixed Width Integer
  index, settlement_price = asx_securities_t24_itch_v1_13_dissect.settlement_price(buffer, index, packet, parent)

  -- Volatility: 4 Byte Unsigned Fixed Width Integer
  index, volatility = asx_securities_t24_itch_v1_13_dissect.volatility(buffer, index, packet, parent)

  -- Settlement Type: 1 Byte Ascii String
  index, settlement_type = asx_securities_t24_itch_v1_13_dissect.settlement_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement
asx_securities_t24_itch_v1_13_dissect.market_settlement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_settlement then
    local length = asx_securities_t24_itch_v1_13_size_of.market_settlement(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.market_settlement(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.market_settlement, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.market_settlement_fields(buffer, offset, packet, parent)
end

-- Size: Market Updates
asx_securities_t24_itch_v1_13_size_of.market_updates = 1

-- Display: Market Updates
asx_securities_t24_itch_v1_13_display.market_updates = function(buffer, packet, parent)
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
asx_securities_t24_itch_v1_13_dissect.market_updates_bits = function(buffer, offset, packet, parent)

  -- Reserved: 2 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.reserved, buffer(offset, 1))

  -- Last Traded Volume: 1 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.last_traded_volume, buffer(offset, 1))

  -- Last Traded Price: 1 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.last_traded_price, buffer(offset, 1))

  -- Total Traded Volume and Total Trades: 1 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.total_traded_volume_and_total_trades, buffer(offset, 1))

  -- Lowest Traded Price: 1 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.lowest_traded_price, buffer(offset, 1))

  -- Highest Traded Price: 1 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.highest_traded_price, buffer(offset, 1))

  -- Opening Trade Price: 1 Bit
  parent:add(asx_securities_t24_itch_v1_13.fields.opening_trade_price, buffer(offset, 1))
end

-- Dissect: Market Updates
asx_securities_t24_itch_v1_13_dissect.market_updates = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = asx_securities_t24_itch_v1_13_display.market_updates(range, packet, parent)
  local element = parent:add(asx_securities_t24_itch_v1_13.fields.market_updates, range, display)

  if show.market_updates then
    asx_securities_t24_itch_v1_13_dissect.market_updates_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Total Trades
asx_securities_t24_itch_v1_13_size_of.total_trades = 4

-- Display: Total Trades
asx_securities_t24_itch_v1_13_display.total_trades = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
asx_securities_t24_itch_v1_13_dissect.total_trades = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.total_trades
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.total_trades(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Size: Total Traded Volume
asx_securities_t24_itch_v1_13_size_of.total_traded_volume = 4

-- Display: Total Traded Volume
asx_securities_t24_itch_v1_13_display.total_traded_volume = function(value)
  return "Total Traded Volume: "..value
end

-- Dissect: Total Traded Volume
asx_securities_t24_itch_v1_13_dissect.total_traded_volume = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.total_traded_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.total_traded_volume(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.total_traded_volume, range, value, display)

  return offset + length, value
end

-- Size: Last Volume
asx_securities_t24_itch_v1_13_size_of.last_volume = 4

-- Display: Last Volume
asx_securities_t24_itch_v1_13_display.last_volume = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
asx_securities_t24_itch_v1_13_dissect.last_volume = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.last_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.last_volume(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.last_volume, range, value, display)

  return offset + length, value
end

-- Size: Last Trade
asx_securities_t24_itch_v1_13_size_of.last_trade = 4

-- Display: Last Trade
asx_securities_t24_itch_v1_13_display.last_trade = function(value)
  return "Last Trade: "..value
end

-- Dissect: Last Trade
asx_securities_t24_itch_v1_13_dissect.last_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.last_trade
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.last_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.last_trade, range, value, display)

  return offset + length, value
end

-- Size: Lowest Trade
asx_securities_t24_itch_v1_13_size_of.lowest_trade = 4

-- Display: Lowest Trade
asx_securities_t24_itch_v1_13_display.lowest_trade = function(value)
  return "Lowest Trade: "..value
end

-- Dissect: Lowest Trade
asx_securities_t24_itch_v1_13_dissect.lowest_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.lowest_trade
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.lowest_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.lowest_trade, range, value, display)

  return offset + length, value
end

-- Size: Highest Trade
asx_securities_t24_itch_v1_13_size_of.highest_trade = 4

-- Display: Highest Trade
asx_securities_t24_itch_v1_13_display.highest_trade = function(value)
  return "Highest Trade: "..value
end

-- Dissect: Highest Trade
asx_securities_t24_itch_v1_13_dissect.highest_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.highest_trade
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.highest_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.highest_trade, range, value, display)

  return offset + length, value
end

-- Size: Opening Trade
asx_securities_t24_itch_v1_13_size_of.opening_trade = 4

-- Display: Opening Trade
asx_securities_t24_itch_v1_13_display.opening_trade = function(value)
  return "Opening Trade: "..value
end

-- Dissect: Opening Trade
asx_securities_t24_itch_v1_13_dissect.opening_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.opening_trade
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.opening_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Calculate size of: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13_size_of.open_high_low_last_trade_adjustment = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.opening_trade

  index = index + asx_securities_t24_itch_v1_13_size_of.highest_trade

  index = index + asx_securities_t24_itch_v1_13_size_of.lowest_trade

  index = index + asx_securities_t24_itch_v1_13_size_of.last_trade

  index = index + asx_securities_t24_itch_v1_13_size_of.last_volume

  index = index + asx_securities_t24_itch_v1_13_size_of.total_traded_volume

  index = index + asx_securities_t24_itch_v1_13_size_of.total_trades

  index = index + asx_securities_t24_itch_v1_13_size_of.market_updates

  return index
end

-- Display: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13_display.open_high_low_last_trade_adjustment = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13_dissect.open_high_low_last_trade_adjustment_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Opening Trade: 4 Byte Signed Fixed Width Integer
  index, opening_trade = asx_securities_t24_itch_v1_13_dissect.opening_trade(buffer, index, packet, parent)

  -- Highest Trade: 4 Byte Signed Fixed Width Integer
  index, highest_trade = asx_securities_t24_itch_v1_13_dissect.highest_trade(buffer, index, packet, parent)

  -- Lowest Trade: 4 Byte Signed Fixed Width Integer
  index, lowest_trade = asx_securities_t24_itch_v1_13_dissect.lowest_trade(buffer, index, packet, parent)

  -- Last Trade: 4 Byte Signed Fixed Width Integer
  index, last_trade = asx_securities_t24_itch_v1_13_dissect.last_trade(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index, last_volume = asx_securities_t24_itch_v1_13_dissect.last_volume(buffer, index, packet, parent)

  -- Total Traded Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_traded_volume = asx_securities_t24_itch_v1_13_dissect.total_traded_volume(buffer, index, packet, parent)

  -- Total Trades: 4 Byte Unsigned Fixed Width Integer
  index, total_trades = asx_securities_t24_itch_v1_13_dissect.total_trades(buffer, index, packet, parent)

  -- Market Updates: Struct of 7 fields
  index, market_updates = asx_securities_t24_itch_v1_13_dissect.market_updates(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13_dissect.open_high_low_last_trade_adjustment = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_high_low_last_trade_adjustment then
    local length = asx_securities_t24_itch_v1_13_size_of.open_high_low_last_trade_adjustment(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.open_high_low_last_trade_adjustment(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.open_high_low_last_trade_adjustment, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.open_high_low_last_trade_adjustment_fields(buffer, offset, packet, parent)
end

-- Size: Best Ask Quantity
asx_securities_t24_itch_v1_13_size_of.best_ask_quantity = 4

-- Display: Best Ask Quantity
asx_securities_t24_itch_v1_13_display.best_ask_quantity = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
asx_securities_t24_itch_v1_13_dissect.best_ask_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.best_ask_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.best_ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Quantity
asx_securities_t24_itch_v1_13_size_of.best_bid_quantity = 4

-- Display: Best Bid Quantity
asx_securities_t24_itch_v1_13_display.best_bid_quantity = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
asx_securities_t24_itch_v1_13_dissect.best_bid_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.best_bid_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.best_bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Price
asx_securities_t24_itch_v1_13_size_of.best_ask_price = 4

-- Display: Best Ask Price
asx_securities_t24_itch_v1_13_display.best_ask_price = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
asx_securities_t24_itch_v1_13_dissect.best_ask_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.best_ask_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.best_ask_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price
asx_securities_t24_itch_v1_13_size_of.best_bid_price = 4

-- Display: Best Bid Price
asx_securities_t24_itch_v1_13_display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
asx_securities_t24_itch_v1_13_dissect.best_bid_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.best_bid_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Equilibrium Price
asx_securities_t24_itch_v1_13_size_of.equilibrium_price = 4

-- Display: Equilibrium Price
asx_securities_t24_itch_v1_13_display.equilibrium_price = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
asx_securities_t24_itch_v1_13_dissect.equilibrium_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.equilibrium_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.equilibrium_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13_size_of.equilibrium_price_auction_info = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.equilibrium_price

  index = index + asx_securities_t24_itch_v1_13_size_of.best_bid_price

  index = index + asx_securities_t24_itch_v1_13_size_of.best_ask_price

  index = index + asx_securities_t24_itch_v1_13_size_of.best_bid_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.best_ask_quantity

  return index
end

-- Display: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13_display.equilibrium_price_auction_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13_dissect.equilibrium_price_auction_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Equilibrium Price: 4 Byte Signed Fixed Width Integer
  index, equilibrium_price = asx_securities_t24_itch_v1_13_dissect.equilibrium_price(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index, best_bid_price = asx_securities_t24_itch_v1_13_dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Ask Price: 4 Byte Signed Fixed Width Integer
  index, best_ask_price = asx_securities_t24_itch_v1_13_dissect.best_ask_price(buffer, index, packet, parent)

  -- Best Bid Quantity: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_quantity = asx_securities_t24_itch_v1_13_dissect.best_bid_quantity(buffer, index, packet, parent)

  -- Best Ask Quantity: 4 Byte Unsigned Fixed Width Integer
  index, best_ask_quantity = asx_securities_t24_itch_v1_13_dissect.best_ask_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13_dissect.equilibrium_price_auction_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equilibrium_price_auction_info then
    local length = asx_securities_t24_itch_v1_13_size_of.equilibrium_price_auction_info(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.equilibrium_price_auction_info(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.equilibrium_price_auction_info, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.equilibrium_price_auction_info_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
asx_securities_t24_itch_v1_13_size_of.match_number = 4

-- Display: Match Number
asx_securities_t24_itch_v1_13_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
asx_securities_t24_itch_v1_13_dissect.match_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.match_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.match_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancellation
asx_securities_t24_itch_v1_13_size_of.trade_cancellation = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  return index
end

-- Display: Trade Cancellation
asx_securities_t24_itch_v1_13_display.trade_cancellation = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancellation
asx_securities_t24_itch_v1_13_dissect.trade_cancellation_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation
asx_securities_t24_itch_v1_13_dissect.trade_cancellation = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancellation then
    local length = asx_securities_t24_itch_v1_13_size_of.trade_cancellation(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.trade_cancellation(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.trade_cancellation, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.trade_cancellation_fields(buffer, offset, packet, parent)
end

-- Size: Printable
asx_securities_t24_itch_v1_13_size_of.printable = 1

-- Display: Printable
asx_securities_t24_itch_v1_13_display.printable = function(value)
  if value == "Y" then
    return "Printable: Yes (Y)"
  end
  if value == "N" then
    return "Printable: No (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
asx_securities_t24_itch_v1_13_dissect.printable = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.printable(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13_size_of.trade_side_of_non_custom_order = 1

-- Display: Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13_display.trade_side_of_non_custom_order = function(value)
  return "Trade Side Of Non Custom Order: "..value
end

-- Dissect: Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13_dissect.trade_side_of_non_custom_order = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trade_side_of_non_custom_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.trade_side_of_non_custom_order(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trade_side_of_non_custom_order, range, value, display)

  return offset + length, value
end

-- Size: Traded Contract Number
asx_securities_t24_itch_v1_13_size_of.traded_contract_number = 4

-- Display: Traded Contract Number
asx_securities_t24_itch_v1_13_display.traded_contract_number = function(value)
  return "Traded Contract Number: "..value
end

-- Dissect: Traded Contract Number
asx_securities_t24_itch_v1_13_dissect.traded_contract_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.traded_contract_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.traded_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.traded_contract_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
asx_securities_t24_itch_v1_13_size_of.trade_price = 4

-- Display: Trade Price
asx_securities_t24_itch_v1_13_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
asx_securities_t24_itch_v1_13_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trade_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
asx_securities_t24_itch_v1_13_size_of.executed_quantity = 4

-- Display: Executed Quantity
asx_securities_t24_itch_v1_13_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_securities_t24_itch_v1_13_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
asx_securities_t24_itch_v1_13_size_of.trade_type = 1

-- Display: Trade Type
asx_securities_t24_itch_v1_13_display.trade_type = function(value)
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
    return "Trade Type: Spread To Underlying (S)"
  end
  if value == "s" then
    return "Trade Type: Crossing Spread To Underlying (s)"
  end
  if value == "R" then
    return "Trade Type: Intra Spread (R)"
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
asx_securities_t24_itch_v1_13_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Size: Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13_size_of.custom_market_quantity_remaining = 4

-- Display: Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13_display.custom_market_quantity_remaining = function(value)
  return "Custom Market Quantity Remaining: "..value
end

-- Dissect: Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13_dissect.custom_market_quantity_remaining = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.custom_market_quantity_remaining
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.custom_market_quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Size: Custom Market Order Number
asx_securities_t24_itch_v1_13_size_of.custom_market_order_number = 8

-- Display: Custom Market Order Number
asx_securities_t24_itch_v1_13_display.custom_market_order_number = function(value)
  return "Custom Market Order Number: "..value
end

-- Dissect: Custom Market Order Number
asx_securities_t24_itch_v1_13_dissect.custom_market_order_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.custom_market_order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13_display.custom_market_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_order_number, range, value, display)

  return offset + length, value
end

-- Size: Quantity Remaining
asx_securities_t24_itch_v1_13_size_of.quantity_remaining = 4

-- Display: Quantity Remaining
asx_securities_t24_itch_v1_13_display.quantity_remaining = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
asx_securities_t24_itch_v1_13_dissect.quantity_remaining = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.quantity_remaining
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Size: Order Number
asx_securities_t24_itch_v1_13_size_of.order_number = 8

-- Display: Order Number
asx_securities_t24_itch_v1_13_display.order_number = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
asx_securities_t24_itch_v1_13_dissect.order_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13_display.order_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.order_number, range, value, display)

  return offset + length, value
end

-- Size: Side
asx_securities_t24_itch_v1_13_size_of.side = 1

-- Display: Side
asx_securities_t24_itch_v1_13_display.side = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_t24_itch_v1_13_dissect.side = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Custom Market Trade
asx_securities_t24_itch_v1_13_size_of.custom_market_trade = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.custom_market_order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.custom_market_quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_type

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  index = index + asx_securities_t24_itch_v1_13_size_of.executed_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_price

  index = index + asx_securities_t24_itch_v1_13_size_of.traded_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_side_of_non_custom_order

  index = index + asx_securities_t24_itch_v1_13_size_of.printable

  return index
end

-- Display: Custom Market Trade
asx_securities_t24_itch_v1_13_display.custom_market_trade = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Trade
asx_securities_t24_itch_v1_13_dissect.custom_market_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Custom Market Order Number: 8 Byte Unsigned Fixed Width Integer
  index, custom_market_order_number = asx_securities_t24_itch_v1_13_dissect.custom_market_order_number(buffer, index, packet, parent)

  -- Custom Market Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, custom_market_quantity_remaining = asx_securities_t24_itch_v1_13_dissect.custom_market_quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13_dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13_dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13_dissect.traded_contract_number(buffer, index, packet, parent)

  -- Trade Side Of Non Custom Order: 1 Byte Ascii String
  index, trade_side_of_non_custom_order = asx_securities_t24_itch_v1_13_dissect.trade_side_of_non_custom_order(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13_dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Trade
asx_securities_t24_itch_v1_13_dissect.custom_market_trade = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_trade then
    local length = asx_securities_t24_itch_v1_13_size_of.custom_market_trade(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.custom_market_trade(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_trade, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.custom_market_trade_fields(buffer, offset, packet, parent)
end

-- Size: Trade Side Of Leg
asx_securities_t24_itch_v1_13_size_of.trade_side_of_leg = 1

-- Display: Trade Side Of Leg
asx_securities_t24_itch_v1_13_display.trade_side_of_leg = function(value)
  return "Trade Side Of Leg: "..value
end

-- Dissect: Trade Side Of Leg
asx_securities_t24_itch_v1_13_dissect.trade_side_of_leg = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trade_side_of_leg
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.trade_side_of_leg(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trade_side_of_leg, range, value, display)

  return offset + length, value
end

-- Calculate size of: Custom Market Executed
asx_securities_t24_itch_v1_13_size_of.custom_market_executed = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_type

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  index = index + asx_securities_t24_itch_v1_13_size_of.executed_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_price

  index = index + asx_securities_t24_itch_v1_13_size_of.traded_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_side_of_leg

  index = index + asx_securities_t24_itch_v1_13_size_of.printable

  return index
end

-- Display: Custom Market Executed
asx_securities_t24_itch_v1_13_display.custom_market_executed = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Executed
asx_securities_t24_itch_v1_13_dissect.custom_market_executed_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13_dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13_dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13_dissect.traded_contract_number(buffer, index, packet, parent)

  -- Trade Side Of Leg: 1 Byte Ascii String
  index, trade_side_of_leg = asx_securities_t24_itch_v1_13_dissect.trade_side_of_leg(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13_dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Executed
asx_securities_t24_itch_v1_13_dissect.custom_market_executed = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_executed then
    local length = asx_securities_t24_itch_v1_13_size_of.custom_market_executed(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.custom_market_executed(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_executed, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.custom_market_executed_fields(buffer, offset, packet, parent)
end

-- Size: Spread Trade Price
asx_securities_t24_itch_v1_13_size_of.spread_trade_price = 4

-- Display: Spread Trade Price
asx_securities_t24_itch_v1_13_display.spread_trade_price = function(value)
  return "Spread Trade Price: "..value
end

-- Dissect: Spread Trade Price
asx_securities_t24_itch_v1_13_dissect.spread_trade_price = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.spread_trade_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.spread_trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.spread_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Seller Quantity Remaining
asx_securities_t24_itch_v1_13_size_of.seller_quantity_remaining = 4

-- Display: Seller Quantity Remaining
asx_securities_t24_itch_v1_13_display.seller_quantity_remaining = function(value)
  return "Seller Quantity Remaining: "..value
end

-- Dissect: Seller Quantity Remaining
asx_securities_t24_itch_v1_13_dissect.seller_quantity_remaining = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.seller_quantity_remaining
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.seller_quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.seller_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Size: Selling Order Number
asx_securities_t24_itch_v1_13_size_of.selling_order_number = 8

-- Display: Selling Order Number
asx_securities_t24_itch_v1_13_display.selling_order_number = function(value)
  return "Selling Order Number: "..value
end

-- Dissect: Selling Order Number
asx_securities_t24_itch_v1_13_dissect.selling_order_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.selling_order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13_display.selling_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.selling_order_number, range, value, display)

  return offset + length, value
end

-- Size: Side Of Seller
asx_securities_t24_itch_v1_13_size_of.side_of_seller = 1

-- Display: Side Of Seller
asx_securities_t24_itch_v1_13_display.side_of_seller = function(value)
  return "Side Of Seller: "..value
end

-- Dissect: Side Of Seller
asx_securities_t24_itch_v1_13_dissect.side_of_seller = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_of_seller
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_of_seller(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_of_seller, range, value, display)

  return offset + length, value
end

-- Size: Seller Contract Number
asx_securities_t24_itch_v1_13_size_of.seller_contract_number = 4

-- Display: Seller Contract Number
asx_securities_t24_itch_v1_13_display.seller_contract_number = function(value)
  return "Seller Contract Number: "..value
end

-- Dissect: Seller Contract Number
asx_securities_t24_itch_v1_13_dissect.seller_contract_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.seller_contract_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.seller_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.seller_contract_number, range, value, display)

  return offset + length, value
end

-- Size: Buyer Quantity Remaining
asx_securities_t24_itch_v1_13_size_of.buyer_quantity_remaining = 4

-- Display: Buyer Quantity Remaining
asx_securities_t24_itch_v1_13_display.buyer_quantity_remaining = function(value)
  return "Buyer Quantity Remaining: "..value
end

-- Dissect: Buyer Quantity Remaining
asx_securities_t24_itch_v1_13_dissect.buyer_quantity_remaining = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.buyer_quantity_remaining
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.buyer_quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.buyer_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Size: Buyer Order Number
asx_securities_t24_itch_v1_13_size_of.buyer_order_number = 8

-- Display: Buyer Order Number
asx_securities_t24_itch_v1_13_display.buyer_order_number = function(value)
  return "Buyer Order Number: "..value
end

-- Dissect: Buyer Order Number
asx_securities_t24_itch_v1_13_dissect.buyer_order_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.buyer_order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13_display.buyer_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.buyer_order_number, range, value, display)

  return offset + length, value
end

-- Size: Side Of Buyer
asx_securities_t24_itch_v1_13_size_of.side_of_buyer = 1

-- Display: Side Of Buyer
asx_securities_t24_itch_v1_13_display.side_of_buyer = function(value)
  return "Side Of Buyer: "..value
end

-- Dissect: Side Of Buyer
asx_securities_t24_itch_v1_13_dissect.side_of_buyer = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_of_buyer
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_of_buyer(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_of_buyer, range, value, display)

  return offset + length, value
end

-- Size: Buyer
asx_securities_t24_itch_v1_13_size_of.buyer = 4

-- Display: Buyer
asx_securities_t24_itch_v1_13_display.buyer = function(value)
  return "Buyer: "..value
end

-- Dissect: Buyer
asx_securities_t24_itch_v1_13_dissect.buyer = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.buyer
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.buyer(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.buyer, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13_size_of.trade_spread_execution_chain = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.buyer

  index = index + asx_securities_t24_itch_v1_13_size_of.side_of_buyer

  index = index + asx_securities_t24_itch_v1_13_size_of.buyer_order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.buyer_quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.seller_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side_of_seller

  index = index + asx_securities_t24_itch_v1_13_size_of.selling_order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.seller_quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_type

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  index = index + asx_securities_t24_itch_v1_13_size_of.executed_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_price

  index = index + asx_securities_t24_itch_v1_13_size_of.traded_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.spread_trade_price

  index = index + asx_securities_t24_itch_v1_13_size_of.printable

  return index
end

-- Display: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13_display.trade_spread_execution_chain = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13_dissect.trade_spread_execution_chain_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Buyer: 4 Byte Unsigned Fixed Width Integer
  index, buyer = asx_securities_t24_itch_v1_13_dissect.buyer(buffer, index, packet, parent)

  -- Side Of Buyer: 1 Byte Ascii String
  index, side_of_buyer = asx_securities_t24_itch_v1_13_dissect.side_of_buyer(buffer, index, packet, parent)

  -- Buyer Order Number: 8 Byte Unsigned Fixed Width Integer
  index, buyer_order_number = asx_securities_t24_itch_v1_13_dissect.buyer_order_number(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, buyer_quantity_remaining = asx_securities_t24_itch_v1_13_dissect.buyer_quantity_remaining(buffer, index, packet, parent)

  -- Seller Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, seller_contract_number = asx_securities_t24_itch_v1_13_dissect.seller_contract_number(buffer, index, packet, parent)

  -- Side Of Seller: 1 Byte Ascii String
  index, side_of_seller = asx_securities_t24_itch_v1_13_dissect.side_of_seller(buffer, index, packet, parent)

  -- Selling Order Number: 8 Byte Unsigned Fixed Width Integer
  index, selling_order_number = asx_securities_t24_itch_v1_13_dissect.selling_order_number(buffer, index, packet, parent)

  -- Seller Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, seller_quantity_remaining = asx_securities_t24_itch_v1_13_dissect.seller_quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13_dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13_dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13_dissect.traded_contract_number(buffer, index, packet, parent)

  -- Spread Trade Price: 4 Byte Signed Fixed Width Integer
  index, spread_trade_price = asx_securities_t24_itch_v1_13_dissect.spread_trade_price(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13_dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13_dissect.trade_spread_execution_chain = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_spread_execution_chain then
    local length = asx_securities_t24_itch_v1_13_size_of.trade_spread_execution_chain(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.trade_spread_execution_chain(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.trade_spread_execution_chain, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.trade_spread_execution_chain_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Spread Executed
asx_securities_t24_itch_v1_13_size_of.spread_executed = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_type

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  index = index + asx_securities_t24_itch_v1_13_size_of.executed_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_price

  index = index + asx_securities_t24_itch_v1_13_size_of.traded_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.spread_trade_price

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_side_of_leg

  index = index + asx_securities_t24_itch_v1_13_size_of.printable

  return index
end

-- Display: Spread Executed
asx_securities_t24_itch_v1_13_display.spread_executed = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Executed
asx_securities_t24_itch_v1_13_dissect.spread_executed_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13_dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13_dissect.trade_price(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13_dissect.traded_contract_number(buffer, index, packet, parent)

  -- Spread Trade Price: 4 Byte Signed Fixed Width Integer
  index, spread_trade_price = asx_securities_t24_itch_v1_13_dissect.spread_trade_price(buffer, index, packet, parent)

  -- Trade Side Of Leg: 1 Byte Ascii String
  index, trade_side_of_leg = asx_securities_t24_itch_v1_13_dissect.trade_side_of_leg(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13_dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Executed
asx_securities_t24_itch_v1_13_dissect.spread_executed = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_executed then
    local length = asx_securities_t24_itch_v1_13_size_of.spread_executed(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.spread_executed(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.spread_executed, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.spread_executed_fields(buffer, offset, packet, parent)
end

-- Size: Buying Order Number
asx_securities_t24_itch_v1_13_size_of.buying_order_number = 8

-- Display: Buying Order Number
asx_securities_t24_itch_v1_13_display.buying_order_number = function(value)
  return "Buying Order Number: "..value
end

-- Dissect: Buying Order Number
asx_securities_t24_itch_v1_13_dissect.buying_order_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.buying_order_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13_display.buying_order_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.buying_order_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price
asx_securities_t24_itch_v1_13_size_of.order_executed_with_price = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.buying_order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.buyer_quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.selling_order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.seller_quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_type

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  index = index + asx_securities_t24_itch_v1_13_size_of.executed_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_price

  return index
end

-- Display: Order Executed With Price
asx_securities_t24_itch_v1_13_display.order_executed_with_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed With Price
asx_securities_t24_itch_v1_13_dissect.order_executed_with_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Buying Order Number: 8 Byte Unsigned Fixed Width Integer
  index, buying_order_number = asx_securities_t24_itch_v1_13_dissect.buying_order_number(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, buyer_quantity_remaining = asx_securities_t24_itch_v1_13_dissect.buyer_quantity_remaining(buffer, index, packet, parent)

  -- Selling Order Number: 8 Byte Unsigned Fixed Width Integer
  index, selling_order_number = asx_securities_t24_itch_v1_13_dissect.selling_order_number(buffer, index, packet, parent)

  -- Seller Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, seller_quantity_remaining = asx_securities_t24_itch_v1_13_dissect.seller_quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13_dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13_dissect.trade_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price
asx_securities_t24_itch_v1_13_dissect.order_executed_with_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price then
    local length = asx_securities_t24_itch_v1_13_size_of.order_executed_with_price(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_executed_with_price(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_executed_with_price, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_executed_with_price_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed
asx_securities_t24_itch_v1_13_size_of.order_executed = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity_remaining

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_type

  index = index + asx_securities_t24_itch_v1_13_size_of.match_number

  index = index + asx_securities_t24_itch_v1_13_size_of.executed_quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_price

  return index
end

-- Display: Order Executed
asx_securities_t24_itch_v1_13_display.order_executed = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed
asx_securities_t24_itch_v1_13_dissect.order_executed_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13_dissect.trade_type(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13_dissect.match_number(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13_dissect.trade_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed
asx_securities_t24_itch_v1_13_dissect.order_executed = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed then
    local length = asx_securities_t24_itch_v1_13_size_of.order_executed(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_executed(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_executed, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_executed_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Custom Market Order Deleted
asx_securities_t24_itch_v1_13_size_of.custom_market_order_deleted = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  return index
end

-- Display: Custom Market Order Deleted
asx_securities_t24_itch_v1_13_display.custom_market_order_deleted = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Order Deleted
asx_securities_t24_itch_v1_13_dissect.custom_market_order_deleted_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Deleted
asx_securities_t24_itch_v1_13_dissect.custom_market_order_deleted = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_order_deleted then
    local length = asx_securities_t24_itch_v1_13_size_of.custom_market_order_deleted(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.custom_market_order_deleted(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_order_deleted, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.custom_market_order_deleted_fields(buffer, offset, packet, parent)
end

-- Size: Order Book Priority
asx_securities_t24_itch_v1_13_size_of.order_book_priority = 4

-- Display: Order Book Priority
asx_securities_t24_itch_v1_13_display.order_book_priority = function(value)
  return "Order Book Priority: "..value
end

-- Dissect: Order Book Priority
asx_securities_t24_itch_v1_13_dissect.order_book_priority = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.order_book_priority
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.order_book_priority(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.order_book_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Custom Market Order Replaced
asx_securities_t24_itch_v1_13_size_of.custom_market_order_replaced = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.order_book_priority

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  return index
end

-- Display: Custom Market Order Replaced
asx_securities_t24_itch_v1_13_display.custom_market_order_replaced = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Order Replaced
asx_securities_t24_itch_v1_13_dissect.custom_market_order_replaced_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Replaced
asx_securities_t24_itch_v1_13_dissect.custom_market_order_replaced = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_order_replaced then
    local length = asx_securities_t24_itch_v1_13_size_of.custom_market_order_replaced(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.custom_market_order_replaced(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_order_replaced, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.custom_market_order_replaced_fields(buffer, offset, packet, parent)
end

-- Size: Price Leg 6
asx_securities_t24_itch_v1_13_size_of.price_leg_6 = 4

-- Display: Price Leg 6
asx_securities_t24_itch_v1_13_display.price_leg_6 = function(value)
  return "Price Leg 6: "..value
end

-- Dissect: Price Leg 6
asx_securities_t24_itch_v1_13_dissect.price_leg_6 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_leg_6
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_leg_6, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg 6
asx_securities_t24_itch_v1_13_size_of.ratio_leg_6 = 2

-- Display: Ratio Leg 6
asx_securities_t24_itch_v1_13_display.ratio_leg_6 = function(value)
  return "Ratio Leg 6: "..value
end

-- Dissect: Ratio Leg 6
asx_securities_t24_itch_v1_13_dissect.ratio_leg_6 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.ratio_leg_6
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.ratio_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.ratio_leg_6, range, value, display)

  return offset + length, value
end

-- Size: Side Leg 6
asx_securities_t24_itch_v1_13_size_of.side_leg_6 = 1

-- Display: Side Leg 6
asx_securities_t24_itch_v1_13_display.side_leg_6 = function(value)
  return "Side Leg 6: "..value
end

-- Dissect: Side Leg 6
asx_securities_t24_itch_v1_13_dissect.side_leg_6 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_leg_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_leg_6, range, value, display)

  return offset + length, value
end

-- Size: Contract Number Leg 6
asx_securities_t24_itch_v1_13_size_of.contract_number_leg_6 = 4

-- Display: Contract Number Leg 6
asx_securities_t24_itch_v1_13_display.contract_number_leg_6 = function(value)
  return "Contract Number Leg 6: "..value
end

-- Dissect: Contract Number Leg 6
asx_securities_t24_itch_v1_13_dissect.contract_number_leg_6 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number_leg_6
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number_leg_6(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number_leg_6, range, value, display)

  return offset + length, value
end

-- Size: Price Leg 5
asx_securities_t24_itch_v1_13_size_of.price_leg_5 = 4

-- Display: Price Leg 5
asx_securities_t24_itch_v1_13_display.price_leg_5 = function(value)
  return "Price Leg 5: "..value
end

-- Dissect: Price Leg 5
asx_securities_t24_itch_v1_13_dissect.price_leg_5 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_leg_5
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_leg_5, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg 5
asx_securities_t24_itch_v1_13_size_of.ratio_leg_5 = 2

-- Display: Ratio Leg 5
asx_securities_t24_itch_v1_13_display.ratio_leg_5 = function(value)
  return "Ratio Leg 5: "..value
end

-- Dissect: Ratio Leg 5
asx_securities_t24_itch_v1_13_dissect.ratio_leg_5 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.ratio_leg_5
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.ratio_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.ratio_leg_5, range, value, display)

  return offset + length, value
end

-- Size: Side Leg 5
asx_securities_t24_itch_v1_13_size_of.side_leg_5 = 1

-- Display: Side Leg 5
asx_securities_t24_itch_v1_13_display.side_leg_5 = function(value)
  return "Side Leg 5: "..value
end

-- Dissect: Side Leg 5
asx_securities_t24_itch_v1_13_dissect.side_leg_5 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_leg_5
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_leg_5, range, value, display)

  return offset + length, value
end

-- Size: Contract Number Leg 5
asx_securities_t24_itch_v1_13_size_of.contract_number_leg_5 = 4

-- Display: Contract Number Leg 5
asx_securities_t24_itch_v1_13_display.contract_number_leg_5 = function(value)
  return "Contract Number Leg 5: "..value
end

-- Dissect: Contract Number Leg 5
asx_securities_t24_itch_v1_13_dissect.contract_number_leg_5 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number_leg_5
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number_leg_5(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number_leg_5, range, value, display)

  return offset + length, value
end

-- Size: Price Leg 4
asx_securities_t24_itch_v1_13_size_of.price_leg_4 = 4

-- Display: Price Leg 4
asx_securities_t24_itch_v1_13_display.price_leg_4 = function(value)
  return "Price Leg 4: "..value
end

-- Dissect: Price Leg 4
asx_securities_t24_itch_v1_13_dissect.price_leg_4 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_leg_4
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_leg_4, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg 4
asx_securities_t24_itch_v1_13_size_of.ratio_leg_4 = 2

-- Display: Ratio Leg 4
asx_securities_t24_itch_v1_13_display.ratio_leg_4 = function(value)
  return "Ratio Leg 4: "..value
end

-- Dissect: Ratio Leg 4
asx_securities_t24_itch_v1_13_dissect.ratio_leg_4 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.ratio_leg_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.ratio_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.ratio_leg_4, range, value, display)

  return offset + length, value
end

-- Size: Side Leg 4
asx_securities_t24_itch_v1_13_size_of.side_leg_4 = 1

-- Display: Side Leg 4
asx_securities_t24_itch_v1_13_display.side_leg_4 = function(value)
  return "Side Leg 4: "..value
end

-- Dissect: Side Leg 4
asx_securities_t24_itch_v1_13_dissect.side_leg_4 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_leg_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_leg_4, range, value, display)

  return offset + length, value
end

-- Size: Contract Number Leg 4
asx_securities_t24_itch_v1_13_size_of.contract_number_leg_4 = 4

-- Display: Contract Number Leg 4
asx_securities_t24_itch_v1_13_display.contract_number_leg_4 = function(value)
  return "Contract Number Leg 4: "..value
end

-- Dissect: Contract Number Leg 4
asx_securities_t24_itch_v1_13_dissect.contract_number_leg_4 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number_leg_4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number_leg_4(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number_leg_4, range, value, display)

  return offset + length, value
end

-- Size: Price Leg 3
asx_securities_t24_itch_v1_13_size_of.price_leg_3 = 4

-- Display: Price Leg 3
asx_securities_t24_itch_v1_13_display.price_leg_3 = function(value)
  return "Price Leg 3: "..value
end

-- Dissect: Price Leg 3
asx_securities_t24_itch_v1_13_dissect.price_leg_3 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_leg_3
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_leg_3, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg 3
asx_securities_t24_itch_v1_13_size_of.ratio_leg_3 = 2

-- Display: Ratio Leg 3
asx_securities_t24_itch_v1_13_display.ratio_leg_3 = function(value)
  return "Ratio Leg 3: "..value
end

-- Dissect: Ratio Leg 3
asx_securities_t24_itch_v1_13_dissect.ratio_leg_3 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.ratio_leg_3
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.ratio_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.ratio_leg_3, range, value, display)

  return offset + length, value
end

-- Size: Side Leg 3
asx_securities_t24_itch_v1_13_size_of.side_leg_3 = 1

-- Display: Side Leg 3
asx_securities_t24_itch_v1_13_display.side_leg_3 = function(value)
  return "Side Leg 3: "..value
end

-- Dissect: Side Leg 3
asx_securities_t24_itch_v1_13_dissect.side_leg_3 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_leg_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_leg_3, range, value, display)

  return offset + length, value
end

-- Size: Contract Number Leg 3
asx_securities_t24_itch_v1_13_size_of.contract_number_leg_3 = 4

-- Display: Contract Number Leg 3
asx_securities_t24_itch_v1_13_display.contract_number_leg_3 = function(value)
  return "Contract Number Leg 3: "..value
end

-- Dissect: Contract Number Leg 3
asx_securities_t24_itch_v1_13_dissect.contract_number_leg_3 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number_leg_3
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number_leg_3(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number_leg_3, range, value, display)

  return offset + length, value
end

-- Size: Price Leg 2
asx_securities_t24_itch_v1_13_size_of.price_leg_2 = 4

-- Display: Price Leg 2
asx_securities_t24_itch_v1_13_display.price_leg_2 = function(value)
  return "Price Leg 2: "..value
end

-- Dissect: Price Leg 2
asx_securities_t24_itch_v1_13_dissect.price_leg_2 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_leg_2
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_leg_2, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg 2
asx_securities_t24_itch_v1_13_size_of.ratio_leg_2 = 2

-- Display: Ratio Leg 2
asx_securities_t24_itch_v1_13_display.ratio_leg_2 = function(value)
  return "Ratio Leg 2: "..value
end

-- Dissect: Ratio Leg 2
asx_securities_t24_itch_v1_13_dissect.ratio_leg_2 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.ratio_leg_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.ratio_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.ratio_leg_2, range, value, display)

  return offset + length, value
end

-- Size: Side Leg 2
asx_securities_t24_itch_v1_13_size_of.side_leg_2 = 1

-- Display: Side Leg 2
asx_securities_t24_itch_v1_13_display.side_leg_2 = function(value)
  return "Side Leg 2: "..value
end

-- Dissect: Side Leg 2
asx_securities_t24_itch_v1_13_dissect.side_leg_2 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_leg_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_leg_2, range, value, display)

  return offset + length, value
end

-- Size: Contract Number Leg 2
asx_securities_t24_itch_v1_13_size_of.contract_number_leg_2 = 4

-- Display: Contract Number Leg 2
asx_securities_t24_itch_v1_13_display.contract_number_leg_2 = function(value)
  return "Contract Number Leg 2: "..value
end

-- Dissect: Contract Number Leg 2
asx_securities_t24_itch_v1_13_dissect.contract_number_leg_2 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number_leg_2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number_leg_2(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number_leg_2, range, value, display)

  return offset + length, value
end

-- Size: Price Leg 1
asx_securities_t24_itch_v1_13_size_of.price_leg_1 = 4

-- Display: Price Leg 1
asx_securities_t24_itch_v1_13_display.price_leg_1 = function(value)
  return "Price Leg 1: "..value
end

-- Dissect: Price Leg 1
asx_securities_t24_itch_v1_13_dissect.price_leg_1 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_leg_1
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.price_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_leg_1, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg 1
asx_securities_t24_itch_v1_13_size_of.ratio_leg_1 = 2

-- Display: Ratio Leg 1
asx_securities_t24_itch_v1_13_display.ratio_leg_1 = function(value)
  return "Ratio Leg 1: "..value
end

-- Dissect: Ratio Leg 1
asx_securities_t24_itch_v1_13_dissect.ratio_leg_1 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.ratio_leg_1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.ratio_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.ratio_leg_1, range, value, display)

  return offset + length, value
end

-- Size: Side Leg 1
asx_securities_t24_itch_v1_13_size_of.side_leg_1 = 1

-- Display: Side Leg 1
asx_securities_t24_itch_v1_13_display.side_leg_1 = function(value)
  return "Side Leg 1: "..value
end

-- Dissect: Side Leg 1
asx_securities_t24_itch_v1_13_dissect.side_leg_1 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.side_leg_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.side_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.side_leg_1, range, value, display)

  return offset + length, value
end

-- Size: Contract Number Leg 1
asx_securities_t24_itch_v1_13_size_of.contract_number_leg_1 = 4

-- Display: Contract Number Leg 1
asx_securities_t24_itch_v1_13_display.contract_number_leg_1 = function(value)
  return "Contract Number Leg 1: "..value
end

-- Dissect: Contract Number Leg 1
asx_securities_t24_itch_v1_13_dissect.contract_number_leg_1 = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_number_leg_1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.contract_number_leg_1(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_number_leg_1, range, value, display)

  return offset + length, value
end

-- Size: Legs
asx_securities_t24_itch_v1_13_size_of.legs = 1

-- Display: Legs
asx_securities_t24_itch_v1_13_display.legs = function(value)
  return "Legs: "..value
end

-- Dissect: Legs
asx_securities_t24_itch_v1_13_dissect.legs = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.legs
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.legs(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.legs, range, value, display)

  return offset + length, value
end

-- Calculate size of: Custom Market Order Added
asx_securities_t24_itch_v1_13_size_of.custom_market_order_added = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.order_book_priority

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.legs

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number_leg_1

  index = index + asx_securities_t24_itch_v1_13_size_of.side_leg_1

  index = index + asx_securities_t24_itch_v1_13_size_of.ratio_leg_1

  index = index + asx_securities_t24_itch_v1_13_size_of.price_leg_1

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number_leg_2

  index = index + asx_securities_t24_itch_v1_13_size_of.side_leg_2

  index = index + asx_securities_t24_itch_v1_13_size_of.ratio_leg_2

  index = index + asx_securities_t24_itch_v1_13_size_of.price_leg_2

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number_leg_3

  index = index + asx_securities_t24_itch_v1_13_size_of.side_leg_3

  index = index + asx_securities_t24_itch_v1_13_size_of.ratio_leg_3

  index = index + asx_securities_t24_itch_v1_13_size_of.price_leg_3

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number_leg_4

  index = index + asx_securities_t24_itch_v1_13_size_of.side_leg_4

  index = index + asx_securities_t24_itch_v1_13_size_of.ratio_leg_4

  index = index + asx_securities_t24_itch_v1_13_size_of.price_leg_4

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number_leg_5

  index = index + asx_securities_t24_itch_v1_13_size_of.side_leg_5

  index = index + asx_securities_t24_itch_v1_13_size_of.ratio_leg_5

  index = index + asx_securities_t24_itch_v1_13_size_of.price_leg_5

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number_leg_6

  index = index + asx_securities_t24_itch_v1_13_size_of.side_leg_6

  index = index + asx_securities_t24_itch_v1_13_size_of.ratio_leg_6

  index = index + asx_securities_t24_itch_v1_13_size_of.price_leg_6

  return index
end

-- Display: Custom Market Order Added
asx_securities_t24_itch_v1_13_display.custom_market_order_added = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custom Market Order Added
asx_securities_t24_itch_v1_13_dissect.custom_market_order_added_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index, legs = asx_securities_t24_itch_v1_13_dissect.legs(buffer, index, packet, parent)

  -- Contract Number Leg 1: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_1 = asx_securities_t24_itch_v1_13_dissect.contract_number_leg_1(buffer, index, packet, parent)

  -- Side Leg 1: 1 Byte Ascii String
  index, side_leg_1 = asx_securities_t24_itch_v1_13_dissect.side_leg_1(buffer, index, packet, parent)

  -- Ratio Leg 1: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_1 = asx_securities_t24_itch_v1_13_dissect.ratio_leg_1(buffer, index, packet, parent)

  -- Price Leg 1: 4 Byte Signed Fixed Width Integer
  index, price_leg_1 = asx_securities_t24_itch_v1_13_dissect.price_leg_1(buffer, index, packet, parent)

  -- Contract Number Leg 2: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_2 = asx_securities_t24_itch_v1_13_dissect.contract_number_leg_2(buffer, index, packet, parent)

  -- Side Leg 2: 1 Byte Ascii String
  index, side_leg_2 = asx_securities_t24_itch_v1_13_dissect.side_leg_2(buffer, index, packet, parent)

  -- Ratio Leg 2: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_2 = asx_securities_t24_itch_v1_13_dissect.ratio_leg_2(buffer, index, packet, parent)

  -- Price Leg 2: 4 Byte Signed Fixed Width Integer
  index, price_leg_2 = asx_securities_t24_itch_v1_13_dissect.price_leg_2(buffer, index, packet, parent)

  -- Contract Number Leg 3: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_3 = asx_securities_t24_itch_v1_13_dissect.contract_number_leg_3(buffer, index, packet, parent)

  -- Side Leg 3: 1 Byte Ascii String
  index, side_leg_3 = asx_securities_t24_itch_v1_13_dissect.side_leg_3(buffer, index, packet, parent)

  -- Ratio Leg 3: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_3 = asx_securities_t24_itch_v1_13_dissect.ratio_leg_3(buffer, index, packet, parent)

  -- Price Leg 3: 4 Byte Signed Fixed Width Integer
  index, price_leg_3 = asx_securities_t24_itch_v1_13_dissect.price_leg_3(buffer, index, packet, parent)

  -- Contract Number Leg 4: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_4 = asx_securities_t24_itch_v1_13_dissect.contract_number_leg_4(buffer, index, packet, parent)

  -- Side Leg 4: 1 Byte Ascii String
  index, side_leg_4 = asx_securities_t24_itch_v1_13_dissect.side_leg_4(buffer, index, packet, parent)

  -- Ratio Leg 4: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_4 = asx_securities_t24_itch_v1_13_dissect.ratio_leg_4(buffer, index, packet, parent)

  -- Price Leg 4: 4 Byte Signed Fixed Width Integer
  index, price_leg_4 = asx_securities_t24_itch_v1_13_dissect.price_leg_4(buffer, index, packet, parent)

  -- Contract Number Leg 5: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_5 = asx_securities_t24_itch_v1_13_dissect.contract_number_leg_5(buffer, index, packet, parent)

  -- Side Leg 5: 1 Byte Ascii String
  index, side_leg_5 = asx_securities_t24_itch_v1_13_dissect.side_leg_5(buffer, index, packet, parent)

  -- Ratio Leg 5: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_5 = asx_securities_t24_itch_v1_13_dissect.ratio_leg_5(buffer, index, packet, parent)

  -- Price Leg 5: 4 Byte Signed Fixed Width Integer
  index, price_leg_5 = asx_securities_t24_itch_v1_13_dissect.price_leg_5(buffer, index, packet, parent)

  -- Contract Number Leg 6: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_6 = asx_securities_t24_itch_v1_13_dissect.contract_number_leg_6(buffer, index, packet, parent)

  -- Side Leg 6: 1 Byte Ascii String
  index, side_leg_6 = asx_securities_t24_itch_v1_13_dissect.side_leg_6(buffer, index, packet, parent)

  -- Ratio Leg 6: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_6 = asx_securities_t24_itch_v1_13_dissect.ratio_leg_6(buffer, index, packet, parent)

  -- Price Leg 6: 4 Byte Signed Fixed Width Integer
  index, price_leg_6 = asx_securities_t24_itch_v1_13_dissect.price_leg_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Added
asx_securities_t24_itch_v1_13_dissect.custom_market_order_added = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custom_market_order_added then
    local length = asx_securities_t24_itch_v1_13_size_of.custom_market_order_added(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.custom_market_order_added(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.custom_market_order_added, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.custom_market_order_added_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Implied Order Deleted
asx_securities_t24_itch_v1_13_size_of.implied_order_deleted = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  return index
end

-- Display: Implied Order Deleted
asx_securities_t24_itch_v1_13_display.implied_order_deleted = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Deleted
asx_securities_t24_itch_v1_13_dissect.implied_order_deleted_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted
asx_securities_t24_itch_v1_13_dissect.implied_order_deleted = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_deleted then
    local length = asx_securities_t24_itch_v1_13_size_of.implied_order_deleted(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.implied_order_deleted(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.implied_order_deleted, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.implied_order_deleted_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Implied Order Replaced
asx_securities_t24_itch_v1_13_size_of.implied_order_replaced = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.order_book_priority

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.price

  return index
end

-- Display: Implied Order Replaced
asx_securities_t24_itch_v1_13_display.implied_order_replaced = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Replaced
asx_securities_t24_itch_v1_13_dissect.implied_order_replaced_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced
asx_securities_t24_itch_v1_13_dissect.implied_order_replaced = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_replaced then
    local length = asx_securities_t24_itch_v1_13_size_of.implied_order_replaced(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.implied_order_replaced(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.implied_order_replaced, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.implied_order_replaced_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Implied Order Added
asx_securities_t24_itch_v1_13_size_of.implied_order_added = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.order_book_priority

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.price

  return index
end

-- Display: Implied Order Added
asx_securities_t24_itch_v1_13_display.implied_order_added = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Added
asx_securities_t24_itch_v1_13_dissect.implied_order_added_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added
asx_securities_t24_itch_v1_13_dissect.implied_order_added = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_added then
    local length = asx_securities_t24_itch_v1_13_size_of.implied_order_added(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.implied_order_added(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.implied_order_added, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.implied_order_added_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Deleted
asx_securities_t24_itch_v1_13_size_of.order_deleted = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  return index
end

-- Display: Order Deleted
asx_securities_t24_itch_v1_13_display.order_deleted = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Deleted
asx_securities_t24_itch_v1_13_dissect.order_deleted_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted
asx_securities_t24_itch_v1_13_dissect.order_deleted = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_deleted then
    local length = asx_securities_t24_itch_v1_13_size_of.order_deleted(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_deleted(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_deleted, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_deleted_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Volume Cancelled
asx_securities_t24_itch_v1_13_size_of.order_volume_cancelled = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  return index
end

-- Display: Order Volume Cancelled
asx_securities_t24_itch_v1_13_display.order_volume_cancelled = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Volume Cancelled
asx_securities_t24_itch_v1_13_dissect.order_volume_cancelled_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled
asx_securities_t24_itch_v1_13_dissect.order_volume_cancelled = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_volume_cancelled then
    local length = asx_securities_t24_itch_v1_13_size_of.order_volume_cancelled(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_volume_cancelled(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_volume_cancelled, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_volume_cancelled_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Replaced
asx_securities_t24_itch_v1_13_size_of.order_replaced = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.order_book_priority

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.price

  return index
end

-- Display: Order Replaced
asx_securities_t24_itch_v1_13_display.order_replaced = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replaced
asx_securities_t24_itch_v1_13_dissect.order_replaced_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced
asx_securities_t24_itch_v1_13_dissect.order_replaced = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replaced then
    local length = asx_securities_t24_itch_v1_13_size_of.order_replaced(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_replaced(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_replaced, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_replaced_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Added
asx_securities_t24_itch_v1_13_size_of.order_added = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.side

  index = index + asx_securities_t24_itch_v1_13_size_of.order_number

  index = index + asx_securities_t24_itch_v1_13_size_of.order_book_priority

  index = index + asx_securities_t24_itch_v1_13_size_of.quantity

  index = index + asx_securities_t24_itch_v1_13_size_of.price

  return index
end

-- Display: Order Added
asx_securities_t24_itch_v1_13_display.order_added = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Added
asx_securities_t24_itch_v1_13_dissect.order_added_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13_dissect.order_number(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added
asx_securities_t24_itch_v1_13_dissect.order_added = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_added then
    local length = asx_securities_t24_itch_v1_13_size_of.order_added(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_added(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_added, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_added_fields(buffer, offset, packet, parent)
end

-- Size: Trading Status
asx_securities_t24_itch_v1_13_size_of.trading_status = 1

-- Display: Trading Status
asx_securities_t24_itch_v1_13_display.trading_status = function(value)
  if value == "p" then
    return "Trading Status: Pending (p)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "P" then
    return "Trading Status: Pre Open (P)"
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
asx_securities_t24_itch_v1_13_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book State
asx_securities_t24_itch_v1_13_size_of.order_book_state = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.trading_status

  return index
end

-- Display: Order Book State
asx_securities_t24_itch_v1_13_display.order_book_state = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book State
asx_securities_t24_itch_v1_13_dissect.order_book_state_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 13 values
  index, trading_status = asx_securities_t24_itch_v1_13_dissect.trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State
asx_securities_t24_itch_v1_13_dissect.order_book_state = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_state then
    local length = asx_securities_t24_itch_v1_13_size_of.order_book_state(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.order_book_state(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.order_book_state, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.order_book_state_fields(buffer, offset, packet, parent)
end

-- Size: Activated
asx_securities_t24_itch_v1_13_size_of.activated = 1

-- Display: Activated
asx_securities_t24_itch_v1_13_display.activated = function(value)
  if value == "Y" then
    return "Activated: Yes (Y)"
  end
  if value == "N" then
    return "Activated: No (N)"
  end

  return "Activated: Unknown("..value..")"
end

-- Dissect: Activated
asx_securities_t24_itch_v1_13_dissect.activated = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.activated
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.activated(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.activated, range, value, display)

  return offset + length, value
end

-- Size: Payments Per Year
asx_securities_t24_itch_v1_13_size_of.payments_per_year = 1

-- Display: Payments Per Year
asx_securities_t24_itch_v1_13_display.payments_per_year = function(value)
  return "Payments Per Year: "..value
end

-- Dissect: Payments Per Year
asx_securities_t24_itch_v1_13_dissect.payments_per_year = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.payments_per_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.payments_per_year(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.payments_per_year, range, value, display)

  return offset + length, value
end

-- Size: Coupon Rate
asx_securities_t24_itch_v1_13_size_of.coupon_rate = 2

-- Display: Coupon Rate
asx_securities_t24_itch_v1_13_display.coupon_rate = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
asx_securities_t24_itch_v1_13_dissect.coupon_rate = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.coupon_rate
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.coupon_rate(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Size: Maturity Value
asx_securities_t24_itch_v1_13_size_of.maturity_value = 1

-- Display: Maturity Value
asx_securities_t24_itch_v1_13_display.maturity_value = function(value)
  return "Maturity Value: "..value
end

-- Dissect: Maturity Value
asx_securities_t24_itch_v1_13_dissect.maturity_value = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.maturity_value
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.maturity_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.maturity_value, range, value, display)

  return offset + length, value
end

-- Size: Lot Size Or Face Value
asx_securities_t24_itch_v1_13_size_of.lot_size_or_face_value = 4

-- Display: Lot Size Or Face Value
asx_securities_t24_itch_v1_13_display.lot_size_or_face_value = function(value)
  return "Lot Size Or Face Value: "..value
end

-- Dissect: Lot Size Or Face Value
asx_securities_t24_itch_v1_13_dissect.lot_size_or_face_value = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.lot_size_or_face_value
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.lot_size_or_face_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.lot_size_or_face_value, range, value, display)

  return offset + length, value
end

-- Size: Currency
asx_securities_t24_itch_v1_13_size_of.currency = 3

-- Display: Currency
asx_securities_t24_itch_v1_13_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
asx_securities_t24_itch_v1_13_dissect.currency = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13_display.currency(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Financial Type
asx_securities_t24_itch_v1_13_size_of.financial_type = 1

-- Display: Financial Type
asx_securities_t24_itch_v1_13_display.financial_type = function(value)
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
asx_securities_t24_itch_v1_13_dissect.financial_type = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.financial_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.financial_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.financial_type, range, value, display)

  return offset + length, value
end

-- Size: Prior Day Settlement
asx_securities_t24_itch_v1_13_size_of.prior_day_settlement = 4

-- Display: Prior Day Settlement
asx_securities_t24_itch_v1_13_display.prior_day_settlement = function(value)
  return "Prior Day Settlement: "..value
end

-- Dissect: Prior Day Settlement
asx_securities_t24_itch_v1_13_dissect.prior_day_settlement = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.prior_day_settlement
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13_display.prior_day_settlement(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.prior_day_settlement, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Date
asx_securities_t24_itch_v1_13_size_of.last_trading_date = 4

-- Display: Last Trading Date
asx_securities_t24_itch_v1_13_display.last_trading_date = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
asx_securities_t24_itch_v1_13_dissect.last_trading_date = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.last_trading_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.last_trading_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Minimum Tick
asx_securities_t24_itch_v1_13_size_of.strike_price_minimum_tick = 2

-- Display: Strike Price Minimum Tick
asx_securities_t24_itch_v1_13_display.strike_price_minimum_tick = function(value)
  return "Strike Price Minimum Tick: "..value
end

-- Dissect: Strike Price Minimum Tick
asx_securities_t24_itch_v1_13_dissect.strike_price_minimum_tick = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.strike_price_minimum_tick
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.strike_price_minimum_tick(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.strike_price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13_size_of.strike_price_fractional_denominator = 4

-- Display: Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13_display.strike_price_fractional_denominator = function(value)
  return "Strike Price Fractional Denominator: "..value
end

-- Dissect: Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13_dissect.strike_price_fractional_denominator = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.strike_price_fractional_denominator
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.strike_price_fractional_denominator(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.strike_price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Decimal Position
asx_securities_t24_itch_v1_13_size_of.strike_price_decimal_position = 1

-- Display: Strike Price Decimal Position
asx_securities_t24_itch_v1_13_display.strike_price_decimal_position = function(value)
  return "Strike Price Decimal Position: "..value
end

-- Dissect: Strike Price Decimal Position
asx_securities_t24_itch_v1_13_dissect.strike_price_decimal_position = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.strike_price_decimal_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.strike_price_decimal_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.strike_price_decimal_position, range, value, display)

  return offset + length, value
end

-- Size: Price Minimum Tick
asx_securities_t24_itch_v1_13_size_of.price_minimum_tick = 2

-- Display: Price Minimum Tick
asx_securities_t24_itch_v1_13_display.price_minimum_tick = function(value)
  return "Price Minimum Tick: "..value
end

-- Dissect: Price Minimum Tick
asx_securities_t24_itch_v1_13_dissect.price_minimum_tick = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_minimum_tick
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.price_minimum_tick(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Size: Price Fractional Denominator
asx_securities_t24_itch_v1_13_size_of.price_fractional_denominator = 4

-- Display: Price Fractional Denominator
asx_securities_t24_itch_v1_13_display.price_fractional_denominator = function(value)
  return "Price Fractional Denominator: "..value
end

-- Dissect: Price Fractional Denominator
asx_securities_t24_itch_v1_13_dissect.price_fractional_denominator = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_fractional_denominator
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.price_fractional_denominator(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Size: Price Decimal Position
asx_securities_t24_itch_v1_13_size_of.price_decimal_position = 1

-- Display: Price Decimal Position
asx_securities_t24_itch_v1_13_display.price_decimal_position = function(value)
  return "Price Decimal Position: "..value
end

-- Dissect: Price Decimal Position
asx_securities_t24_itch_v1_13_dissect.price_decimal_position = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.price_decimal_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.price_decimal_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.price_decimal_position, range, value, display)

  return offset + length, value
end

-- Size: Underlying Contract Number
asx_securities_t24_itch_v1_13_size_of.underlying_contract_number = 4

-- Display: Underlying Contract Number
asx_securities_t24_itch_v1_13_display.underlying_contract_number = function(value)
  return "Underlying Contract Number: "..value
end

-- Dissect: Underlying Contract Number
asx_securities_t24_itch_v1_13_dissect.underlying_contract_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.underlying_contract_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.underlying_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.underlying_contract_number, range, value, display)

  return offset + length, value
end

-- Size: Strike
asx_securities_t24_itch_v1_13_size_of.strike = 4

-- Display: Strike
asx_securities_t24_itch_v1_13_display.strike = function(value)
  return "Strike: "..value
end

-- Dissect: Strike
asx_securities_t24_itch_v1_13_dissect.strike = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.strike
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.strike(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.strike, range, value, display)

  return offset + length, value
end

-- Size: Option Type
asx_securities_t24_itch_v1_13_size_of.option_type = 1

-- Display: Option Type
asx_securities_t24_itch_v1_13_display.option_type = function(value)
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "C" then
    return "Option Type: Call (C)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asx_securities_t24_itch_v1_13_dissect.option_type = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.option_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Expiry Month
asx_securities_t24_itch_v1_13_size_of.expiry_month = 1

-- Display: Expiry Month
asx_securities_t24_itch_v1_13_display.expiry_month = function(value)
  return "Expiry Month: "..value
end

-- Dissect: Expiry Month
asx_securities_t24_itch_v1_13_dissect.expiry_month = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.expiry_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.expiry_month(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Size: Expiry Year
asx_securities_t24_itch_v1_13_size_of.expiry_year = 2

-- Display: Expiry Year
asx_securities_t24_itch_v1_13_display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
asx_securities_t24_itch_v1_13_dissect.expiry_year = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.expiry_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Size: Contract Type
asx_securities_t24_itch_v1_13_size_of.contract_type = 1

-- Display: Contract Type
asx_securities_t24_itch_v1_13_display.contract_type = function(value)
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
asx_securities_t24_itch_v1_13_dissect.contract_type = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.contract_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.contract_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Size: Instrument
asx_securities_t24_itch_v1_13_size_of.instrument = 6

-- Display: Instrument
asx_securities_t24_itch_v1_13_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
asx_securities_t24_itch_v1_13_dissect.instrument = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.instrument
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13_display.instrument(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Exchange
asx_securities_t24_itch_v1_13_size_of.exchange = 6

-- Display: Exchange
asx_securities_t24_itch_v1_13_display.exchange = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
asx_securities_t24_itch_v1_13_dissect.exchange = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.exchange
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13_display.exchange(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.exchange, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Symbol Directory
asx_securities_t24_itch_v1_13_size_of.option_symbol_directory = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.exchange

  index = index + asx_securities_t24_itch_v1_13_size_of.instrument

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_type

  index = index + asx_securities_t24_itch_v1_13_size_of.expiry_year

  index = index + asx_securities_t24_itch_v1_13_size_of.expiry_month

  index = index + asx_securities_t24_itch_v1_13_size_of.option_type

  index = index + asx_securities_t24_itch_v1_13_size_of.strike

  index = index + asx_securities_t24_itch_v1_13_size_of.underlying_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.price_decimal_position

  index = index + asx_securities_t24_itch_v1_13_size_of.price_fractional_denominator

  index = index + asx_securities_t24_itch_v1_13_size_of.price_minimum_tick

  index = index + asx_securities_t24_itch_v1_13_size_of.strike_price_decimal_position

  index = index + asx_securities_t24_itch_v1_13_size_of.strike_price_fractional_denominator

  index = index + asx_securities_t24_itch_v1_13_size_of.strike_price_minimum_tick

  index = index + asx_securities_t24_itch_v1_13_size_of.last_trading_date

  index = index + asx_securities_t24_itch_v1_13_size_of.prior_day_settlement

  index = index + asx_securities_t24_itch_v1_13_size_of.volatility

  index = index + asx_securities_t24_itch_v1_13_size_of.financial_type

  index = index + asx_securities_t24_itch_v1_13_size_of.currency

  index = index + asx_securities_t24_itch_v1_13_size_of.lot_size_or_face_value

  index = index + asx_securities_t24_itch_v1_13_size_of.maturity_value

  index = index + asx_securities_t24_itch_v1_13_size_of.coupon_rate

  index = index + asx_securities_t24_itch_v1_13_size_of.payments_per_year

  index = index + asx_securities_t24_itch_v1_13_size_of.activated

  return index
end

-- Display: Option Symbol Directory
asx_securities_t24_itch_v1_13_display.option_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Symbol Directory
asx_securities_t24_itch_v1_13_dissect.option_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_t24_itch_v1_13_dissect.exchange(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_t24_itch_v1_13_dissect.instrument(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index, contract_type = asx_securities_t24_itch_v1_13_dissect.contract_type(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_t24_itch_v1_13_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer
  index, expiry_month = asx_securities_t24_itch_v1_13_dissect.expiry_month(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = asx_securities_t24_itch_v1_13_dissect.option_type(buffer, index, packet, parent)

  -- Strike: 4 Byte Unsigned Fixed Width Integer
  index, strike = asx_securities_t24_itch_v1_13_dissect.strike(buffer, index, packet, parent)

  -- Underlying Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, underlying_contract_number = asx_securities_t24_itch_v1_13_dissect.underlying_contract_number(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, price_decimal_position = asx_securities_t24_itch_v1_13_dissect.price_decimal_position(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_t24_itch_v1_13_dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Strike Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimal_position = asx_securities_t24_itch_v1_13_dissect.strike_price_decimal_position(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, strike_price_fractional_denominator = asx_securities_t24_itch_v1_13_dissect.strike_price_fractional_denominator(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, strike_price_minimum_tick = asx_securities_t24_itch_v1_13_dissect.strike_price_minimum_tick(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_t24_itch_v1_13_dissect.last_trading_date(buffer, index, packet, parent)

  -- Prior Day Settlement: 4 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_t24_itch_v1_13_dissect.prior_day_settlement(buffer, index, packet, parent)

  -- Volatility: 4 Byte Unsigned Fixed Width Integer
  index, volatility = asx_securities_t24_itch_v1_13_dissect.volatility(buffer, index, packet, parent)

  -- Financial Type: 1 Byte Ascii String Enum with 5 values
  index, financial_type = asx_securities_t24_itch_v1_13_dissect.financial_type(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_t24_itch_v1_13_dissect.currency(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 4 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_t24_itch_v1_13_dissect.lot_size_or_face_value(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_t24_itch_v1_13_dissect.maturity_value(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_t24_itch_v1_13_dissect.coupon_rate(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_t24_itch_v1_13_dissect.payments_per_year(buffer, index, packet, parent)

  -- Activated: 1 Byte Ascii String Enum with 2 values
  index, activated = asx_securities_t24_itch_v1_13_dissect.activated(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol Directory
asx_securities_t24_itch_v1_13_dissect.option_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_symbol_directory then
    local length = asx_securities_t24_itch_v1_13_size_of.option_symbol_directory(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.option_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.option_symbol_directory, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.option_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Ratio
asx_securities_t24_itch_v1_13_size_of.secondary_ratio = 1

-- Display: Secondary Ratio
asx_securities_t24_itch_v1_13_display.secondary_ratio = function(value)
  return "Secondary Ratio: "..value
end

-- Dissect: Secondary Ratio
asx_securities_t24_itch_v1_13_dissect.secondary_ratio = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.secondary_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.secondary_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.secondary_ratio, range, value, display)

  return offset + length, value
end

-- Size: Primary Ratio
asx_securities_t24_itch_v1_13_size_of.primary_ratio = 1

-- Display: Primary Ratio
asx_securities_t24_itch_v1_13_display.primary_ratio = function(value)
  return "Primary Ratio: "..value
end

-- Dissect: Primary Ratio
asx_securities_t24_itch_v1_13_dissect.primary_ratio = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.primary_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.primary_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.primary_ratio, range, value, display)

  return offset + length, value
end

-- Size: Second Leg Contract Number
asx_securities_t24_itch_v1_13_size_of.second_leg_contract_number = 4

-- Display: Second Leg Contract Number
asx_securities_t24_itch_v1_13_display.second_leg_contract_number = function(value)
  return "Second Leg Contract Number: "..value
end

-- Dissect: Second Leg Contract Number
asx_securities_t24_itch_v1_13_dissect.second_leg_contract_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.second_leg_contract_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.second_leg_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.second_leg_contract_number, range, value, display)

  return offset + length, value
end

-- Size: First Leg Contract Number
asx_securities_t24_itch_v1_13_size_of.first_leg_contract_number = 4

-- Display: First Leg Contract Number
asx_securities_t24_itch_v1_13_display.first_leg_contract_number = function(value)
  return "First Leg Contract Number: "..value
end

-- Dissect: First Leg Contract Number
asx_securities_t24_itch_v1_13_dissect.first_leg_contract_number = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.first_leg_contract_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.first_leg_contract_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.first_leg_contract_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Spread Symbol Directory
asx_securities_t24_itch_v1_13_size_of.spread_symbol_directory = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.exchange

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_type

  index = index + asx_securities_t24_itch_v1_13_size_of.first_leg_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.second_leg_contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.primary_ratio

  index = index + asx_securities_t24_itch_v1_13_size_of.secondary_ratio

  index = index + asx_securities_t24_itch_v1_13_size_of.price_decimal_position

  index = index + asx_securities_t24_itch_v1_13_size_of.price_fractional_denominator

  index = index + asx_securities_t24_itch_v1_13_size_of.price_minimum_tick

  return index
end

-- Display: Spread Symbol Directory
asx_securities_t24_itch_v1_13_display.spread_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Symbol Directory
asx_securities_t24_itch_v1_13_dissect.spread_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_t24_itch_v1_13_dissect.exchange(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index, contract_type = asx_securities_t24_itch_v1_13_dissect.contract_type(buffer, index, packet, parent)

  -- First Leg Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, first_leg_contract_number = asx_securities_t24_itch_v1_13_dissect.first_leg_contract_number(buffer, index, packet, parent)

  -- Second Leg Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, second_leg_contract_number = asx_securities_t24_itch_v1_13_dissect.second_leg_contract_number(buffer, index, packet, parent)

  -- Primary Ratio: 1 Byte Unsigned Fixed Width Integer
  index, primary_ratio = asx_securities_t24_itch_v1_13_dissect.primary_ratio(buffer, index, packet, parent)

  -- Secondary Ratio: 1 Byte Unsigned Fixed Width Integer
  index, secondary_ratio = asx_securities_t24_itch_v1_13_dissect.secondary_ratio(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, price_decimal_position = asx_securities_t24_itch_v1_13_dissect.price_decimal_position(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_t24_itch_v1_13_dissect.price_minimum_tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Symbol Directory
asx_securities_t24_itch_v1_13_dissect.spread_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_symbol_directory then
    local length = asx_securities_t24_itch_v1_13_size_of.spread_symbol_directory(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.spread_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.spread_symbol_directory, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.spread_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Symbol Directory
asx_securities_t24_itch_v1_13_size_of.future_symbol_directory = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_number

  index = index + asx_securities_t24_itch_v1_13_size_of.exchange

  index = index + asx_securities_t24_itch_v1_13_size_of.instrument

  index = index + asx_securities_t24_itch_v1_13_size_of.contract_type

  index = index + asx_securities_t24_itch_v1_13_size_of.expiry_year

  index = index + asx_securities_t24_itch_v1_13_size_of.expiry_month

  index = index + asx_securities_t24_itch_v1_13_size_of.price_decimal_position

  index = index + asx_securities_t24_itch_v1_13_size_of.price_fractional_denominator

  index = index + asx_securities_t24_itch_v1_13_size_of.price_minimum_tick

  index = index + asx_securities_t24_itch_v1_13_size_of.last_trading_date

  index = index + asx_securities_t24_itch_v1_13_size_of.prior_day_settlement

  index = index + asx_securities_t24_itch_v1_13_size_of.financial_type

  index = index + asx_securities_t24_itch_v1_13_size_of.currency

  index = index + asx_securities_t24_itch_v1_13_size_of.lot_size_or_face_value

  index = index + asx_securities_t24_itch_v1_13_size_of.maturity_value

  index = index + asx_securities_t24_itch_v1_13_size_of.coupon_rate

  index = index + asx_securities_t24_itch_v1_13_size_of.payments_per_year

  return index
end

-- Display: Future Symbol Directory
asx_securities_t24_itch_v1_13_display.future_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Symbol Directory
asx_securities_t24_itch_v1_13_dissect.future_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13_dissect.contract_number(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_t24_itch_v1_13_dissect.exchange(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_t24_itch_v1_13_dissect.instrument(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index, contract_type = asx_securities_t24_itch_v1_13_dissect.contract_type(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_t24_itch_v1_13_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer
  index, expiry_month = asx_securities_t24_itch_v1_13_dissect.expiry_month(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, price_decimal_position = asx_securities_t24_itch_v1_13_dissect.price_decimal_position(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_t24_itch_v1_13_dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_t24_itch_v1_13_dissect.last_trading_date(buffer, index, packet, parent)

  -- Prior Day Settlement: 4 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_t24_itch_v1_13_dissect.prior_day_settlement(buffer, index, packet, parent)

  -- Financial Type: 1 Byte Ascii String Enum with 5 values
  index, financial_type = asx_securities_t24_itch_v1_13_dissect.financial_type(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_t24_itch_v1_13_dissect.currency(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 4 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_t24_itch_v1_13_dissect.lot_size_or_face_value(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_t24_itch_v1_13_dissect.maturity_value(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_t24_itch_v1_13_dissect.coupon_rate(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_t24_itch_v1_13_dissect.payments_per_year(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory
asx_securities_t24_itch_v1_13_dissect.future_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_symbol_directory then
    local length = asx_securities_t24_itch_v1_13_size_of.future_symbol_directory(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.future_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.future_symbol_directory, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.future_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
asx_securities_t24_itch_v1_13_size_of.event_code = 1

-- Display: Event Code
asx_securities_t24_itch_v1_13_display.event_code = function(value)
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
asx_securities_t24_itch_v1_13_dissect.event_code = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.event_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event
asx_securities_t24_itch_v1_13_size_of.system_event = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.timestamp

  index = index + asx_securities_t24_itch_v1_13_size_of.trade_date

  index = index + asx_securities_t24_itch_v1_13_size_of.event_code

  return index
end

-- Display: System Event
asx_securities_t24_itch_v1_13_display.system_event = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event
asx_securities_t24_itch_v1_13_dissect.system_event_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13_dissect.trade_date(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 5 values
  index, event_code = asx_securities_t24_itch_v1_13_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event
asx_securities_t24_itch_v1_13_dissect.system_event = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event then
    local length = asx_securities_t24_itch_v1_13_size_of.system_event(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.system_event(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.system_event, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.system_event_fields(buffer, offset, packet, parent)
end

-- Size: Second
asx_securities_t24_itch_v1_13_size_of.second = 4

-- Display: Second
asx_securities_t24_itch_v1_13_display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
asx_securities_t24_itch_v1_13_dissect.second = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.second
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.second(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.second, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
asx_securities_t24_itch_v1_13_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.second

  return index
end

-- Display: Time Message
asx_securities_t24_itch_v1_13_display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
asx_securities_t24_itch_v1_13_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = asx_securities_t24_itch_v1_13_dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
asx_securities_t24_itch_v1_13_dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local length = asx_securities_t24_itch_v1_13_size_of.time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.time_message(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.time_message, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
asx_securities_t24_itch_v1_13_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == "T" then
    return asx_securities_t24_itch_v1_13_size_of.time_message(buffer, offset)
  end
  -- Size of System Event
  if message_type == "S" then
    return asx_securities_t24_itch_v1_13_size_of.system_event(buffer, offset)
  end
  -- Size of Future Symbol Directory
  if message_type == "f" then
    return asx_securities_t24_itch_v1_13_size_of.future_symbol_directory(buffer, offset)
  end
  -- Size of Spread Symbol Directory
  if message_type == "g" then
    return asx_securities_t24_itch_v1_13_size_of.spread_symbol_directory(buffer, offset)
  end
  -- Size of Option Symbol Directory
  if message_type == "h" then
    return asx_securities_t24_itch_v1_13_size_of.option_symbol_directory(buffer, offset)
  end
  -- Size of Order Book State
  if message_type == "O" then
    return asx_securities_t24_itch_v1_13_size_of.order_book_state(buffer, offset)
  end
  -- Size of Order Added
  if message_type == "A" then
    return asx_securities_t24_itch_v1_13_size_of.order_added(buffer, offset)
  end
  -- Size of Order Replaced
  if message_type == "U" then
    return asx_securities_t24_itch_v1_13_size_of.order_replaced(buffer, offset)
  end
  -- Size of Order Volume Cancelled
  if message_type == "X" then
    return asx_securities_t24_itch_v1_13_size_of.order_volume_cancelled(buffer, offset)
  end
  -- Size of Order Deleted
  if message_type == "D" then
    return asx_securities_t24_itch_v1_13_size_of.order_deleted(buffer, offset)
  end
  -- Size of Implied Order Added
  if message_type == "j" then
    return asx_securities_t24_itch_v1_13_size_of.implied_order_added(buffer, offset)
  end
  -- Size of Implied Order Replaced
  if message_type == "l" then
    return asx_securities_t24_itch_v1_13_size_of.implied_order_replaced(buffer, offset)
  end
  -- Size of Implied Order Deleted
  if message_type == "k" then
    return asx_securities_t24_itch_v1_13_size_of.implied_order_deleted(buffer, offset)
  end
  -- Size of Custom Market Order Added
  if message_type == "m" then
    return asx_securities_t24_itch_v1_13_size_of.custom_market_order_added(buffer, offset)
  end
  -- Size of Custom Market Order Replaced
  if message_type == "n" then
    return asx_securities_t24_itch_v1_13_size_of.custom_market_order_replaced(buffer, offset)
  end
  -- Size of Custom Market Order Deleted
  if message_type == "r" then
    return asx_securities_t24_itch_v1_13_size_of.custom_market_order_deleted(buffer, offset)
  end
  -- Size of Order Executed
  if message_type == "E" then
    return asx_securities_t24_itch_v1_13_size_of.order_executed(buffer, offset)
  end
  -- Size of Order Executed With Price
  if message_type == "C" then
    return asx_securities_t24_itch_v1_13_size_of.order_executed_with_price(buffer, offset)
  end
  -- Size of Spread Executed
  if message_type == "e" then
    return asx_securities_t24_itch_v1_13_size_of.spread_executed(buffer, offset)
  end
  -- Size of Trade Spread Execution Chain
  if message_type == "P" then
    return asx_securities_t24_itch_v1_13_size_of.trade_spread_execution_chain(buffer, offset)
  end
  -- Size of Custom Market Executed
  if message_type == "u" then
    return asx_securities_t24_itch_v1_13_size_of.custom_market_executed(buffer, offset)
  end
  -- Size of Custom Market Trade
  if message_type == "p" then
    return asx_securities_t24_itch_v1_13_size_of.custom_market_trade(buffer, offset)
  end
  -- Size of Trade Cancellation
  if message_type == "B" then
    return asx_securities_t24_itch_v1_13_size_of.trade_cancellation(buffer, offset)
  end
  -- Size of Equilibrium Price Auction Info
  if message_type == "Z" then
    return asx_securities_t24_itch_v1_13_size_of.equilibrium_price_auction_info(buffer, offset)
  end
  -- Size of Open High Low Last Trade Adjustment
  if message_type == "t" then
    return asx_securities_t24_itch_v1_13_size_of.open_high_low_last_trade_adjustment(buffer, offset)
  end
  -- Size of Market Settlement
  if message_type == "Y" then
    return asx_securities_t24_itch_v1_13_size_of.market_settlement(buffer, offset)
  end
  -- Size of Ad Hoc Text
  if message_type == "x" then
    return asx_securities_t24_itch_v1_13_size_of.ad_hoc_text(buffer, offset)
  end
  -- Size of Request For Quote
  if message_type == "q" then
    return asx_securities_t24_itch_v1_13_size_of.request_for_quote(buffer, offset)
  end
  -- Size of Anomalous Order Threshold Publish
  if message_type == "W" then
    return asx_securities_t24_itch_v1_13_size_of.anomalous_order_threshold_publish(buffer, offset)
  end
  -- Size of Volume And Open Interest
  if message_type == "V" then
    return asx_securities_t24_itch_v1_13_size_of.volume_and_open_interest(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_t24_itch_v1_13_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_t24_itch_v1_13_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == "T" then
    return asx_securities_t24_itch_v1_13_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event
  if message_type == "S" then
    return asx_securities_t24_itch_v1_13_dissect.system_event(buffer, offset, packet, parent)
  end
  -- Dissect Future Symbol Directory
  if message_type == "f" then
    return asx_securities_t24_itch_v1_13_dissect.future_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Spread Symbol Directory
  if message_type == "g" then
    return asx_securities_t24_itch_v1_13_dissect.spread_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Option Symbol Directory
  if message_type == "h" then
    return asx_securities_t24_itch_v1_13_dissect.option_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State
  if message_type == "O" then
    return asx_securities_t24_itch_v1_13_dissect.order_book_state(buffer, offset, packet, parent)
  end
  -- Dissect Order Added
  if message_type == "A" then
    return asx_securities_t24_itch_v1_13_dissect.order_added(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced
  if message_type == "U" then
    return asx_securities_t24_itch_v1_13_dissect.order_replaced(buffer, offset, packet, parent)
  end
  -- Dissect Order Volume Cancelled
  if message_type == "X" then
    return asx_securities_t24_itch_v1_13_dissect.order_volume_cancelled(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted
  if message_type == "D" then
    return asx_securities_t24_itch_v1_13_dissect.order_deleted(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Added
  if message_type == "j" then
    return asx_securities_t24_itch_v1_13_dissect.implied_order_added(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Replaced
  if message_type == "l" then
    return asx_securities_t24_itch_v1_13_dissect.implied_order_replaced(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Deleted
  if message_type == "k" then
    return asx_securities_t24_itch_v1_13_dissect.implied_order_deleted(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Added
  if message_type == "m" then
    return asx_securities_t24_itch_v1_13_dissect.custom_market_order_added(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Replaced
  if message_type == "n" then
    return asx_securities_t24_itch_v1_13_dissect.custom_market_order_replaced(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Deleted
  if message_type == "r" then
    return asx_securities_t24_itch_v1_13_dissect.custom_market_order_deleted(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed
  if message_type == "E" then
    return asx_securities_t24_itch_v1_13_dissect.order_executed(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price
  if message_type == "C" then
    return asx_securities_t24_itch_v1_13_dissect.order_executed_with_price(buffer, offset, packet, parent)
  end
  -- Dissect Spread Executed
  if message_type == "e" then
    return asx_securities_t24_itch_v1_13_dissect.spread_executed(buffer, offset, packet, parent)
  end
  -- Dissect Trade Spread Execution Chain
  if message_type == "P" then
    return asx_securities_t24_itch_v1_13_dissect.trade_spread_execution_chain(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Executed
  if message_type == "u" then
    return asx_securities_t24_itch_v1_13_dissect.custom_market_executed(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Trade
  if message_type == "p" then
    return asx_securities_t24_itch_v1_13_dissect.custom_market_trade(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation
  if message_type == "B" then
    return asx_securities_t24_itch_v1_13_dissect.trade_cancellation(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Auction Info
  if message_type == "Z" then
    return asx_securities_t24_itch_v1_13_dissect.equilibrium_price_auction_info(buffer, offset, packet, parent)
  end
  -- Dissect Open High Low Last Trade Adjustment
  if message_type == "t" then
    return asx_securities_t24_itch_v1_13_dissect.open_high_low_last_trade_adjustment(buffer, offset, packet, parent)
  end
  -- Dissect Market Settlement
  if message_type == "Y" then
    return asx_securities_t24_itch_v1_13_dissect.market_settlement(buffer, offset, packet, parent)
  end
  -- Dissect Ad Hoc Text
  if message_type == "x" then
    return asx_securities_t24_itch_v1_13_dissect.ad_hoc_text(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote
  if message_type == "q" then
    return asx_securities_t24_itch_v1_13_dissect.request_for_quote(buffer, offset, packet, parent)
  end
  -- Dissect Anomalous Order Threshold Publish
  if message_type == "W" then
    return asx_securities_t24_itch_v1_13_dissect.anomalous_order_threshold_publish(buffer, offset, packet, parent)
  end
  -- Dissect Volume And Open Interest
  if message_type == "V" then
    return asx_securities_t24_itch_v1_13_dissect.volume_and_open_interest(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_t24_itch_v1_13_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return asx_securities_t24_itch_v1_13_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_t24_itch_v1_13_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_t24_itch_v1_13_display.payload(buffer, packet, parent)
  local element = parent:add(asx_securities_t24_itch_v1_13.fields.payload, range, display)

  return asx_securities_t24_itch_v1_13_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
asx_securities_t24_itch_v1_13_size_of.message_type = 1

-- Display: Message Type
asx_securities_t24_itch_v1_13_display.message_type = function(value)
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
    return "Message Type: Order Executed With Price (C)"
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
    return "Message Type: Open High Low Last Trade Adjustment (t)"
  end
  if value == "Y" then
    return "Message Type: Market Settlement (Y)"
  end
  if value == "x" then
    return "Message Type: Ad Hoc Text (x)"
  end
  if value == "q" then
    return "Message Type: Request For Quote (q)"
  end
  if value == "W" then
    return "Message Type: Anomalous Order Threshold Publish (W)"
  end
  if value == "V" then
    return "Message Type: Volume And Open Interest (V)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
asx_securities_t24_itch_v1_13_dissect.message_type = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.message_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
asx_securities_t24_itch_v1_13_size_of.length = 2

-- Display: Length
asx_securities_t24_itch_v1_13_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
asx_securities_t24_itch_v1_13_dissect.length = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.length(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
asx_securities_t24_itch_v1_13_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.length

  index = index + asx_securities_t24_itch_v1_13_size_of.message_type

  return index
end

-- Display: Message Header
asx_securities_t24_itch_v1_13_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
asx_securities_t24_itch_v1_13_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = asx_securities_t24_itch_v1_13_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 30 values
  index, message_type = asx_securities_t24_itch_v1_13_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_securities_t24_itch_v1_13_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = asx_securities_t24_itch_v1_13_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.message_header(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.message_header, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
asx_securities_t24_itch_v1_13_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
asx_securities_t24_itch_v1_13_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = asx_securities_t24_itch_v1_13_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 30 branches
  index = asx_securities_t24_itch_v1_13_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_securities_t24_itch_v1_13_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = asx_securities_t24_itch_v1_13_display.message(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.message, range, display)
  end

  asx_securities_t24_itch_v1_13_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
asx_securities_t24_itch_v1_13_size_of.count = 2

-- Display: Count
asx_securities_t24_itch_v1_13_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
asx_securities_t24_itch_v1_13_dissect.count = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13_display.count(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
asx_securities_t24_itch_v1_13_size_of.sequence = 8

-- Display: Sequence
asx_securities_t24_itch_v1_13_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
asx_securities_t24_itch_v1_13_dissect.sequence = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13_display.sequence(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Trading Service
asx_securities_t24_itch_v1_13_size_of.trading_service = 3

-- Display: Trading Service
asx_securities_t24_itch_v1_13_display.trading_service = function(value)
  return "Trading Service: "..value
end

-- Dissect: Trading Service
asx_securities_t24_itch_v1_13_dissect.trading_service = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.trading_service
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.trading_service(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.trading_service, range, value, display)

  return offset + length, value
end

-- Size: Session Week
asx_securities_t24_itch_v1_13_size_of.session_week = 2

-- Display: Session Week
asx_securities_t24_itch_v1_13_display.session_week = function(value)
  return "Session Week: "..value
end

-- Dissect: Session Week
asx_securities_t24_itch_v1_13_dissect.session_week = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.session_week
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.session_week(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.session_week, range, value, display)

  return offset + length, value
end

-- Size: Session Year
asx_securities_t24_itch_v1_13_size_of.session_year = 2

-- Display: Session Year
asx_securities_t24_itch_v1_13_display.session_year = function(value)
  return "Session Year: "..value
end

-- Dissect: Session Year
asx_securities_t24_itch_v1_13_dissect.session_year = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.session_year
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.session_year(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.session_year, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
asx_securities_t24_itch_v1_13_size_of.protocol_version = 3

-- Display: Protocol Version
asx_securities_t24_itch_v1_13_display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
asx_securities_t24_itch_v1_13_dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13_size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13_display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(asx_securities_t24_itch_v1_13.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Session
asx_securities_t24_itch_v1_13_size_of.session = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.protocol_version

  index = index + asx_securities_t24_itch_v1_13_size_of.session_year

  index = index + asx_securities_t24_itch_v1_13_size_of.session_week

  index = index + asx_securities_t24_itch_v1_13_size_of.trading_service

  return index
end

-- Display: Session
asx_securities_t24_itch_v1_13_display.session = function(buffer, offset, value, packet, parent)
  return "Session: "..value
end

-- Dissect Fields: Session
asx_securities_t24_itch_v1_13_dissect.session_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Version: 3 Byte Ascii String
  index, protocol_version = asx_securities_t24_itch_v1_13_dissect.protocol_version(buffer, index, packet, parent)

  -- Session Year: 2 Byte Ascii String
  index, session_year = asx_securities_t24_itch_v1_13_dissect.session_year(buffer, index, packet, parent)

  -- Session Week: 2 Byte Ascii String
  index, session_week = asx_securities_t24_itch_v1_13_dissect.session_week(buffer, index, packet, parent)

  -- Trading Service: 3 Byte Ascii String
  index, trading_service = asx_securities_t24_itch_v1_13_dissect.trading_service(buffer, index, packet, parent)

  return index
end

-- Dissect: Session
asx_securities_t24_itch_v1_13_dissect.session = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.session then
    local length = asx_securities_t24_itch_v1_13_size_of.session(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = asx_securities_t24_itch_v1_13_display.session(buffer, offset, value, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.session, range, value, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.session_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Packet Header
asx_securities_t24_itch_v1_13_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13_size_of.session(buffer, offset + index)

  index = index + asx_securities_t24_itch_v1_13_size_of.sequence

  index = index + asx_securities_t24_itch_v1_13_size_of.count

  return index
end

-- Display: Packet Header
asx_securities_t24_itch_v1_13_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_t24_itch_v1_13_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Struct of 4 fields
  index, session = asx_securities_t24_itch_v1_13_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = asx_securities_t24_itch_v1_13_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = asx_securities_t24_itch_v1_13_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_t24_itch_v1_13_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = asx_securities_t24_itch_v1_13_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_t24_itch_v1_13_display.packet_header(buffer, packet, parent)
    parent = parent:add(asx_securities_t24_itch_v1_13.fields.packet_header, range, display)
  end

  return asx_securities_t24_itch_v1_13_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
asx_securities_t24_itch_v1_13_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_securities_t24_itch_v1_13_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index = asx_securities_t24_itch_v1_13_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function asx_securities_t24_itch_v1_13.init()
end

-- Dissector for Asx Securities T24 Itch 1.13
function asx_securities_t24_itch_v1_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = asx_securities_t24_itch_v1_13.name

  -- Dissect protocol
  local protocol = parent:add(asx_securities_t24_itch_v1_13, buffer(), asx_securities_t24_itch_v1_13.description, "("..buffer:len().." Bytes)")
  return asx_securities_t24_itch_v1_13_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, asx_securities_t24_itch_v1_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.asx_securities_t24_itch_v1_13_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities T24 Itch 1.13
local function asx_securities_t24_itch_v1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.asx_securities_t24_itch_v1_13_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = asx_securities_t24_itch_v1_13
  asx_securities_t24_itch_v1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities T24 Itch 1.13
asx_securities_t24_itch_v1_13:register_heuristic("udp", asx_securities_t24_itch_v1_13_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Australian Securities Exchange
--   Version: 1.13
--   Date: Tuesday, July 15, 2014
--   Specification: T24ITCH_External_Message_Specification_V1.13.pdf
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
