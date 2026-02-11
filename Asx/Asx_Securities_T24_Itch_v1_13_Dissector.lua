-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Protocol
local omi_asx_securities_t24_itch_v1_13 = Proto("Asx.Securities.T24.Itch.v1.13.Lua", "Asx Securities T24 Itch 1.13")

-- Protocol table
local asx_securities_t24_itch_v1_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities T24 Itch 1.13 Fields
omi_asx_securities_t24_itch_v1_13.fields.activated = ProtoField.new("Activated", "asx.securities.t24.itch.v1.13.activated", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.all_fields = ProtoField.new("All Fields", "asx.securities.t24.itch.v1.13.allfields", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_asx_securities_t24_itch_v1_13.fields.aot_lower_price = ProtoField.new("Aot Lower Price", "asx.securities.t24.itch.v1.13.aotlowerprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.aot_price = ProtoField.new("Aot Price", "asx.securities.t24.itch.v1.13.aotprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.aot_upper_price = ProtoField.new("Aot Upper Price", "asx.securities.t24.itch.v1.13.aotupperprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.securities.t24.itch.v1.13.bestaskprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.securities.t24.itch.v1.13.bestaskquantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.securities.t24.itch.v1.13.bestbidprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.securities.t24.itch.v1.13.bestbidquantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.buyer = ProtoField.new("Buyer", "asx.securities.t24.itch.v1.13.buyer", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.buyer_order_number = ProtoField.new("Buyer Order Number", "asx.securities.t24.itch.v1.13.buyerordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.buyer_quantity_remaining = ProtoField.new("Buyer Quantity Remaining", "asx.securities.t24.itch.v1.13.buyerquantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.buying_order_number = ProtoField.new("Buying Order Number", "asx.securities.t24.itch.v1.13.buyingordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.contract_legs = ProtoField.new("Contract Legs", "asx.securities.t24.itch.v1.13.contractlegs", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.contract_number = ProtoField.new("Contract Number", "asx.securities.t24.itch.v1.13.contractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.contract_type = ProtoField.new("Contract Type", "asx.securities.t24.itch.v1.13.contracttype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.securities.t24.itch.v1.13.couponrate", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.securities.t24.itch.v1.13.cumulativevolume", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.currency = ProtoField.new("Currency", "asx.securities.t24.itch.v1.13.currency", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_number = ProtoField.new("Custom Market Order Number", "asx.securities.t24.itch.v1.13.custommarketordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_quantity_remaining = ProtoField.new("Custom Market Quantity Remaining", "asx.securities.t24.itch.v1.13.custommarketquantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.t24.itch.v1.13.equilibriumprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.etr_lower_price = ProtoField.new("Etr Lower Price", "asx.securities.t24.itch.v1.13.etrlowerprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.etr_price = ProtoField.new("Etr Price", "asx.securities.t24.itch.v1.13.etrprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.etr_upper_price = ProtoField.new("Etr Upper Price", "asx.securities.t24.itch.v1.13.etrupperprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.event_code = ProtoField.new("Event Code", "asx.securities.t24.itch.v1.13.eventcode", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.exchange = ProtoField.new("Exchange", "asx.securities.t24.itch.v1.13.exchange", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.t24.itch.v1.13.executedquantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.expiry_month = ProtoField.new("Expiry Month", "asx.securities.t24.itch.v1.13.expirymonth", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.expiry_year = ProtoField.new("Expiry Year", "asx.securities.t24.itch.v1.13.expiryyear", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.financial_type = ProtoField.new("Financial Type", "asx.securities.t24.itch.v1.13.financialtype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.first_leg_contract_number = ProtoField.new("First Leg Contract Number", "asx.securities.t24.itch.v1.13.firstlegcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.highest_trade = ProtoField.new("Highest Trade", "asx.securities.t24.itch.v1.13.highesttrade", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.highest_traded_price = ProtoField.new("Highest Traded Price", "asx.securities.t24.itch.v1.13.highesttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_asx_securities_t24_itch_v1_13.fields.instrument = ProtoField.new("Instrument", "asx.securities.t24.itch.v1.13.instrument", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.last_trade = ProtoField.new("Last Trade", "asx.securities.t24.itch.v1.13.lasttrade", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.last_traded_price = ProtoField.new("Last Traded Price", "asx.securities.t24.itch.v1.13.lasttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_asx_securities_t24_itch_v1_13.fields.last_traded_volume = ProtoField.new("Last Traded Volume", "asx.securities.t24.itch.v1.13.lasttradedvolume", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_asx_securities_t24_itch_v1_13.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.securities.t24.itch.v1.13.lasttradingdate", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.last_volume = ProtoField.new("Last Volume", "asx.securities.t24.itch.v1.13.lastvolume", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.legs = ProtoField.new("Legs", "asx.securities.t24.itch.v1.13.legs", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.lot_size_or_face_value = ProtoField.new("Lot Size Or Face Value", "asx.securities.t24.itch.v1.13.lotsizeorfacevalue", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.securities.t24.itch.v1.13.lowesttrade", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.lowest_traded_price = ProtoField.new("Lowest Traded Price", "asx.securities.t24.itch.v1.13.lowesttradedprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_asx_securities_t24_itch_v1_13.fields.market_updates = ProtoField.new("Market Updates", "asx.securities.t24.itch.v1.13.marketupdates", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.match_number = ProtoField.new("Match Number", "asx.securities.t24.itch.v1.13.matchnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.maturity_value = ProtoField.new("Maturity Value", "asx.securities.t24.itch.v1.13.maturityvalue", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.message = ProtoField.new("Message", "asx.securities.t24.itch.v1.13.message", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.message_count = ProtoField.new("Message Count", "asx.securities.t24.itch.v1.13.messagecount", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.message_header = ProtoField.new("Message Header", "asx.securities.t24.itch.v1.13.messageheader", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.message_length = ProtoField.new("Message Length", "asx.securities.t24.itch.v1.13.messagelength", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.message_type = ProtoField.new("Message Type", "asx.securities.t24.itch.v1.13.messagetype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.open_interest = ProtoField.new("Open Interest", "asx.securities.t24.itch.v1.13.openinterest", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.opening_trade = ProtoField.new("Opening Trade", "asx.securities.t24.itch.v1.13.openingtrade", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.opening_trade_price = ProtoField.new("Opening Trade Price", "asx.securities.t24.itch.v1.13.openingtradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_asx_securities_t24_itch_v1_13.fields.option_type = ProtoField.new("Option Type", "asx.securities.t24.itch.v1.13.optiontype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.securities.t24.itch.v1.13.orderbookpriority", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.order_number = ProtoField.new("Order Number", "asx.securities.t24.itch.v1.13.ordernumber", ftypes.UINT64)
omi_asx_securities_t24_itch_v1_13.fields.packet = ProtoField.new("Packet", "asx.securities.t24.itch.v1.13.packet", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.t24.itch.v1.13.packetheader", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.payload = ProtoField.new("Payload", "asx.securities.t24.itch.v1.13.payload", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.payments_per_year = ProtoField.new("Payments Per Year", "asx.securities.t24.itch.v1.13.paymentsperyear", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.price = ProtoField.new("Price", "asx.securities.t24.itch.v1.13.price", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.price_decimal_position = ProtoField.new("Price Decimal Position", "asx.securities.t24.itch.v1.13.pricedecimalposition", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.securities.t24.itch.v1.13.pricefractionaldenominator", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.securities.t24.itch.v1.13.priceminimumtick", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.primary_ratio = ProtoField.new("Primary Ratio", "asx.securities.t24.itch.v1.13.primaryratio", ftypes.UINT8)
omi_asx_securities_t24_itch_v1_13.fields.printable = ProtoField.new("Printable", "asx.securities.t24.itch.v1.13.printable", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.securities.t24.itch.v1.13.priordaysettlement", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.protocol_version = ProtoField.new("Protocol Version", "asx.securities.t24.itch.v1.13.protocolversion", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.quantity = ProtoField.new("Quantity", "asx.securities.t24.itch.v1.13.quantity", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.securities.t24.itch.v1.13.quantityremaining", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.ratio = ProtoField.new("Ratio", "asx.securities.t24.itch.v1.13.ratio", ftypes.UINT16)
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
omi_asx_securities_t24_itch_v1_13.fields.settlement_price = ProtoField.new("Settlement Price", "asx.securities.t24.itch.v1.13.settlementprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.settlement_type = ProtoField.new("Settlement Type", "asx.securities.t24.itch.v1.13.settlementtype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side = ProtoField.new("Side", "asx.securities.t24.itch.v1.13.side", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_of_buyer = ProtoField.new("Side Of Buyer", "asx.securities.t24.itch.v1.13.sideofbuyer", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.side_of_seller = ProtoField.new("Side Of Seller", "asx.securities.t24.itch.v1.13.sideofseller", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.source_id = ProtoField.new("Source Id", "asx.securities.t24.itch.v1.13.sourceid", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.spread_trade_price = ProtoField.new("Spread Trade Price", "asx.securities.t24.itch.v1.13.spreadtradeprice", ftypes.DOUBLE)
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
omi_asx_securities_t24_itch_v1_13.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.t24.itch.v1.13.tradeprice", ftypes.DOUBLE)
omi_asx_securities_t24_itch_v1_13.fields.trade_side_of_leg = ProtoField.new("Trade Side Of Leg", "asx.securities.t24.itch.v1.13.tradesideofleg", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_side_of_non_custom_order = ProtoField.new("Trade Side Of Non Custom Order", "asx.securities.t24.itch.v1.13.tradesideofnoncustomorder", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_type = ProtoField.new("Trade Type", "asx.securities.t24.itch.v1.13.tradetype", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.traded_contract_number = ProtoField.new("Traded Contract Number", "asx.securities.t24.itch.v1.13.tradedcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.trading_service = ProtoField.new("Trading Service", "asx.securities.t24.itch.v1.13.tradingservice", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trading_status = ProtoField.new("Trading Status", "asx.securities.t24.itch.v1.13.tradingstatus", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.underlying_contract_number = ProtoField.new("Underlying Contract Number", "asx.securities.t24.itch.v1.13.underlyingcontractnumber", ftypes.UINT32)
omi_asx_securities_t24_itch_v1_13.fields.voi_trade_date = ProtoField.new("Voi Trade Date", "asx.securities.t24.itch.v1.13.voitradedate", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.volatility = ProtoField.new("Volatility", "asx.securities.t24.itch.v1.13.volatility", ftypes.UINT32)

-- Asx Securities Itch T24 1.13 Application Messages
omi_asx_securities_t24_itch_v1_13.fields.ad_hoc_text_message = ProtoField.new("Ad Hoc Text Message", "asx.securities.t24.itch.v1.13.adhoctextmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.anomalous_order_threshold_publish_message = ProtoField.new("Anomalous Order Threshold Publish Message", "asx.securities.t24.itch.v1.13.anomalousorderthresholdpublishmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_executed_message = ProtoField.new("Custom Market Executed Message", "asx.securities.t24.itch.v1.13.custommarketexecutedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_added_message = ProtoField.new("Custom Market Order Added Message", "asx.securities.t24.itch.v1.13.custommarketorderaddedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_deleted_message = ProtoField.new("Custom Market Order Deleted Message", "asx.securities.t24.itch.v1.13.custommarketorderdeletedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_replaced_message = ProtoField.new("Custom Market Order Replaced Message", "asx.securities.t24.itch.v1.13.custommarketorderreplacedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.custom_market_trade_message = ProtoField.new("Custom Market Trade Message", "asx.securities.t24.itch.v1.13.custommarkettrademessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price_auction_info_message = ProtoField.new("Equilibrium Price Auction Info Message", "asx.securities.t24.itch.v1.13.equilibriumpriceauctioninfomessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.future_symbol_directory_message = ProtoField.new("Future Symbol Directory Message", "asx.securities.t24.itch.v1.13.futuresymboldirectorymessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.implied_order_added_message = ProtoField.new("Implied Order Added Message", "asx.securities.t24.itch.v1.13.impliedorderaddedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.implied_order_deleted_message = ProtoField.new("Implied Order Deleted Message", "asx.securities.t24.itch.v1.13.impliedorderdeletedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.implied_order_replaced_message = ProtoField.new("Implied Order Replaced Message", "asx.securities.t24.itch.v1.13.impliedorderreplacedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.market_settlement_message = ProtoField.new("Market Settlement Message", "asx.securities.t24.itch.v1.13.marketsettlementmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.open_high_low_last_trade_adjustment_message = ProtoField.new("Open High Low Last Trade Adjustment Message", "asx.securities.t24.itch.v1.13.openhighlowlasttradeadjustmentmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.option_symbol_directory_message = ProtoField.new("Option Symbol Directory Message", "asx.securities.t24.itch.v1.13.optionsymboldirectorymessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_added_message = ProtoField.new("Order Added Message", "asx.securities.t24.itch.v1.13.orderaddedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.securities.t24.itch.v1.13.orderbookstatemessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "asx.securities.t24.itch.v1.13.orderdeletedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.t24.itch.v1.13.orderexecutedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "asx.securities.t24.itch.v1.13.orderexecutedwithpricemessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "asx.securities.t24.itch.v1.13.orderreplacedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.order_volume_cancelled_message = ProtoField.new("Order Volume Cancelled Message", "asx.securities.t24.itch.v1.13.ordervolumecancelledmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.request_for_quote_message = ProtoField.new("Request For Quote Message", "asx.securities.t24.itch.v1.13.requestforquotemessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.spread_executed_message = ProtoField.new("Spread Executed Message", "asx.securities.t24.itch.v1.13.spreadexecutedmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.spread_symbol_directory_message = ProtoField.new("Spread Symbol Directory Message", "asx.securities.t24.itch.v1.13.spreadsymboldirectorymessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.system_event_message = ProtoField.new("System Event Message", "asx.securities.t24.itch.v1.13.systemeventmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.time_message = ProtoField.new("Time Message", "asx.securities.t24.itch.v1.13.timemessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "asx.securities.t24.itch.v1.13.tradecancellationmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.trade_spread_execution_chain_message = ProtoField.new("Trade Spread Execution Chain Message", "asx.securities.t24.itch.v1.13.tradespreadexecutionchainmessage", ftypes.STRING)
omi_asx_securities_t24_itch_v1_13.fields.volume_and_open_interest_message = ProtoField.new("Volume And Open Interest Message", "asx.securities.t24.itch.v1.13.volumeandopeninterestmessage", ftypes.STRING)

-- Asx Securities T24 Itch 1.13 generated fields
omi_asx_securities_t24_itch_v1_13.fields.contract_legs_index = ProtoField.new("Contract Legs Index", "asx.securities.t24.itch.v1.13.contractlegsindex", ftypes.UINT16)
omi_asx_securities_t24_itch_v1_13.fields.message_index = ProtoField.new("Message Index", "asx.securities.t24.itch.v1.13.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Asx Securities T24 Itch 1.13 Element Dissection Options
show.ad_hoc_text_message = true
show.anomalous_order_threshold_publish_message = true
show.contract_legs = true
show.custom_market_executed_message = true
show.custom_market_order_added_message = true
show.custom_market_order_deleted_message = true
show.custom_market_order_replaced_message = true
show.custom_market_trade_message = true
show.equilibrium_price_auction_info_message = true
show.future_symbol_directory_message = true
show.implied_order_added_message = true
show.implied_order_deleted_message = true
show.implied_order_replaced_message = true
show.market_settlement_message = true
show.market_updates = true
show.message = true
show.message_header = true
show.open_high_low_last_trade_adjustment_message = true
show.option_symbol_directory_message = true
show.order_added_message = true
show.order_book_state_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_executed_with_price_message = true
show.order_replaced_message = true
show.order_volume_cancelled_message = true
show.packet = true
show.packet_header = true
show.request_for_quote_message = true
show.session = true
show.spread_executed_message = true
show.spread_symbol_directory_message = true
show.system_event_message = true
show.time_message = true
show.trade_cancellation_message = true
show.trade_spread_execution_chain_message = true
show.volume_and_open_interest_message = true
show.payload = false

-- Register Asx Securities T24 Itch 1.13 Show Options
omi_asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text_message = Pref.bool("Show Ad Hoc Text Message", show.ad_hoc_text_message, "Parse and add Ad Hoc Text Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish_message = Pref.bool("Show Anomalous Order Threshold Publish Message", show.anomalous_order_threshold_publish_message, "Parse and add Anomalous Order Threshold Publish Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_contract_legs = Pref.bool("Show Contract Legs", show.contract_legs, "Parse and add Contract Legs to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed_message = Pref.bool("Show Custom Market Executed Message", show.custom_market_executed_message, "Parse and add Custom Market Executed Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added_message = Pref.bool("Show Custom Market Order Added Message", show.custom_market_order_added_message, "Parse and add Custom Market Order Added Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted_message = Pref.bool("Show Custom Market Order Deleted Message", show.custom_market_order_deleted_message, "Parse and add Custom Market Order Deleted Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced_message = Pref.bool("Show Custom Market Order Replaced Message", show.custom_market_order_replaced_message, "Parse and add Custom Market Order Replaced Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade_message = Pref.bool("Show Custom Market Trade Message", show.custom_market_trade_message, "Parse and add Custom Market Trade Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info_message = Pref.bool("Show Equilibrium Price Auction Info Message", show.equilibrium_price_auction_info_message, "Parse and add Equilibrium Price Auction Info Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory_message = Pref.bool("Show Future Symbol Directory Message", show.future_symbol_directory_message, "Parse and add Future Symbol Directory Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_added_message = Pref.bool("Show Implied Order Added Message", show.implied_order_added_message, "Parse and add Implied Order Added Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted_message = Pref.bool("Show Implied Order Deleted Message", show.implied_order_deleted_message, "Parse and add Implied Order Deleted Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced_message = Pref.bool("Show Implied Order Replaced Message", show.implied_order_replaced_message, "Parse and add Implied Order Replaced Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_market_settlement_message = Pref.bool("Show Market Settlement Message", show.market_settlement_message, "Parse and add Market Settlement Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_market_updates = Pref.bool("Show Market Updates", show.market_updates, "Parse and add Market Updates to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment_message = Pref.bool("Show Open High Low Last Trade Adjustment Message", show.open_high_low_last_trade_adjustment_message, "Parse and add Open High Low Last Trade Adjustment Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory_message = Pref.bool("Show Option Symbol Directory Message", show.option_symbol_directory_message, "Parse and add Option Symbol Directory Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_added_message = Pref.bool("Show Order Added Message", show.order_added_message, "Parse and add Order Added Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled_message = Pref.bool("Show Order Volume Cancelled Message", show.order_volume_cancelled_message, "Parse and add Order Volume Cancelled Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_request_for_quote_message = Pref.bool("Show Request For Quote Message", show.request_for_quote_message, "Parse and add Request For Quote Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_session = Pref.bool("Show Session", show.session, "Parse and add Session to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_spread_executed_message = Pref.bool("Show Spread Executed Message", show.spread_executed_message, "Parse and add Spread Executed Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory_message = Pref.bool("Show Spread Symbol Directory Message", show.spread_symbol_directory_message, "Parse and add Spread Symbol Directory Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation_message = Pref.bool("Show Trade Cancellation Message", show.trade_cancellation_message, "Parse and add Trade Cancellation Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain_message = Pref.bool("Show Trade Spread Execution Chain Message", show.trade_spread_execution_chain_message, "Parse and add Trade Spread Execution Chain Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest_message = Pref.bool("Show Volume And Open Interest Message", show.volume_and_open_interest_message, "Parse and add Volume And Open Interest Message to protocol tree")
omi_asx_securities_t24_itch_v1_13.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_asx_securities_t24_itch_v1_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ad_hoc_text_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text_message then
    show.ad_hoc_text_message = omi_asx_securities_t24_itch_v1_13.prefs.show_ad_hoc_text_message
    changed = true
  end
  if show.anomalous_order_threshold_publish_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish_message then
    show.anomalous_order_threshold_publish_message = omi_asx_securities_t24_itch_v1_13.prefs.show_anomalous_order_threshold_publish_message
    changed = true
  end
  if show.contract_legs ~= omi_asx_securities_t24_itch_v1_13.prefs.show_contract_legs then
    show.contract_legs = omi_asx_securities_t24_itch_v1_13.prefs.show_contract_legs
    changed = true
  end
  if show.custom_market_executed_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed_message then
    show.custom_market_executed_message = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_executed_message
    changed = true
  end
  if show.custom_market_order_added_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added_message then
    show.custom_market_order_added_message = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_added_message
    changed = true
  end
  if show.custom_market_order_deleted_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted_message then
    show.custom_market_order_deleted_message = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_deleted_message
    changed = true
  end
  if show.custom_market_order_replaced_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced_message then
    show.custom_market_order_replaced_message = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_order_replaced_message
    changed = true
  end
  if show.custom_market_trade_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade_message then
    show.custom_market_trade_message = omi_asx_securities_t24_itch_v1_13.prefs.show_custom_market_trade_message
    changed = true
  end
  if show.equilibrium_price_auction_info_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info_message then
    show.equilibrium_price_auction_info_message = omi_asx_securities_t24_itch_v1_13.prefs.show_equilibrium_price_auction_info_message
    changed = true
  end
  if show.future_symbol_directory_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory_message then
    show.future_symbol_directory_message = omi_asx_securities_t24_itch_v1_13.prefs.show_future_symbol_directory_message
    changed = true
  end
  if show.implied_order_added_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_added_message then
    show.implied_order_added_message = omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_added_message
    changed = true
  end
  if show.implied_order_deleted_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted_message then
    show.implied_order_deleted_message = omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_deleted_message
    changed = true
  end
  if show.implied_order_replaced_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced_message then
    show.implied_order_replaced_message = omi_asx_securities_t24_itch_v1_13.prefs.show_implied_order_replaced_message
    changed = true
  end
  if show.market_settlement_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_market_settlement_message then
    show.market_settlement_message = omi_asx_securities_t24_itch_v1_13.prefs.show_market_settlement_message
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
  if show.open_high_low_last_trade_adjustment_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment_message then
    show.open_high_low_last_trade_adjustment_message = omi_asx_securities_t24_itch_v1_13.prefs.show_open_high_low_last_trade_adjustment_message
    changed = true
  end
  if show.option_symbol_directory_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory_message then
    show.option_symbol_directory_message = omi_asx_securities_t24_itch_v1_13.prefs.show_option_symbol_directory_message
    changed = true
  end
  if show.order_added_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_added_message then
    show.order_added_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_added_message
    changed = true
  end
  if show.order_book_state_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_book_state_message then
    show.order_book_state_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_deleted_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_message then
    show.order_executed_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replaced_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_replaced_message
    changed = true
  end
  if show.order_volume_cancelled_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled_message then
    show.order_volume_cancelled_message = omi_asx_securities_t24_itch_v1_13.prefs.show_order_volume_cancelled_message
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
  if show.request_for_quote_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_request_for_quote_message then
    show.request_for_quote_message = omi_asx_securities_t24_itch_v1_13.prefs.show_request_for_quote_message
    changed = true
  end
  if show.session ~= omi_asx_securities_t24_itch_v1_13.prefs.show_session then
    show.session = omi_asx_securities_t24_itch_v1_13.prefs.show_session
    changed = true
  end
  if show.spread_executed_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_spread_executed_message then
    show.spread_executed_message = omi_asx_securities_t24_itch_v1_13.prefs.show_spread_executed_message
    changed = true
  end
  if show.spread_symbol_directory_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory_message then
    show.spread_symbol_directory_message = omi_asx_securities_t24_itch_v1_13.prefs.show_spread_symbol_directory_message
    changed = true
  end
  if show.system_event_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_system_event_message then
    show.system_event_message = omi_asx_securities_t24_itch_v1_13.prefs.show_system_event_message
    changed = true
  end
  if show.time_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_time_message then
    show.time_message = omi_asx_securities_t24_itch_v1_13.prefs.show_time_message
    changed = true
  end
  if show.trade_cancellation_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation_message then
    show.trade_cancellation_message = omi_asx_securities_t24_itch_v1_13.prefs.show_trade_cancellation_message
    changed = true
  end
  if show.trade_spread_execution_chain_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain_message then
    show.trade_spread_execution_chain_message = omi_asx_securities_t24_itch_v1_13.prefs.show_trade_spread_execution_chain_message
    changed = true
  end
  if show.volume_and_open_interest_message ~= omi_asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest_message then
    show.volume_and_open_interest_message = omi_asx_securities_t24_itch_v1_13.prefs.show_volume_and_open_interest_message
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

-- Volume And Open Interest Message
asx_securities_t24_itch_v1_13.volume_and_open_interest_message = {}

-- Size: Volume And Open Interest Message
asx_securities_t24_itch_v1_13.volume_and_open_interest_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.cumulative_volume.size + 
  asx_securities_t24_itch_v1_13.open_interest.size + 
  asx_securities_t24_itch_v1_13.voi_trade_date.size

-- Display: Volume And Open Interest Message
asx_securities_t24_itch_v1_13.volume_and_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volume And Open Interest Message
asx_securities_t24_itch_v1_13.volume_and_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Cumulative Volume: Numeric
  index, cumulative_volume = asx_securities_t24_itch_v1_13.cumulative_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = asx_securities_t24_itch_v1_13.open_interest.dissect(buffer, index, packet, parent)

  -- Voi Trade Date: Numeric
  index, voi_trade_date = asx_securities_t24_itch_v1_13.voi_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume And Open Interest Message
asx_securities_t24_itch_v1_13.volume_and_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.volume_and_open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.volume_and_open_interest_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.volume_and_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.volume_and_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.volume_and_open_interest_message.fields(buffer, offset, packet, parent)
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

-- Translate: Etr Lower Price
asx_securities_t24_itch_v1_13.etr_lower_price.translate = function(raw)
  return raw/100
end

-- Dissect: Etr Lower Price
asx_securities_t24_itch_v1_13.etr_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.etr_lower_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.etr_lower_price.translate(raw)
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

-- Translate: Etr Upper Price
asx_securities_t24_itch_v1_13.etr_upper_price.translate = function(raw)
  return raw/100
end

-- Dissect: Etr Upper Price
asx_securities_t24_itch_v1_13.etr_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.etr_upper_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.etr_upper_price.translate(raw)
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

-- Translate: Etr Price
asx_securities_t24_itch_v1_13.etr_price.translate = function(raw)
  return raw/100
end

-- Dissect: Etr Price
asx_securities_t24_itch_v1_13.etr_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.etr_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.etr_price.translate(raw)
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

-- Translate: Aot Lower Price
asx_securities_t24_itch_v1_13.aot_lower_price.translate = function(raw)
  return raw/100
end

-- Dissect: Aot Lower Price
asx_securities_t24_itch_v1_13.aot_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.aot_lower_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.aot_lower_price.translate(raw)
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

-- Translate: Aot Upper Price
asx_securities_t24_itch_v1_13.aot_upper_price.translate = function(raw)
  return raw/100
end

-- Dissect: Aot Upper Price
asx_securities_t24_itch_v1_13.aot_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.aot_upper_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.aot_upper_price.translate(raw)
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

-- Translate: Aot Price
asx_securities_t24_itch_v1_13.aot_price.translate = function(raw)
  return raw/100
end

-- Dissect: Aot Price
asx_securities_t24_itch_v1_13.aot_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.aot_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.aot_price.translate(raw)
  local display = asx_securities_t24_itch_v1_13.aot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.aot_price, range, value, display)

  return offset + length, value
end

-- Anomalous Order Threshold Publish Message
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message = {}

-- Size: Anomalous Order Threshold Publish Message
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.aot_price.size + 
  asx_securities_t24_itch_v1_13.aot_upper_price.size + 
  asx_securities_t24_itch_v1_13.aot_lower_price.size + 
  asx_securities_t24_itch_v1_13.etr_price.size + 
  asx_securities_t24_itch_v1_13.etr_upper_price.size + 
  asx_securities_t24_itch_v1_13.etr_lower_price.size

-- Display: Anomalous Order Threshold Publish Message
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish Message
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Aot Price: Price
  index, aot_price = asx_securities_t24_itch_v1_13.aot_price.dissect(buffer, index, packet, parent)

  -- Aot Upper Price: Price
  index, aot_upper_price = asx_securities_t24_itch_v1_13.aot_upper_price.dissect(buffer, index, packet, parent)

  -- Aot Lower Price: Price
  index, aot_lower_price = asx_securities_t24_itch_v1_13.aot_lower_price.dissect(buffer, index, packet, parent)

  -- Etr Price: Price
  index, etr_price = asx_securities_t24_itch_v1_13.etr_price.dissect(buffer, index, packet, parent)

  -- Etr Upper Price: Price
  index, etr_upper_price = asx_securities_t24_itch_v1_13.etr_upper_price.dissect(buffer, index, packet, parent)

  -- Etr Lower Price: Price
  index, etr_lower_price = asx_securities_t24_itch_v1_13.etr_lower_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish Message
asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.dissect = function(buffer, offset, packet, parent)
  if show.anomalous_order_threshold_publish_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.anomalous_order_threshold_publish_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.fields(buffer, offset, packet, parent)
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

-- Translate: Price
asx_securities_t24_itch_v1_13.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
asx_securities_t24_itch_v1_13.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.price.translate(raw)
  local display = asx_securities_t24_itch_v1_13.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.price, range, value, display)

  return offset + length, value
end

-- Request For Quote Message
asx_securities_t24_itch_v1_13.request_for_quote_message = {}

-- Size: Request For Quote Message
asx_securities_t24_itch_v1_13.request_for_quote_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.price.size + 
  asx_securities_t24_itch_v1_13.quantity.size

-- Display: Request For Quote Message
asx_securities_t24_itch_v1_13.request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote Message
asx_securities_t24_itch_v1_13.request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Message
asx_securities_t24_itch_v1_13.request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.request_for_quote_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.request_for_quote_message.fields(buffer, offset, packet, parent)
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

-- Ad Hoc Text Message
asx_securities_t24_itch_v1_13.ad_hoc_text_message = {}

-- Size: Ad Hoc Text Message
asx_securities_t24_itch_v1_13.ad_hoc_text_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.source_id.size + 
  asx_securities_t24_itch_v1_13.text_message.size

-- Display: Ad Hoc Text Message
asx_securities_t24_itch_v1_13.ad_hoc_text_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ad Hoc Text Message
asx_securities_t24_itch_v1_13.ad_hoc_text_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Source Id: Alpha
  index, source_id = asx_securities_t24_itch_v1_13.source_id.dissect(buffer, index, packet, parent)

  -- Text Message: Alpha
  index, text_message = asx_securities_t24_itch_v1_13.text_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ad Hoc Text Message
asx_securities_t24_itch_v1_13.ad_hoc_text_message.dissect = function(buffer, offset, packet, parent)
  if show.ad_hoc_text_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.ad_hoc_text_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.ad_hoc_text_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.ad_hoc_text_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.ad_hoc_text_message.fields(buffer, offset, packet, parent)
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

-- Translate: Settlement Price
asx_securities_t24_itch_v1_13.settlement_price.translate = function(raw)
  return raw/100
end

-- Dissect: Settlement Price
asx_securities_t24_itch_v1_13.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.settlement_price.translate(raw)
  local display = asx_securities_t24_itch_v1_13.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Market Settlement Message
asx_securities_t24_itch_v1_13.market_settlement_message = {}

-- Size: Market Settlement Message
asx_securities_t24_itch_v1_13.market_settlement_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.settlement_price.size + 
  asx_securities_t24_itch_v1_13.volatility.size + 
  asx_securities_t24_itch_v1_13.settlement_type.size

-- Display: Market Settlement Message
asx_securities_t24_itch_v1_13.market_settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Settlement Message
asx_securities_t24_itch_v1_13.market_settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price
  index, settlement_price = asx_securities_t24_itch_v1_13.settlement_price.dissect(buffer, index, packet, parent)

  -- Volatility: Numeric
  index, volatility = asx_securities_t24_itch_v1_13.volatility.dissect(buffer, index, packet, parent)

  -- Settlement Type: Alpha
  index, settlement_type = asx_securities_t24_itch_v1_13.settlement_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement Message
asx_securities_t24_itch_v1_13.market_settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.market_settlement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.market_settlement_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.market_settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.market_settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.market_settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Updates
asx_securities_t24_itch_v1_13.market_updates = {}

-- Size: Market Updates
asx_securities_t24_itch_v1_13.market_updates.size = 1

-- Display: Market Updates
asx_securities_t24_itch_v1_13.market_updates.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Opening Trade Price flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Opening Trade Price"
  end
  -- Is Highest Traded Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Highest Traded Price"
  end
  -- Is Lowest Traded Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Lowest Traded Price"
  end
  -- Is Total Traded Volume and Total Trades flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Total Traded Volume and Total Trades"
  end
  -- Is Last Traded Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Last Traded Price"
  end
  -- Is Last Traded Volume flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Last Traded Volume"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Updates
asx_securities_t24_itch_v1_13.market_updates.bits = function(range, value, packet, parent)

  -- Opening Trade Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.opening_trade_price, range, value)

  -- Highest Traded Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.highest_traded_price, range, value)

  -- Lowest Traded Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.lowest_traded_price, range, value)

  -- Total Traded Volume and Total Trades: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.total_traded_volume_and_total_trades, range, value)

  -- Last Traded Price: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_traded_price, range, value)

  -- Last Traded Volume: 1 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.last_traded_volume, range, value)

  -- All Fields: 2 Bit
  parent:add(omi_asx_securities_t24_itch_v1_13.fields.all_fields, range, value)
end

-- Dissect: Market Updates
asx_securities_t24_itch_v1_13.market_updates.dissect = function(buffer, offset, packet, parent)
  local size = asx_securities_t24_itch_v1_13.market_updates.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = asx_securities_t24_itch_v1_13.market_updates.display(range, value, packet, parent)
  local element = parent:add(omi_asx_securities_t24_itch_v1_13.fields.market_updates, range, display)

  if show.market_updates then
    asx_securities_t24_itch_v1_13.market_updates.bits(range, value, packet, element)
  end

  return offset + size, value
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

-- Translate: Last Trade
asx_securities_t24_itch_v1_13.last_trade.translate = function(raw)
  return raw/100
end

-- Dissect: Last Trade
asx_securities_t24_itch_v1_13.last_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.last_trade.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.last_trade.translate(raw)
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

-- Translate: Lowest Trade
asx_securities_t24_itch_v1_13.lowest_trade.translate = function(raw)
  return raw/100
end

-- Dissect: Lowest Trade
asx_securities_t24_itch_v1_13.lowest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.lowest_trade.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.lowest_trade.translate(raw)
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

-- Translate: Highest Trade
asx_securities_t24_itch_v1_13.highest_trade.translate = function(raw)
  return raw/100
end

-- Dissect: Highest Trade
asx_securities_t24_itch_v1_13.highest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.highest_trade.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.highest_trade.translate(raw)
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

-- Translate: Opening Trade
asx_securities_t24_itch_v1_13.opening_trade.translate = function(raw)
  return raw/100
end

-- Dissect: Opening Trade
asx_securities_t24_itch_v1_13.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.opening_trade.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.opening_trade.translate(raw)
  local display = asx_securities_t24_itch_v1_13.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Open High Low Last Trade Adjustment Message
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message = {}

-- Size: Open High Low Last Trade Adjustment Message
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.opening_trade.size + 
  asx_securities_t24_itch_v1_13.highest_trade.size + 
  asx_securities_t24_itch_v1_13.lowest_trade.size + 
  asx_securities_t24_itch_v1_13.last_trade.size + 
  asx_securities_t24_itch_v1_13.last_volume.size + 
  asx_securities_t24_itch_v1_13.total_traded_volume.size + 
  asx_securities_t24_itch_v1_13.total_trades.size + 
  asx_securities_t24_itch_v1_13.market_updates.size

-- Display: Open High Low Last Trade Adjustment Message
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open High Low Last Trade Adjustment Message
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Opening Trade: Price
  index, opening_trade = asx_securities_t24_itch_v1_13.opening_trade.dissect(buffer, index, packet, parent)

  -- Highest Trade: Price
  index, highest_trade = asx_securities_t24_itch_v1_13.highest_trade.dissect(buffer, index, packet, parent)

  -- Lowest Trade: Price
  index, lowest_trade = asx_securities_t24_itch_v1_13.lowest_trade.dissect(buffer, index, packet, parent)

  -- Last Trade: Price
  index, last_trade = asx_securities_t24_itch_v1_13.last_trade.dissect(buffer, index, packet, parent)

  -- Last Volume: Numeric
  index, last_volume = asx_securities_t24_itch_v1_13.last_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Volume: Numeric
  index, total_traded_volume = asx_securities_t24_itch_v1_13.total_traded_volume.dissect(buffer, index, packet, parent)

  -- Total Trades: Numeric
  index, total_trades = asx_securities_t24_itch_v1_13.total_trades.dissect(buffer, index, packet, parent)

  -- Market Updates: Struct of 7 fields
  index, market_updates = asx_securities_t24_itch_v1_13.market_updates.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low Last Trade Adjustment Message
asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.dissect = function(buffer, offset, packet, parent)
  if show.open_high_low_last_trade_adjustment_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.open_high_low_last_trade_adjustment_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.fields(buffer, offset, packet, parent)
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

-- Translate: Best Ask Price
asx_securities_t24_itch_v1_13.best_ask_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Ask Price
asx_securities_t24_itch_v1_13.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.best_ask_price.translate(raw)
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

-- Translate: Best Bid Price
asx_securities_t24_itch_v1_13.best_bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Bid Price
asx_securities_t24_itch_v1_13.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.best_bid_price.translate(raw)
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

-- Translate: Equilibrium Price
asx_securities_t24_itch_v1_13.equilibrium_price.translate = function(raw)
  return raw/100
end

-- Dissect: Equilibrium Price
asx_securities_t24_itch_v1_13.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.equilibrium_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.equilibrium_price.translate(raw)
  local display = asx_securities_t24_itch_v1_13.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Price Auction Info Message
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message = {}

-- Size: Equilibrium Price Auction Info Message
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.equilibrium_price.size + 
  asx_securities_t24_itch_v1_13.best_bid_price.size + 
  asx_securities_t24_itch_v1_13.best_ask_price.size + 
  asx_securities_t24_itch_v1_13.best_bid_quantity.size + 
  asx_securities_t24_itch_v1_13.best_ask_quantity.size

-- Display: Equilibrium Price Auction Info Message
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Auction Info Message
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = asx_securities_t24_itch_v1_13.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = asx_securities_t24_itch_v1_13.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = asx_securities_t24_itch_v1_13.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Numeric
  index, best_bid_quantity = asx_securities_t24_itch_v1_13.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Numeric
  index, best_ask_quantity = asx_securities_t24_itch_v1_13.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Auction Info Message
asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.dissect = function(buffer, offset, packet, parent)
  if show.equilibrium_price_auction_info_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.equilibrium_price_auction_info_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.fields(buffer, offset, packet, parent)
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

-- Trade Cancellation Message
asx_securities_t24_itch_v1_13.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
asx_securities_t24_itch_v1_13.trade_cancellation_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.match_number.size

-- Display: Trade Cancellation Message
asx_securities_t24_itch_v1_13.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
asx_securities_t24_itch_v1_13.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
asx_securities_t24_itch_v1_13.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_cancellation_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.trade_cancellation_message.fields(buffer, offset, packet, parent)
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

-- Translate: Trade Price
asx_securities_t24_itch_v1_13.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
asx_securities_t24_itch_v1_13.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.trade_price.translate(raw)
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

-- Custom Market Trade Message
asx_securities_t24_itch_v1_13.custom_market_trade_message = {}

-- Size: Custom Market Trade Message
asx_securities_t24_itch_v1_13.custom_market_trade_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.custom_market_order_number.size + 
  asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.trade_type.size + 
  asx_securities_t24_itch_v1_13.match_number.size + 
  asx_securities_t24_itch_v1_13.executed_quantity.size + 
  asx_securities_t24_itch_v1_13.trade_price.size + 
  asx_securities_t24_itch_v1_13.traded_contract_number.size + 
  asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.size + 
  asx_securities_t24_itch_v1_13.printable.size

-- Display: Custom Market Trade Message
asx_securities_t24_itch_v1_13.custom_market_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Trade Message
asx_securities_t24_itch_v1_13.custom_market_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Custom Market Order Number: Numeric
  index, custom_market_order_number = asx_securities_t24_itch_v1_13.custom_market_order_number.dissect(buffer, index, packet, parent)

  -- Custom Market Quantity Remaining: Numeric
  index, custom_market_quantity_remaining = asx_securities_t24_itch_v1_13.custom_market_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: Numeric
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Trade Side Of Non Custom Order: Alpha
  index, trade_side_of_non_custom_order = asx_securities_t24_itch_v1_13.trade_side_of_non_custom_order.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Trade Message
asx_securities_t24_itch_v1_13.custom_market_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_trade_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_trade_message.fields(buffer, offset, packet, parent)
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

-- Custom Market Executed Message
asx_securities_t24_itch_v1_13.custom_market_executed_message = {}

-- Size: Custom Market Executed Message
asx_securities_t24_itch_v1_13.custom_market_executed_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.trade_type.size + 
  asx_securities_t24_itch_v1_13.match_number.size + 
  asx_securities_t24_itch_v1_13.executed_quantity.size + 
  asx_securities_t24_itch_v1_13.trade_price.size + 
  asx_securities_t24_itch_v1_13.traded_contract_number.size + 
  asx_securities_t24_itch_v1_13.trade_side_of_leg.size + 
  asx_securities_t24_itch_v1_13.printable.size

-- Display: Custom Market Executed Message
asx_securities_t24_itch_v1_13.custom_market_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Executed Message
asx_securities_t24_itch_v1_13.custom_market_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: Numeric
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Trade Side Of Leg: Alpha
  index, trade_side_of_leg = asx_securities_t24_itch_v1_13.trade_side_of_leg.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Executed Message
asx_securities_t24_itch_v1_13.custom_market_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_executed_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_executed_message.fields(buffer, offset, packet, parent)
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

-- Translate: Spread Trade Price
asx_securities_t24_itch_v1_13.spread_trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Spread Trade Price
asx_securities_t24_itch_v1_13.spread_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.spread_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.spread_trade_price.translate(raw)
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

-- Trade Spread Execution Chain Message
asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message = {}

-- Size: Trade Spread Execution Chain Message
asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.buyer.size + 
  asx_securities_t24_itch_v1_13.side_of_buyer.size + 
  asx_securities_t24_itch_v1_13.buyer_order_number.size + 
  asx_securities_t24_itch_v1_13.buyer_quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.seller_contract_number.size + 
  asx_securities_t24_itch_v1_13.side_of_seller.size + 
  asx_securities_t24_itch_v1_13.selling_order_number.size + 
  asx_securities_t24_itch_v1_13.seller_quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.trade_type.size + 
  asx_securities_t24_itch_v1_13.match_number.size + 
  asx_securities_t24_itch_v1_13.executed_quantity.size + 
  asx_securities_t24_itch_v1_13.trade_price.size + 
  asx_securities_t24_itch_v1_13.traded_contract_number.size + 
  asx_securities_t24_itch_v1_13.spread_trade_price.size + 
  asx_securities_t24_itch_v1_13.printable.size

-- Display: Trade Spread Execution Chain Message
asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Spread Execution Chain Message
asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Buyer: Numeric
  index, buyer = asx_securities_t24_itch_v1_13.buyer.dissect(buffer, index, packet, parent)

  -- Side Of Buyer: Alpha
  index, side_of_buyer = asx_securities_t24_itch_v1_13.side_of_buyer.dissect(buffer, index, packet, parent)

  -- Buyer Order Number: Numeric
  index, buyer_order_number = asx_securities_t24_itch_v1_13.buyer_order_number.dissect(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: Numeric
  index, buyer_quantity_remaining = asx_securities_t24_itch_v1_13.buyer_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Seller Contract Number: Numeric
  index, seller_contract_number = asx_securities_t24_itch_v1_13.seller_contract_number.dissect(buffer, index, packet, parent)

  -- Side Of Seller: Alpha
  index, side_of_seller = asx_securities_t24_itch_v1_13.side_of_seller.dissect(buffer, index, packet, parent)

  -- Selling Order Number: Numeric
  index, selling_order_number = asx_securities_t24_itch_v1_13.selling_order_number.dissect(buffer, index, packet, parent)

  -- Seller Quantity Remaining: Numeric
  index, seller_quantity_remaining = asx_securities_t24_itch_v1_13.seller_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: Numeric
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Spread Trade Price: Price
  index, spread_trade_price = asx_securities_t24_itch_v1_13.spread_trade_price.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Spread Execution Chain Message
asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_spread_execution_chain_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.trade_spread_execution_chain_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Executed Message
asx_securities_t24_itch_v1_13.spread_executed_message = {}

-- Size: Spread Executed Message
asx_securities_t24_itch_v1_13.spread_executed_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.trade_type.size + 
  asx_securities_t24_itch_v1_13.match_number.size + 
  asx_securities_t24_itch_v1_13.executed_quantity.size + 
  asx_securities_t24_itch_v1_13.trade_price.size + 
  asx_securities_t24_itch_v1_13.traded_contract_number.size + 
  asx_securities_t24_itch_v1_13.spread_trade_price.size + 
  asx_securities_t24_itch_v1_13.trade_side_of_leg.size + 
  asx_securities_t24_itch_v1_13.printable.size

-- Display: Spread Executed Message
asx_securities_t24_itch_v1_13.spread_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Executed Message
asx_securities_t24_itch_v1_13.spread_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  -- Traded Contract Number: Numeric
  index, traded_contract_number = asx_securities_t24_itch_v1_13.traded_contract_number.dissect(buffer, index, packet, parent)

  -- Spread Trade Price: Price
  index, spread_trade_price = asx_securities_t24_itch_v1_13.spread_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Side Of Leg: Alpha
  index, trade_side_of_leg = asx_securities_t24_itch_v1_13.trade_side_of_leg.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = asx_securities_t24_itch_v1_13.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Executed Message
asx_securities_t24_itch_v1_13.spread_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.spread_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.spread_executed_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.spread_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.spread_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.spread_executed_message.fields(buffer, offset, packet, parent)
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

-- Order Executed With Price Message
asx_securities_t24_itch_v1_13.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
asx_securities_t24_itch_v1_13.order_executed_with_price_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.buying_order_number.size + 
  asx_securities_t24_itch_v1_13.buyer_quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.selling_order_number.size + 
  asx_securities_t24_itch_v1_13.seller_quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.trade_type.size + 
  asx_securities_t24_itch_v1_13.match_number.size + 
  asx_securities_t24_itch_v1_13.executed_quantity.size + 
  asx_securities_t24_itch_v1_13.trade_price.size

-- Display: Order Executed With Price Message
asx_securities_t24_itch_v1_13.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
asx_securities_t24_itch_v1_13.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Buying Order Number: Numeric
  index, buying_order_number = asx_securities_t24_itch_v1_13.buying_order_number.dissect(buffer, index, packet, parent)

  -- Buyer Quantity Remaining: Numeric
  index, buyer_quantity_remaining = asx_securities_t24_itch_v1_13.buyer_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Selling Order Number: Numeric
  index, selling_order_number = asx_securities_t24_itch_v1_13.selling_order_number.dissect(buffer, index, packet, parent)

  -- Seller Quantity Remaining: Numeric
  index, seller_quantity_remaining = asx_securities_t24_itch_v1_13.seller_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
asx_securities_t24_itch_v1_13.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
asx_securities_t24_itch_v1_13.order_executed_message = {}

-- Size: Order Executed Message
asx_securities_t24_itch_v1_13.order_executed_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.quantity_remaining.size + 
  asx_securities_t24_itch_v1_13.trade_type.size + 
  asx_securities_t24_itch_v1_13.match_number.size + 
  asx_securities_t24_itch_v1_13.executed_quantity.size + 
  asx_securities_t24_itch_v1_13.trade_price.size

-- Display: Order Executed Message
asx_securities_t24_itch_v1_13.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_t24_itch_v1_13.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_securities_t24_itch_v1_13.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_securities_t24_itch_v1_13.trade_type.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = asx_securities_t24_itch_v1_13.match_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_securities_t24_itch_v1_13.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_securities_t24_itch_v1_13.trade_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_t24_itch_v1_13.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_executed_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Custom Market Order Deleted Message
asx_securities_t24_itch_v1_13.custom_market_order_deleted_message = {}

-- Size: Custom Market Order Deleted Message
asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.order_number.size

-- Display: Custom Market Order Deleted Message
asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Order Deleted Message
asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Deleted Message
asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_deleted_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.fields(buffer, offset, packet, parent)
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

-- Custom Market Order Replaced Message
asx_securities_t24_itch_v1_13.custom_market_order_replaced_message = {}

-- Size: Custom Market Order Replaced Message
asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.order_book_priority.size + 
  asx_securities_t24_itch_v1_13.quantity.size

-- Display: Custom Market Order Replaced Message
asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Order Replaced Message
asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Market Order Replaced Message
asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_replaced_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Ratio
asx_securities_t24_itch_v1_13.ratio = {}

-- Size: Ratio
asx_securities_t24_itch_v1_13.ratio.size = 2

-- Display: Ratio
asx_securities_t24_itch_v1_13.ratio.display = function(value)
  return "Ratio: "..value
end

-- Dissect: Ratio
asx_securities_t24_itch_v1_13.ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_t24_itch_v1_13.ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_t24_itch_v1_13.fields.ratio, range, value, display)

  return offset + length, value
end

-- Contract Legs
asx_securities_t24_itch_v1_13.contract_legs = {}

-- Size: Contract Legs
asx_securities_t24_itch_v1_13.contract_legs.size =
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.ratio.size + 
  asx_securities_t24_itch_v1_13.price.size

-- Display: Contract Legs
asx_securities_t24_itch_v1_13.contract_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Legs
asx_securities_t24_itch_v1_13.contract_legs.fields = function(buffer, offset, packet, parent, contract_legs_index)
  local index = offset

  -- Implicit Contract Legs Index
  if contract_legs_index ~= nil then
    local iteration = parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_legs_index, contract_legs_index)
    iteration:set_generated()
  end

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Ratio: Numeric
  index, ratio = asx_securities_t24_itch_v1_13.ratio.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Legs
asx_securities_t24_itch_v1_13.contract_legs.dissect = function(buffer, offset, packet, parent, contract_legs_index)
  if show.contract_legs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.contract_legs, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.contract_legs.fields(buffer, offset, packet, parent, contract_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.contract_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.contract_legs.fields(buffer, offset, packet, parent, contract_legs_index)
  end
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

-- Custom Market Order Added Message
asx_securities_t24_itch_v1_13.custom_market_order_added_message = {}

-- Size: Custom Market Order Added Message
asx_securities_t24_itch_v1_13.custom_market_order_added_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.order_book_priority.size + 
  asx_securities_t24_itch_v1_13.quantity.size + 
  asx_securities_t24_itch_v1_13.legs.size + 
  asx_securities_t24_itch_v1_13.contract_legs.size

-- Display: Custom Market Order Added Message
asx_securities_t24_itch_v1_13.custom_market_order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Market Order Added Message
asx_securities_t24_itch_v1_13.custom_market_order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Legs: Numeric
  index, legs = asx_securities_t24_itch_v1_13.legs.dissect(buffer, index, packet, parent)

  -- Array Of: Contract Legs
  for contract_legs_index = 1, 6 do
    index, contract_legs = asx_securities_t24_itch_v1_13.contract_legs.dissect(buffer, index, packet, parent, contract_legs_index)
  end

  return index
end

-- Dissect: Custom Market Order Added Message
asx_securities_t24_itch_v1_13.custom_market_order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.custom_market_order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.custom_market_order_added_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.custom_market_order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.custom_market_order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.custom_market_order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Deleted Message
asx_securities_t24_itch_v1_13.implied_order_deleted_message = {}

-- Size: Implied Order Deleted Message
asx_securities_t24_itch_v1_13.implied_order_deleted_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size

-- Display: Implied Order Deleted Message
asx_securities_t24_itch_v1_13.implied_order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Deleted Message
asx_securities_t24_itch_v1_13.implied_order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted Message
asx_securities_t24_itch_v1_13.implied_order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.implied_order_deleted_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.implied_order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.implied_order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.implied_order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Replaced Message
asx_securities_t24_itch_v1_13.implied_order_replaced_message = {}

-- Size: Implied Order Replaced Message
asx_securities_t24_itch_v1_13.implied_order_replaced_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.order_book_priority.size + 
  asx_securities_t24_itch_v1_13.quantity.size + 
  asx_securities_t24_itch_v1_13.price.size

-- Display: Implied Order Replaced Message
asx_securities_t24_itch_v1_13.implied_order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Replaced Message
asx_securities_t24_itch_v1_13.implied_order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced Message
asx_securities_t24_itch_v1_13.implied_order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.implied_order_replaced_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.implied_order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.implied_order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.implied_order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Added Message
asx_securities_t24_itch_v1_13.implied_order_added_message = {}

-- Size: Implied Order Added Message
asx_securities_t24_itch_v1_13.implied_order_added_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.order_book_priority.size + 
  asx_securities_t24_itch_v1_13.quantity.size + 
  asx_securities_t24_itch_v1_13.price.size

-- Display: Implied Order Added Message
asx_securities_t24_itch_v1_13.implied_order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Added Message
asx_securities_t24_itch_v1_13.implied_order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added Message
asx_securities_t24_itch_v1_13.implied_order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.implied_order_added_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.implied_order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.implied_order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.implied_order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
asx_securities_t24_itch_v1_13.order_deleted_message = {}

-- Size: Order Deleted Message
asx_securities_t24_itch_v1_13.order_deleted_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size

-- Display: Order Deleted Message
asx_securities_t24_itch_v1_13.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
asx_securities_t24_itch_v1_13.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
asx_securities_t24_itch_v1_13.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_deleted_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Volume Cancelled Message
asx_securities_t24_itch_v1_13.order_volume_cancelled_message = {}

-- Size: Order Volume Cancelled Message
asx_securities_t24_itch_v1_13.order_volume_cancelled_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.quantity.size

-- Display: Order Volume Cancelled Message
asx_securities_t24_itch_v1_13.order_volume_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Volume Cancelled Message
asx_securities_t24_itch_v1_13.order_volume_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled Message
asx_securities_t24_itch_v1_13.order_volume_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_volume_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_volume_cancelled_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_volume_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_volume_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_volume_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
asx_securities_t24_itch_v1_13.order_replaced_message = {}

-- Size: Order Replaced Message
asx_securities_t24_itch_v1_13.order_replaced_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.order_book_priority.size + 
  asx_securities_t24_itch_v1_13.quantity.size + 
  asx_securities_t24_itch_v1_13.price.size

-- Display: Order Replaced Message
asx_securities_t24_itch_v1_13.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
asx_securities_t24_itch_v1_13.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
asx_securities_t24_itch_v1_13.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_replaced_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Message
asx_securities_t24_itch_v1_13.order_added_message = {}

-- Size: Order Added Message
asx_securities_t24_itch_v1_13.order_added_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.side.size + 
  asx_securities_t24_itch_v1_13.order_number.size + 
  asx_securities_t24_itch_v1_13.order_book_priority.size + 
  asx_securities_t24_itch_v1_13.quantity.size + 
  asx_securities_t24_itch_v1_13.price.size

-- Display: Order Added Message
asx_securities_t24_itch_v1_13.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
asx_securities_t24_itch_v1_13.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_securities_t24_itch_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric
  index, order_number = asx_securities_t24_itch_v1_13.order_number.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_securities_t24_itch_v1_13.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_securities_t24_itch_v1_13.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_securities_t24_itch_v1_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
asx_securities_t24_itch_v1_13.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_added_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_added_message.fields(buffer, offset, packet, parent)
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

-- Order Book State Message
asx_securities_t24_itch_v1_13.order_book_state_message = {}

-- Size: Order Book State Message
asx_securities_t24_itch_v1_13.order_book_state_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.trading_status.size

-- Display: Order Book State Message
asx_securities_t24_itch_v1_13.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_securities_t24_itch_v1_13.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = asx_securities_t24_itch_v1_13.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_securities_t24_itch_v1_13.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.order_book_state_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.order_book_state_message.fields(buffer, offset, packet, parent)
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

-- Translate: Prior Day Settlement
asx_securities_t24_itch_v1_13.prior_day_settlement.translate = function(raw)
  return raw/100
end

-- Dissect: Prior Day Settlement
asx_securities_t24_itch_v1_13.prior_day_settlement.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_t24_itch_v1_13.prior_day_settlement.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_t24_itch_v1_13.prior_day_settlement.translate(raw)
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

-- Option Symbol Directory Message
asx_securities_t24_itch_v1_13.option_symbol_directory_message = {}

-- Size: Option Symbol Directory Message
asx_securities_t24_itch_v1_13.option_symbol_directory_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.exchange.size + 
  asx_securities_t24_itch_v1_13.instrument.size + 
  asx_securities_t24_itch_v1_13.contract_type.size + 
  asx_securities_t24_itch_v1_13.expiry_year.size + 
  asx_securities_t24_itch_v1_13.expiry_month.size + 
  asx_securities_t24_itch_v1_13.option_type.size + 
  asx_securities_t24_itch_v1_13.strike.size + 
  asx_securities_t24_itch_v1_13.underlying_contract_number.size + 
  asx_securities_t24_itch_v1_13.price_decimal_position.size + 
  asx_securities_t24_itch_v1_13.price_fractional_denominator.size + 
  asx_securities_t24_itch_v1_13.price_minimum_tick.size + 
  asx_securities_t24_itch_v1_13.strike_price_decimal_position.size + 
  asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.size + 
  asx_securities_t24_itch_v1_13.strike_price_minimum_tick.size + 
  asx_securities_t24_itch_v1_13.last_trading_date.size + 
  asx_securities_t24_itch_v1_13.prior_day_settlement.size + 
  asx_securities_t24_itch_v1_13.volatility.size + 
  asx_securities_t24_itch_v1_13.financial_type.size + 
  asx_securities_t24_itch_v1_13.currency.size + 
  asx_securities_t24_itch_v1_13.lot_size_or_face_value.size + 
  asx_securities_t24_itch_v1_13.maturity_value.size + 
  asx_securities_t24_itch_v1_13.coupon_rate.size + 
  asx_securities_t24_itch_v1_13.payments_per_year.size + 
  asx_securities_t24_itch_v1_13.activated.size

-- Display: Option Symbol Directory Message
asx_securities_t24_itch_v1_13.option_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Symbol Directory Message
asx_securities_t24_itch_v1_13.option_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Exchange: Alpha
  index, exchange = asx_securities_t24_itch_v1_13.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: Alpha
  index, instrument = asx_securities_t24_itch_v1_13.instrument.dissect(buffer, index, packet, parent)

  -- Contract Type: Alpha
  index, contract_type = asx_securities_t24_itch_v1_13.contract_type.dissect(buffer, index, packet, parent)

  -- Expiry Year: Numeric
  index, expiry_year = asx_securities_t24_itch_v1_13.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: Numeric
  index, expiry_month = asx_securities_t24_itch_v1_13.expiry_month.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = asx_securities_t24_itch_v1_13.option_type.dissect(buffer, index, packet, parent)

  -- Strike: Numeric
  index, strike = asx_securities_t24_itch_v1_13.strike.dissect(buffer, index, packet, parent)

  -- Underlying Contract Number: Numeric
  index, underlying_contract_number = asx_securities_t24_itch_v1_13.underlying_contract_number.dissect(buffer, index, packet, parent)

  -- Price Decimal Position: Numeric
  index, price_decimal_position = asx_securities_t24_itch_v1_13.price_decimal_position.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_securities_t24_itch_v1_13.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Strike Price Decimal Position: Numeric
  index, strike_price_decimal_position = asx_securities_t24_itch_v1_13.strike_price_decimal_position.dissect(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: Numeric
  index, strike_price_fractional_denominator = asx_securities_t24_itch_v1_13.strike_price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: Numeric
  index, strike_price_minimum_tick = asx_securities_t24_itch_v1_13.strike_price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Numeric
  index, last_trading_date = asx_securities_t24_itch_v1_13.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: Price
  index, prior_day_settlement = asx_securities_t24_itch_v1_13.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Volatility: Numeric
  index, volatility = asx_securities_t24_itch_v1_13.volatility.dissect(buffer, index, packet, parent)

  -- Financial Type: Alpha
  index, financial_type = asx_securities_t24_itch_v1_13.financial_type.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = asx_securities_t24_itch_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: Numeric
  index, lot_size_or_face_value = asx_securities_t24_itch_v1_13.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: Numeric
  index, maturity_value = asx_securities_t24_itch_v1_13.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Numeric
  index, coupon_rate = asx_securities_t24_itch_v1_13.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: Numeric
  index, payments_per_year = asx_securities_t24_itch_v1_13.payments_per_year.dissect(buffer, index, packet, parent)

  -- Activated: Alpha
  index, activated = asx_securities_t24_itch_v1_13.activated.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol Directory Message
asx_securities_t24_itch_v1_13.option_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.option_symbol_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.option_symbol_directory_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.option_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.option_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.option_symbol_directory_message.fields(buffer, offset, packet, parent)
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

-- Spread Symbol Directory Message
asx_securities_t24_itch_v1_13.spread_symbol_directory_message = {}

-- Size: Spread Symbol Directory Message
asx_securities_t24_itch_v1_13.spread_symbol_directory_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.exchange.size + 
  asx_securities_t24_itch_v1_13.contract_type.size + 
  asx_securities_t24_itch_v1_13.first_leg_contract_number.size + 
  asx_securities_t24_itch_v1_13.second_leg_contract_number.size + 
  asx_securities_t24_itch_v1_13.primary_ratio.size + 
  asx_securities_t24_itch_v1_13.secondary_ratio.size + 
  asx_securities_t24_itch_v1_13.price_decimal_position.size + 
  asx_securities_t24_itch_v1_13.price_fractional_denominator.size + 
  asx_securities_t24_itch_v1_13.price_minimum_tick.size

-- Display: Spread Symbol Directory Message
asx_securities_t24_itch_v1_13.spread_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Symbol Directory Message
asx_securities_t24_itch_v1_13.spread_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Exchange: Alpha
  index, exchange = asx_securities_t24_itch_v1_13.exchange.dissect(buffer, index, packet, parent)

  -- Contract Type: Alpha
  index, contract_type = asx_securities_t24_itch_v1_13.contract_type.dissect(buffer, index, packet, parent)

  -- First Leg Contract Number: Numeric
  index, first_leg_contract_number = asx_securities_t24_itch_v1_13.first_leg_contract_number.dissect(buffer, index, packet, parent)

  -- Second Leg Contract Number: Numeric
  index, second_leg_contract_number = asx_securities_t24_itch_v1_13.second_leg_contract_number.dissect(buffer, index, packet, parent)

  -- Primary Ratio: Numeric
  index, primary_ratio = asx_securities_t24_itch_v1_13.primary_ratio.dissect(buffer, index, packet, parent)

  -- Secondary Ratio: Numeric
  index, secondary_ratio = asx_securities_t24_itch_v1_13.secondary_ratio.dissect(buffer, index, packet, parent)

  -- Price Decimal Position: Numeric
  index, price_decimal_position = asx_securities_t24_itch_v1_13.price_decimal_position.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_securities_t24_itch_v1_13.price_minimum_tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Symbol Directory Message
asx_securities_t24_itch_v1_13.spread_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.spread_symbol_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.spread_symbol_directory_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.spread_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.spread_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.spread_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Symbol Directory Message
asx_securities_t24_itch_v1_13.future_symbol_directory_message = {}

-- Size: Future Symbol Directory Message
asx_securities_t24_itch_v1_13.future_symbol_directory_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.contract_number.size + 
  asx_securities_t24_itch_v1_13.exchange.size + 
  asx_securities_t24_itch_v1_13.instrument.size + 
  asx_securities_t24_itch_v1_13.contract_type.size + 
  asx_securities_t24_itch_v1_13.expiry_year.size + 
  asx_securities_t24_itch_v1_13.expiry_month.size + 
  asx_securities_t24_itch_v1_13.price_decimal_position.size + 
  asx_securities_t24_itch_v1_13.price_fractional_denominator.size + 
  asx_securities_t24_itch_v1_13.price_minimum_tick.size + 
  asx_securities_t24_itch_v1_13.last_trading_date.size + 
  asx_securities_t24_itch_v1_13.prior_day_settlement.size + 
  asx_securities_t24_itch_v1_13.financial_type.size + 
  asx_securities_t24_itch_v1_13.currency.size + 
  asx_securities_t24_itch_v1_13.lot_size_or_face_value.size + 
  asx_securities_t24_itch_v1_13.maturity_value.size + 
  asx_securities_t24_itch_v1_13.coupon_rate.size + 
  asx_securities_t24_itch_v1_13.payments_per_year.size

-- Display: Future Symbol Directory Message
asx_securities_t24_itch_v1_13.future_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Symbol Directory Message
asx_securities_t24_itch_v1_13.future_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Contract Number: Numeric
  index, contract_number = asx_securities_t24_itch_v1_13.contract_number.dissect(buffer, index, packet, parent)

  -- Exchange: Alpha
  index, exchange = asx_securities_t24_itch_v1_13.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: Alpha
  index, instrument = asx_securities_t24_itch_v1_13.instrument.dissect(buffer, index, packet, parent)

  -- Contract Type: Alpha
  index, contract_type = asx_securities_t24_itch_v1_13.contract_type.dissect(buffer, index, packet, parent)

  -- Expiry Year: Numeric
  index, expiry_year = asx_securities_t24_itch_v1_13.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: Numeric
  index, expiry_month = asx_securities_t24_itch_v1_13.expiry_month.dissect(buffer, index, packet, parent)

  -- Price Decimal Position: Numeric
  index, price_decimal_position = asx_securities_t24_itch_v1_13.price_decimal_position.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_securities_t24_itch_v1_13.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_securities_t24_itch_v1_13.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Numeric
  index, last_trading_date = asx_securities_t24_itch_v1_13.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: Price
  index, prior_day_settlement = asx_securities_t24_itch_v1_13.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Financial Type: Alpha
  index, financial_type = asx_securities_t24_itch_v1_13.financial_type.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = asx_securities_t24_itch_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: Numeric
  index, lot_size_or_face_value = asx_securities_t24_itch_v1_13.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: Numeric
  index, maturity_value = asx_securities_t24_itch_v1_13.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Numeric
  index, coupon_rate = asx_securities_t24_itch_v1_13.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: Numeric
  index, payments_per_year = asx_securities_t24_itch_v1_13.payments_per_year.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory Message
asx_securities_t24_itch_v1_13.future_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.future_symbol_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.future_symbol_directory_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.future_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.future_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.future_symbol_directory_message.fields(buffer, offset, packet, parent)
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

-- System Event Message
asx_securities_t24_itch_v1_13.system_event_message = {}

-- Size: System Event Message
asx_securities_t24_itch_v1_13.system_event_message.size =
  asx_securities_t24_itch_v1_13.timestamp.size + 
  asx_securities_t24_itch_v1_13.trade_date.size + 
  asx_securities_t24_itch_v1_13.event_code.size

-- Display: System Event Message
asx_securities_t24_itch_v1_13.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
asx_securities_t24_itch_v1_13.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = asx_securities_t24_itch_v1_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_securities_t24_itch_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = asx_securities_t24_itch_v1_13.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
asx_securities_t24_itch_v1_13.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.system_event_message, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.system_event_message.fields(buffer, offset, packet, parent)
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

-- Size: Time Message
asx_securities_t24_itch_v1_13.time_message.size =
  asx_securities_t24_itch_v1_13.second.size

-- Display: Time Message
asx_securities_t24_itch_v1_13.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
asx_securities_t24_itch_v1_13.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
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

-- Size: Payload
asx_securities_t24_itch_v1_13.payload.size = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == "T" then
    return asx_securities_t24_itch_v1_13.time_message.size
  end
  -- Size of System Event Message
  if message_type == "S" then
    return asx_securities_t24_itch_v1_13.system_event_message.size
  end
  -- Size of Future Symbol Directory Message
  if message_type == "f" then
    return asx_securities_t24_itch_v1_13.future_symbol_directory_message.size
  end
  -- Size of Spread Symbol Directory Message
  if message_type == "g" then
    return asx_securities_t24_itch_v1_13.spread_symbol_directory_message.size
  end
  -- Size of Option Symbol Directory Message
  if message_type == "h" then
    return asx_securities_t24_itch_v1_13.option_symbol_directory_message.size
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return asx_securities_t24_itch_v1_13.order_book_state_message.size
  end
  -- Size of Order Added Message
  if message_type == "A" then
    return asx_securities_t24_itch_v1_13.order_added_message.size
  end
  -- Size of Order Replaced Message
  if message_type == "U" then
    return asx_securities_t24_itch_v1_13.order_replaced_message.size
  end
  -- Size of Order Volume Cancelled Message
  if message_type == "X" then
    return asx_securities_t24_itch_v1_13.order_volume_cancelled_message.size
  end
  -- Size of Order Deleted Message
  if message_type == "D" then
    return asx_securities_t24_itch_v1_13.order_deleted_message.size
  end
  -- Size of Implied Order Added Message
  if message_type == "j" then
    return asx_securities_t24_itch_v1_13.implied_order_added_message.size
  end
  -- Size of Implied Order Replaced Message
  if message_type == "l" then
    return asx_securities_t24_itch_v1_13.implied_order_replaced_message.size
  end
  -- Size of Implied Order Deleted Message
  if message_type == "k" then
    return asx_securities_t24_itch_v1_13.implied_order_deleted_message.size
  end
  -- Size of Custom Market Order Added Message
  if message_type == "m" then
    return asx_securities_t24_itch_v1_13.custom_market_order_added_message.size
  end
  -- Size of Custom Market Order Replaced Message
  if message_type == "n" then
    return asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.size
  end
  -- Size of Custom Market Order Deleted Message
  if message_type == "r" then
    return asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.size
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return asx_securities_t24_itch_v1_13.order_executed_message.size
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return asx_securities_t24_itch_v1_13.order_executed_with_price_message.size
  end
  -- Size of Spread Executed Message
  if message_type == "e" then
    return asx_securities_t24_itch_v1_13.spread_executed_message.size
  end
  -- Size of Trade Spread Execution Chain Message
  if message_type == "P" then
    return asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.size
  end
  -- Size of Custom Market Executed Message
  if message_type == "u" then
    return asx_securities_t24_itch_v1_13.custom_market_executed_message.size
  end
  -- Size of Custom Market Trade Message
  if message_type == "p" then
    return asx_securities_t24_itch_v1_13.custom_market_trade_message.size
  end
  -- Size of Trade Cancellation Message
  if message_type == "B" then
    return asx_securities_t24_itch_v1_13.trade_cancellation_message.size
  end
  -- Size of Equilibrium Price Auction Info Message
  if message_type == "Z" then
    return asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.size
  end
  -- Size of Open High Low Last Trade Adjustment Message
  if message_type == "t" then
    return asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.size
  end
  -- Size of Market Settlement Message
  if message_type == "Y" then
    return asx_securities_t24_itch_v1_13.market_settlement_message.size
  end
  -- Size of Ad Hoc Text Message
  if message_type == "x" then
    return asx_securities_t24_itch_v1_13.ad_hoc_text_message.size
  end
  -- Size of Request For Quote Message
  if message_type == "q" then
    return asx_securities_t24_itch_v1_13.request_for_quote_message.size
  end
  -- Size of Anomalous Order Threshold Publish Message
  if message_type == "W" then
    return asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.size
  end
  -- Size of Volume And Open Interest Message
  if message_type == "V" then
    return asx_securities_t24_itch_v1_13.volume_and_open_interest_message.size
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
  -- Dissect System Event Message
  if message_type == "S" then
    return asx_securities_t24_itch_v1_13.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Symbol Directory Message
  if message_type == "f" then
    return asx_securities_t24_itch_v1_13.future_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Symbol Directory Message
  if message_type == "g" then
    return asx_securities_t24_itch_v1_13.spread_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Symbol Directory Message
  if message_type == "h" then
    return asx_securities_t24_itch_v1_13.option_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return asx_securities_t24_itch_v1_13.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if message_type == "A" then
    return asx_securities_t24_itch_v1_13.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == "U" then
    return asx_securities_t24_itch_v1_13.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Volume Cancelled Message
  if message_type == "X" then
    return asx_securities_t24_itch_v1_13.order_volume_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return asx_securities_t24_itch_v1_13.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Added Message
  if message_type == "j" then
    return asx_securities_t24_itch_v1_13.implied_order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Replaced Message
  if message_type == "l" then
    return asx_securities_t24_itch_v1_13.implied_order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Deleted Message
  if message_type == "k" then
    return asx_securities_t24_itch_v1_13.implied_order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Added Message
  if message_type == "m" then
    return asx_securities_t24_itch_v1_13.custom_market_order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Replaced Message
  if message_type == "n" then
    return asx_securities_t24_itch_v1_13.custom_market_order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Order Deleted Message
  if message_type == "r" then
    return asx_securities_t24_itch_v1_13.custom_market_order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return asx_securities_t24_itch_v1_13.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return asx_securities_t24_itch_v1_13.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Executed Message
  if message_type == "e" then
    return asx_securities_t24_itch_v1_13.spread_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Spread Execution Chain Message
  if message_type == "P" then
    return asx_securities_t24_itch_v1_13.trade_spread_execution_chain_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Executed Message
  if message_type == "u" then
    return asx_securities_t24_itch_v1_13.custom_market_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Custom Market Trade Message
  if message_type == "p" then
    return asx_securities_t24_itch_v1_13.custom_market_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == "B" then
    return asx_securities_t24_itch_v1_13.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Auction Info Message
  if message_type == "Z" then
    return asx_securities_t24_itch_v1_13.equilibrium_price_auction_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open High Low Last Trade Adjustment Message
  if message_type == "t" then
    return asx_securities_t24_itch_v1_13.open_high_low_last_trade_adjustment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Settlement Message
  if message_type == "Y" then
    return asx_securities_t24_itch_v1_13.market_settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ad Hoc Text Message
  if message_type == "x" then
    return asx_securities_t24_itch_v1_13.ad_hoc_text_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote Message
  if message_type == "q" then
    return asx_securities_t24_itch_v1_13.request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anomalous Order Threshold Publish Message
  if message_type == "W" then
    return asx_securities_t24_itch_v1_13.anomalous_order_threshold_publish_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Volume And Open Interest Message
  if message_type == "V" then
    return asx_securities_t24_itch_v1_13.volume_and_open_interest_message.dissect(buffer, offset, packet, parent)
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
    return "Message Type: System Event Message (S)"
  end
  if value == "f" then
    return "Message Type: Future Symbol Directory Message (f)"
  end
  if value == "g" then
    return "Message Type: Spread Symbol Directory Message (g)"
  end
  if value == "h" then
    return "Message Type: Option Symbol Directory Message (h)"
  end
  if value == "O" then
    return "Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Message Type: Order Added Message (A)"
  end
  if value == "U" then
    return "Message Type: Order Replaced Message (U)"
  end
  if value == "X" then
    return "Message Type: Order Volume Cancelled Message (X)"
  end
  if value == "D" then
    return "Message Type: Order Deleted Message (D)"
  end
  if value == "j" then
    return "Message Type: Implied Order Added Message (j)"
  end
  if value == "l" then
    return "Message Type: Implied Order Replaced Message (l)"
  end
  if value == "k" then
    return "Message Type: Implied Order Deleted Message (k)"
  end
  if value == "m" then
    return "Message Type: Custom Market Order Added Message (m)"
  end
  if value == "n" then
    return "Message Type: Custom Market Order Replaced Message (n)"
  end
  if value == "r" then
    return "Message Type: Custom Market Order Deleted Message (r)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "e" then
    return "Message Type: Spread Executed Message (e)"
  end
  if value == "P" then
    return "Message Type: Trade Spread Execution Chain Message (P)"
  end
  if value == "u" then
    return "Message Type: Custom Market Executed Message (u)"
  end
  if value == "p" then
    return "Message Type: Custom Market Trade Message (p)"
  end
  if value == "B" then
    return "Message Type: Trade Cancellation Message (B)"
  end
  if value == "Z" then
    return "Message Type: Equilibrium Price Auction Info Message (Z)"
  end
  if value == "t" then
    return "Message Type: Open High Low Last Trade Adjustment Message (t)"
  end
  if value == "Y" then
    return "Message Type: Market Settlement Message (Y)"
  end
  if value == "x" then
    return "Message Type: Ad Hoc Text Message (x)"
  end
  if value == "q" then
    return "Message Type: Request For Quote Message (q)"
  end
  if value == "W" then
    return "Message Type: Anomalous Order Threshold Publish Message (W)"
  end
  if value == "V" then
    return "Message Type: Volume And Open Interest Message (V)"
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

-- Size: Message Header
asx_securities_t24_itch_v1_13.message_header.size =
  asx_securities_t24_itch_v1_13.message_length.size + 
  asx_securities_t24_itch_v1_13.message_type.size

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

-- Size: Session
asx_securities_t24_itch_v1_13.session.size =
  asx_securities_t24_itch_v1_13.protocol_version.size + 
  asx_securities_t24_itch_v1_13.session_year.size + 
  asx_securities_t24_itch_v1_13.session_week.size + 
  asx_securities_t24_itch_v1_13.trading_service.size

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
  if show.session then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_t24_itch_v1_13.fields.session, buffer(offset, 0))
    local index = asx_securities_t24_itch_v1_13.session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_t24_itch_v1_13.session.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return asx_securities_t24_itch_v1_13.session.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
asx_securities_t24_itch_v1_13.packet_header = {}

-- Size: Packet Header
asx_securities_t24_itch_v1_13.packet_header.size =
  asx_securities_t24_itch_v1_13.session.size + 
  asx_securities_t24_itch_v1_13.sequence_number.size + 
  asx_securities_t24_itch_v1_13.message_count.size

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
asx_securities_t24_itch_v1_13.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities T24 Itch 1.13
local function omi_asx_securities_t24_itch_v1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not asx_securities_t24_itch_v1_13.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_securities_t24_itch_v1_13
  omi_asx_securities_t24_itch_v1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities T24 Itch 1.13
omi_asx_securities_t24_itch_v1_13:register_heuristic("udp", omi_asx_securities_t24_itch_v1_13_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
