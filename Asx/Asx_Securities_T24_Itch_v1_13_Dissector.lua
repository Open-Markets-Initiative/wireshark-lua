-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Protocol
local omi_asx_securities_t24_itch_v1_13 = Proto("Asx.Securities.T24.Itch.v1.13.Lua", "Asx Securities T24 Itch 1.13")

-- Protocol table
local asx_securities_t24_itch_v1_13 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Fields
omi_asx_securities_t24_itch_v1_13.fields.activated = ProtoField.new("Activated", "asx.securities.t24.itch.v1.13.activated", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.aot_lower_price = ProtoField.new("Aot Lower Price", "asx.securities.t24.itch.v1.13.aotlowerprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.aot_price = ProtoField.new("Aot Price", "asx.securities.t24.itch.v1.13.aotprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.aot_upper_price = ProtoField.new("Aot Upper Price", "asx.securities.t24.itch.v1.13.aotupperprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.securities.t24.itch.v1.13.bestaskprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.securities.t24.itch.v1.13.bestaskquantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.securities.t24.itch.v1.13.bestbidprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.securities.t24.itch.v1.13.bestbidquantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.buyer = ProtoField.new("Buyer", "asx.securities.t24.itch.v1.13.buyer", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.buyer_order_number = ProtoField.new("Buyer Order Number", "asx.securities.t24.itch.v1.13.buyerordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.buyer_quantity_remaining = ProtoField.new("Buyer Quantity Remaining", "asx.securities.t24.itch.v1.13.buyerquantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.buying_order_number = ProtoField.new("Buying Order Number", "asx.securities.t24.itch.v1.13.buyingordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.contract_number = ProtoField.new("Contract Number", "asx.securities.t24.itch.v1.13.contractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_1 = ProtoField.new("Contract Number Leg 1", "asx.securities.t24.itch.v1.13.contractnumberleg1", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_2 = ProtoField.new("Contract Number Leg 2", "asx.securities.t24.itch.v1.13.contractnumberleg2", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_3 = ProtoField.new("Contract Number Leg 3", "asx.securities.t24.itch.v1.13.contractnumberleg3", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_4 = ProtoField.new("Contract Number Leg 4", "asx.securities.t24.itch.v1.13.contractnumberleg4", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_5 = ProtoField.new("Contract Number Leg 5", "asx.securities.t24.itch.v1.13.contractnumberleg5", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_6 = ProtoField.new("Contract Number Leg 6", "asx.securities.t24.itch.v1.13.contractnumberleg6", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_type = ProtoField.new("Contract Type", "asx.securities.t24.itch.v1.13.contracttype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.securities.t24.itch.v1.13.couponrate", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.securities.t24.itch.v1.13.cumulativevolume", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.currency = ProtoField.new("Currency", "asx.securities.t24.itch.v1.13.currency", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_number = ProtoField.new("Custom Market Order Number", "asx.securities.t24.itch.v1.13.custommarketordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_quantity_remaining = ProtoField.new("Custom Market Quantity Remaining", "asx.securities.t24.itch.v1.13.custommarketquantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.t24.itch.v1.13.equilibriumprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.etr_lower_price = ProtoField.new("Etr Lower Price", "asx.securities.t24.itch.v1.13.etrlowerprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.etr_price = ProtoField.new("Etr Price", "asx.securities.t24.itch.v1.13.etrprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.etr_upper_price = ProtoField.new("Etr Upper Price", "asx.securities.t24.itch.v1.13.etrupperprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.event_code = ProtoField.new("Event Code", "asx.securities.t24.itch.v1.13.eventcode", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.exchange = ProtoField.new("Exchange", "asx.securities.t24.itch.v1.13.exchange", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.t24.itch.v1.13.executedquantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.expiry_month = ProtoField.new("Expiry Month", "asx.securities.t24.itch.v1.13.expirymonth", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.expiry_year = ProtoField.new("Expiry Year", "asx.securities.t24.itch.v1.13.expiryyear", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.financial_type = ProtoField.new("Financial Type", "asx.securities.t24.itch.v1.13.financialtype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.first_leg_contract_number = ProtoField.new("First Leg Contract Number", "asx.securities.t24.itch.v1.13.firstlegcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.highest_trade = ProtoField.new("Highest Trade", "asx.securities.t24.itch.v1.13.highesttrade", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.highest_traded_price = ProtoField.new("Highest Traded Price", "asx.securities.t24.itch.v1.13.highesttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_asx_securities_t24_itch_v1_13.fields.instrument = ProtoField.new("Instrument", "asx.securities.t24.itch.v1.13.instrument", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.last_trade = ProtoField.new("Last Trade", "asx.securities.t24.itch.v1.13.lasttrade", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.last_traded_price = ProtoField.new("Last Traded Price", "asx.securities.t24.itch.v1.13.lasttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_asx_securities_t24_itch_v1_13.fields.last_traded_volume = ProtoField.new("Last Traded Volume", "asx.securities.t24.itch.v1.13.lasttradedvolume", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_asx_securities_t24_itch_v1_13.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.securities.t24.itch.v1.13.lasttradingdate", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.last_volume = ProtoField.new("Last Volume", "asx.securities.t24.itch.v1.13.lastvolume", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.legs = ProtoField.new("Legs", "asx.securities.t24.itch.v1.13.legs", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.lot_size_or_face_value = ProtoField.new("Lot Size Or Face Value", "asx.securities.t24.itch.v1.13.lotsizeorfacevalue", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.securities.t24.itch.v1.13.lowesttrade", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.lowest_traded_price = ProtoField.new("Lowest Traded Price", "asx.securities.t24.itch.v1.13.lowesttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_asx_securities_t24_itch_v1_13.fields.market_updates = ProtoField.new("Market Updates", "asx.securities.t24.itch.v1.13.marketupdates", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.match_number = ProtoField.new("Match Number", "asx.securities.t24.itch.v1.13.matchnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.maturity_value = ProtoField.new("Maturity Value", "asx.securities.t24.itch.v1.13.maturityvalue", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.message = ProtoField.new("Message", "asx.securities.t24.itch.v1.13.message", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.message_count = ProtoField.new("Message Count", "asx.securities.t24.itch.v1.13.messagecount", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.message_header = ProtoField.new("Message Header", "asx.securities.t24.itch.v1.13.messageheader", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.message_length = ProtoField.new("Message Length", "asx.securities.t24.itch.v1.13.messagelength", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.message_type = ProtoField.new("Message Type", "asx.securities.t24.itch.v1.13.messagetype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.open_interest = ProtoField.new("Open Interest", "asx.securities.t24.itch.v1.13.openinterest", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.opening_trade = ProtoField.new("Opening Trade", "asx.securities.t24.itch.v1.13.openingtrade", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.opening_trade_price = ProtoField.new("Opening Trade Price", "asx.securities.t24.itch.v1.13.openingtradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_asx_securities_t24_itch_v1_13.fields.option_type = ProtoField.new("Option Type", "asx.securities.t24.itch.v1.13.optiontype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.securities.t24.itch.v1.13.orderbookpriority", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.order_number = ProtoField.new("Order Number", "asx.securities.t24.itch.v1.13.ordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.packet = ProtoField.new("Packet", "asx.securities.t24.itch.v1.13.packet", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.t24.itch.v1.13.packetheader", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.payload = ProtoField.new("Payload", "asx.securities.t24.itch.v1.13.payload", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.payments_per_year = ProtoField.new("Payments Per Year", "asx.securities.t24.itch.v1.13.paymentsperyear", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.price = ProtoField.new("Price", "asx.securities.t24.itch.v1.13.price", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_decimal_position = ProtoField.new("Price Decimal Position", "asx.securities.t24.itch.v1.13.pricedecimalposition", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.securities.t24.itch.v1.13.pricefractionaldenominator", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.price_leg_1 = ProtoField.new("Price Leg 1", "asx.securities.t24.itch.v1.13.priceleg1", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_leg_2 = ProtoField.new("Price Leg 2", "asx.securities.t24.itch.v1.13.priceleg2", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_leg_3 = ProtoField.new("Price Leg 3", "asx.securities.t24.itch.v1.13.priceleg3", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_leg_4 = ProtoField.new("Price Leg 4", "asx.securities.t24.itch.v1.13.priceleg4", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_leg_5 = ProtoField.new("Price Leg 5", "asx.securities.t24.itch.v1.13.priceleg5", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_leg_6 = ProtoField.new("Price Leg 6", "asx.securities.t24.itch.v1.13.priceleg6", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.securities.t24.itch.v1.13.priceminimumtick", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.primary_ratio = ProtoField.new("Primary Ratio", "asx.securities.t24.itch.v1.13.primaryratio", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.printable = ProtoField.new("Printable", "asx.securities.t24.itch.v1.13.printable", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.securities.t24.itch.v1.13.priordaysettlement", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.protocol_version = ProtoField.new("Protocol Version", "asx.securities.t24.itch.v1.13.protocolversion", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.quantity = ProtoField.new("Quantity", "asx.securities.t24.itch.v1.13.quantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.securities.t24.itch.v1.13.quantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_1 = ProtoField.new("Ratio Leg 1", "asx.securities.t24.itch.v1.13.ratioleg1", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_2 = ProtoField.new("Ratio Leg 2", "asx.securities.t24.itch.v1.13.ratioleg2", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_3 = ProtoField.new("Ratio Leg 3", "asx.securities.t24.itch.v1.13.ratioleg3", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_4 = ProtoField.new("Ratio Leg 4", "asx.securities.t24.itch.v1.13.ratioleg4", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_5 = ProtoField.new("Ratio Leg 5", "asx.securities.t24.itch.v1.13.ratioleg5", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_6 = ProtoField.new("Ratio Leg 6", "asx.securities.t24.itch.v1.13.ratioleg6", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.reserved = ProtoField.new("Reserved", "asx.securities.t24.itch.v1.13.reserved", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_asx_securities_t24_itch_v1_13.fields.second = ProtoField.new("Second", "asx.securities.t24.itch.v1.13.second", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.second_leg_contract_number = ProtoField.new("Second Leg Contract Number", "asx.securities.t24.itch.v1.13.secondlegcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.secondary_ratio = ProtoField.new("Secondary Ratio", "asx.securities.t24.itch.v1.13.secondaryratio", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.seller_contract_number = ProtoField.new("Seller Contract Number", "asx.securities.t24.itch.v1.13.sellercontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.seller_quantity_remaining = ProtoField.new("Seller Quantity Remaining", "asx.securities.t24.itch.v1.13.sellerquantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.selling_order_number = ProtoField.new("Selling Order Number", "asx.securities.t24.itch.v1.13.sellingordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.sequence_number = ProtoField.new("Sequence Number", "asx.securities.t24.itch.v1.13.sequencenumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.session = ProtoField.new("Session", "asx.securities.t24.itch.v1.13.session", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.session_week = ProtoField.new("Session Week", "asx.securities.t24.itch.v1.13.sessionweek", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.session_year = ProtoField.new("Session Year", "asx.securities.t24.itch.v1.13.sessionyear", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.settlement_price = ProtoField.new("Settlement Price", "asx.securities.t24.itch.v1.13.settlementprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.settlement_type = ProtoField.new("Settlement Type", "asx.securities.t24.itch.v1.13.settlementtype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side = ProtoField.new("Side", "asx.securities.t24.itch.v1.13.side", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_leg_1 = ProtoField.new("Side Leg 1", "asx.securities.t24.itch.v1.13.sideleg1", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_leg_2 = ProtoField.new("Side Leg 2", "asx.securities.t24.itch.v1.13.sideleg2", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_leg_3 = ProtoField.new("Side Leg 3", "asx.securities.t24.itch.v1.13.sideleg3", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_leg_4 = ProtoField.new("Side Leg 4", "asx.securities.t24.itch.v1.13.sideleg4", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_leg_5 = ProtoField.new("Side Leg 5", "asx.securities.t24.itch.v1.13.sideleg5", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_leg_6 = ProtoField.new("Side Leg 6", "asx.securities.t24.itch.v1.13.sideleg6", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_of_buyer = ProtoField.new("Side Of Buyer", "asx.securities.t24.itch.v1.13.sideofbuyer", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_of_seller = ProtoField.new("Side Of Seller", "asx.securities.t24.itch.v1.13.sideofseller", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.source_id = ProtoField.new("Source Id", "asx.securities.t24.itch.v1.13.sourceid", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.spread_trade_price = ProtoField.new("Spread Trade Price", "asx.securities.t24.itch.v1.13.spreadtradeprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.strike = ProtoField.new("Strike", "asx.securities.t24.itch.v1.13.strike", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.strike_price_decimal_position = ProtoField.new("Strike Price Decimal Position", "asx.securities.t24.itch.v1.13.strikepricedecimalposition", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.strike_price_fractional_denominator = ProtoField.new("Strike Price Fractional Denominator", "asx.securities.t24.itch.v1.13.strikepricefractionaldenominator", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.strike_price_minimum_tick = ProtoField.new("Strike Price Minimum Tick", "asx.securities.t24.itch.v1.13.strikepriceminimumtick", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.text_message = ProtoField.new("Text Message", "asx.securities.t24.itch.v1.13.textmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.timestamp = ProtoField.new("Timestamp", "asx.securities.t24.itch.v1.13.timestamp", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.total_traded_volume = ProtoField.new("Total Traded Volume", "asx.securities.t24.itch.v1.13.totaltradedvolume", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.total_traded_volume_and_total_trades = ProtoField.new("Total Traded Volume and Total Trades", "asx.securities.t24.itch.v1.13.totaltradedvolumeandtotaltrades", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_asx_securities_t24_itch_v1_13.fields.total_trades = ProtoField.new("Total Trades", "asx.securities.t24.itch.v1.13.totaltrades", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.trade_date = ProtoField.new("Trade Date", "asx.securities.t24.itch.v1.13.tradedate", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.t24.itch.v1.13.tradeprice", ftypes.INT32)
omi_asx_securities_t24_itch_v1_13.fields.trade_side_of_leg = ProtoField.new("Trade Side Of Leg", "asx.securities.t24.itch.v1.13.tradesideofleg", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_side_of_non_custom_order = ProtoField.new("Trade Side Of Non Custom Order", "asx.securities.t24.itch.v1.13.tradesideofnoncustomorder", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_type = ProtoField.new("Trade Type", "asx.securities.t24.itch.v1.13.tradetype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.traded_contract_number = ProtoField.new("Traded Contract Number", "asx.securities.t24.itch.v1.13.tradedcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.trading_service = ProtoField.new("Trading Service", "asx.securities.t24.itch.v1.13.tradingservice", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trading_status = ProtoField.new("Trading Status", "asx.securities.t24.itch.v1.13.tradingstatus", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.underlying_contract_number = ProtoField.new("Underlying Contract Number", "asx.securities.t24.itch.v1.13.underlyingcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.voi_trade_date = ProtoField.new("Voi Trade Date", "asx.securities.t24.itch.v1.13.voitradedate", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.volatility = ProtoField.new("Volatility", "asx.securities.t24.itch.v1.13.volatility", ftypes.UINT32)

-- Asx Securities T24 Itch 1.13 messages
omi_asx_securities_t24_itch_v1_13.fields.ad_hoc_text = ProtoField.new("Ad Hoc Text", "asx.securities.t24.itch.v1.13.adhoctext", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.anomalous_order_threshold_publish = ProtoField.new("Anomalous Order Threshold Publish", "asx.securities.t24.itch.v1.13.anomalousorderthresholdpublish", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_executed = ProtoField.new("Custom Market Executed", "asx.securities.t24.itch.v1.13.custommarketexecuted", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_added = ProtoField.new("Custom Market Order Added", "asx.securities.t24.itch.v1.13.custommarketorderadded", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_deleted = ProtoField.new("Custom Market Order Deleted", "asx.securities.t24.itch.v1.13.custommarketorderdeleted", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_replaced = ProtoField.new("Custom Market Order Replaced", "asx.securities.t24.itch.v1.13.custommarketorderreplaced", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_trade = ProtoField.new("Custom Market Trade", "asx.securities.t24.itch.v1.13.custommarkettrade", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price_auction_info = ProtoField.new("Equilibrium Price Auction Info", "asx.securities.t24.itch.v1.13.equilibriumpriceauctioninfo", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.future_symbol_directory = ProtoField.new("Future Symbol Directory", "asx.securities.t24.itch.v1.13.futuresymboldirectory", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.implied_order_added = ProtoField.new("Implied Order Added", "asx.securities.t24.itch.v1.13.impliedorderadded", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.implied_order_deleted = ProtoField.new("Implied Order Deleted", "asx.securities.t24.itch.v1.13.impliedorderdeleted", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.implied_order_replaced = ProtoField.new("Implied Order Replaced", "asx.securities.t24.itch.v1.13.impliedorderreplaced", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.market_settlement = ProtoField.new("Market Settlement", "asx.securities.t24.itch.v1.13.marketsettlement", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.open_high_low_last_trade_adjustment = ProtoField.new("Open High Low Last Trade Adjustment", "asx.securities.t24.itch.v1.13.openhighlowlasttradeadjustment", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.option_symbol_directory = ProtoField.new("Option Symbol Directory", "asx.securities.t24.itch.v1.13.optionsymboldirectory", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_added = ProtoField.new("Order Added", "asx.securities.t24.itch.v1.13.orderadded", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_book_state = ProtoField.new("Order Book State", "asx.securities.t24.itch.v1.13.orderbookstate", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_deleted = ProtoField.new("Order Deleted", "asx.securities.t24.itch.v1.13.orderdeleted", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_executed = ProtoField.new("Order Executed", "asx.securities.t24.itch.v1.13.orderexecuted", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_executed_with_price = ProtoField.new("Order Executed With Price", "asx.securities.t24.itch.v1.13.orderexecutedwithprice", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_replaced = ProtoField.new("Order Replaced", "asx.securities.t24.itch.v1.13.orderreplaced", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_volume_cancelled = ProtoField.new("Order Volume Cancelled", "asx.securities.t24.itch.v1.13.ordervolumecancelled", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.request_for_quote = ProtoField.new("Request For Quote", "asx.securities.t24.itch.v1.13.requestforquote", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.spread_executed = ProtoField.new("Spread Executed", "asx.securities.t24.itch.v1.13.spreadexecuted", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.spread_symbol_directory = ProtoField.new("Spread Symbol Directory", "asx.securities.t24.itch.v1.13.spreadsymboldirectory", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.system_event = ProtoField.new("System Event", "asx.securities.t24.itch.v1.13.systemevent", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.time_message = ProtoField.new("Time Message", "asx.securities.t24.itch.v1.13.timemessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "asx.securities.t24.itch.v1.13.tradecancellation", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_spread_execution_chain = ProtoField.new("Trade Spread Execution Chain", "asx.securities.t24.itch.v1.13.tradespreadexecutionchain", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.volume_and_open_interest = ProtoField.new("Volume And Open Interest", "asx.securities.t24.itch.v1.13.volumeandopeninterest", ftypes.STRING)

-- Asx Securities T24 Itch 1.13 generated fields
omi_asx_securities_t24_itch_v1_13.fields.message_index = ProtoField.new("Message Index", "asx.securities.t24.itch.v1.13.messageindex", ftypes.UINT16)

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
omi_asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text = Pref.bool("Show Ad Hoc Text", show.ad_hoc_text, "Parse and add Ad Hoc Text to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish = Pref.bool("Show Anomalous Order Threshold Publish", show.anomalous_order_threshold_publish, "Parse and add Anomalous Order Threshold Publish to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed = Pref.bool("Show Custom Market Executed", show.custom_market_executed, "Parse and add Custom Market Executed to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added = Pref.bool("Show Custom Market Order Added", show.custom_market_order_added, "Parse and add Custom Market Order Added to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted = Pref.bool("Show Custom Market Order Deleted", show.custom_market_order_deleted, "Parse and add Custom Market Order Deleted to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced = Pref.bool("Show Custom Market Order Replaced", show.custom_market_order_replaced, "Parse and add Custom Market Order Replaced to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade = Pref.bool("Show Custom Market Trade", show.custom_market_trade, "Parse and add Custom Market Trade to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info = Pref.bool("Show Equilibrium Price Auction Info", show.equilibrium_price_auction_info, "Parse and add Equilibrium Price Auction Info to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory = Pref.bool("Show Future Symbol Directory", show.future_symbol_directory, "Parse and add Future Symbol Directory to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_added = Pref.bool("Show Implied Order Added", show.implied_order_added, "Parse and add Implied Order Added to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted = Pref.bool("Show Implied Order Deleted", show.implied_order_deleted, "Parse and add Implied Order Deleted to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced = Pref.bool("Show Implied Order Replaced", show.implied_order_replaced, "Parse and add Implied Order Replaced to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_market_settlement = Pref.bool("Show Market Settlement", show.market_settlement, "Parse and add Market Settlement to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_market_updates = Pref.bool("Show Market Updates", show.market_updates, "Parse and add Market Updates to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment = Pref.bool("Show Open High Low Last Trade Adjustment", show.open_high_low_last_trade_adjustment, "Parse and add Open High Low Last Trade Adjustment to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory = Pref.bool("Show Option Symbol Directory", show.option_symbol_directory, "Parse and add Option Symbol Directory to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_added = Pref.bool("Show Order Added", show.order_added, "Parse and add Order Added to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_book_state = Pref.bool("Show Order Book State", show.order_book_state, "Parse and add Order Book State to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_deleted = Pref.bool("Show Order Deleted", show.order_deleted, "Parse and add Order Deleted to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed = Pref.bool("Show Order Executed", show.order_executed, "Parse and add Order Executed to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price = Pref.bool("Show Order Executed With Price", show.order_executed_with_price, "Parse and add Order Executed With Price to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_replaced = Pref.bool("Show Order Replaced", show.order_replaced, "Parse and add Order Replaced to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled = Pref.bool("Show Order Volume Cancelled", show.order_volume_cancelled, "Parse and add Order Volume Cancelled to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_request_for_quote = Pref.bool("Show Request For Quote", show.request_for_quote, "Parse and add Request For Quote to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_session = Pref.bool("Show Session", show.session, "Parse and add Session to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_spread_executed = Pref.bool("Show Spread Executed", show.spread_executed, "Parse and add Spread Executed to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory = Pref.bool("Show Spread Symbol Directory", show.spread_symbol_directory, "Parse and add Spread Symbol Directory to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_system_event = Pref.bool("Show System Event", show.system_event, "Parse and add System Event to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation = Pref.bool("Show Trade Cancellation", show.trade_cancellation, "Parse and add Trade Cancellation to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain = Pref.bool("Show Trade Spread Execution Chain", show.trade_spread_execution_chain, "Parse and add Trade Spread Execution Chain to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest = Pref.bool("Show Volume And Open Interest", show.volume_and_open_interest, "Parse and add Volume And Open Interest to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_asx_securities_t24_itch_v1_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ad_hoc_text ~= omi_asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text then
    show.ad_hoc_text = omi_asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text
    changed = true
  end
  if show.anomalous_order_threshold_publish ~= omi_asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish then
    show.anomalous_order_threshold_publish = omi_asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish
    changed = true
  end
  if show.custom_market_executed ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed then
    show.custom_market_executed = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed
    changed = true
  end
  if show.custom_market_order_added ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added then
    show.custom_market_order_added = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added
    changed = true
  end
  if show.custom_market_order_deleted ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted then
    show.custom_market_order_deleted = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted
    changed = true
  end
  if show.custom_market_order_replaced ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced then
    show.custom_market_order_replaced = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced
    changed = true
  end
  if show.custom_market_trade ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade then
    show.custom_market_trade = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade
    changed = true
  end
  if show.equilibrium_price_auction_info ~= omi_asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info then
    show.equilibrium_price_auction_info = omi_asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info
    changed = true
  end
  if show.future_symbol_directory ~= omi_asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory then
    show.future_symbol_directory = omi_asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory
    changed = true
  end
  if show.implied_order_added ~= omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_added then
    show.implied_order_added = omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_added
    changed = true
  end
  if show.implied_order_deleted ~= omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted then
    show.implied_order_deleted = omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted
    changed = true
  end
  if show.implied_order_replaced ~= omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced then
    show.implied_order_replaced = omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced
    changed = true
  end
  if show.market_settlement ~= omi_asx_securities_t24_itch_v1_13.prefs.show_market_settlement then
    show.market_settlement = omi_asx_securities_t24_itch_v1_13.prefs.show_market_settlement
    changed = true
  end
  if show.market_updates ~= omi_asx_securities_t24_itch_v1_13.prefs.show_market_updates then
    show.market_updates = omi_asx_securities_t24_itch_v1_13.prefs.show_market_updates
    changed = true
  end
  if show.message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_message then
    show.message = omi_asx_securities_t24_itch_v1_13.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_asx_securities_t24_itch_v1_13.prefs.show_message_header then
    show.message_header = omi_asx_securities_t24_itch_v1_13.prefs.show_message_header
    changed = true
  end
  if show.open_high_low_last_trade_adjustment ~= omi_asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment then
    show.open_high_low_last_trade_adjustment = omi_asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment
    changed = true
  end
  if show.option_symbol_directory ~= omi_asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory then
    show.option_symbol_directory = omi_asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory
    changed = true
  end
  if show.order_added ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_added then
    show.order_added = omi_asx_securities_t24_itch_v1_13.prefs.show_order_added
    changed = true
  end
  if show.order_book_state ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_book_state then
    show.order_book_state = omi_asx_securities_t24_itch_v1_13.prefs.show_order_book_state
    changed = true
  end
  if show.order_deleted ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_deleted then
    show.order_deleted = omi_asx_securities_t24_itch_v1_13.prefs.show_order_deleted
    changed = true
  end
  if show.order_executed ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed then
    show.order_executed = omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed
    changed = true
  end
  if show.order_executed_with_price ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price then
    show.order_executed_with_price = omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price
    changed = true
  end
  if show.order_replaced ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_replaced then
    show.order_replaced = omi_asx_securities_t24_itch_v1_13.prefs.show_order_replaced
    changed = true
  end
  if show.order_volume_cancelled ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled then
    show.order_volume_cancelled = omi_asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled
    changed = true
  end
  if show.packet ~= omi_asx_securities_t24_itch_v1_13.prefs.show_packet then
    show.packet = omi_asx_securities_t24_itch_v1_13.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_asx_securities_t24_itch_v1_13.prefs.show_packet_header then
    show.packet_header = omi_asx_securities_t24_itch_v1_13.prefs.show_packet_header
    changed = true
  end
  if show.request_for_quote ~= omi_asx_securities_t24_itch_v1_13.prefs.show_request_for_quote then
    show.request_for_quote = omi_asx_securities_t24_itch_v1_13.prefs.show_request_for_quote
    changed = true
  end
  if show.session ~= omi_asx_securities_t24_itch_v1_13.prefs.show_session then
    show.session = omi_asx_securities_t24_itch_v1_13.prefs.show_session
    changed = true
  end
  if show.spread_executed ~= omi_asx_securities_t24_itch_v1_13.prefs.show_spread_executed then
    show.spread_executed = omi_asx_securities_t24_itch_v1_13.prefs.show_spread_executed
    changed = true
  end
  if show.spread_symbol_directory ~= omi_asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory then
    show.spread_symbol_directory = omi_asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory
    changed = true
  end
  if show.system_event ~= omi_asx_securities_t24_itch_v1_13.prefs.show_system_event then
    show.system_event = omi_asx_securities_t24_itch_v1_13.prefs.show_system_event
    changed = true
  end
  if show.time_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_time_message then
    show.time_message = omi_asx_securities_t24_itch_v1_13.prefs.show_time_message
    changed = true
  end
  if show.trade_cancellation ~= omi_asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation then
    show.trade_cancellation = omi_asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation
    changed = true
  end
  if show.trade_spread_execution_chain ~= omi_asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain then
    show.trade_spread_execution_chain = omi_asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain
    changed = true
  end
  if show.volume_and_open_interest ~= omi_asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest then
    show.volume_and_open_interest = omi_asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest
    changed = true
  end
  if show.payload ~= omi_asx_securities_t24_itch_v1_13.prefs.show_payload then
    show.payload = omi_asx_securities_t24_itch_v1_13.prefs.show_payload
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

-- Voi Trade Date
asx_securities_t24_itch_v1_13.voi_trade_date = {}

-- Size: Voi Trade Date
asx_securities_t24_itch_v1_13.voi_trade_date.size = 2

-- Display: Voi Trade Date
asx_securities_t24_itch_v1_13.voi_trade_date.display = function(value)
  return "Voi Trade Date: "..value
end

-- Dissect: Voi Trade Date
asx_securities_t24_itch_v1_13.voi_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.voi_trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.voi_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.voi_trade_date, range, value, display)

  return offset + length, value
end

-- Open Interest
asx_securities_t24_itch_v1_13.open_interest = {}

-- Size: Open Interest
asx_securities_t24_itch_v1_13.open_interest.size = 4

-- Display: Open Interest
asx_securities_t24_itch_v1_13.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
asx_securities_t24_itch_v1_13.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Cumulative Volume
asx_securities_t24_itch_v1_13.cumulative_volume = {}

-- Size: Cumulative Volume
asx_securities_t24_itch_v1_13.cumulative_volume.size = 4

-- Display: Cumulative Volume
asx_securities_t24_itch_v1_13.cumulative_volume.display = function(value)
  return "Cumulative Volume: "..value
end

-- Dissect: Cumulative Volume
asx_securities_t24_itch_v1_13.cumulative_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.cumulative_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.cumulative_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.cumulative_volume, range, value, display)

  return offset + length, value
end

-- Contract Number
asx_securities_t24_itch_v1_13.contract_number = {}

-- Size: Contract Number
asx_securities_t24_itch_v1_13.contract_number.size = 4

-- Display: Contract Number
asx_securities_t24_itch_v1_13.contract_number.display = function(value)
  return "Contract Number: "..value
end

-- Dissect: Contract Number
asx_securities_t24_itch_v1_13.contract_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number, range, value, display)

  return offset + length, value
end

-- Trade Date
asx_securities_t24_itch_v1_13.trade_date = {}

-- Size: Trade Date
asx_securities_t24_itch_v1_13.trade_date.size = 2

-- Display: Trade Date
asx_securities_t24_itch_v1_13.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
asx_securities_t24_itch_v1_13.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Timestamp
asx_securities_t24_itch_v1_13.timestamp = {}

-- Size: Timestamp
asx_securities_t24_itch_v1_13.timestamp.size = 4

-- Display: Timestamp
asx_securities_t24_itch_v1_13.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
asx_securities_t24_itch_v1_13.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Volume And Open Interest
asx_securities_t24_itch_v1_13.volume_and_open_interest = {}

-- Calculate size of: Volume And Open Interest
asx_securities_t24_itch_v1_13.volume_and_open_interest.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.cumulative_volume.size

  index = index + asx_securities_t24_itch_v1_13.open_interest.size

  index = index + asx_securities_t24_itch_v1_13.voi_trade_date.size

  return index
end

-- Display: Volume And Open Interest
asx_securities_t24_itch_v1_13.volume_and_open_interest.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volume And Open Interest
asx_securities_t24_itch_v1_13.volume_and_open_interest.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Cumulative Volume: 4 Byte Unsigned Fixed Width Integer
  index, cumulative_volume = asx_securities_t24_itch_v1_13.cumulative_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = asx_securities_t24_itch_v1_13.open_interest.dissect(buffer, index, packet, parent)

  -- Voi Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, voi_trade_date = asx_securities_t24_itch_v1_13.voi_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume And Open Interest
asx_securities_t24_itch_v1_13.volume_and_open_interest.dissect = function(buffer, offset, packet, parent)
  if show.volume_and_open_interest then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.volume_and_open_interest, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.volume_and_open_interest.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.volume_and_open_interest.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.volume_and_open_interest.fields(buffer, offset, packet, parent)
  end
end

-- Etr Lower Price
asx_securities_t24_itch_v1_13.etr_lower_price = {}

-- Size: Etr Lower Price
asx_securities_t24_itch_v1_13.etr_lower_price.size = 4

-- Display: Etr Lower Price
asx_securities_t24_itch_v1_13.etr_lower_price.display = function(value)
  return "Etr Lower Price: "..value
end

-- Dissect: Etr Lower Price
asx_securities_t24_itch_v1_13.etr_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.etr_lower_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.etr_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.etr_lower_price, range, value, display)

  return offset + length, value
end

-- Etr Upper Price
asx_securities_t24_itch_v1_13.etr_upper_price = {}

-- Size: Etr Upper Price
asx_securities_t24_itch_v1_13.etr_upper_price.size = 4

-- Display: Etr Upper Price
asx_securities_t24_itch_v1_13.etr_upper_price.display = function(value)
  return "Etr Upper Price: "..value
end

-- Dissect: Etr Upper Price
asx_securities_t24_itch_v1_13.etr_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.etr_upper_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.etr_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.etr_upper_price, range, value, display)

  return offset + length, value
end

-- Etr Price
asx_securities_t24_itch_v1_13.etr_price = {}

-- Size: Etr Price
asx_securities_t24_itch_v1_13.etr_price.size = 4

-- Display: Etr Price
asx_securities_t24_itch_v1_13.etr_price.display = function(value)
  return "Etr Price: "..value
end

-- Dissect: Etr Price
asx_securities_t24_itch_v1_13.etr_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.etr_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.etr_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.etr_price, range, value, display)

  return offset + length, value
end

-- Aot Lower Price
asx_securities_t24_itch_v1_13.aot_lower_price = {}

-- Size: Aot Lower Price
asx_securities_t24_itch_v1_13.aot_lower_price.size = 4

-- Display: Aot Lower Price
asx_securities_t24_itch_v1_13.aot_lower_price.display = function(value)
  return "Aot Lower Price: "..value
end

-- Dissect: Aot Lower Price
asx_securities_t24_itch_v1_13.aot_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.aot_lower_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.aot_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.aot_lower_price, range, value, display)

  return offset + length, value
end

-- Aot Upper Price
asx_securities_t24_itch_v1_13.aot_upper_price = {}

-- Size: Aot Upper Price
asx_securities_t24_itch_v1_13.aot_upper_price.size = 4

-- Display: Aot Upper Price
asx_securities_t24_itch_v1_13.aot_upper_price.display = function(value)
  return "Aot Upper Price: "..value
end

-- Dissect: Aot Upper Price
asx_securities_t24_itch_v1_13.aot_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.aot_upper_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.aot_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.aot_upper_price, range, value, display)

  return offset + length, value
end

-- Aot Price
asx_securities_t24_itch_v1_13.aot_price = {}

-- Size: Aot Price
asx_securities_t24_itch_v1_13.aot_price.size = 4

-- Display: Aot Price
asx_securities_t24_itch_v1_13.aot_price.display = function(value)
  return "Aot Price: "..value
end

-- Dissect: Aot Price
asx_securities_t24_itch_v1_13.aot_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.aot_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.aot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.aot_price, range, value, display)

  return offset + length, value
end

-- Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish = {}

-- Calculate size of: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.aot_price.size

  index = index + asx_securities_t24_itch_v1_13.aot_upper_price.size

  index = index + asx_securities_t24_itch_v1_13.aot_lower_price.size

  index = index + asx_securities_t24_itch_v1_13.etr_price.size

  index = index + asx_securities_t24_itch_v1_13.etr_upper_price.size

  index = index + asx_securities_t24_itch_v1_13.etr_lower_price.size

  return index
end

-- Display: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Aot Price: 4 Byte Signed Fixed Width Integer
  index, aot_price = asx_securities_t24_itch_v1_13.aot_price.dissect(buffer, index, packet, parent)

  -- Aot Upper Price: 4 Byte Signed Fixed Width Integer
  index, aot_upper_price = asx_securities_t24_itch_v1_13.aot_upper_price.dissect(buffer, index, packet, parent)

  -- Aot Lower Price: 4 Byte Signed Fixed Width Integer
  index, aot_lower_price = asx_securities_t24_itch_v1_13.aot_lower_price.dissect(buffer, index, packet, parent)

  -- Etr Price: 4 Byte Signed Fixed Width Integer
  index, etr_price = asx_securities_t24_itch_v1_13.etr_price.dissect(buffer, index, packet, parent)

  -- Etr Upper Price: 4 Byte Signed Fixed Width Integer
  index, etr_upper_price = asx_securities_t24_itch_v1_13.etr_upper_price.dissect(buffer, index, packet, parent)

  -- Etr Lower Price: 4 Byte Signed Fixed Width Integer
  index, etr_lower_price = asx_securities_t24_itch_v1_13.etr_lower_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.dissect = function(buffer, offset, packet, parent)
  if show.anomalous_order_threshold_publish then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.anomalous_order_threshold_publish, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
asx_securities_t24_itch_v1_13.quantity = {}

-- Size: Quantity
asx_securities_t24_itch_v1_13.quantity.size = 4

-- Display: Quantity
asx_securities_t24_itch_v1_13.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_t24_itch_v1_13.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.quantity, range, value, display)

  return offset + length, value
end

-- Price
asx_securities_t24_itch_v1_13.price = {}

-- Size: Price
asx_securities_t24_itch_v1_13.price.size = 4

-- Display: Price
asx_securities_t24_itch_v1_13.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
asx_securities_t24_itch_v1_13.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price, range, value, display)

  return offset + length, value
end

-- Request For Quote
asx_securities_t24_itch_v1_13.request_for_quote = {}

-- Calculate size of: Request For Quote
asx_securities_t24_itch_v1_13.request_for_quote.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.price.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  return index
end

-- Display: Request For Quote
asx_securities_t24_itch_v1_13.request_for_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote
asx_securities_t24_itch_v1_13.request_for_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
asx_securities_t24_itch_v1_13.request_for_quote.dissect = function(buffer, offset, packet, parent)
  if show.request_for_quote then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.request_for_quote, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.request_for_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.request_for_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.request_for_quote.fields(buffer, offset, packet, parent)
  end
end

-- Text Message
asx_securities_t24_itch_v1_13.text_message = {}

-- Size: Text Message
asx_securities_t24_itch_v1_13.text_message.size = 100

-- Display: Text Message
asx_securities_t24_itch_v1_13.text_message.display = function(value)
  return "Text Message: "..value
end

-- Dissect: Text Message
asx_securities_t24_itch_v1_13.text_message.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.text_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13.text_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.text_message, range, value, display)

  return offset + length, value
end

-- Source Id
asx_securities_t24_itch_v1_13.source_id = {}

-- Size: Source Id
asx_securities_t24_itch_v1_13.source_id.size = 6

-- Display: Source Id
asx_securities_t24_itch_v1_13.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
asx_securities_t24_itch_v1_13.source_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.source_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.source_id, range, value, display)

  return offset + length, value
end

-- Ad Hoc Text
asx_securities_t24_itch_v1_13.ad_hoc_text = {}

-- Calculate size of: Ad Hoc Text
asx_securities_t24_itch_v1_13.ad_hoc_text.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.source_id.size

  index = index + asx_securities_t24_itch_v1_13.text_message.size

  return index
end

-- Display: Ad Hoc Text
asx_securities_t24_itch_v1_13.ad_hoc_text.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ad Hoc Text
asx_securities_t24_itch_v1_13.ad_hoc_text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Source Id: 6 Byte Ascii String
  index, source_id = asx_securities_t24_itch_v1_13.source_id.dissect(buffer, index, packet, parent)

  -- Text Message: 100 Byte Ascii String
  index, text_message = asx_securities_t24_itch_v1_13.text_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ad Hoc Text
asx_securities_t24_itch_v1_13.ad_hoc_text.dissect = function(buffer, offset, packet, parent)
  if show.ad_hoc_text then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.ad_hoc_text, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.ad_hoc_text.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.ad_hoc_text.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.ad_hoc_text.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Type
asx_securities_t24_itch_v1_13.settlement_type = {}

-- Size: Settlement Type
asx_securities_t24_itch_v1_13.settlement_type.size = 1

-- Display: Settlement Type
asx_securities_t24_itch_v1_13.settlement_type.display = function(value)
  return "Settlement Type: "..value
end

-- Dissect: Settlement Type
asx_securities_t24_itch_v1_13.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Volatility
asx_securities_t24_itch_v1_13.volatility = {}

-- Size: Volatility
asx_securities_t24_itch_v1_13.volatility.size = 4

-- Display: Volatility
asx_securities_t24_itch_v1_13.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
asx_securities_t24_itch_v1_13.volatility.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.volatility.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.volatility, range, value, display)

  return offset + length, value
end

-- Settlement Price
asx_securities_t24_itch_v1_13.settlement_price = {}

-- Size: Settlement Price
asx_securities_t24_itch_v1_13.settlement_price.size = 4

-- Display: Settlement Price
asx_securities_t24_itch_v1_13.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
asx_securities_t24_itch_v1_13.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.settlement_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Market Settlement
asx_securities_t24_itch_v1_13.market_settlement = {}

-- Calculate size of: Market Settlement
asx_securities_t24_itch_v1_13.market_settlement.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.settlement_price.size

  index = index + asx_securities_t24_itch_v1_13.volatility.size

  index = index + asx_securities_t24_itch_v1_13.settlement_type.size

  return index
end

-- Display: Market Settlement
asx_securities_t24_itch_v1_13.market_settlement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Settlement
asx_securities_t24_itch_v1_13.market_settlement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Settlement Price: 4 Byte Signed Fixed Width Integer
  index, settlement_price = asx_securities_t24_itch_v1_13.settlement_price.dissect(buffer, index, packet, parent)

  -- Volatility: 4 Byte Unsigned Fixed Width Integer
  index, volatility = asx_securities_t24_itch_v1_13.volatility.dissect(buffer, index, packet, parent)

  -- Settlement Type: 1 Byte Ascii String
  index, settlement_type = asx_securities_t24_itch_v1_13.settlement_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement
asx_securities_t24_itch_v1_13.market_settlement.dissect = function(buffer, offset, packet, parent)
  if show.market_settlement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.market_settlement, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.market_settlement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.market_settlement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.market_settlement.fields(buffer, offset, packet, parent)
  end
end

-- Opening Trade Price
asx_securities_t24_itch_v1_13.opening_trade_price = {}

-- Highest Traded Price
asx_securities_t24_itch_v1_13.highest_traded_price = {}

-- Lowest Traded Price
asx_securities_t24_itch_v1_13.lowest_traded_price = {}

-- Total Traded Volume and Total Trades
asx_securities_t24_itch_v1_13.total_traded_volume_and_total_trades = {}

-- Last Traded Price
asx_securities_t24_itch_v1_13.last_traded_price = {}

-- Last Traded Volume
asx_securities_t24_itch_v1_13.last_traded_volume = {}

-- Reserved
asx_securities_t24_itch_v1_13.reserved = {}

-- Market Updates
asx_securities_t24_itch_v1_13.market_updates = {}

-- Size: Market Updates
asx_securities_t24_itch_v1_13.market_updates.size = 1

-- Display: Market Updates
asx_securities_t24_itch_v1_13.market_updates.display = function(buffer, packet, parent)
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
asx_securities_t24_itch_v1_13.market_updates.bits = function(buffer, offset, packet, parent)

  -- Reserved: 2 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.reserved, buffer(offset, 1))

  -- Last Traded Volume: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_traded_volume, buffer(offset, 1))

  -- Last Traded Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_traded_price, buffer(offset, 1))

  -- Total Traded Volume and Total Trades: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.total_traded_volume_and_total_trades, buffer(offset, 1))

  -- Lowest Traded Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.lowest_traded_price, buffer(offset, 1))

  -- Highest Traded Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.highest_traded_price, buffer(offset, 1))

  -- Opening Trade Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.opening_trade_price, buffer(offset, 1))
end

-- Dissect: Market Updates
asx_securities_t24_itch_v1_13.market_updates.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = asx_securities_t24_itch_v1_13.market_updates.display(range, packet, parent)
  local element = parent:add(omi_asx_securities_t24_itch_v1_13.fields.market_updates, range, display)

  if show.market_updates then
    asx_securities_t24_itch_v1_13.market_updates.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Total Trades
asx_securities_t24_itch_v1_13.total_trades = {}

-- Size: Total Trades
asx_securities_t24_itch_v1_13.total_trades.size = 4

-- Display: Total Trades
asx_securities_t24_itch_v1_13.total_trades.display = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
asx_securities_t24_itch_v1_13.total_trades.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.total_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.total_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Total Traded Volume
asx_securities_t24_itch_v1_13.total_traded_volume = {}

-- Size: Total Traded Volume
asx_securities_t24_itch_v1_13.total_traded_volume.size = 4

-- Display: Total Traded Volume
asx_securities_t24_itch_v1_13.total_traded_volume.display = function(value)
  return "Total Traded Volume: "..value
end

-- Dissect: Total Traded Volume
asx_securities_t24_itch_v1_13.total_traded_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.total_traded_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.total_traded_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.total_traded_volume, range, value, display)

  return offset + length, value
end

-- Last Volume
asx_securities_t24_itch_v1_13.last_volume = {}

-- Size: Last Volume
asx_securities_t24_itch_v1_13.last_volume.size = 4

-- Display: Last Volume
asx_securities_t24_itch_v1_13.last_volume.display = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
asx_securities_t24_itch_v1_13.last_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.last_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.last_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_volume, range, value, display)

  return offset + length, value
end

-- Last Trade
asx_securities_t24_itch_v1_13.last_trade = {}

-- Size: Last Trade
asx_securities_t24_itch_v1_13.last_trade.size = 4

-- Display: Last Trade
asx_securities_t24_itch_v1_13.last_trade.display = function(value)
  return "Last Trade: "..value
end

-- Dissect: Last Trade
asx_securities_t24_itch_v1_13.last_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.last_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.last_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_trade, range, value, display)

  return offset + length, value
end

-- Lowest Trade
asx_securities_t24_itch_v1_13.lowest_trade = {}

-- Size: Lowest Trade
asx_securities_t24_itch_v1_13.lowest_trade.size = 4

-- Display: Lowest Trade
asx_securities_t24_itch_v1_13.lowest_trade.display = function(value)
  return "Lowest Trade: "..value
end

-- Dissect: Lowest Trade
asx_securities_t24_itch_v1_13.lowest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.lowest_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.lowest_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.lowest_trade, range, value, display)

  return offset + length, value
end

-- Highest Trade
asx_securities_t24_itch_v1_13.highest_trade = {}

-- Size: Highest Trade
asx_securities_t24_itch_v1_13.highest_trade.size = 4

-- Display: Highest Trade
asx_securities_t24_itch_v1_13.highest_trade.display = function(value)
  return "Highest Trade: "..value
end

-- Dissect: Highest Trade
asx_securities_t24_itch_v1_13.highest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.highest_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.highest_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.highest_trade, range, value, display)

  return offset + length, value
end

-- Opening Trade
asx_securities_t24_itch_v1_13.opening_trade = {}

-- Size: Opening Trade
asx_securities_t24_itch_v1_13.opening_trade.size = 4

-- Display: Opening Trade
asx_securities_t24_itch_v1_13.opening_trade.display = function(value)
  return "Opening Trade: "..value
end

-- Dissect: Opening Trade
asx_securities_t24_itch_v1_13.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.opening_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment = {}

-- Calculate size of: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.opening_trade.size

  index = index + asx_securities_t24_itch_v1_13.highest_trade.size

  index = index + asx_securities_t24_itch_v1_13.lowest_trade.size

  index = index + asx_securities_t24_itch_v1_13.last_trade.size

  index = index + asx_securities_t24_itch_v1_13.last_volume.size

  index = index + asx_securities_t24_itch_v1_13.total_traded_volume.size

  index = index + asx_securities_t24_itch_v1_13.total_trades.size

  index = index + asx_securities_t24_itch_v1_13.market_updates.size

  return index
end

-- Display: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Opening Trade: 4 Byte Signed Fixed Width Integer
  index, opening_trade = asx_securities_t24_itch_v1_13.opening_trade.dissect(buffer, index, packet, parent)

  -- Highest Trade: 4 Byte Signed Fixed Width Integer
  index, highest_trade = asx_securities_t24_itch_v1_13.highest_trade.dissect(buffer, index, packet, parent)

  -- Lowest Trade: 4 Byte Signed Fixed Width Integer
  index, lowest_trade = asx_securities_t24_itch_v1_13.lowest_trade.dissect(buffer, index, packet, parent)

  -- Last Trade: 4 Byte Signed Fixed Width Integer
  index, last_trade = asx_securities_t24_itch_v1_13.last_trade.dissect(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index, last_volume = asx_securities_t24_itch_v1_13.last_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_traded_volume = asx_securities_t24_itch_v1_13.total_traded_volume.dissect(buffer, index, packet, parent)

  -- Total Trades: 4 Byte Unsigned Fixed Width Integer
  index, total_trades = asx_securities_t24_itch_v1_13.total_trades.dissect(buffer, index, packet, parent)

  -- Market Updates: Struct of 7 fields
  index, market_updates = asx_securities_t24_itch_v1_13.market_updates.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low Last Trade Adjustment
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.dissect = function(buffer, offset, packet, parent)
  if show.open_high_low_last_trade_adjustment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.open_high_low_last_trade_adjustment, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.fields(buffer, offset, packet, parent)
  end
end

-- Best Ask Quantity
asx_securities_t24_itch_v1_13.best_ask_quantity = {}

-- Size: Best Ask Quantity
asx_securities_t24_itch_v1_13.best_ask_quantity.size = 4

-- Display: Best Ask Quantity
asx_securities_t24_itch_v1_13.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
asx_securities_t24_itch_v1_13.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
asx_securities_t24_itch_v1_13.best_bid_quantity = {}

-- Size: Best Bid Quantity
asx_securities_t24_itch_v1_13.best_bid_quantity.size = 4

-- Display: Best Bid Quantity
asx_securities_t24_itch_v1_13.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
asx_securities_t24_itch_v1_13.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Best Ask Price
asx_securities_t24_itch_v1_13.best_ask_price = {}

-- Size: Best Ask Price
asx_securities_t24_itch_v1_13.best_ask_price.size = 4

-- Display: Best Ask Price
asx_securities_t24_itch_v1_13.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
asx_securities_t24_itch_v1_13.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.best_ask_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Bid Price
asx_securities_t24_itch_v1_13.best_bid_price = {}

-- Size: Best Bid Price
asx_securities_t24_itch_v1_13.best_bid_price.size = 4

-- Display: Best Bid Price
asx_securities_t24_itch_v1_13.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
asx_securities_t24_itch_v1_13.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
asx_securities_t24_itch_v1_13.equilibrium_price = {}

-- Size: Equilibrium Price
asx_securities_t24_itch_v1_13.equilibrium_price.size = 4

-- Display: Equilibrium Price
asx_securities_t24_itch_v1_13.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
asx_securities_t24_itch_v1_13.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info = {}

-- Calculate size of: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.equilibrium_price.size

  index = index + asx_securities_t24_itch_v1_13.best_bid_price.size

  index = index + asx_securities_t24_itch_v1_13.best_ask_price.size

  index = index + asx_securities_t24_itch_v1_13.best_bid_quantity.size

  index = index + asx_securities_t24_itch_v1_13.best_ask_quantity.size

  return index
end

-- Display: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: 4 Byte Signed Fixed Width Integer
  index, equilibrium_price = asx_securities_t24_itch_v1_13.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index, best_bid_price = asx_securities_t24_itch_v1_13.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: 4 Byte Signed Fixed Width Integer
  index, best_ask_price = asx_securities_t24_itch_v1_13.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_quantity = asx_securities_t24_itch_v1_13.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: 4 Byte Unsigned Fixed Width Integer
  index, best_ask_quantity = asx_securities_t24_itch_v1_13.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Auction Info
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.dissect = function(buffer, offset, packet, parent)
  if show.equilibrium_price_auction_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price_auction_info, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
asx_securities_t24_itch_v1_13.match_number = {}

-- Size: Match Number
asx_securities_t24_itch_v1_13.match_number.size = 4

-- Display: Match Number
asx_securities_t24_itch_v1_13.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
asx_securities_t24_itch_v1_13.match_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.match_number, range, value, display)

  return offset + length, value
end

-- Trade Cancellation
asx_securities_t24_itch_v1_13.trade_cancellation = {}

-- Calculate size of: Trade Cancellation
asx_securities_t24_itch_v1_13.trade_cancellation.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  return index
end

-- Display: Trade Cancellation
asx_securities_t24_itch_v1_13.trade_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation
asx_securities_t24_itch_v1_13.trade_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation
asx_securities_t24_itch_v1_13.trade_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancellation then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_cancellation, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.trade_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.trade_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.trade_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Printable
asx_securities_t24_itch_v1_13.printable = {}

-- Size: Printable
asx_securities_t24_itch_v1_13.printable.size = 1

-- Display: Printable
asx_securities_t24_itch_v1_13.printable.display = function(value)
  if value == "Y" then
    return "Printable: Yes (Y)"
  end
  if value == "N" then
    return "Printable: No (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
asx_securities_t24_itch_v1_13.printable.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.printable, range, value, display)

  return offset + length, value
end

-- Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order = {}

-- Size: Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.size = 1

-- Display: Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.display = function(value)
  return "Trade Side Of Non Custom Order: "..value
end

-- Dissect: Trade Side Of Non Custom Order
asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_side_of_non_custom_order, range, value, display)

  return offset + length, value
end

-- Traded Contract Number
asx_securities_t24_itch_v1_13.traded_contract_number = {}

-- Size: Traded Contract Number
asx_securities_t24_itch_v1_13.traded_contract_number.size = 4

-- Display: Traded Contract Number
asx_securities_t24_itch_v1_13.traded_contract_number.display = function(value)
  return "Traded Contract Number: "..value
end

-- Dissect: Traded Contract Number
asx_securities_t24_itch_v1_13.traded_contract_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.traded_contract_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.traded_contract_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.traded_contract_number, range, value, display)

  return offset + length, value
end

-- Trade Price
asx_securities_t24_itch_v1_13.trade_price = {}

-- Size: Trade Price
asx_securities_t24_itch_v1_13.trade_price.size = 4

-- Display: Trade Price
asx_securities_t24_itch_v1_13.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
asx_securities_t24_itch_v1_13.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Executed Quantity
asx_securities_t24_itch_v1_13.executed_quantity = {}

-- Size: Executed Quantity
asx_securities_t24_itch_v1_13.executed_quantity.size = 4

-- Display: Executed Quantity
asx_securities_t24_itch_v1_13.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_securities_t24_itch_v1_13.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Trade Type
asx_securities_t24_itch_v1_13.trade_type = {}

-- Size: Trade Type
asx_securities_t24_itch_v1_13.trade_type.size = 1

-- Display: Trade Type
asx_securities_t24_itch_v1_13.trade_type.display = function(value)
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
asx_securities_t24_itch_v1_13.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13.custom_market_quantity_remaining = {}

-- Size: Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.size = 4

-- Display: Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.display = function(value)
  return "Custom Market Quantity Remaining: "..value
end

-- Dissect: Custom Market Quantity Remaining
asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Custom Market Order Number
asx_securities_t24_itch_v1_13.custom_market_order_number = {}

-- Size: Custom Market Order Number
asx_securities_t24_itch_v1_13.custom_market_order_number.size = 8

-- Display: Custom Market Order Number
asx_securities_t24_itch_v1_13.custom_market_order_number.display = function(value)
  return "Custom Market Order Number: "..value
end

-- Dissect: Custom Market Order Number
asx_securities_t24_itch_v1_13.custom_market_order_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.custom_market_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13.custom_market_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_number, range, value, display)

  return offset + length, value
end

-- Quantity Remaining
asx_securities_t24_itch_v1_13.quantity_remaining = {}

-- Size: Quantity Remaining
asx_securities_t24_itch_v1_13.quantity_remaining.size = 4

-- Display: Quantity Remaining
asx_securities_t24_itch_v1_13.quantity_remaining.display = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
asx_securities_t24_itch_v1_13.quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Order Number
asx_securities_t24_itch_v1_13.order_number = {}

-- Size: Order Number
asx_securities_t24_itch_v1_13.order_number.size = 8

-- Display: Order Number
asx_securities_t24_itch_v1_13.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
asx_securities_t24_itch_v1_13.order_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_number, range, value, display)

  return offset + length, value
end

-- Side
asx_securities_t24_itch_v1_13.side = {}

-- Size: Side
asx_securities_t24_itch_v1_13.side.size = 1

-- Display: Side
asx_securities_t24_itch_v1_13.side.display = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_t24_itch_v1_13.side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side, range, value, display)

  return offset + length, value
end

-- Custom Market Trade
asx_securities_t24_itch_v1_13.custom_market_trade = {}

-- Calculate size of: Custom Market Trade
asx_securities_t24_itch_v1_13.custom_market_trade.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.custom_market_order_number.size

  index = index + asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.trade_type.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  index = index + asx_securities_t24_itch_v1_13.executed_quantity.size

  index = index + asx_securities_t24_itch_v1_13.trade_price.size

  index = index + asx_securities_t24_itch_v1_13.traded_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.size

  index = index + asx_securities_t24_itch_v1_13.printable.size

  return index
end

-- Display: Custom Market Trade
asx_securities_t24_itch_v1_13.custom_market_trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Trade
asx_securities_t24_itch_v1_13.custom_market_trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Custom Market Order Number: 8 Byte Unsigned Fixed Width Integer
  index, custom_market_order_number = asx_securities_t24_itch_v1_13.custom_market_order_number.dissect(buffer, index, packet, parent)

  -- Custom Market Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, custom_market_quantity_remaining = asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Trade Side Of Non Custom Order: 1 Byte Ascii String
  index, trade_side_of_non_custom_order = asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Trade
asx_securities_t24_itch_v1_13.custom_market_trade.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_trade, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_trade.fields(buffer, offset, packet, parent)
  end
end

-- Trade Side Of Leg
asx_securities_t24_itch_v1_13.trade_side_of_leg = {}

-- Size: Trade Side Of Leg
asx_securities_t24_itch_v1_13.trade_side_of_leg.size = 1

-- Display: Trade Side Of Leg
asx_securities_t24_itch_v1_13.trade_side_of_leg.display = function(value)
  return "Trade Side Of Leg: "..value
end

-- Dissect: Trade Side Of Leg
asx_securities_t24_itch_v1_13.trade_side_of_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trade_side_of_leg.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.trade_side_of_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_side_of_leg, range, value, display)

  return offset + length, value
end

-- Custom Market Executed
asx_securities_t24_itch_v1_13.custom_market_executed = {}

-- Calculate size of: Custom Market Executed
asx_securities_t24_itch_v1_13.custom_market_executed.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.trade_type.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  index = index + asx_securities_t24_itch_v1_13.executed_quantity.size

  index = index + asx_securities_t24_itch_v1_13.trade_price.size

  index = index + asx_securities_t24_itch_v1_13.traded_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.trade_side_of_leg.size

  index = index + asx_securities_t24_itch_v1_13.printable.size

  return index
end

-- Display: Custom Market Executed
asx_securities_t24_itch_v1_13.custom_market_executed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Executed
asx_securities_t24_itch_v1_13.custom_market_executed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Trade Side Of Leg: 1 Byte Ascii String
  index, trade_side_of_leg = asx_securities_t24_itch_v1_13.trade_side_of_leg.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Executed
asx_securities_t24_itch_v1_13.custom_market_executed.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_executed then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_executed, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_executed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_executed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_executed.fields(buffer, offset, packet, parent)
  end
end

-- Spread Trade Price
asx_securities_t24_itch_v1_13.spread_trade_price = {}

-- Size: Spread Trade Price
asx_securities_t24_itch_v1_13.spread_trade_price.size = 4

-- Display: Spread Trade Price
asx_securities_t24_itch_v1_13.spread_trade_price.display = function(value)
  return "Spread Trade Price: "..value
end

-- Dissect: Spread Trade Price
asx_securities_t24_itch_v1_13.spread_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.spread_trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.spread_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.spread_trade_price, range, value, display)

  return offset + length, value
end

-- Seller Quantity Remaining
asx_securities_t24_itch_v1_13.seller_quantity_remaining = {}

-- Size: Seller Quantity Remaining
asx_securities_t24_itch_v1_13.seller_quantity_remaining.size = 4

-- Display: Seller Quantity Remaining
asx_securities_t24_itch_v1_13.seller_quantity_remaining.display = function(value)
  return "Seller Quantity Remaining: "..value
end

-- Dissect: Seller Quantity Remaining
asx_securities_t24_itch_v1_13.seller_quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.seller_quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.seller_quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.seller_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Selling Order Number
asx_securities_t24_itch_v1_13.selling_order_number = {}

-- Size: Selling Order Number
asx_securities_t24_itch_v1_13.selling_order_number.size = 8

-- Display: Selling Order Number
asx_securities_t24_itch_v1_13.selling_order_number.display = function(value)
  return "Selling Order Number: "..value
end

-- Dissect: Selling Order Number
asx_securities_t24_itch_v1_13.selling_order_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.selling_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13.selling_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.selling_order_number, range, value, display)

  return offset + length, value
end

-- Side Of Seller
asx_securities_t24_itch_v1_13.side_of_seller = {}

-- Size: Side Of Seller
asx_securities_t24_itch_v1_13.side_of_seller.size = 1

-- Display: Side Of Seller
asx_securities_t24_itch_v1_13.side_of_seller.display = function(value)
  return "Side Of Seller: "..value
end

-- Dissect: Side Of Seller
asx_securities_t24_itch_v1_13.side_of_seller.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_of_seller.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_of_seller.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_of_seller, range, value, display)

  return offset + length, value
end

-- Seller Contract Number
asx_securities_t24_itch_v1_13.seller_contract_number = {}

-- Size: Seller Contract Number
asx_securities_t24_itch_v1_13.seller_contract_number.size = 4

-- Display: Seller Contract Number
asx_securities_t24_itch_v1_13.seller_contract_number.display = function(value)
  return "Seller Contract Number: "..value
end

-- Dissect: Seller Contract Number
asx_securities_t24_itch_v1_13.seller_contract_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.seller_contract_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.seller_contract_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.seller_contract_number, range, value, display)

  return offset + length, value
end

-- Buyer Quantity Remaining
asx_securities_t24_itch_v1_13.buyer_quantity_remaining = {}

-- Size: Buyer Quantity Remaining
asx_securities_t24_itch_v1_13.buyer_quantity_remaining.size = 4

-- Display: Buyer Quantity Remaining
asx_securities_t24_itch_v1_13.buyer_quantity_remaining.display = function(value)
  return "Buyer Quantity Remaining: "..value
end

-- Dissect: Buyer Quantity Remaining
asx_securities_t24_itch_v1_13.buyer_quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.buyer_quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.buyer_quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.buyer_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Buyer Order Number
asx_securities_t24_itch_v1_13.buyer_order_number = {}

-- Size: Buyer Order Number
asx_securities_t24_itch_v1_13.buyer_order_number.size = 8

-- Display: Buyer Order Number
asx_securities_t24_itch_v1_13.buyer_order_number.display = function(value)
  return "Buyer Order Number: "..value
end

-- Dissect: Buyer Order Number
asx_securities_t24_itch_v1_13.buyer_order_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.buyer_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13.buyer_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.buyer_order_number, range, value, display)

  return offset + length, value
end

-- Side Of Buyer
asx_securities_t24_itch_v1_13.side_of_buyer = {}

-- Size: Side Of Buyer
asx_securities_t24_itch_v1_13.side_of_buyer.size = 1

-- Display: Side Of Buyer
asx_securities_t24_itch_v1_13.side_of_buyer.display = function(value)
  return "Side Of Buyer: "..value
end

-- Dissect: Side Of Buyer
asx_securities_t24_itch_v1_13.side_of_buyer.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_of_buyer.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_of_buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_of_buyer, range, value, display)

  return offset + length, value
end

-- Buyer
asx_securities_t24_itch_v1_13.buyer = {}

-- Size: Buyer
asx_securities_t24_itch_v1_13.buyer.size = 4

-- Display: Buyer
asx_securities_t24_itch_v1_13.buyer.display = function(value)
  return "Buyer: "..value
end

-- Dissect: Buyer
asx_securities_t24_itch_v1_13.buyer.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.buyer.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.buyer, range, value, display)

  return offset + length, value
end

-- Trade Spread Execution Chain
asx_securities_t24_itch_v1_13.trade_spread_execution_chain = {}

-- Calculate size of: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13.trade_spread_execution_chain.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.buyer.size

  index = index + asx_securities_t24_itch_v1_13.side_of_buyer.size

  index = index + asx_securities_t24_itch_v1_13.buyer_order_number.size

  index = index + asx_securities_t24_itch_v1_13.buyer_quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.seller_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side_of_seller.size

  index = index + asx_securities_t24_itch_v1_13.selling_order_number.size

  index = index + asx_securities_t24_itch_v1_13.seller_quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.trade_type.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  index = index + asx_securities_t24_itch_v1_13.executed_quantity.size

  index = index + asx_securities_t24_itch_v1_13.trade_price.size

  index = index + asx_securities_t24_itch_v1_13.traded_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.spread_trade_price.size

  index = index + asx_securities_t24_itch_v1_13.printable.size

  return index
end

-- Display: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13.trade_spread_execution_chain.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13.trade_spread_execution_chain.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Buyer: 4 Byte Unsigned Fixed Width Integer
  index, buyer = asx_securities_t24_itch_v1_13.buyer.dissect(buffer, index, packet, parent)

  -- Side Of Buyer: 1 Byte Ascii String
  index, side_of_buyer = asx_securities_t24_itch_v1_13.side_of_buyer.dissect(buffer, index, packet, parent)

  -- Buyer Order Number: 8 Byte Unsigned Fixed Width Integer
  index, buyer_order_number = asx_securities_t24_itch_v1_13.buyer_order_number.dissect(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, buyer_quantity_remaining = asx_securities_t24_itch_v1_13.buyer_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Seller Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, seller_contract_number = asx_securities_t24_itch_v1_13.seller_contract_number.dissect(buffer, index, packet, parent)

  -- Side Of Seller: 1 Byte Ascii String
  index, side_of_seller = asx_securities_t24_itch_v1_13.side_of_seller.dissect(buffer, index, packet, parent)

  -- Selling Order Number: 8 Byte Unsigned Fixed Width Integer
  index, selling_order_number = asx_securities_t24_itch_v1_13.selling_order_number.dissect(buffer, index, packet, parent)

  -- Seller Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, seller_quantity_remaining = asx_securities_t24_itch_v1_13.seller_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Spread Trade Price: 4 Byte Signed Fixed Width Integer
  index, spread_trade_price = asx_securities_t24_itch_v1_13.spread_trade_price.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Spread Execution Chain
asx_securities_t24_itch_v1_13.trade_spread_execution_chain.dissect = function(buffer, offset, packet, parent)
  if show.trade_spread_execution_chain then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_spread_execution_chain, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.trade_spread_execution_chain.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.trade_spread_execution_chain.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.trade_spread_execution_chain.fields(buffer, offset, packet, parent)
  end
end

-- Spread Executed
asx_securities_t24_itch_v1_13.spread_executed = {}

-- Calculate size of: Spread Executed
asx_securities_t24_itch_v1_13.spread_executed.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.trade_type.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  index = index + asx_securities_t24_itch_v1_13.executed_quantity.size

  index = index + asx_securities_t24_itch_v1_13.trade_price.size

  index = index + asx_securities_t24_itch_v1_13.traded_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.spread_trade_price.size

  index = index + asx_securities_t24_itch_v1_13.trade_side_of_leg.size

  index = index + asx_securities_t24_itch_v1_13.printable.size

  return index
end

-- Display: Spread Executed
asx_securities_t24_itch_v1_13.spread_executed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Executed
asx_securities_t24_itch_v1_13.spread_executed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Spread Trade Price: 4 Byte Signed Fixed Width Integer
  index, spread_trade_price = asx_securities_t24_itch_v1_13.spread_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Side Of Leg: 1 Byte Ascii String
  index, trade_side_of_leg = asx_securities_t24_itch_v1_13.trade_side_of_leg.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Executed
asx_securities_t24_itch_v1_13.spread_executed.dissect = function(buffer, offset, packet, parent)
  if show.spread_executed then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.spread_executed, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.spread_executed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.spread_executed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.spread_executed.fields(buffer, offset, packet, parent)
  end
end

-- Buying Order Number
asx_securities_t24_itch_v1_13.buying_order_number = {}

-- Size: Buying Order Number
asx_securities_t24_itch_v1_13.buying_order_number.size = 8

-- Display: Buying Order Number
asx_securities_t24_itch_v1_13.buying_order_number.display = function(value)
  return "Buying Order Number: "..value
end

-- Dissect: Buying Order Number
asx_securities_t24_itch_v1_13.buying_order_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.buying_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13.buying_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.buying_order_number, range, value, display)

  return offset + length, value
end

-- Order Executed With Price
asx_securities_t24_itch_v1_13.order_executed_with_price = {}

-- Calculate size of: Order Executed With Price
asx_securities_t24_itch_v1_13.order_executed_with_price.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.buying_order_number.size

  index = index + asx_securities_t24_itch_v1_13.buyer_quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.selling_order_number.size

  index = index + asx_securities_t24_itch_v1_13.seller_quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.trade_type.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  index = index + asx_securities_t24_itch_v1_13.executed_quantity.size

  index = index + asx_securities_t24_itch_v1_13.trade_price.size

  return index
end

-- Display: Order Executed With Price
asx_securities_t24_itch_v1_13.order_executed_with_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price
asx_securities_t24_itch_v1_13.order_executed_with_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Buying Order Number: 8 Byte Unsigned Fixed Width Integer
  index, buying_order_number = asx_securities_t24_itch_v1_13.buying_order_number.dissect(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, buyer_quantity_remaining = asx_securities_t24_itch_v1_13.buyer_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Selling Order Number: 8 Byte Unsigned Fixed Width Integer
  index, selling_order_number = asx_securities_t24_itch_v1_13.selling_order_number.dissect(buffer, index, packet, parent)

  -- Seller Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, seller_quantity_remaining = asx_securities_t24_itch_v1_13.seller_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price
asx_securities_t24_itch_v1_13.order_executed_with_price.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_executed_with_price, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_executed_with_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_executed_with_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_executed_with_price.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed
asx_securities_t24_itch_v1_13.order_executed = {}

-- Calculate size of: Order Executed
asx_securities_t24_itch_v1_13.order_executed.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.quantity_remaining.size

  index = index + asx_securities_t24_itch_v1_13.trade_type.size

  index = index + asx_securities_t24_itch_v1_13.match_number.size

  index = index + asx_securities_t24_itch_v1_13.executed_quantity.size

  index = index + asx_securities_t24_itch_v1_13.trade_price.size

  return index
end

-- Display: Order Executed
asx_securities_t24_itch_v1_13.order_executed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed
asx_securities_t24_itch_v1_13.order_executed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 14 values
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed
asx_securities_t24_itch_v1_13.order_executed.dissect = function(buffer, offset, packet, parent)
  if show.order_executed then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_executed, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_executed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_executed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_executed.fields(buffer, offset, packet, parent)
  end
end

-- Custom Market Order Deleted
asx_securities_t24_itch_v1_13.custom_market_order_deleted = {}

-- Calculate size of: Custom Market Order Deleted
asx_securities_t24_itch_v1_13.custom_market_order_deleted.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  return index
end

-- Display: Custom Market Order Deleted
asx_securities_t24_itch_v1_13.custom_market_order_deleted.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Order Deleted
asx_securities_t24_itch_v1_13.custom_market_order_deleted.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Deleted
asx_securities_t24_itch_v1_13.custom_market_order_deleted.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_order_deleted then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_deleted, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_order_deleted.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_order_deleted.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_order_deleted.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Priority
asx_securities_t24_itch_v1_13.order_book_priority = {}

-- Size: Order Book Priority
asx_securities_t24_itch_v1_13.order_book_priority.size = 4

-- Display: Order Book Priority
asx_securities_t24_itch_v1_13.order_book_priority.display = function(value)
  return "Order Book Priority: "..value
end

-- Dissect: Order Book Priority
asx_securities_t24_itch_v1_13.order_book_priority.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.order_book_priority.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.order_book_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_book_priority, range, value, display)

  return offset + length, value
end

-- Custom Market Order Replaced
asx_securities_t24_itch_v1_13.custom_market_order_replaced = {}

-- Calculate size of: Custom Market Order Replaced
asx_securities_t24_itch_v1_13.custom_market_order_replaced.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.order_book_priority.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  return index
end

-- Display: Custom Market Order Replaced
asx_securities_t24_itch_v1_13.custom_market_order_replaced.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Order Replaced
asx_securities_t24_itch_v1_13.custom_market_order_replaced.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Replaced
asx_securities_t24_itch_v1_13.custom_market_order_replaced.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_order_replaced then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_replaced, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_order_replaced.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_order_replaced.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_order_replaced.fields(buffer, offset, packet, parent)
  end
end

-- Price Leg 6
asx_securities_t24_itch_v1_13.price_leg_6 = {}

-- Size: Price Leg 6
asx_securities_t24_itch_v1_13.price_leg_6.size = 4

-- Display: Price Leg 6
asx_securities_t24_itch_v1_13.price_leg_6.display = function(value)
  return "Price Leg 6: "..value
end

-- Dissect: Price Leg 6
asx_securities_t24_itch_v1_13.price_leg_6.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_leg_6.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price_leg_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_leg_6, range, value, display)

  return offset + length, value
end

-- Ratio Leg 6
asx_securities_t24_itch_v1_13.ratio_leg_6 = {}

-- Size: Ratio Leg 6
asx_securities_t24_itch_v1_13.ratio_leg_6.size = 2

-- Display: Ratio Leg 6
asx_securities_t24_itch_v1_13.ratio_leg_6.display = function(value)
  return "Ratio Leg 6: "..value
end

-- Dissect: Ratio Leg 6
asx_securities_t24_itch_v1_13.ratio_leg_6.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio_leg_6.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio_leg_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_6, range, value, display)

  return offset + length, value
end

-- Side Leg 6
asx_securities_t24_itch_v1_13.side_leg_6 = {}

-- Size: Side Leg 6
asx_securities_t24_itch_v1_13.side_leg_6.size = 1

-- Display: Side Leg 6
asx_securities_t24_itch_v1_13.side_leg_6.display = function(value)
  return "Side Leg 6: "..value
end

-- Dissect: Side Leg 6
asx_securities_t24_itch_v1_13.side_leg_6.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_leg_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_leg_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_leg_6, range, value, display)

  return offset + length, value
end

-- Contract Number Leg 6
asx_securities_t24_itch_v1_13.contract_number_leg_6 = {}

-- Size: Contract Number Leg 6
asx_securities_t24_itch_v1_13.contract_number_leg_6.size = 4

-- Display: Contract Number Leg 6
asx_securities_t24_itch_v1_13.contract_number_leg_6.display = function(value)
  return "Contract Number Leg 6: "..value
end

-- Dissect: Contract Number Leg 6
asx_securities_t24_itch_v1_13.contract_number_leg_6.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number_leg_6.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number_leg_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_6, range, value, display)

  return offset + length, value
end

-- Price Leg 5
asx_securities_t24_itch_v1_13.price_leg_5 = {}

-- Size: Price Leg 5
asx_securities_t24_itch_v1_13.price_leg_5.size = 4

-- Display: Price Leg 5
asx_securities_t24_itch_v1_13.price_leg_5.display = function(value)
  return "Price Leg 5: "..value
end

-- Dissect: Price Leg 5
asx_securities_t24_itch_v1_13.price_leg_5.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_leg_5.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price_leg_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_leg_5, range, value, display)

  return offset + length, value
end

-- Ratio Leg 5
asx_securities_t24_itch_v1_13.ratio_leg_5 = {}

-- Size: Ratio Leg 5
asx_securities_t24_itch_v1_13.ratio_leg_5.size = 2

-- Display: Ratio Leg 5
asx_securities_t24_itch_v1_13.ratio_leg_5.display = function(value)
  return "Ratio Leg 5: "..value
end

-- Dissect: Ratio Leg 5
asx_securities_t24_itch_v1_13.ratio_leg_5.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio_leg_5.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio_leg_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_5, range, value, display)

  return offset + length, value
end

-- Side Leg 5
asx_securities_t24_itch_v1_13.side_leg_5 = {}

-- Size: Side Leg 5
asx_securities_t24_itch_v1_13.side_leg_5.size = 1

-- Display: Side Leg 5
asx_securities_t24_itch_v1_13.side_leg_5.display = function(value)
  return "Side Leg 5: "..value
end

-- Dissect: Side Leg 5
asx_securities_t24_itch_v1_13.side_leg_5.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_leg_5.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_leg_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_leg_5, range, value, display)

  return offset + length, value
end

-- Contract Number Leg 5
asx_securities_t24_itch_v1_13.contract_number_leg_5 = {}

-- Size: Contract Number Leg 5
asx_securities_t24_itch_v1_13.contract_number_leg_5.size = 4

-- Display: Contract Number Leg 5
asx_securities_t24_itch_v1_13.contract_number_leg_5.display = function(value)
  return "Contract Number Leg 5: "..value
end

-- Dissect: Contract Number Leg 5
asx_securities_t24_itch_v1_13.contract_number_leg_5.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number_leg_5.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number_leg_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_5, range, value, display)

  return offset + length, value
end

-- Price Leg 4
asx_securities_t24_itch_v1_13.price_leg_4 = {}

-- Size: Price Leg 4
asx_securities_t24_itch_v1_13.price_leg_4.size = 4

-- Display: Price Leg 4
asx_securities_t24_itch_v1_13.price_leg_4.display = function(value)
  return "Price Leg 4: "..value
end

-- Dissect: Price Leg 4
asx_securities_t24_itch_v1_13.price_leg_4.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_leg_4.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price_leg_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_leg_4, range, value, display)

  return offset + length, value
end

-- Ratio Leg 4
asx_securities_t24_itch_v1_13.ratio_leg_4 = {}

-- Size: Ratio Leg 4
asx_securities_t24_itch_v1_13.ratio_leg_4.size = 2

-- Display: Ratio Leg 4
asx_securities_t24_itch_v1_13.ratio_leg_4.display = function(value)
  return "Ratio Leg 4: "..value
end

-- Dissect: Ratio Leg 4
asx_securities_t24_itch_v1_13.ratio_leg_4.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio_leg_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio_leg_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_4, range, value, display)

  return offset + length, value
end

-- Side Leg 4
asx_securities_t24_itch_v1_13.side_leg_4 = {}

-- Size: Side Leg 4
asx_securities_t24_itch_v1_13.side_leg_4.size = 1

-- Display: Side Leg 4
asx_securities_t24_itch_v1_13.side_leg_4.display = function(value)
  return "Side Leg 4: "..value
end

-- Dissect: Side Leg 4
asx_securities_t24_itch_v1_13.side_leg_4.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_leg_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_leg_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_leg_4, range, value, display)

  return offset + length, value
end

-- Contract Number Leg 4
asx_securities_t24_itch_v1_13.contract_number_leg_4 = {}

-- Size: Contract Number Leg 4
asx_securities_t24_itch_v1_13.contract_number_leg_4.size = 4

-- Display: Contract Number Leg 4
asx_securities_t24_itch_v1_13.contract_number_leg_4.display = function(value)
  return "Contract Number Leg 4: "..value
end

-- Dissect: Contract Number Leg 4
asx_securities_t24_itch_v1_13.contract_number_leg_4.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number_leg_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number_leg_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_4, range, value, display)

  return offset + length, value
end

-- Price Leg 3
asx_securities_t24_itch_v1_13.price_leg_3 = {}

-- Size: Price Leg 3
asx_securities_t24_itch_v1_13.price_leg_3.size = 4

-- Display: Price Leg 3
asx_securities_t24_itch_v1_13.price_leg_3.display = function(value)
  return "Price Leg 3: "..value
end

-- Dissect: Price Leg 3
asx_securities_t24_itch_v1_13.price_leg_3.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_leg_3.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price_leg_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_leg_3, range, value, display)

  return offset + length, value
end

-- Ratio Leg 3
asx_securities_t24_itch_v1_13.ratio_leg_3 = {}

-- Size: Ratio Leg 3
asx_securities_t24_itch_v1_13.ratio_leg_3.size = 2

-- Display: Ratio Leg 3
asx_securities_t24_itch_v1_13.ratio_leg_3.display = function(value)
  return "Ratio Leg 3: "..value
end

-- Dissect: Ratio Leg 3
asx_securities_t24_itch_v1_13.ratio_leg_3.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio_leg_3.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio_leg_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_3, range, value, display)

  return offset + length, value
end

-- Side Leg 3
asx_securities_t24_itch_v1_13.side_leg_3 = {}

-- Size: Side Leg 3
asx_securities_t24_itch_v1_13.side_leg_3.size = 1

-- Display: Side Leg 3
asx_securities_t24_itch_v1_13.side_leg_3.display = function(value)
  return "Side Leg 3: "..value
end

-- Dissect: Side Leg 3
asx_securities_t24_itch_v1_13.side_leg_3.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_leg_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_leg_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_leg_3, range, value, display)

  return offset + length, value
end

-- Contract Number Leg 3
asx_securities_t24_itch_v1_13.contract_number_leg_3 = {}

-- Size: Contract Number Leg 3
asx_securities_t24_itch_v1_13.contract_number_leg_3.size = 4

-- Display: Contract Number Leg 3
asx_securities_t24_itch_v1_13.contract_number_leg_3.display = function(value)
  return "Contract Number Leg 3: "..value
end

-- Dissect: Contract Number Leg 3
asx_securities_t24_itch_v1_13.contract_number_leg_3.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number_leg_3.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number_leg_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_3, range, value, display)

  return offset + length, value
end

-- Price Leg 2
asx_securities_t24_itch_v1_13.price_leg_2 = {}

-- Size: Price Leg 2
asx_securities_t24_itch_v1_13.price_leg_2.size = 4

-- Display: Price Leg 2
asx_securities_t24_itch_v1_13.price_leg_2.display = function(value)
  return "Price Leg 2: "..value
end

-- Dissect: Price Leg 2
asx_securities_t24_itch_v1_13.price_leg_2.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_leg_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price_leg_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_leg_2, range, value, display)

  return offset + length, value
end

-- Ratio Leg 2
asx_securities_t24_itch_v1_13.ratio_leg_2 = {}

-- Size: Ratio Leg 2
asx_securities_t24_itch_v1_13.ratio_leg_2.size = 2

-- Display: Ratio Leg 2
asx_securities_t24_itch_v1_13.ratio_leg_2.display = function(value)
  return "Ratio Leg 2: "..value
end

-- Dissect: Ratio Leg 2
asx_securities_t24_itch_v1_13.ratio_leg_2.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio_leg_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio_leg_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_2, range, value, display)

  return offset + length, value
end

-- Side Leg 2
asx_securities_t24_itch_v1_13.side_leg_2 = {}

-- Size: Side Leg 2
asx_securities_t24_itch_v1_13.side_leg_2.size = 1

-- Display: Side Leg 2
asx_securities_t24_itch_v1_13.side_leg_2.display = function(value)
  return "Side Leg 2: "..value
end

-- Dissect: Side Leg 2
asx_securities_t24_itch_v1_13.side_leg_2.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_leg_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_leg_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_leg_2, range, value, display)

  return offset + length, value
end

-- Contract Number Leg 2
asx_securities_t24_itch_v1_13.contract_number_leg_2 = {}

-- Size: Contract Number Leg 2
asx_securities_t24_itch_v1_13.contract_number_leg_2.size = 4

-- Display: Contract Number Leg 2
asx_securities_t24_itch_v1_13.contract_number_leg_2.display = function(value)
  return "Contract Number Leg 2: "..value
end

-- Dissect: Contract Number Leg 2
asx_securities_t24_itch_v1_13.contract_number_leg_2.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number_leg_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number_leg_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_2, range, value, display)

  return offset + length, value
end

-- Price Leg 1
asx_securities_t24_itch_v1_13.price_leg_1 = {}

-- Size: Price Leg 1
asx_securities_t24_itch_v1_13.price_leg_1.size = 4

-- Display: Price Leg 1
asx_securities_t24_itch_v1_13.price_leg_1.display = function(value)
  return "Price Leg 1: "..value
end

-- Dissect: Price Leg 1
asx_securities_t24_itch_v1_13.price_leg_1.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_leg_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.price_leg_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_leg_1, range, value, display)

  return offset + length, value
end

-- Ratio Leg 1
asx_securities_t24_itch_v1_13.ratio_leg_1 = {}

-- Size: Ratio Leg 1
asx_securities_t24_itch_v1_13.ratio_leg_1.size = 2

-- Display: Ratio Leg 1
asx_securities_t24_itch_v1_13.ratio_leg_1.display = function(value)
  return "Ratio Leg 1: "..value
end

-- Dissect: Ratio Leg 1
asx_securities_t24_itch_v1_13.ratio_leg_1.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio_leg_1.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio_leg_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio_leg_1, range, value, display)

  return offset + length, value
end

-- Side Leg 1
asx_securities_t24_itch_v1_13.side_leg_1 = {}

-- Size: Side Leg 1
asx_securities_t24_itch_v1_13.side_leg_1.size = 1

-- Display: Side Leg 1
asx_securities_t24_itch_v1_13.side_leg_1.display = function(value)
  return "Side Leg 1: "..value
end

-- Dissect: Side Leg 1
asx_securities_t24_itch_v1_13.side_leg_1.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.side_leg_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.side_leg_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.side_leg_1, range, value, display)

  return offset + length, value
end

-- Contract Number Leg 1
asx_securities_t24_itch_v1_13.contract_number_leg_1 = {}

-- Size: Contract Number Leg 1
asx_securities_t24_itch_v1_13.contract_number_leg_1.size = 4

-- Display: Contract Number Leg 1
asx_securities_t24_itch_v1_13.contract_number_leg_1.display = function(value)
  return "Contract Number Leg 1: "..value
end

-- Dissect: Contract Number Leg 1
asx_securities_t24_itch_v1_13.contract_number_leg_1.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_number_leg_1.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.contract_number_leg_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_number_leg_1, range, value, display)

  return offset + length, value
end

-- Legs
asx_securities_t24_itch_v1_13.legs = {}

-- Size: Legs
asx_securities_t24_itch_v1_13.legs.size = 1

-- Display: Legs
asx_securities_t24_itch_v1_13.legs.display = function(value)
  return "Legs: "..value
end

-- Dissect: Legs
asx_securities_t24_itch_v1_13.legs.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.legs, range, value, display)

  return offset + length, value
end

-- Custom Market Order Added
asx_securities_t24_itch_v1_13.custom_market_order_added = {}

-- Calculate size of: Custom Market Order Added
asx_securities_t24_itch_v1_13.custom_market_order_added.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.order_book_priority.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  index = index + asx_securities_t24_itch_v1_13.legs.size

  index = index + asx_securities_t24_itch_v1_13.contract_number_leg_1.size

  index = index + asx_securities_t24_itch_v1_13.side_leg_1.size

  index = index + asx_securities_t24_itch_v1_13.ratio_leg_1.size

  index = index + asx_securities_t24_itch_v1_13.price_leg_1.size

  index = index + asx_securities_t24_itch_v1_13.contract_number_leg_2.size

  index = index + asx_securities_t24_itch_v1_13.side_leg_2.size

  index = index + asx_securities_t24_itch_v1_13.ratio_leg_2.size

  index = index + asx_securities_t24_itch_v1_13.price_leg_2.size

  index = index + asx_securities_t24_itch_v1_13.contract_number_leg_3.size

  index = index + asx_securities_t24_itch_v1_13.side_leg_3.size

  index = index + asx_securities_t24_itch_v1_13.ratio_leg_3.size

  index = index + asx_securities_t24_itch_v1_13.price_leg_3.size

  index = index + asx_securities_t24_itch_v1_13.contract_number_leg_4.size

  index = index + asx_securities_t24_itch_v1_13.side_leg_4.size

  index = index + asx_securities_t24_itch_v1_13.ratio_leg_4.size

  index = index + asx_securities_t24_itch_v1_13.price_leg_4.size

  index = index + asx_securities_t24_itch_v1_13.contract_number_leg_5.size

  index = index + asx_securities_t24_itch_v1_13.side_leg_5.size

  index = index + asx_securities_t24_itch_v1_13.ratio_leg_5.size

  index = index + asx_securities_t24_itch_v1_13.price_leg_5.size

  index = index + asx_securities_t24_itch_v1_13.contract_number_leg_6.size

  index = index + asx_securities_t24_itch_v1_13.side_leg_6.size

  index = index + asx_securities_t24_itch_v1_13.ratio_leg_6.size

  index = index + asx_securities_t24_itch_v1_13.price_leg_6.size

  return index
end

-- Display: Custom Market Order Added
asx_securities_t24_itch_v1_13.custom_market_order_added.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Order Added
asx_securities_t24_itch_v1_13.custom_market_order_added.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index, legs = asx_securities_t24_itch_v1_13.legs.dissect(buffer, index, packet, parent)

  -- Contract Number Leg 1: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_1 = asx_securities_t24_itch_v1_13.contract_number_leg_1.dissect(buffer, index, packet, parent)

  -- Side Leg 1: 1 Byte Ascii String
  index, side_leg_1 = asx_securities_t24_itch_v1_13.side_leg_1.dissect(buffer, index, packet, parent)

  -- Ratio Leg 1: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_1 = asx_securities_t24_itch_v1_13.ratio_leg_1.dissect(buffer, index, packet, parent)

  -- Price Leg 1: 4 Byte Signed Fixed Width Integer
  index, price_leg_1 = asx_securities_t24_itch_v1_13.price_leg_1.dissect(buffer, index, packet, parent)

  -- Contract Number Leg 2: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_2 = asx_securities_t24_itch_v1_13.contract_number_leg_2.dissect(buffer, index, packet, parent)

  -- Side Leg 2: 1 Byte Ascii String
  index, side_leg_2 = asx_securities_t24_itch_v1_13.side_leg_2.dissect(buffer, index, packet, parent)

  -- Ratio Leg 2: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_2 = asx_securities_t24_itch_v1_13.ratio_leg_2.dissect(buffer, index, packet, parent)

  -- Price Leg 2: 4 Byte Signed Fixed Width Integer
  index, price_leg_2 = asx_securities_t24_itch_v1_13.price_leg_2.dissect(buffer, index, packet, parent)

  -- Contract Number Leg 3: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_3 = asx_securities_t24_itch_v1_13.contract_number_leg_3.dissect(buffer, index, packet, parent)

  -- Side Leg 3: 1 Byte Ascii String
  index, side_leg_3 = asx_securities_t24_itch_v1_13.side_leg_3.dissect(buffer, index, packet, parent)

  -- Ratio Leg 3: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_3 = asx_securities_t24_itch_v1_13.ratio_leg_3.dissect(buffer, index, packet, parent)

  -- Price Leg 3: 4 Byte Signed Fixed Width Integer
  index, price_leg_3 = asx_securities_t24_itch_v1_13.price_leg_3.dissect(buffer, index, packet, parent)

  -- Contract Number Leg 4: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_4 = asx_securities_t24_itch_v1_13.contract_number_leg_4.dissect(buffer, index, packet, parent)

  -- Side Leg 4: 1 Byte Ascii String
  index, side_leg_4 = asx_securities_t24_itch_v1_13.side_leg_4.dissect(buffer, index, packet, parent)

  -- Ratio Leg 4: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_4 = asx_securities_t24_itch_v1_13.ratio_leg_4.dissect(buffer, index, packet, parent)

  -- Price Leg 4: 4 Byte Signed Fixed Width Integer
  index, price_leg_4 = asx_securities_t24_itch_v1_13.price_leg_4.dissect(buffer, index, packet, parent)

  -- Contract Number Leg 5: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_5 = asx_securities_t24_itch_v1_13.contract_number_leg_5.dissect(buffer, index, packet, parent)

  -- Side Leg 5: 1 Byte Ascii String
  index, side_leg_5 = asx_securities_t24_itch_v1_13.side_leg_5.dissect(buffer, index, packet, parent)

  -- Ratio Leg 5: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_5 = asx_securities_t24_itch_v1_13.ratio_leg_5.dissect(buffer, index, packet, parent)

  -- Price Leg 5: 4 Byte Signed Fixed Width Integer
  index, price_leg_5 = asx_securities_t24_itch_v1_13.price_leg_5.dissect(buffer, index, packet, parent)

  -- Contract Number Leg 6: 4 Byte Unsigned Fixed Width Integer
  index, contract_number_leg_6 = asx_securities_t24_itch_v1_13.contract_number_leg_6.dissect(buffer, index, packet, parent)

  -- Side Leg 6: 1 Byte Ascii String
  index, side_leg_6 = asx_securities_t24_itch_v1_13.side_leg_6.dissect(buffer, index, packet, parent)

  -- Ratio Leg 6: 2 Byte Unsigned Fixed Width Integer
  index, ratio_leg_6 = asx_securities_t24_itch_v1_13.ratio_leg_6.dissect(buffer, index, packet, parent)

  -- Price Leg 6: 4 Byte Signed Fixed Width Integer
  index, price_leg_6 = asx_securities_t24_itch_v1_13.price_leg_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Added
asx_securities_t24_itch_v1_13.custom_market_order_added.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_order_added then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_added, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_order_added.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_order_added.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_order_added.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Deleted
asx_securities_t24_itch_v1_13.implied_order_deleted = {}

-- Calculate size of: Implied Order Deleted
asx_securities_t24_itch_v1_13.implied_order_deleted.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  return index
end

-- Display: Implied Order Deleted
asx_securities_t24_itch_v1_13.implied_order_deleted.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Deleted
asx_securities_t24_itch_v1_13.implied_order_deleted.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted
asx_securities_t24_itch_v1_13.implied_order_deleted.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_deleted then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.implied_order_deleted, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.implied_order_deleted.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.implied_order_deleted.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.implied_order_deleted.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Replaced
asx_securities_t24_itch_v1_13.implied_order_replaced = {}

-- Calculate size of: Implied Order Replaced
asx_securities_t24_itch_v1_13.implied_order_replaced.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.order_book_priority.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  index = index + asx_securities_t24_itch_v1_13.price.size

  return index
end

-- Display: Implied Order Replaced
asx_securities_t24_itch_v1_13.implied_order_replaced.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Replaced
asx_securities_t24_itch_v1_13.implied_order_replaced.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced
asx_securities_t24_itch_v1_13.implied_order_replaced.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_replaced then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.implied_order_replaced, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.implied_order_replaced.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.implied_order_replaced.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.implied_order_replaced.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Added
asx_securities_t24_itch_v1_13.implied_order_added = {}

-- Calculate size of: Implied Order Added
asx_securities_t24_itch_v1_13.implied_order_added.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.order_book_priority.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  index = index + asx_securities_t24_itch_v1_13.price.size

  return index
end

-- Display: Implied Order Added
asx_securities_t24_itch_v1_13.implied_order_added.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Added
asx_securities_t24_itch_v1_13.implied_order_added.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added
asx_securities_t24_itch_v1_13.implied_order_added.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_added then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.implied_order_added, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.implied_order_added.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.implied_order_added.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.implied_order_added.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted
asx_securities_t24_itch_v1_13.order_deleted = {}

-- Calculate size of: Order Deleted
asx_securities_t24_itch_v1_13.order_deleted.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  return index
end

-- Display: Order Deleted
asx_securities_t24_itch_v1_13.order_deleted.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted
asx_securities_t24_itch_v1_13.order_deleted.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted
asx_securities_t24_itch_v1_13.order_deleted.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_deleted, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_deleted.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_deleted.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_deleted.fields(buffer, offset, packet, parent)
  end
end

-- Order Volume Cancelled
asx_securities_t24_itch_v1_13.order_volume_cancelled = {}

-- Calculate size of: Order Volume Cancelled
asx_securities_t24_itch_v1_13.order_volume_cancelled.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  return index
end

-- Display: Order Volume Cancelled
asx_securities_t24_itch_v1_13.order_volume_cancelled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Volume Cancelled
asx_securities_t24_itch_v1_13.order_volume_cancelled.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled
asx_securities_t24_itch_v1_13.order_volume_cancelled.dissect = function(buffer, offset, packet, parent)
  if show.order_volume_cancelled then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_volume_cancelled, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_volume_cancelled.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_volume_cancelled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_volume_cancelled.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced
asx_securities_t24_itch_v1_13.order_replaced = {}

-- Calculate size of: Order Replaced
asx_securities_t24_itch_v1_13.order_replaced.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.order_book_priority.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  index = index + asx_securities_t24_itch_v1_13.price.size

  return index
end

-- Display: Order Replaced
asx_securities_t24_itch_v1_13.order_replaced.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced
asx_securities_t24_itch_v1_13.order_replaced.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced
asx_securities_t24_itch_v1_13.order_replaced.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_replaced, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_replaced.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_replaced.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_replaced.fields(buffer, offset, packet, parent)
  end
end

-- Order Added
asx_securities_t24_itch_v1_13.order_added = {}

-- Calculate size of: Order Added
asx_securities_t24_itch_v1_13.order_added.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.side.size

  index = index + asx_securities_t24_itch_v1_13.order_number.size

  index = index + asx_securities_t24_itch_v1_13.order_book_priority.size

  index = index + asx_securities_t24_itch_v1_13.quantity.size

  index = index + asx_securities_t24_itch_v1_13.price.size

  return index
end

-- Display: Order Added
asx_securities_t24_itch_v1_13.order_added.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added
asx_securities_t24_itch_v1_13.order_added.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 4 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added
asx_securities_t24_itch_v1_13.order_added.dissect = function(buffer, offset, packet, parent)
  if show.order_added then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_added, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_added.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_added.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_added.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status
asx_securities_t24_itch_v1_13.trading_status = {}

-- Size: Trading Status
asx_securities_t24_itch_v1_13.trading_status.size = 1

-- Display: Trading Status
asx_securities_t24_itch_v1_13.trading_status.display = function(value)
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
asx_securities_t24_itch_v1_13.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Order Book State
asx_securities_t24_itch_v1_13.order_book_state = {}

-- Calculate size of: Order Book State
asx_securities_t24_itch_v1_13.order_book_state.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.trading_status.size

  return index
end

-- Display: Order Book State
asx_securities_t24_itch_v1_13.order_book_state.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State
asx_securities_t24_itch_v1_13.order_book_state.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 13 values
  index, trading_status = asx_securities_t24_itch_v1_13.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State
asx_securities_t24_itch_v1_13.order_book_state.dissect = function(buffer, offset, packet, parent)
  if show.order_book_state then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_book_state, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_book_state.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_book_state.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_book_state.fields(buffer, offset, packet, parent)
  end
end

-- Activated
asx_securities_t24_itch_v1_13.activated = {}

-- Size: Activated
asx_securities_t24_itch_v1_13.activated.size = 1

-- Display: Activated
asx_securities_t24_itch_v1_13.activated.display = function(value)
  if value == "Y" then
    return "Activated: Yes (Y)"
  end
  if value == "N" then
    return "Activated: No (N)"
  end

  return "Activated: Unknown("..value..")"
end

-- Dissect: Activated
asx_securities_t24_itch_v1_13.activated.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.activated.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.activated.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.activated, range, value, display)

  return offset + length, value
end

-- Payments Per Year
asx_securities_t24_itch_v1_13.payments_per_year = {}

-- Size: Payments Per Year
asx_securities_t24_itch_v1_13.payments_per_year.size = 1

-- Display: Payments Per Year
asx_securities_t24_itch_v1_13.payments_per_year.display = function(value)
  return "Payments Per Year: "..value
end

-- Dissect: Payments Per Year
asx_securities_t24_itch_v1_13.payments_per_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.payments_per_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.payments_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.payments_per_year, range, value, display)

  return offset + length, value
end

-- Coupon Rate
asx_securities_t24_itch_v1_13.coupon_rate = {}

-- Size: Coupon Rate
asx_securities_t24_itch_v1_13.coupon_rate.size = 2

-- Display: Coupon Rate
asx_securities_t24_itch_v1_13.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
asx_securities_t24_itch_v1_13.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.coupon_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Maturity Value
asx_securities_t24_itch_v1_13.maturity_value = {}

-- Size: Maturity Value
asx_securities_t24_itch_v1_13.maturity_value.size = 1

-- Display: Maturity Value
asx_securities_t24_itch_v1_13.maturity_value.display = function(value)
  return "Maturity Value: "..value
end

-- Dissect: Maturity Value
asx_securities_t24_itch_v1_13.maturity_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.maturity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.maturity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.maturity_value, range, value, display)

  return offset + length, value
end

-- Lot Size Or Face Value
asx_securities_t24_itch_v1_13.lot_size_or_face_value = {}

-- Size: Lot Size Or Face Value
asx_securities_t24_itch_v1_13.lot_size_or_face_value.size = 4

-- Display: Lot Size Or Face Value
asx_securities_t24_itch_v1_13.lot_size_or_face_value.display = function(value)
  return "Lot Size Or Face Value: "..value
end

-- Dissect: Lot Size Or Face Value
asx_securities_t24_itch_v1_13.lot_size_or_face_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.lot_size_or_face_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.lot_size_or_face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.lot_size_or_face_value, range, value, display)

  return offset + length, value
end

-- Currency
asx_securities_t24_itch_v1_13.currency = {}

-- Size: Currency
asx_securities_t24_itch_v1_13.currency.size = 3

-- Display: Currency
asx_securities_t24_itch_v1_13.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
asx_securities_t24_itch_v1_13.currency.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.currency, range, value, display)

  return offset + length, value
end

-- Financial Type
asx_securities_t24_itch_v1_13.financial_type = {}

-- Size: Financial Type
asx_securities_t24_itch_v1_13.financial_type.size = 1

-- Display: Financial Type
asx_securities_t24_itch_v1_13.financial_type.display = function(value)
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
asx_securities_t24_itch_v1_13.financial_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.financial_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.financial_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.financial_type, range, value, display)

  return offset + length, value
end

-- Prior Day Settlement
asx_securities_t24_itch_v1_13.prior_day_settlement = {}

-- Size: Prior Day Settlement
asx_securities_t24_itch_v1_13.prior_day_settlement.size = 4

-- Display: Prior Day Settlement
asx_securities_t24_itch_v1_13.prior_day_settlement.display = function(value)
  return "Prior Day Settlement: "..value
end

-- Dissect: Prior Day Settlement
asx_securities_t24_itch_v1_13.prior_day_settlement.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.prior_day_settlement.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_t24_itch_v1_13.prior_day_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.prior_day_settlement, range, value, display)

  return offset + length, value
end

-- Last Trading Date
asx_securities_t24_itch_v1_13.last_trading_date = {}

-- Size: Last Trading Date
asx_securities_t24_itch_v1_13.last_trading_date.size = 4

-- Display: Last Trading Date
asx_securities_t24_itch_v1_13.last_trading_date.display = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
asx_securities_t24_itch_v1_13.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Strike Price Minimum Tick
asx_securities_t24_itch_v1_13.strike_price_minimum_tick = {}

-- Size: Strike Price Minimum Tick
asx_securities_t24_itch_v1_13.strike_price_minimum_tick.size = 2

-- Display: Strike Price Minimum Tick
asx_securities_t24_itch_v1_13.strike_price_minimum_tick.display = function(value)
  return "Strike Price Minimum Tick: "..value
end

-- Dissect: Strike Price Minimum Tick
asx_securities_t24_itch_v1_13.strike_price_minimum_tick.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.strike_price_minimum_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.strike_price_minimum_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.strike_price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13.strike_price_fractional_denominator = {}

-- Size: Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.size = 4

-- Display: Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.display = function(value)
  return "Strike Price Fractional Denominator: "..value
end

-- Dissect: Strike Price Fractional Denominator
asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.strike_price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Strike Price Decimal Position
asx_securities_t24_itch_v1_13.strike_price_decimal_position = {}

-- Size: Strike Price Decimal Position
asx_securities_t24_itch_v1_13.strike_price_decimal_position.size = 1

-- Display: Strike Price Decimal Position
asx_securities_t24_itch_v1_13.strike_price_decimal_position.display = function(value)
  return "Strike Price Decimal Position: "..value
end

-- Dissect: Strike Price Decimal Position
asx_securities_t24_itch_v1_13.strike_price_decimal_position.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.strike_price_decimal_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.strike_price_decimal_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.strike_price_decimal_position, range, value, display)

  return offset + length, value
end

-- Price Minimum Tick
asx_securities_t24_itch_v1_13.price_minimum_tick = {}

-- Size: Price Minimum Tick
asx_securities_t24_itch_v1_13.price_minimum_tick.size = 2

-- Display: Price Minimum Tick
asx_securities_t24_itch_v1_13.price_minimum_tick.display = function(value)
  return "Price Minimum Tick: "..value
end

-- Dissect: Price Minimum Tick
asx_securities_t24_itch_v1_13.price_minimum_tick.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_minimum_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.price_minimum_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Price Fractional Denominator
asx_securities_t24_itch_v1_13.price_fractional_denominator = {}

-- Size: Price Fractional Denominator
asx_securities_t24_itch_v1_13.price_fractional_denominator.size = 4

-- Display: Price Fractional Denominator
asx_securities_t24_itch_v1_13.price_fractional_denominator.display = function(value)
  return "Price Fractional Denominator: "..value
end

-- Dissect: Price Fractional Denominator
asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_fractional_denominator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.price_fractional_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Price Decimal Position
asx_securities_t24_itch_v1_13.price_decimal_position = {}

-- Size: Price Decimal Position
asx_securities_t24_itch_v1_13.price_decimal_position.size = 1

-- Display: Price Decimal Position
asx_securities_t24_itch_v1_13.price_decimal_position.display = function(value)
  return "Price Decimal Position: "..value
end

-- Dissect: Price Decimal Position
asx_securities_t24_itch_v1_13.price_decimal_position.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price_decimal_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.price_decimal_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price_decimal_position, range, value, display)

  return offset + length, value
end

-- Underlying Contract Number
asx_securities_t24_itch_v1_13.underlying_contract_number = {}

-- Size: Underlying Contract Number
asx_securities_t24_itch_v1_13.underlying_contract_number.size = 4

-- Display: Underlying Contract Number
asx_securities_t24_itch_v1_13.underlying_contract_number.display = function(value)
  return "Underlying Contract Number: "..value
end

-- Dissect: Underlying Contract Number
asx_securities_t24_itch_v1_13.underlying_contract_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.underlying_contract_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.underlying_contract_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.underlying_contract_number, range, value, display)

  return offset + length, value
end

-- Strike
asx_securities_t24_itch_v1_13.strike = {}

-- Size: Strike
asx_securities_t24_itch_v1_13.strike.size = 4

-- Display: Strike
asx_securities_t24_itch_v1_13.strike.display = function(value)
  return "Strike: "..value
end

-- Dissect: Strike
asx_securities_t24_itch_v1_13.strike.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.strike.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.strike, range, value, display)

  return offset + length, value
end

-- Option Type
asx_securities_t24_itch_v1_13.option_type = {}

-- Size: Option Type
asx_securities_t24_itch_v1_13.option_type.size = 1

-- Display: Option Type
asx_securities_t24_itch_v1_13.option_type.display = function(value)
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "C" then
    return "Option Type: Call (C)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asx_securities_t24_itch_v1_13.option_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.option_type, range, value, display)

  return offset + length, value
end

-- Expiry Month
asx_securities_t24_itch_v1_13.expiry_month = {}

-- Size: Expiry Month
asx_securities_t24_itch_v1_13.expiry_month.size = 1

-- Display: Expiry Month
asx_securities_t24_itch_v1_13.expiry_month.display = function(value)
  return "Expiry Month: "..value
end

-- Dissect: Expiry Month
asx_securities_t24_itch_v1_13.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.expiry_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Expiry Year
asx_securities_t24_itch_v1_13.expiry_year = {}

-- Size: Expiry Year
asx_securities_t24_itch_v1_13.expiry_year.size = 2

-- Display: Expiry Year
asx_securities_t24_itch_v1_13.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
asx_securities_t24_itch_v1_13.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.expiry_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Contract Type
asx_securities_t24_itch_v1_13.contract_type = {}

-- Size: Contract Type
asx_securities_t24_itch_v1_13.contract_type.size = 1

-- Display: Contract Type
asx_securities_t24_itch_v1_13.contract_type.display = function(value)
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
asx_securities_t24_itch_v1_13.contract_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.contract_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.contract_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Instrument
asx_securities_t24_itch_v1_13.instrument = {}

-- Size: Instrument
asx_securities_t24_itch_v1_13.instrument.size = 6

-- Display: Instrument
asx_securities_t24_itch_v1_13.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
asx_securities_t24_itch_v1_13.instrument.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.instrument, range, value, display)

  return offset + length, value
end

-- Exchange
asx_securities_t24_itch_v1_13.exchange = {}

-- Size: Exchange
asx_securities_t24_itch_v1_13.exchange.size = 6

-- Display: Exchange
asx_securities_t24_itch_v1_13.exchange.display = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
asx_securities_t24_itch_v1_13.exchange.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_t24_itch_v1_13.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.exchange, range, value, display)

  return offset + length, value
end

-- Option Symbol Directory
asx_securities_t24_itch_v1_13.option_symbol_directory = {}

-- Calculate size of: Option Symbol Directory
asx_securities_t24_itch_v1_13.option_symbol_directory.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.exchange.size

  index = index + asx_securities_t24_itch_v1_13.instrument.size

  index = index + asx_securities_t24_itch_v1_13.contract_type.size

  index = index + asx_securities_t24_itch_v1_13.expiry_year.size

  index = index + asx_securities_t24_itch_v1_13.expiry_month.size

  index = index + asx_securities_t24_itch_v1_13.option_type.size

  index = index + asx_securities_t24_itch_v1_13.strike.size

  index = index + asx_securities_t24_itch_v1_13.underlying_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.price_decimal_position.size

  index = index + asx_securities_t24_itch_v1_13.price_fractional_denominator.size

  index = index + asx_securities_t24_itch_v1_13.price_minimum_tick.size

  index = index + asx_securities_t24_itch_v1_13.strike_price_decimal_position.size

  index = index + asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.size

  index = index + asx_securities_t24_itch_v1_13.strike_price_minimum_tick.size

  index = index + asx_securities_t24_itch_v1_13.last_trading_date.size

  index = index + asx_securities_t24_itch_v1_13.prior_day_settlement.size

  index = index + asx_securities_t24_itch_v1_13.volatility.size

  index = index + asx_securities_t24_itch_v1_13.financial_type.size

  index = index + asx_securities_t24_itch_v1_13.currency.size

  index = index + asx_securities_t24_itch_v1_13.lot_size_or_face_value.size

  index = index + asx_securities_t24_itch_v1_13.maturity_value.size

  index = index + asx_securities_t24_itch_v1_13.coupon_rate.size

  index = index + asx_securities_t24_itch_v1_13.payments_per_year.size

  index = index + asx_securities_t24_itch_v1_13.activated.size

  return index
end

-- Display: Option Symbol Directory
asx_securities_t24_itch_v1_13.option_symbol_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Symbol Directory
asx_securities_t24_itch_v1_13.option_symbol_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_t24_itch_v1_13.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_t24_itch_v1_13.instrument.dissect(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index, contract_type = asx_securities_t24_itch_v1_13.contract_type.dissect(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_t24_itch_v1_13.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer
  index, expiry_month = asx_securities_t24_itch_v1_13.expiry_month.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = asx_securities_t24_itch_v1_13.option_type.dissect(buffer, index, packet, parent)

  -- Strike: 4 Byte Unsigned Fixed Width Integer
  index, strike = asx_securities_t24_itch_v1_13.strike.dissect(buffer, index, packet, parent)

  -- Underlying Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, underlying_contract_number = asx_securities_t24_itch_v1_13.underlying_contract_number.dissect(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, price_decimal_position = asx_securities_t24_itch_v1_13.price_decimal_position.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_t24_itch_v1_13.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Strike Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimal_position = asx_securities_t24_itch_v1_13.strike_price_decimal_position.dissect(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, strike_price_fractional_denominator = asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, strike_price_minimum_tick = asx_securities_t24_itch_v1_13.strike_price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_t24_itch_v1_13.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: 4 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_t24_itch_v1_13.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Volatility: 4 Byte Unsigned Fixed Width Integer
  index, volatility = asx_securities_t24_itch_v1_13.volatility.dissect(buffer, index, packet, parent)

  -- Financial Type: 1 Byte Ascii String Enum with 5 values
  index, financial_type = asx_securities_t24_itch_v1_13.financial_type.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_t24_itch_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 4 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_t24_itch_v1_13.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_t24_itch_v1_13.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_t24_itch_v1_13.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_t24_itch_v1_13.payments_per_year.dissect(buffer, index, packet, parent)

  -- Activated: 1 Byte Ascii String Enum with 2 values
  index, activated = asx_securities_t24_itch_v1_13.activated.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol Directory
asx_securities_t24_itch_v1_13.option_symbol_directory.dissect = function(buffer, offset, packet, parent)
  if show.option_symbol_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.option_symbol_directory, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.option_symbol_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.option_symbol_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.option_symbol_directory.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Ratio
asx_securities_t24_itch_v1_13.secondary_ratio = {}

-- Size: Secondary Ratio
asx_securities_t24_itch_v1_13.secondary_ratio.size = 1

-- Display: Secondary Ratio
asx_securities_t24_itch_v1_13.secondary_ratio.display = function(value)
  return "Secondary Ratio: "..value
end

-- Dissect: Secondary Ratio
asx_securities_t24_itch_v1_13.secondary_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.secondary_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.secondary_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.secondary_ratio, range, value, display)

  return offset + length, value
end

-- Primary Ratio
asx_securities_t24_itch_v1_13.primary_ratio = {}

-- Size: Primary Ratio
asx_securities_t24_itch_v1_13.primary_ratio.size = 1

-- Display: Primary Ratio
asx_securities_t24_itch_v1_13.primary_ratio.display = function(value)
  return "Primary Ratio: "..value
end

-- Dissect: Primary Ratio
asx_securities_t24_itch_v1_13.primary_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.primary_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.primary_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.primary_ratio, range, value, display)

  return offset + length, value
end

-- Second Leg Contract Number
asx_securities_t24_itch_v1_13.second_leg_contract_number = {}

-- Size: Second Leg Contract Number
asx_securities_t24_itch_v1_13.second_leg_contract_number.size = 4

-- Display: Second Leg Contract Number
asx_securities_t24_itch_v1_13.second_leg_contract_number.display = function(value)
  return "Second Leg Contract Number: "..value
end

-- Dissect: Second Leg Contract Number
asx_securities_t24_itch_v1_13.second_leg_contract_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.second_leg_contract_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.second_leg_contract_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.second_leg_contract_number, range, value, display)

  return offset + length, value
end

-- First Leg Contract Number
asx_securities_t24_itch_v1_13.first_leg_contract_number = {}

-- Size: First Leg Contract Number
asx_securities_t24_itch_v1_13.first_leg_contract_number.size = 4

-- Display: First Leg Contract Number
asx_securities_t24_itch_v1_13.first_leg_contract_number.display = function(value)
  return "First Leg Contract Number: "..value
end

-- Dissect: First Leg Contract Number
asx_securities_t24_itch_v1_13.first_leg_contract_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.first_leg_contract_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.first_leg_contract_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.first_leg_contract_number, range, value, display)

  return offset + length, value
end

-- Spread Symbol Directory
asx_securities_t24_itch_v1_13.spread_symbol_directory = {}

-- Calculate size of: Spread Symbol Directory
asx_securities_t24_itch_v1_13.spread_symbol_directory.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.exchange.size

  index = index + asx_securities_t24_itch_v1_13.contract_type.size

  index = index + asx_securities_t24_itch_v1_13.first_leg_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.second_leg_contract_number.size

  index = index + asx_securities_t24_itch_v1_13.primary_ratio.size

  index = index + asx_securities_t24_itch_v1_13.secondary_ratio.size

  index = index + asx_securities_t24_itch_v1_13.price_decimal_position.size

  index = index + asx_securities_t24_itch_v1_13.price_fractional_denominator.size

  index = index + asx_securities_t24_itch_v1_13.price_minimum_tick.size

  return index
end

-- Display: Spread Symbol Directory
asx_securities_t24_itch_v1_13.spread_symbol_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Symbol Directory
asx_securities_t24_itch_v1_13.spread_symbol_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_t24_itch_v1_13.exchange.dissect(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index, contract_type = asx_securities_t24_itch_v1_13.contract_type.dissect(buffer, index, packet, parent)

  -- First Leg Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, first_leg_contract_number = asx_securities_t24_itch_v1_13.first_leg_contract_number.dissect(buffer, index, packet, parent)

  -- Second Leg Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, second_leg_contract_number = asx_securities_t24_itch_v1_13.second_leg_contract_number.dissect(buffer, index, packet, parent)

  -- Primary Ratio: 1 Byte Unsigned Fixed Width Integer
  index, primary_ratio = asx_securities_t24_itch_v1_13.primary_ratio.dissect(buffer, index, packet, parent)

  -- Secondary Ratio: 1 Byte Unsigned Fixed Width Integer
  index, secondary_ratio = asx_securities_t24_itch_v1_13.secondary_ratio.dissect(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, price_decimal_position = asx_securities_t24_itch_v1_13.price_decimal_position.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_t24_itch_v1_13.price_minimum_tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Symbol Directory
asx_securities_t24_itch_v1_13.spread_symbol_directory.dissect = function(buffer, offset, packet, parent)
  if show.spread_symbol_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.spread_symbol_directory, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.spread_symbol_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.spread_symbol_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.spread_symbol_directory.fields(buffer, offset, packet, parent)
  end
end

-- Future Symbol Directory
asx_securities_t24_itch_v1_13.future_symbol_directory = {}

-- Calculate size of: Future Symbol Directory
asx_securities_t24_itch_v1_13.future_symbol_directory.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.contract_number.size

  index = index + asx_securities_t24_itch_v1_13.exchange.size

  index = index + asx_securities_t24_itch_v1_13.instrument.size

  index = index + asx_securities_t24_itch_v1_13.contract_type.size

  index = index + asx_securities_t24_itch_v1_13.expiry_year.size

  index = index + asx_securities_t24_itch_v1_13.expiry_month.size

  index = index + asx_securities_t24_itch_v1_13.price_decimal_position.size

  index = index + asx_securities_t24_itch_v1_13.price_fractional_denominator.size

  index = index + asx_securities_t24_itch_v1_13.price_minimum_tick.size

  index = index + asx_securities_t24_itch_v1_13.last_trading_date.size

  index = index + asx_securities_t24_itch_v1_13.prior_day_settlement.size

  index = index + asx_securities_t24_itch_v1_13.financial_type.size

  index = index + asx_securities_t24_itch_v1_13.currency.size

  index = index + asx_securities_t24_itch_v1_13.lot_size_or_face_value.size

  index = index + asx_securities_t24_itch_v1_13.maturity_value.size

  index = index + asx_securities_t24_itch_v1_13.coupon_rate.size

  index = index + asx_securities_t24_itch_v1_13.payments_per_year.size

  return index
end

-- Display: Future Symbol Directory
asx_securities_t24_itch_v1_13.future_symbol_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Symbol Directory
asx_securities_t24_itch_v1_13.future_symbol_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: 4 Byte Unsigned Fixed Width Integer
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_t24_itch_v1_13.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_t24_itch_v1_13.instrument.dissect(buffer, index, packet, parent)

  -- Contract Type: 1 Byte Ascii String Enum with 7 values
  index, contract_type = asx_securities_t24_itch_v1_13.contract_type.dissect(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_t24_itch_v1_13.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer
  index, expiry_month = asx_securities_t24_itch_v1_13.expiry_month.dissect(buffer, index, packet, parent)

  -- Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, price_decimal_position = asx_securities_t24_itch_v1_13.price_decimal_position.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 2 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_t24_itch_v1_13.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_t24_itch_v1_13.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: 4 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_t24_itch_v1_13.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Financial Type: 1 Byte Ascii String Enum with 5 values
  index, financial_type = asx_securities_t24_itch_v1_13.financial_type.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_t24_itch_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 4 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_t24_itch_v1_13.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_t24_itch_v1_13.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_t24_itch_v1_13.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_t24_itch_v1_13.payments_per_year.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory
asx_securities_t24_itch_v1_13.future_symbol_directory.dissect = function(buffer, offset, packet, parent)
  if show.future_symbol_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.future_symbol_directory, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.future_symbol_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.future_symbol_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.future_symbol_directory.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
asx_securities_t24_itch_v1_13.event_code = {}

-- Size: Event Code
asx_securities_t24_itch_v1_13.event_code.size = 1

-- Display: Event Code
asx_securities_t24_itch_v1_13.event_code.display = function(value)
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
asx_securities_t24_itch_v1_13.event_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event
asx_securities_t24_itch_v1_13.system_event = {}

-- Calculate size of: System Event
asx_securities_t24_itch_v1_13.system_event.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.timestamp.size

  index = index + asx_securities_t24_itch_v1_13.trade_date.size

  index = index + asx_securities_t24_itch_v1_13.event_code.size

  return index
end

-- Display: System Event
asx_securities_t24_itch_v1_13.system_event.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event
asx_securities_t24_itch_v1_13.system_event.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 5 values
  index, event_code = asx_securities_t24_itch_v1_13.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event
asx_securities_t24_itch_v1_13.system_event.dissect = function(buffer, offset, packet, parent)
  if show.system_event then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.system_event, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.system_event.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.system_event.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.system_event.fields(buffer, offset, packet, parent)
  end
end

-- Second
asx_securities_t24_itch_v1_13.second = {}

-- Size: Second
asx_securities_t24_itch_v1_13.second.size = 4

-- Display: Second
asx_securities_t24_itch_v1_13.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
asx_securities_t24_itch_v1_13.second.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.second, range, value, display)

  return offset + length, value
end

-- Time Message
asx_securities_t24_itch_v1_13.time_message = {}

-- Calculate size of: Time Message
asx_securities_t24_itch_v1_13.time_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.second.size

  return index
end

-- Display: Time Message
asx_securities_t24_itch_v1_13.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
asx_securities_t24_itch_v1_13.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = asx_securities_t24_itch_v1_13.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
asx_securities_t24_itch_v1_13.time_message.dissect = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.time_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
asx_securities_t24_itch_v1_13.payload = {}

-- Calculate runtime size of: Payload
asx_securities_t24_itch_v1_13.payload.size = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == "T" then
    return asx_securities_t24_itch_v1_13.time_message.size(buffer, offset)
  end
  -- Size of System Event
  if message_type == "S" then
    return asx_securities_t24_itch_v1_13.system_event.size(buffer, offset)
  end
  -- Size of Future Symbol Directory
  if message_type == "f" then
    return asx_securities_t24_itch_v1_13.future_symbol_directory.size(buffer, offset)
  end
  -- Size of Spread Symbol Directory
  if message_type == "g" then
    return asx_securities_t24_itch_v1_13.spread_symbol_directory.size(buffer, offset)
  end
  -- Size of Option Symbol Directory
  if message_type == "h" then
    return asx_securities_t24_itch_v1_13.option_symbol_directory.size(buffer, offset)
  end
  -- Size of Order Book State
  if message_type == "O" then
    return asx_securities_t24_itch_v1_13.order_book_state.size(buffer, offset)
  end
  -- Size of Order Added
  if message_type == "A" then
    return asx_securities_t24_itch_v1_13.order_added.size(buffer, offset)
  end
  -- Size of Order Replaced
  if message_type == "U" then
    return asx_securities_t24_itch_v1_13.order_replaced.size(buffer, offset)
  end
  -- Size of Order Volume Cancelled
  if message_type == "X" then
    return asx_securities_t24_itch_v1_13.order_volume_cancelled.size(buffer, offset)
  end
  -- Size of Order Deleted
  if message_type == "D" then
    return asx_securities_t24_itch_v1_13.order_deleted.size(buffer, offset)
  end
  -- Size of Implied Order Added
  if message_type == "j" then
    return asx_securities_t24_itch_v1_13.implied_order_added.size(buffer, offset)
  end
  -- Size of Implied Order Replaced
  if message_type == "l" then
    return asx_securities_t24_itch_v1_13.implied_order_replaced.size(buffer, offset)
  end
  -- Size of Implied Order Deleted
  if message_type == "k" then
    return asx_securities_t24_itch_v1_13.implied_order_deleted.size(buffer, offset)
  end
  -- Size of Custom Market Order Added
  if message_type == "m" then
    return asx_securities_t24_itch_v1_13.custom_market_order_added.size(buffer, offset)
  end
  -- Size of Custom Market Order Replaced
  if message_type == "n" then
    return asx_securities_t24_itch_v1_13.custom_market_order_replaced.size(buffer, offset)
  end
  -- Size of Custom Market Order Deleted
  if message_type == "r" then
    return asx_securities_t24_itch_v1_13.custom_market_order_deleted.size(buffer, offset)
  end
  -- Size of Order Executed
  if message_type == "E" then
    return asx_securities_t24_itch_v1_13.order_executed.size(buffer, offset)
  end
  -- Size of Order Executed With Price
  if message_type == "C" then
    return asx_securities_t24_itch_v1_13.order_executed_with_price.size(buffer, offset)
  end
  -- Size of Spread Executed
  if message_type == "e" then
    return asx_securities_t24_itch_v1_13.spread_executed.size(buffer, offset)
  end
  -- Size of Trade Spread Execution Chain
  if message_type == "P" then
    return asx_securities_t24_itch_v1_13.trade_spread_execution_chain.size(buffer, offset)
  end
  -- Size of Custom Market Executed
  if message_type == "u" then
    return asx_securities_t24_itch_v1_13.custom_market_executed.size(buffer, offset)
  end
  -- Size of Custom Market Trade
  if message_type == "p" then
    return asx_securities_t24_itch_v1_13.custom_market_trade.size(buffer, offset)
  end
  -- Size of Trade Cancellation
  if message_type == "B" then
    return asx_securities_t24_itch_v1_13.trade_cancellation.size(buffer, offset)
  end
  -- Size of Equilibrium Price Auction Info
  if message_type == "Z" then
    return asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.size(buffer, offset)
  end
  -- Size of Open High Low Last Trade Adjustment
  if message_type == "t" then
    return asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.size(buffer, offset)
  end
  -- Size of Market Settlement
  if message_type == "Y" then
    return asx_securities_t24_itch_v1_13.market_settlement.size(buffer, offset)
  end
  -- Size of Ad Hoc Text
  if message_type == "x" then
    return asx_securities_t24_itch_v1_13.ad_hoc_text.size(buffer, offset)
  end
  -- Size of Request For Quote
  if message_type == "q" then
    return asx_securities_t24_itch_v1_13.request_for_quote.size(buffer, offset)
  end
  -- Size of Anomalous Order Threshold Publish
  if message_type == "W" then
    return asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.size(buffer, offset)
  end
  -- Size of Volume And Open Interest
  if message_type == "V" then
    return asx_securities_t24_itch_v1_13.volume_and_open_interest.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_t24_itch_v1_13.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_t24_itch_v1_13.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == "T" then
    return asx_securities_t24_itch_v1_13.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event
  if message_type == "S" then
    return asx_securities_t24_itch_v1_13.system_event.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Symbol Directory
  if message_type == "f" then
    return asx_securities_t24_itch_v1_13.future_symbol_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Symbol Directory
  if message_type == "g" then
    return asx_securities_t24_itch_v1_13.spread_symbol_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Symbol Directory
  if message_type == "h" then
    return asx_securities_t24_itch_v1_13.option_symbol_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State
  if message_type == "O" then
    return asx_securities_t24_itch_v1_13.order_book_state.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added
  if message_type == "A" then
    return asx_securities_t24_itch_v1_13.order_added.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced
  if message_type == "U" then
    return asx_securities_t24_itch_v1_13.order_replaced.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Volume Cancelled
  if message_type == "X" then
    return asx_securities_t24_itch_v1_13.order_volume_cancelled.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted
  if message_type == "D" then
    return asx_securities_t24_itch_v1_13.order_deleted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Added
  if message_type == "j" then
    return asx_securities_t24_itch_v1_13.implied_order_added.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Replaced
  if message_type == "l" then
    return asx_securities_t24_itch_v1_13.implied_order_replaced.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Deleted
  if message_type == "k" then
    return asx_securities_t24_itch_v1_13.implied_order_deleted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Added
  if message_type == "m" then
    return asx_securities_t24_itch_v1_13.custom_market_order_added.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Replaced
  if message_type == "n" then
    return asx_securities_t24_itch_v1_13.custom_market_order_replaced.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Deleted
  if message_type == "r" then
    return asx_securities_t24_itch_v1_13.custom_market_order_deleted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed
  if message_type == "E" then
    return asx_securities_t24_itch_v1_13.order_executed.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price
  if message_type == "C" then
    return asx_securities_t24_itch_v1_13.order_executed_with_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Executed
  if message_type == "e" then
    return asx_securities_t24_itch_v1_13.spread_executed.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Spread Execution Chain
  if message_type == "P" then
    return asx_securities_t24_itch_v1_13.trade_spread_execution_chain.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Executed
  if message_type == "u" then
    return asx_securities_t24_itch_v1_13.custom_market_executed.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Trade
  if message_type == "p" then
    return asx_securities_t24_itch_v1_13.custom_market_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation
  if message_type == "B" then
    return asx_securities_t24_itch_v1_13.trade_cancellation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Auction Info
  if message_type == "Z" then
    return asx_securities_t24_itch_v1_13.equilibrium_price_auction_info.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open High Low Last Trade Adjustment
  if message_type == "t" then
    return asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Settlement
  if message_type == "Y" then
    return asx_securities_t24_itch_v1_13.market_settlement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ad Hoc Text
  if message_type == "x" then
    return asx_securities_t24_itch_v1_13.ad_hoc_text.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote
  if message_type == "q" then
    return asx_securities_t24_itch_v1_13.request_for_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anomalous Order Threshold Publish
  if message_type == "W" then
    return asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Volume And Open Interest
  if message_type == "V" then
    return asx_securities_t24_itch_v1_13.volume_and_open_interest.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_t24_itch_v1_13.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return asx_securities_t24_itch_v1_13.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_t24_itch_v1_13.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_t24_itch_v1_13.payload.display(buffer, packet, parent)
  local element = parent:add(omi_asx_securities_t24_itch_v1_13.fields.payload, range, display)

  return asx_securities_t24_itch_v1_13.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
asx_securities_t24_itch_v1_13.message_type = {}

-- Size: Message Type
asx_securities_t24_itch_v1_13.message_type.size = 1

-- Display: Message Type
asx_securities_t24_itch_v1_13.message_type.display = function(value)
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
asx_securities_t24_itch_v1_13.message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
asx_securities_t24_itch_v1_13.message_length = {}

-- Size: Message Length
asx_securities_t24_itch_v1_13.message_length.size = 2

-- Display: Message Length
asx_securities_t24_itch_v1_13.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
asx_securities_t24_itch_v1_13.message_length.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
asx_securities_t24_itch_v1_13.message_header = {}

-- Calculate size of: Message Header
asx_securities_t24_itch_v1_13.message_header.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.message_length.size

  index = index + asx_securities_t24_itch_v1_13.message_type.size

  return index
end

-- Display: Message Header
asx_securities_t24_itch_v1_13.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asx_securities_t24_itch_v1_13.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = asx_securities_t24_itch_v1_13.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 30 values
  index, message_type = asx_securities_t24_itch_v1_13.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_securities_t24_itch_v1_13.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.message_header, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
asx_securities_t24_itch_v1_13.message = {}

-- Display: Message
asx_securities_t24_itch_v1_13.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asx_securities_t24_itch_v1_13.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_asx_securities_t24_itch_v1_13.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = asx_securities_t24_itch_v1_13.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 30 branches
  index = asx_securities_t24_itch_v1_13.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_securities_t24_itch_v1_13.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.message, buffer(offset, 0))
    local current = asx_securities_t24_itch_v1_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asx_securities_t24_itch_v1_13.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_securities_t24_itch_v1_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
asx_securities_t24_itch_v1_13.message_count = {}

-- Size: Message Count
asx_securities_t24_itch_v1_13.message_count.size = 2

-- Display: Message Count
asx_securities_t24_itch_v1_13.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asx_securities_t24_itch_v1_13.message_count.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
asx_securities_t24_itch_v1_13.sequence_number = {}

-- Size: Sequence Number
asx_securities_t24_itch_v1_13.sequence_number.size = 8

-- Display: Sequence Number
asx_securities_t24_itch_v1_13.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_securities_t24_itch_v1_13.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_t24_itch_v1_13.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Trading Service
asx_securities_t24_itch_v1_13.trading_service = {}

-- Size: Trading Service
asx_securities_t24_itch_v1_13.trading_service.size = 3

-- Display: Trading Service
asx_securities_t24_itch_v1_13.trading_service.display = function(value)
  return "Trading Service: "..value
end

-- Dissect: Trading Service
asx_securities_t24_itch_v1_13.trading_service.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trading_service.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.trading_service.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.trading_service, range, value, display)

  return offset + length, value
end

-- Session Week
asx_securities_t24_itch_v1_13.session_week = {}

-- Size: Session Week
asx_securities_t24_itch_v1_13.session_week.size = 2

-- Display: Session Week
asx_securities_t24_itch_v1_13.session_week.display = function(value)
  return "Session Week: "..value
end

-- Dissect: Session Week
asx_securities_t24_itch_v1_13.session_week.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.session_week.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.session_week.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.session_week, range, value, display)

  return offset + length, value
end

-- Session Year
asx_securities_t24_itch_v1_13.session_year = {}

-- Size: Session Year
asx_securities_t24_itch_v1_13.session_year.size = 2

-- Display: Session Year
asx_securities_t24_itch_v1_13.session_year.display = function(value)
  return "Session Year: "..value
end

-- Dissect: Session Year
asx_securities_t24_itch_v1_13.session_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.session_year.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.session_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.session_year, range, value, display)

  return offset + length, value
end

-- Protocol Version
asx_securities_t24_itch_v1_13.protocol_version = {}

-- Size: Protocol Version
asx_securities_t24_itch_v1_13.protocol_version.size = 3

-- Display: Protocol Version
asx_securities_t24_itch_v1_13.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
asx_securities_t24_itch_v1_13.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.protocol_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_t24_itch_v1_13.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Session
asx_securities_t24_itch_v1_13.session = {}

-- Calculate size of: Session
asx_securities_t24_itch_v1_13.session.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.protocol_version.size

  index = index + asx_securities_t24_itch_v1_13.session_year.size

  index = index + asx_securities_t24_itch_v1_13.session_week.size

  index = index + asx_securities_t24_itch_v1_13.trading_service.size

  return index
end

-- Display: Session
asx_securities_t24_itch_v1_13.session.display = function(buffer, offset, value, packet, parent)
  return "Session: "..value
end

-- Dissect Fields: Session
asx_securities_t24_itch_v1_13.session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Version: 3 Byte Ascii String
  index, protocol_version = asx_securities_t24_itch_v1_13.protocol_version.dissect(buffer, index, packet, parent)

  -- Session Year: 2 Byte Ascii String
  index, session_year = asx_securities_t24_itch_v1_13.session_year.dissect(buffer, index, packet, parent)

  -- Session Week: 2 Byte Ascii String
  index, session_week = asx_securities_t24_itch_v1_13.session_week.dissect(buffer, index, packet, parent)

  -- Trading Service: 3 Byte Ascii String
  index, trading_service = asx_securities_t24_itch_v1_13.trading_service.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session
asx_securities_t24_itch_v1_13.session.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.session then
    local length = asx_securities_t24_itch_v1_13.session.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = asx_securities_t24_itch_v1_13.session.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.session, range, value, display)
  end

  return asx_securities_t24_itch_v1_13.session.fields(buffer, offset, packet, parent)
end

-- Packet Header
asx_securities_t24_itch_v1_13.packet_header = {}

-- Calculate size of: Packet Header
asx_securities_t24_itch_v1_13.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_t24_itch_v1_13.session.size(buffer, offset + index)

  index = index + asx_securities_t24_itch_v1_13.sequence_number.size

  index = index + asx_securities_t24_itch_v1_13.message_count.size

  return index
end

-- Display: Packet Header
asx_securities_t24_itch_v1_13.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_t24_itch_v1_13.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Struct of 4 fields
  index, session = asx_securities_t24_itch_v1_13.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = asx_securities_t24_itch_v1_13.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = asx_securities_t24_itch_v1_13.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_t24_itch_v1_13.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.packet_header, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
asx_securities_t24_itch_v1_13.packet = {}

-- Dissect Packet
asx_securities_t24_itch_v1_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_securities_t24_itch_v1_13.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = asx_securities_t24_itch_v1_13.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_asx_securities_t24_itch_v1_13.init()
end

-- Dissector for Asx Securities T24 Itch 1.13
function omi_asx_securities_t24_itch_v1_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_asx_securities_t24_itch_v1_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_asx_securities_t24_itch_v1_13, buffer(), omi_asx_securities_t24_itch_v1_13.description, "("..buffer:len().." Bytes)")
  return asx_securities_t24_itch_v1_13.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_asx_securities_t24_itch_v1_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_asx_securities_t24_itch_v1_13_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities T24 Itch 1.13
local function omi_asx_securities_t24_itch_v1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_asx_securities_t24_itch_v1_13_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_securities_t24_itch_v1_13
  omi_asx_securities_t24_itch_v1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities T24 Itch 1.13
omi_asx_securities_t24_itch_v1_13:register_heuristic("udp", omi_asx_securities_t24_itch_v1_13_heuristic)

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
